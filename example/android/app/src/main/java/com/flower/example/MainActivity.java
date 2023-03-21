package com.flower.example;

import android.util.Pair;
import androidx.annotation.NonNull;



import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodCall;

public class MainActivity extends FlutterActivity implements MethodChannel.MethodCallHandler{
    private static final String CHANNEL_NAME = "tl_wrapper";
    private TransferLearningModelWrapper tlModel;
    private MethodChannel channel;

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        channel = new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL_NAME);
        channel.setMethodCallHandler(this);
    }


    @Override
    public void onMethodCall(@NonNull MethodCall call, @NonNull MethodChannel.Result result) {
        switch (call.method) {
            case "init":
                Collection<String> classes = call.<List<String>>argument("classes");
                tlModel = new TransferLearningModelWrapper(getApplicationContext(),classes);
                result.success(null);
                break;

            case "getParameters":
                 try {
                    ByteBuffer[] parameters = tlModel.getParameters();
                    List<byte[]> parameterList = byteBufferListToByteArrayList(parameters);
                    result.success(parameterList);
                } catch (Exception e) {
                    result.error("getParametersError", e.getMessage(), null);
                }
                break;
            case "updateParameters":
                try {
                    List<byte[]> byteArrayList = call.argument("weight");
                    ByteBuffer[] byteBufferList = byteArrayListToByteBufferList(byteArrayList);
                    if (byteBufferList != null) {
                        tlModel.updateParameters(byteBufferList);
                    }
                    result.success(null);
                } catch (Exception e) {
                    result.error("updateParametersError", e.getMessage(), null);
                }
                break;
            case "train":
                Integer epochsInteger = call.argument("epochs");
                if (epochsInteger != null) {
                    tlModel.train(epochsInteger);
                    result.success(null);
                }
                break;
            case "addSample":
                try {
                    float[] rgbImage = call.argument("rgbImage");
                    String sampleClass = call.argument("sampleClass");
                    boolean isTraining = call.argument("isTraining");
                    tlModel.addSample(rgbImage,sampleClass,isTraining);
                    result.success(null);
                } catch (Exception e) {
                    result.error("addSampleError", e.getMessage(), null);
                }
                break;
            case "calculateTestStatistics":
                try {
                    Pair<Float, Float> statistics = tlModel.calculateTestStatistics();
                    result.success(Arrays.asList(statistics.first, statistics.second));
                }catch (Exception e){
                    result.error("calculateTestStatistics Error", e.getMessage(), null);
                }
                break;
            case "predict":
                try {
                    float[] image = call.argument("image");
                    List<Map<String, Object>> predictionMaps = tlModel.predict(image);
                    result.success(predictionMaps);
                }
                catch (Exception e){
                    result.error("prediction Error", e.getMessage(), null);
                }
                break;
            case "getTrainBatchSize":
                int trainBatchSize = tlModel.getTrainBatchSize();
                result.success(trainBatchSize);
                break;
            case "enableTraining":
                try {
                    tlModel.enableTraining((step, loss) -> {
                        final Map<String, Object> arguments = new HashMap<>();
                        arguments.put("loss", loss);
                        arguments.put("step", step);
                        runOnUiThread(() -> channel.invokeMethod("onLoss", arguments));
                    });
                   runOnUiThread(() -> result.success("Training started successfully"));
                } catch (Exception e) {
                   runOnUiThread(() -> result.error("TRAINING_ERROR", e.getMessage(), null));
                }
                break;

            case "getSizeTraining":
                try{
                  int size=  tlModel.getSize_Training();
                  result.success(size);
                } catch (Exception e) {
                    result.error("getSizeTraining", e.getMessage(), null);
                }
                break;
            case "getSizeTesting":
                try{
                    int size=  tlModel.getSize_Testing();
                    result.success(size);
                } catch (Exception e) {
                    result.error("getSizeTesting", e.getMessage(), null);
                }
                break;
            case "disableTraining":
                tlModel.disableTraining();
                result.success(null);
                break;
            case "close":
                tlModel.close();
                result.success(null);
                break;
            default:
                result.notImplemented();
        }

    }
    public static List<byte[]> byteBufferListToByteArrayList(ByteBuffer[] byteBufferList) {
        List<byte[]> byteArrayList = new ArrayList<>(byteBufferList.length);
        for (ByteBuffer byteBuffer : byteBufferList) {
            byte[] byteArray = new byte[byteBuffer.remaining()];
            byteBuffer.get(byteArray);
            byteArrayList.add(byteArray);
        }
        return byteArrayList;
    }
    private static ByteBuffer[] byteArrayListToByteBufferList(List<byte[]> byteArrayList) {
        if (byteArrayList == null) {
            return null;
        }
        ByteBuffer[] byteBufferList = new ByteBuffer[byteArrayList.size()];
        int i = 0;
        for (byte[] byteArray : byteArrayList) {
            if (byteArray != null) {
                byteBufferList[i] = ByteBuffer.wrap(byteArray);
            }
            i++;
        }
        return byteBufferList;
    }


}

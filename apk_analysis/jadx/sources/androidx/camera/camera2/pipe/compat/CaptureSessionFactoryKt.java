package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.params.OutputConfiguration;
import android.os.Build;
import android.util.Size;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.media.AndroidMultiResolutionImageReader;
import androidx.camera.camera2.pipe.media.ImageSource;
import defpackage.ah;
import defpackage.fg;
import defpackage.qn1;
import defpackage.uz4;
import defpackage.x07;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class CaptureSessionFactoryKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final OutputConfigurations buildOutputConfigurations(CameraGraph.Config config, StreamGraphImpl streamGraphImpl, Map<StreamId, ? extends Surface> map) {
        OutputConfigurations outputConfigurations;
        boolean z;
        config.getClass();
        streamGraphImpl.getClass();
        map.getClass();
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        Iterator<Map.Entry<StreamId, ImageSource>> it = streamGraphImpl.getImageSourceMap$camera_camera2_pipe().entrySet().iterator();
        while (true) {
            boolean z2 = true;
            OutputConfigurations outputConfigurations2 = null;
            if (!it.hasNext()) {
                for (CameraStream cameraStream : streamGraphImpl.getStreams()) {
                    List<OutputStream> outputs = cameraStream.getOutputs();
                    if (outputs.size() == 1) {
                        Surface surface = map.get(StreamId.m723boximpl(cameraStream.m383getIdptHMqGs()));
                        if (surface != null) {
                            linkedHashMap2.put(OutputId.m503boximpl(((OutputStream) qn1.k0(outputs)).mo527getId4LaLFng()), surface);
                        }
                    } else {
                        for (OutputStream outputStream : outputs) {
                            StreamGraphImpl.OutputConfig outputConfig = streamGraphImpl.getOutputConfigMap$camera_camera2_pipe().get(outputStream);
                            if (outputConfig == null) {
                                ah.f("Required value was null.");
                                return null;
                            }
                            StreamGraphImpl.OutputConfig outputConfig2 = outputConfig;
                            OutputConfiguration externalOutputConfig = outputConfig2.getExternalOutputConfig();
                            if (externalOutputConfig == null) {
                                externalOutputConfig = (OutputConfiguration) linkedHashMap3.get(outputConfig2);
                            }
                            Surface surface2 = externalOutputConfig != null ? externalOutputConfig.getSurface() : map.get(StreamId.m723boximpl(cameraStream.m383getIdptHMqGs()));
                            if (surface2 != null) {
                                linkedHashMap2.put(OutputId.m503boximpl(outputStream.mo527getId4LaLFng()), surface2);
                            }
                        }
                    }
                }
                OutputConfigurationWrapper outputConfigurationWrapper = null;
                for (StreamGraphImpl.OutputConfig outputConfig3 : streamGraphImpl.getOutputConfigs$camera_camera2_pipe()) {
                    List<CameraStream> streams = outputConfig3.getStreams();
                    ArrayList arrayList2 = new ArrayList();
                    Iterator<T> it2 = streams.iterator();
                    while (it2.hasNext()) {
                        Surface surface3 = map.get(StreamId.m723boximpl(((CameraStream) it2.next()).m383getIdptHMqGs()));
                        if (surface3 != null) {
                            arrayList2.add(surface3);
                        }
                    }
                    OutputConfiguration externalOutputConfig2 = outputConfig3.getExternalOutputConfig();
                    if (externalOutputConfig2 == null) {
                        externalOutputConfig2 = (OutputConfiguration) linkedHashMap3.get(outputConfig3);
                    }
                    OutputConfiguration outputConfiguration = externalOutputConfig2;
                    if (outputConfiguration != null) {
                        outputConfigurations = outputConfigurations2;
                        if (arrayList2.size() != outputConfig3.getStreams().size()) {
                            List<CameraStream> streams2 = outputConfig3.getStreams();
                            ArrayList arrayList3 = new ArrayList();
                            for (Object obj : streams2) {
                                if (!map.containsKey(StreamId.m723boximpl(((CameraStream) obj).m383getIdptHMqGs()))) {
                                    arrayList3.add(obj);
                                }
                            }
                            throw new IllegalStateException(("Surfaces are not yet available for " + outputConfig3 + "! Missing surfaces for " + arrayList3 + '!').toString());
                        }
                        arrayList.add(new AndroidOutputConfiguration(outputConfiguration, false, 1, null, null));
                        z = z2;
                    } else {
                        outputConfigurations = outputConfigurations2;
                        if (outputConfig3.getDeferrable() && arrayList2.size() != outputConfig3.getStreams().size()) {
                            AndroidOutputConfiguration.Companion companion = AndroidOutputConfiguration.Companion;
                            Size size = outputConfig3.getSize();
                            OutputStream.OutputType deferredOutputType = outputConfig3.getDeferredOutputType();
                            deferredOutputType.getClass();
                            OutputStream.MirrorMode mirrorModeM922getMirrorModedO1_9xk = outputConfig3.m922getMirrorModedO1_9xk();
                            OutputStream.TimestampBase timestampBaseM925getTimestampBasepcPfPbY = outputConfig3.m925getTimestampBasepcPfPbY();
                            OutputStream.DynamicRangeProfile dynamicRangeProfileM919getDynamicRangeProfileOoVcG5w = outputConfig3.m919getDynamicRangeProfileOoVcG5w();
                            OutputStream.StreamUseCase streamUseCaseM923getStreamUseCase8x2ez34 = outputConfig3.m923getStreamUseCase8x2ez34();
                            List<OutputStream.SensorPixelMode> sensorPixelModes = outputConfig3.getSensorPixelModes();
                            boolean surfaceSharing = outputConfig3.getSurfaceSharing();
                            Integer groupNumber = outputConfig3.getGroupNumber();
                            OutputConfigurationWrapper outputConfigurationWrapperM747creategWWoySg$default = AndroidOutputConfiguration.Companion.m747creategWWoySg$default(companion, null, null, deferredOutputType, mirrorModeM922getMirrorModedO1_9xk, timestampBaseM925getTimestampBasepcPfPbY, dynamicRangeProfileM919getDynamicRangeProfileOoVcG5w, streamUseCaseM923getStreamUseCase8x2ez34, sensorPixelModes, size, surfaceSharing, groupNumber != null ? groupNumber.intValue() : -1, !CameraId.m354equalsimpl0(outputConfig3.m918getCameraDz_R5H8(), config.m310getCameraDz_R5H8()) ? outputConfig3.m918getCameraDz_R5H8() : outputConfigurations, 2, null);
                            if (outputConfigurationWrapperM747creategWWoySg$default != null) {
                                arrayList.add(outputConfigurationWrapperM747creategWWoySg$default);
                                Iterator<CameraStream> it3 = outputConfig3.getStreamBuilder$camera_camera2_pipe().iterator();
                                while (it3.hasNext()) {
                                    linkedHashMap.put(StreamId.m723boximpl(it3.next().m383getIdptHMqGs()), outputConfigurationWrapperM747creategWWoySg$default);
                                }
                            } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to create AndroidOutputConfiguration for " + outputConfig3);
                            }
                        } else {
                            if (arrayList2.size() != outputConfig3.getStreams().size()) {
                                List<CameraStream> streams3 = outputConfig3.getStreams();
                                ArrayList arrayList4 = new ArrayList();
                                for (Object obj2 : streams3) {
                                    if (!map.containsKey(StreamId.m723boximpl(((CameraStream) obj2).m383getIdptHMqGs()))) {
                                        arrayList4.add(obj2);
                                    }
                                }
                                throw new IllegalStateException(("Surfaces are not yet available for " + outputConfig3 + "! Missing surfaces for " + arrayList4 + '!').toString());
                            }
                            AndroidOutputConfiguration.Companion companion2 = AndroidOutputConfiguration.Companion;
                            Surface surface4 = (Surface) qn1.T(arrayList2);
                            OutputStream.MirrorMode mirrorModeM922getMirrorModedO1_9xk2 = outputConfig3.m922getMirrorModedO1_9xk();
                            OutputStream.TimestampBase timestampBaseM925getTimestampBasepcPfPbY2 = outputConfig3.m925getTimestampBasepcPfPbY();
                            OutputStream.DynamicRangeProfile dynamicRangeProfileM919getDynamicRangeProfileOoVcG5w2 = outputConfig3.m919getDynamicRangeProfileOoVcG5w();
                            OutputStream.StreamUseCase streamUseCaseM923getStreamUseCase8x2ez35 = outputConfig3.m923getStreamUseCase8x2ez34();
                            List<OutputStream.SensorPixelMode> sensorPixelModes2 = outputConfig3.getSensorPixelModes();
                            Size size2 = outputConfig3.getSize();
                            boolean surfaceSharing2 = outputConfig3.getSurfaceSharing();
                            Integer groupNumber2 = outputConfig3.getGroupNumber();
                            OutputConfigurationWrapper outputConfigurationWrapperM747creategWWoySg$default2 = AndroidOutputConfiguration.Companion.m747creategWWoySg$default(companion2, surface4, null, null, mirrorModeM922getMirrorModedO1_9xk2, timestampBaseM925getTimestampBasepcPfPbY2, dynamicRangeProfileM919getDynamicRangeProfileOoVcG5w2, streamUseCaseM923getStreamUseCase8x2ez35, sensorPixelModes2, size2, surfaceSharing2, groupNumber2 != null ? groupNumber2.intValue() : -1, !CameraId.m354equalsimpl0(outputConfig3.m918getCameraDz_R5H8(), config.m310getCameraDz_R5H8()) ? outputConfig3.m918getCameraDz_R5H8() : outputConfigurations, 6, null);
                            if (outputConfigurationWrapperM747creategWWoySg$default2 != null) {
                                z = true;
                                Iterator it4 = qn1.O(arrayList2, 1).iterator();
                                while (it4.hasNext()) {
                                    outputConfigurationWrapperM747creategWWoySg$default2.addSurface((Surface) it4.next());
                                }
                                if (config.getPostviewStream() != null) {
                                    CameraStream cameraStream2 = streamGraphImpl.get(config.getPostviewStream());
                                    if (cameraStream2 == null) {
                                        ah.f("Postview Stream in StreamGraph cannot be null for reprocessing request");
                                        return outputConfigurations;
                                    }
                                    if (outputConfigurationWrapper == null && outputConfig3.getStreams().contains(cameraStream2)) {
                                        outputConfigurationWrapper = outputConfigurationWrapperM747creategWWoySg$default2;
                                    } else {
                                        arrayList.add(outputConfigurationWrapperM747creategWWoySg$default2);
                                    }
                                } else {
                                    arrayList.add(outputConfigurationWrapperM747creategWWoySg$default2);
                                }
                            } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w(Log.TAG, "Failed to create AndroidOutputConfiguration for " + outputConfig3);
                            }
                        }
                        z = true;
                    }
                    z2 = z;
                    outputConfigurations2 = outputConfigurations;
                }
                return new OutputConfigurations(arrayList, linkedHashMap, outputConfigurationWrapper, linkedHashMap2);
            }
            Map.Entry<StreamId, ImageSource> next = it.next();
            int iM729unboximpl = next.getKey().m729unboximpl();
            ImageSource value = next.getValue();
            CameraStream cameraStreamM716getaKI5c8E = streamGraphImpl.m716getaKI5c8E(iM729unboximpl);
            if (cameraStreamM716getaKI5c8E == null) {
                ah.f("Required value was null.");
                return null;
            }
            List<OutputStream> outputs2 = cameraStreamM716getaKI5c8E.getOutputs();
            if (outputs2.size() != 1) {
                if (Build.VERSION.SDK_INT < 31) {
                    fg.c("Cannot configure multiple outputs pre-S!");
                    return null;
                }
                Object objUnwrapAs = value.unwrapAs(x07.a(AndroidMultiResolutionImageReader.class));
                if (objUnwrapAs == null) {
                    ah.f("Required value was null.");
                    return null;
                }
                List<OutputConfiguration> outputConfigurations$camera_camera2_pipe = ((AndroidMultiResolutionImageReader) objUnwrapAs).getOutputConfigurations$camera_camera2_pipe();
                if (outputConfigurations$camera_camera2_pipe.size() != outputs2.size()) {
                    ah.f("Check failed.");
                    return null;
                }
                int size3 = outputs2.size();
                for (int i = 0; i < size3; i++) {
                    OutputStream outputStream2 = outputs2.get(i);
                    OutputConfiguration outputConfiguration2 = outputConfigurations$camera_camera2_pipe.get(i);
                    StreamGraphImpl.OutputConfig outputConfig4 = streamGraphImpl.getOutputConfigMap$camera_camera2_pipe().get(outputStream2);
                    if (outputConfig4 == null) {
                        ah.f("Required value was null.");
                        return null;
                    }
                    StreamGraphImpl.OutputConfig outputConfig5 = outputConfig4;
                    if (outputConfig5.getExternalOutputConfig() != null) {
                        ah.f("External OutputConfiguration shouldn't be set in multi-output streams configured with ImageSource.Config");
                        return null;
                    }
                    linkedHashMap3.put(outputConfig5, outputConfiguration2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map<OutputId, Surface> buildSimpleOutputSurfaceMap(Map<StreamId, ? extends Surface> map, StreamGraphImpl streamGraphImpl) {
        uz4 uz4Var = new uz4();
        for (CameraStream cameraStream : streamGraphImpl.getStreams()) {
            Surface surface = map.get(StreamId.m723boximpl(cameraStream.m383getIdptHMqGs()));
            if (surface != null) {
                Iterator<OutputStream> it = cameraStream.getOutputs().iterator();
                while (it.hasNext()) {
                    uz4Var.put(OutputId.m503boximpl(it.next().mo527getId4LaLFng()), surface);
                }
            }
        }
        return uz4Var.b();
    }
}

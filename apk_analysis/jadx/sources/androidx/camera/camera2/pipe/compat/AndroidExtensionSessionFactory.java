package androidx.camera.camera2.pipe.compat;

import android.view.Surface;
import androidx.camera.camera2.pipe.CameraExtensionMetadata;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.core.HandlerExecutor;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import defpackage.ah;
import defpackage.bg;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidExtensionSessionFactory implements CaptureSessionFactory {
    private final Camera2MetadataProvider camera2MetadataProvider;
    private final CameraGraph.Config graphConfig;
    private final StreamGraphImpl streamGraph;
    private final StrictMode strictMode;
    private final Threads threads;

    public AndroidExtensionSessionFactory(Threads threads, CameraGraph.Config config, StreamGraphImpl streamGraphImpl, Camera2MetadataProvider camera2MetadataProvider, StrictMode strictMode) {
        threads.getClass();
        config.getClass();
        streamGraphImpl.getClass();
        camera2MetadataProvider.getClass();
        strictMode.getClass();
        this.threads = threads;
        this.graphConfig = config;
        this.streamGraph = streamGraphImpl;
        this.camera2MetadataProvider = camera2MetadataProvider;
        this.strictMode = strictMode;
    }

    @Override // androidx.camera.camera2.pipe.compat.CaptureSessionFactory
    public CaptureSessionFactory.Result create(CameraDeviceWrapper cameraDeviceWrapper, Map<StreamId, ? extends Surface> map, CaptureSessionState captureSessionState) {
        cameraDeviceWrapper.getClass();
        map.getClass();
        captureSessionState.getClass();
        boolean zM335equalsimpl0 = CameraGraph.OperatingMode.m335equalsimpl0(this.graphConfig.m314getSessionMode2uNL3no(), CameraGraph.OperatingMode.Companion.m340getEXTENSION2uNL3no());
        CameraGraph.Config config = this.graphConfig;
        if (!zM335equalsimpl0) {
            bg.h(CameraGraph.OperatingMode.m337toStringimpl(config.m314getSessionMode2uNL3no()), "Unsupported session mode: ", " for Extension CameraGraph");
            return null;
        }
        Object obj = config.getSessionParameters().get(CameraPipeKeys.INSTANCE.getCamera2ExtensionMode());
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        if (num == null) {
            ah.f("The CameraPipeKeys.camera2ExtensionMode must be set in the sessionParameters of the CameraGraph.Config when creating an Extension CameraGraph.");
            return null;
        }
        int iIntValue = num.intValue();
        if (this.graphConfig.getInput() != null) {
            ah.f("Reprocessing is not supported for Extensions");
            return null;
        }
        CameraMetadata cameraMetadataMo778awaitCameraMetadataEfqyGwQ = this.camera2MetadataProvider.mo778awaitCameraMetadataEfqyGwQ(cameraDeviceWrapper.mo734getCameraIdDz_R5H8());
        Set<Integer> supportedExtensions = cameraMetadataMo778awaitCameraMetadataEfqyGwQ.getSupportedExtensions();
        StrictMode strictMode = this.strictMode;
        if (!supportedExtensions.contains(Integer.valueOf(iIntValue))) {
            String str = cameraDeviceWrapper + " does not support extension mode " + iIntValue + ". Supported extensions are " + supportedExtensions;
            if (strictMode.getEnabled()) {
                ah.f(str);
                return null;
            }
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, str);
            }
        }
        if (this.graphConfig.getPostviewStream() != null) {
            CameraExtensionMetadata cameraExtensionMetadataAwaitExtensionMetadata = cameraMetadataMo778awaitCameraMetadataEfqyGwQ.awaitExtensionMetadata(iIntValue);
            StrictMode strictMode2 = this.strictMode;
            if (!cameraExtensionMetadataAwaitExtensionMetadata.isPostviewSupported()) {
                String str2 = cameraDeviceWrapper + " does not support Postview streams";
                if (strictMode2.getEnabled()) {
                    ah.f(str2);
                    return null;
                }
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, str2);
                }
            }
            if (this.graphConfig.getPostviewStream().getOutputs().size() != 1) {
                ah.f("Postview streams can only have one OutputStream.config object");
                return null;
            }
        }
        OutputConfigurations outputConfigurationsBuildOutputConfigurations = CaptureSessionFactoryKt.buildOutputConfigurations(this.graphConfig, this.streamGraph, map);
        if (outputConfigurationsBuildOutputConfigurations.getAll().isEmpty()) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to create OutputConfigurations for " + this.graphConfig);
            }
            captureSessionState.onSessionFinalized();
            return CaptureSessionFactory.Result.Failed.INSTANCE;
        }
        if (!outputConfigurationsBuildOutputConfigurations.getDeferred().isEmpty()) {
            ah.f("Deferred output is not supported for Extensions");
            return null;
        }
        if (cameraDeviceWrapper.createExtensionSession(new ExtensionSessionConfigData(2, outputConfigurationsBuildOutputConfigurations.getAll(), new HandlerExecutor(this.threads.getCamera2Handler()), captureSessionState, this.graphConfig.m315getSessionTemplatefGx8uWA(), this.graphConfig.getSessionParameters(), Integer.valueOf(iIntValue), new ExtensionSessionState(captureSessionState), outputConfigurationsBuildOutputConfigurations.getPostviewOutput()))) {
            return new CaptureSessionFactory.Result.Success(outputConfigurationsBuildOutputConfigurations.getDeferred(), outputConfigurationsBuildOutputConfigurations.getOutputSurfaceMap());
        }
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, "Failed to create ExtensionCaptureSession from " + cameraDeviceWrapper + " for " + captureSessionState + '!');
        }
        captureSessionState.onSessionFinalized();
        return CaptureSessionFactory.Result.Failed.INSTANCE;
    }
}

package androidx.camera.camera2.pipe.compat;

import android.view.Surface;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.InputStream;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import defpackage.mx2;
import defpackage.qn1;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidNSessionFactory implements CaptureSessionFactory {
    private final CameraGraph.Config graphConfig;
    private final StreamGraphImpl streamGraph;
    private final Threads threads;

    public AndroidNSessionFactory(Threads threads, StreamGraphImpl streamGraphImpl, CameraGraph.Config config) {
        threads.getClass();
        streamGraphImpl.getClass();
        config.getClass();
        this.threads = threads;
        this.streamGraph = streamGraphImpl;
        this.graphConfig = config;
    }

    @Override // androidx.camera.camera2.pipe.compat.CaptureSessionFactory
    public CaptureSessionFactory.Result create(CameraDeviceWrapper cameraDeviceWrapper, Map<StreamId, ? extends Surface> map, CaptureSessionState captureSessionState) {
        boolean zCreateReprocessableCaptureSessionByConfigurations;
        cameraDeviceWrapper.getClass();
        map.getClass();
        captureSessionState.getClass();
        OutputConfigurations outputConfigurationsBuildOutputConfigurations = CaptureSessionFactoryKt.buildOutputConfigurations(this.graphConfig, this.streamGraph, map);
        if (outputConfigurationsBuildOutputConfigurations.getAll().isEmpty()) {
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w(Log.TAG, "Failed to create OutputConfigurations for " + this.graphConfig);
            }
            captureSessionState.onSessionFinalized();
            return CaptureSessionFactory.Result.Failed.INSTANCE;
        }
        if (this.graphConfig.getInput() == null) {
            zCreateReprocessableCaptureSessionByConfigurations = cameraDeviceWrapper.createCaptureSessionByOutputConfigurations(outputConfigurationsBuildOutputConfigurations.getAll(), captureSessionState);
        } else {
            OutputStream.Config config = (OutputStream.Config) qn1.k0(((InputStream.Config) qn1.k0(this.graphConfig.getInput())).getStream().getOutputs());
            zCreateReprocessableCaptureSessionByConfigurations = cameraDeviceWrapper.createReprocessableCaptureSessionByConfigurations(new InputConfigData(config.getSize().getWidth(), config.getSize().getHeight(), config.m534getFormat8FPWQzE()), outputConfigurationsBuildOutputConfigurations.getAll(), captureSessionState);
        }
        if (zCreateReprocessableCaptureSessionByConfigurations) {
            return new CaptureSessionFactory.Result.Success(mx2.b, outputConfigurationsBuildOutputConfigurations.getOutputSurfaceMap());
        }
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, "Failed to create capture session from " + cameraDeviceWrapper + " for " + captureSessionState + '!');
        }
        captureSessionState.onSessionFinalized();
        return CaptureSessionFactory.Result.Failed.INSTANCE;
    }
}

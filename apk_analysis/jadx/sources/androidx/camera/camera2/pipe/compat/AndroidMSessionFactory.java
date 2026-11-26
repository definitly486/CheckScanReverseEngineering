package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.params.InputConfiguration;
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
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidMSessionFactory implements CaptureSessionFactory {
    private final CameraGraph.Config graphConfig;
    private final StreamGraphImpl streamGraph;
    private final Threads threads;

    public AndroidMSessionFactory(Threads threads, StreamGraphImpl streamGraphImpl, CameraGraph.Config config) {
        threads.getClass();
        streamGraphImpl.getClass();
        config.getClass();
        this.threads = threads;
        this.streamGraph = streamGraphImpl;
        this.graphConfig = config;
    }

    @Override // androidx.camera.camera2.pipe.compat.CaptureSessionFactory
    public CaptureSessionFactory.Result create(CameraDeviceWrapper cameraDeviceWrapper, Map<StreamId, ? extends Surface> map, CaptureSessionState captureSessionState) {
        cameraDeviceWrapper.getClass();
        map.getClass();
        captureSessionState.getClass();
        if (this.graphConfig.getInput() != null) {
            OutputStream.Config config = (OutputStream.Config) qn1.k0(((InputStream.Config) qn1.k0(this.graphConfig.getInput())).getStream().getOutputs());
            InputConfiguration inputConfiguration = new InputConfiguration(config.getSize().getWidth(), config.getSize().getHeight(), config.m534getFormat8FPWQzE());
            ArrayList arrayList = new ArrayList(map.size());
            Iterator<Map.Entry<StreamId, ? extends Surface>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getValue());
            }
            if (!cameraDeviceWrapper.createReprocessableCaptureSession(inputConfiguration, arrayList, captureSessionState)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to create reprocessable captures session from " + cameraDeviceWrapper + " for " + captureSessionState + '!');
                }
                captureSessionState.onSessionFinalized();
                return CaptureSessionFactory.Result.Failed.INSTANCE;
            }
        } else {
            ArrayList arrayList2 = new ArrayList(map.size());
            Iterator<Map.Entry<StreamId, ? extends Surface>> it2 = map.entrySet().iterator();
            while (it2.hasNext()) {
                arrayList2.add(it2.next().getValue());
            }
            if (!cameraDeviceWrapper.createCaptureSession(arrayList2, captureSessionState)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w(Log.TAG, "Failed to create captures session from " + cameraDeviceWrapper + " for " + captureSessionState + '!');
                }
                captureSessionState.onSessionFinalized();
                return CaptureSessionFactory.Result.Failed.INSTANCE;
            }
        }
        return new CaptureSessionFactory.Result.Success(mx2.b, CaptureSessionFactoryKt.buildSimpleOutputSurfaceMap(map, this.streamGraph));
    }
}

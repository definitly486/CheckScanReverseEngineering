package androidx.camera.camera2.pipe.compat;

import android.view.Surface;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import defpackage.mx2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidMHighSpeedSessionFactory implements CaptureSessionFactory {
    private final StreamGraphImpl streamGraph;
    private final Threads threads;

    public AndroidMHighSpeedSessionFactory(StreamGraphImpl streamGraphImpl, Threads threads) {
        streamGraphImpl.getClass();
        threads.getClass();
        this.streamGraph = streamGraphImpl;
        this.threads = threads;
    }

    @Override // androidx.camera.camera2.pipe.compat.CaptureSessionFactory
    public CaptureSessionFactory.Result create(CameraDeviceWrapper cameraDeviceWrapper, Map<StreamId, ? extends Surface> map, CaptureSessionState captureSessionState) {
        cameraDeviceWrapper.getClass();
        map.getClass();
        captureSessionState.getClass();
        ArrayList arrayList = new ArrayList(map.size());
        Iterator<Map.Entry<StreamId, ? extends Surface>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getValue());
        }
        if (cameraDeviceWrapper.createConstrainedHighSpeedCaptureSession(arrayList, captureSessionState)) {
            return new CaptureSessionFactory.Result.Success(mx2.b, CaptureSessionFactoryKt.buildSimpleOutputSurfaceMap(map, this.streamGraph));
        }
        if (Log.INSTANCE.getWARN_LOGGABLE()) {
            android.util.Log.w(Log.TAG, "Failed to create ConstrainedHighSpeedCaptureSession from " + cameraDeviceWrapper + " for " + captureSessionState + '!');
        }
        captureSessionState.onSessionFinalized();
        return CaptureSessionFactory.Result.Failed.INSTANCE;
    }
}

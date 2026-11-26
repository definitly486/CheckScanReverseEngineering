package defpackage;

import androidx.camera.camera2.impl.CameraCallbackMap;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.impl.CameraCaptureCallback;
import com.google.firebase.perf.transport.TransportManager;
import com.google.firebase.perf.v1.ApplicationProcessState;
import com.google.firebase.perf.v1.GaugeMetric;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zz0 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ zz0(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.e;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                CameraCallbackMap.onRequestSequenceAborted$lambda$1((CameraCaptureCallback) obj3, (CameraCallbackMap) obj2, (RequestMetadata) obj);
                break;
            default:
                ((TransportManager) obj3).lambda$log$4((GaugeMetric) obj2, (ApplicationProcessState) obj);
                break;
        }
    }
}

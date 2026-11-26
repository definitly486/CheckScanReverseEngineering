package defpackage;

import androidx.camera.core.Preview;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraPresenceProvider;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n11 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ n11(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                CameraPresenceProvider.setupCameraStateObserver$lambda$0$1((CameraInfoInternal) obj2, (m11) obj);
                break;
            default:
                ((Preview) obj2).lambda$createPipeline$0((CameraInternal) obj);
                break;
        }
    }
}

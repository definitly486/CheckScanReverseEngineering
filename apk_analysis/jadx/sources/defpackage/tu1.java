package defpackage;

import androidx.camera.lifecycle.LifecycleCameraProviderImpl;
import androidx.lifecycle.ComputableLiveData;
import yads.j76;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class tu1 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ tu1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ComputableLiveData.invalidationRunnable$lambda$0((ComputableLiveData) obj);
                break;
            case 1:
                LifecycleCameraProviderImpl.shutdownAsync$lambda$0((LifecycleCameraProviderImpl) obj);
                break;
            default:
                j76.a((j76) obj);
                break;
        }
    }
}

package defpackage;

import androidx.camera.core.processing.SurfaceEdge;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.paging.LivePagedList;
import yads.r85;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class cs4 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ cs4(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((LivePagedList) obj).invalidate(true);
                break;
            case 1:
                ProcessLifecycleOwner.delayedPauseRunnable$lambda$0((ProcessLifecycleOwner) obj);
                break;
            case 2:
                ((SurfaceEdge) obj).lambda$createSurfaceRequest$0();
                break;
            default:
                ((r85) obj).a();
                break;
        }
    }
}

package defpackage;

import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class mx1 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ mx1(int i, Object obj, Object obj2) {
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
                ConstraintTracker._set_state_$lambda$4$lambda$3((List) obj2, (ConstraintTracker) obj);
                break;
            default:
                ((DrmSessionEventListener.EventDispatcher) obj2).lambda$drmKeysRestored$3((DrmSessionEventListener) obj);
                break;
        }
    }
}

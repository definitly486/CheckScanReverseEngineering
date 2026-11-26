package defpackage;

import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import com.my.tracker.obfuscated.a3;
import com.my.tracker.obfuscated.i0;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ct2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ct2(int i, Object obj, Object obj2) {
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
                ((DrmSessionEventListener.EventDispatcher) obj2).lambda$drmSessionReleased$5((DrmSessionEventListener) obj);
                break;
            case 1:
                ((a3) obj2).a((Runnable) obj);
                break;
            default:
                ((i0) obj2).a((List) obj);
                break;
        }
    }
}

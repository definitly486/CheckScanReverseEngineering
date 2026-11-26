package defpackage;

import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import yads.l66;
import yads.lr1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class wg implements Consumer, l66 {
    public static /* synthetic */ void c(Object obj, String str, Object obj2) {
        throw new IllegalStateException((str + obj + obj2).toString());
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return lr1.d(((Double) obj).doubleValue());
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        ((DrmSessionEventListener.EventDispatcher) obj).drmKeysRemoved();
    }
}

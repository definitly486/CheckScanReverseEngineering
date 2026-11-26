package yads;

import android.util.LruCache;

/* JADX INFO: loaded from: classes6.dex */
public final class ar2 extends LruCache {
    public ar2(int i) {
        super(i);
    }

    @Override // android.util.LruCache
    public final void entryRemoved(boolean z, Object obj, Object obj2, Object obj3) {
        gr2 gr2Var = (gr2) obj2;
        if (gr2Var != null) {
            gr2Var.g();
        }
    }
}

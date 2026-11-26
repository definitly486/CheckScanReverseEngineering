package androidx.compose.foundation.lazy.layout;

import defpackage.jh2;
import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class CachedItem {
    private Object key;
    private int mainAxisSize;
    public static final NoKey NoKey = new NoKey(null);
    public static final int $stable = 8;

    public CachedItem(Object obj, int i) {
        this.key = obj;
        this.mainAxisSize = i;
    }

    public final Object getKey() {
        return this.key;
    }

    public final int getMainAxisSize() {
        return this.mainAxisSize;
    }

    public final void setKey(Object obj) {
        this.key = obj;
    }

    public final void setMainAxisSize(int i) {
        this.mainAxisSize = i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CachedItem(key=");
        sb.append(this.key);
        sb.append(", mainAxisSize=");
        return rg.h(sb, this.mainAxisSize, ')');
    }

    public static final class NoKey {
        public /* synthetic */ NoKey(jh2 jh2Var) {
            this();
        }

        private NoKey() {
        }
    }
}

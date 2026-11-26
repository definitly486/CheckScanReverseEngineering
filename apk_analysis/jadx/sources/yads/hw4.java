package yads;

import android.util.SparseBooleanArray;

/* JADX INFO: loaded from: classes6.dex */
public final class hw4 implements kv {
    public static final hw4 c = new hw4(new my2(new SparseBooleanArray()));
    public final my2 b;

    public hw4(my2 my2Var) {
        this.b = my2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof hw4) {
            return this.b.equals(((hw4) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}

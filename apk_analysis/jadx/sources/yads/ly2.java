package yads;

import android.util.SparseBooleanArray;

/* JADX INFO: loaded from: classes6.dex */
public final class ly2 {
    public final SparseBooleanArray a = new SparseBooleanArray();
    public boolean b;

    public final my2 a() {
        if (this.b) {
            defpackage.ud.g();
            return null;
        }
        this.b = true;
        return new my2(this.a);
    }

    public final ly2 a(int i) {
        if (!this.b) {
            this.a.append(i, true);
            return this;
        }
        defpackage.ud.g();
        return null;
    }
}

package defpackage;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes3.dex */
public final class g07 implements dy1 {
    public final String a;
    public final sl<PointF, PointF> b;
    public final sl<PointF, PointF> c;
    public final dl d;
    public final boolean e;

    public g07(String str, sl slVar, hl hlVar, dl dlVar, boolean z) {
        this.a = str;
        this.b = slVar;
        this.c = hlVar;
        this.d = dlVar;
        this.e = z;
    }

    @Override // defpackage.dy1
    public final sx1 a(ox4 ox4Var, nw4 nw4Var, nd0 nd0Var) {
        return new f07(ox4Var, nd0Var, this);
    }

    public final String toString() {
        return "RectangleShape{position=" + this.b + ", size=" + this.c + '}';
    }
}

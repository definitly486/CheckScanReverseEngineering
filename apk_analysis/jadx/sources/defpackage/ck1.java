package defpackage;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes3.dex */
public final class ck1 implements dy1 {
    public final String a;
    public final sl<PointF, PointF> b;
    public final hl c;
    public final boolean d;
    public final boolean e;

    public ck1(String str, sl<PointF, PointF> slVar, hl hlVar, boolean z, boolean z2) {
        this.a = str;
        this.b = slVar;
        this.c = hlVar;
        this.d = z;
        this.e = z2;
    }

    @Override // defpackage.dy1
    public final sx1 a(ox4 ox4Var, nw4 nw4Var, nd0 nd0Var) {
        return new ew2(ox4Var, nd0Var, this);
    }
}

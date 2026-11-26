package defpackage;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes3.dex */
public final class ga6 implements dy1 {
    public final String a;
    public final a b;
    public final dl c;
    public final sl<PointF, PointF> d;
    public final dl e;
    public final dl f;
    public final dl g;
    public final dl h;
    public final dl i;
    public final boolean j;
    public final boolean k;

    public enum a {
        STAR(1),
        POLYGON(2);

        private final int value;

        a(int i) {
            this.value = i;
        }

        public static a a(int i) {
            for (a aVar : values()) {
                if (aVar.value == i) {
                    return aVar;
                }
            }
            return null;
        }
    }

    public ga6(String str, a aVar, dl dlVar, sl<PointF, PointF> slVar, dl dlVar2, dl dlVar3, dl dlVar4, dl dlVar5, dl dlVar6, boolean z, boolean z2) {
        this.a = str;
        this.b = aVar;
        this.c = dlVar;
        this.d = slVar;
        this.e = dlVar2;
        this.f = dlVar3;
        this.g = dlVar4;
        this.h = dlVar5;
        this.i = dlVar6;
        this.j = z;
        this.k = z2;
    }

    @Override // defpackage.dy1
    public final sx1 a(ox4 ox4Var, nw4 nw4Var, nd0 nd0Var) {
        return new fa6(ox4Var, nd0Var, this);
    }
}

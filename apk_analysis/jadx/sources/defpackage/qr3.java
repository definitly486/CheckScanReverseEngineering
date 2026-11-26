package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class qr3 implements dy1 {
    public final String a;
    public final tr3 b;
    public final el c;
    public final fl d;
    public final hl e;
    public final hl f;
    public final dl g;
    public final ds7.b h;
    public final ds7.c i;
    public final float j;
    public final ArrayList k;
    public final dl l;
    public final boolean m;

    public qr3(String str, tr3 tr3Var, el elVar, fl flVar, hl hlVar, hl hlVar2, dl dlVar, ds7.b bVar, ds7.c cVar, float f, ArrayList arrayList, dl dlVar2, boolean z) {
        this.a = str;
        this.b = tr3Var;
        this.c = elVar;
        this.d = flVar;
        this.e = hlVar;
        this.f = hlVar2;
        this.g = dlVar;
        this.h = bVar;
        this.i = cVar;
        this.j = f;
        this.k = arrayList;
        this.l = dlVar2;
        this.m = z;
    }

    @Override // defpackage.dy1
    public final sx1 a(ox4 ox4Var, nw4 nw4Var, nd0 nd0Var) {
        return new rr3(ox4Var, nd0Var, this);
    }
}

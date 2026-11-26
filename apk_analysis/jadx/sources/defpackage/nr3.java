package defpackage;

import android.graphics.Path;

/* JADX INFO: loaded from: classes3.dex */
public final class nr3 implements dy1 {
    public final tr3 a;
    public final Path.FillType b;
    public final el c;
    public final fl d;
    public final hl e;
    public final hl f;
    public final String g;
    public final boolean h;

    public nr3(String str, tr3 tr3Var, Path.FillType fillType, el elVar, fl flVar, hl hlVar, hl hlVar2, boolean z) {
        this.a = tr3Var;
        this.b = fillType;
        this.c = elVar;
        this.d = flVar;
        this.e = hlVar;
        this.f = hlVar2;
        this.g = str;
        this.h = z;
    }

    @Override // defpackage.dy1
    public final sx1 a(ox4 ox4Var, nw4 nw4Var, nd0 nd0Var) {
        return new or3(ox4Var, nw4Var, nd0Var, this);
    }
}

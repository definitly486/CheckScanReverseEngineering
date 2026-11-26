package defpackage;

import android.graphics.Path;

/* JADX INFO: loaded from: classes3.dex */
public final class ur7 implements dy1 {
    public final boolean a;
    public final Path.FillType b;
    public final String c;
    public final cl d;
    public final fl e;
    public final boolean f;

    public ur7(String str, boolean z, Path.FillType fillType, cl clVar, fl flVar, boolean z2) {
        this.c = str;
        this.a = z;
        this.b = fillType;
        this.d = clVar;
        this.e = flVar;
        this.f = z2;
    }

    @Override // defpackage.dy1
    public final sx1 a(ox4 ox4Var, nw4 nw4Var, nd0 nd0Var) {
        return new ea3(ox4Var, nd0Var, this);
    }

    public final String toString() {
        return sg.d(new StringBuilder("ShapeFill{color=, fillEnabled="), this.a, '}');
    }
}

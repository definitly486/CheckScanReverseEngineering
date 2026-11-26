package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class ww8 implements pz3 {
    public final int a;
    public final String b;
    public final String c;
    public final sq0 d;

    public ww8(int i, String str, String str2, sq0 sq0Var) {
        sq0Var.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = sq0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ww8)) {
            return false;
        }
        ww8 ww8Var = (ww8) obj;
        return this.a == ww8Var.a && this.b.equals(ww8Var.b) && this.c.equals(ww8Var.c) && this.d == ww8Var.d;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b;
    }

    public final int hashCode() {
        return this.d.hashCode() + zg.b((((this.b.hashCode() + (Integer.hashCode(this.a) * 31)) * 31) - 377565940) * 31, 31, this.c);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.b;
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "TitleWithYellowHelpButtonViewModel(id=", ", title=", this.b, ", helpButtonTitle=Как получать кэшбэк?, subTitle=");
        sbE.append(this.c);
        sbE.append(", direction=");
        sbE.append(this.d);
        sbE.append(")");
        return sbE.toString();
    }
}

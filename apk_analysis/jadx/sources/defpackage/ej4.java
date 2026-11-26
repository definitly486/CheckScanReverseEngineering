package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ej4 extends wh4 {
    public final String c;
    public final String d;
    public final int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ej4(String str, String str2, int i) {
        super(str2, i);
        str.getClass();
        str2.getClass();
        this.c = str;
        this.d = str2;
        this.e = i;
    }

    @Override // defpackage.wh4
    public final int d() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ej4)) {
            return false;
        }
        ej4 ej4Var = (ej4) obj;
        return aa4.e(this.c, ej4Var.c) && aa4.e(this.d, ej4Var.d) && this.e == ej4Var.e;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return ni0.c(this.d, this.c);
    }

    @Override // defpackage.wh4
    public final String getTitle() {
        return this.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.e) + zg.b(this.c.hashCode() * 31, 31, this.d);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.c;
    }

    public final String toString() {
        return l2.e(ad2.d("LandingLinkButtonViewModel(link=", this.c, ", title=", this.d, ", topSpace="), ")", this.e);
    }
}

package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class to2 extends uo2 {
    public final String e;
    public final String f;
    public final List g;
    public final List h;

    public to2(String str, String str2) {
        super(str2);
        this.e = str;
        this.f = str2;
        this.g = u96.h(str);
        this.h = defpackage.kx2.b;
    }

    @Override // yads.uo2
    public final Object a(bp2 bp2Var) {
        Object obj = bp2Var.a.a.get(this.e);
        if (obj != null) {
            return obj;
        }
        throw new b94(this.e);
    }

    @Override // yads.uo2
    public final List b() {
        return this.h;
    }

    @Override // yads.uo2
    public final List d() {
        return this.g;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof to2)) {
            return false;
        }
        to2 to2Var = (to2) obj;
        return defpackage.aa4.e(this.e, to2Var.e) && defpackage.aa4.e(this.f, to2Var.f);
    }

    public final int hashCode() {
        return this.f.hashCode() + (this.e.hashCode() * 31);
    }

    public final String toString() {
        return this.e;
    }
}

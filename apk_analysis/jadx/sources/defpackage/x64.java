package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class x64 {
    public final String a;
    public final ArrayList b;

    public x64(String str, ArrayList arrayList) {
        str.getClass();
        this.a = str;
        this.b = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x64)) {
            return false;
        }
        x64 x64Var = (x64) obj;
        return aa4.e(this.a, x64Var.a) && this.b.equals(x64Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "InsuranceShowcase(toolbarTitle=" + this.a + ", items=" + this.b + ")";
    }
}

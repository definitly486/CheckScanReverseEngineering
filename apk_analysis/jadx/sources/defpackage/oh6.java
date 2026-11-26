package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class oh6 {
    public final String a;
    public final List<pz3> b;

    /* JADX WARN: Multi-variable type inference failed */
    public oh6(String str, List<? extends pz3> list) {
        this.a = str;
        this.b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oh6)) {
            return false;
        }
        oh6 oh6Var = (oh6) obj;
        return this.a.equals(oh6Var.a) && this.b.equals(oh6Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ProductContent(imageUrl=" + this.a + ", items=" + this.b + ")";
    }
}

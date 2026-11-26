package defpackage;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class s95 {
    public final String a;
    public final String b;
    public final String c;
    public final int d;

    public s95(String str, int i, String str2, String str3) {
        this.a = str;
        this.d = i;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof s95)) {
            return false;
        }
        s95 s95Var = (s95) obj;
        return this.d == s95Var.d && this.a.equals(s95Var.a) && this.b.equals(s95Var.b) && Objects.equals(this.c, s95Var.c);
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b, this.c, Integer.valueOf(this.d));
    }
}

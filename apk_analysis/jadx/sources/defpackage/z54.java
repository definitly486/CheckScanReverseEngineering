package defpackage;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class z54 {
    public final String a;
    public final String b;
    public final Long c;
    public final Long d;
    public final Long e;

    public z54(String str, String str2, Long l, Long l2, Long l3) {
        this.a = str;
        this.b = str2;
        this.c = l;
        this.d = l2;
        this.e = l3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z54)) {
            return false;
        }
        z54 z54Var = (z54) obj;
        return Objects.equals(this.a, z54Var.a) && Objects.equals(this.b, z54Var.b) && this.c.equals(z54Var.c) && this.d.equals(z54Var.d) && this.e.equals(z54Var.e);
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b, this.c, this.d, this.e);
    }
}

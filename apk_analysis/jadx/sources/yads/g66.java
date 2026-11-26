package yads;

import defpackage.rs2;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class g66 implements i66 {
    public final List a;

    public g66() {
        this.a = defpackage.kx2.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g66) && defpackage.aa4.e(this.a, ((g66) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return rs2.c("Success(warnings=", this.a, ")");
    }

    public g66(List list) {
        this.a = list;
    }
}

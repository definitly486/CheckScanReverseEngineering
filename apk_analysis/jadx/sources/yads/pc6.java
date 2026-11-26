package yads;

import defpackage.rs2;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class pc6 extends qc6 {
    public final List a;

    public pc6(List list) {
        this.a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof pc6) && defpackage.aa4.e(this.a, ((pc6) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return rs2.c("Success(result=", this.a, ")");
    }
}

package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class l45 {
    public final List a;
    public final mb1 b;

    public l45(List list) {
        mb1 mb1Var = mb1.ABORT_TRANSACTION;
        this.a = list;
        this.b = mb1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l45)) {
            return false;
        }
        l45 l45Var = (l45) obj;
        return defpackage.aa4.e(this.a, l45Var.a) && this.b == l45Var.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Payload(jsons=" + this.a + ", actionOnError=" + this.b + ")";
    }
}

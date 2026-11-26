package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class lo3 {
    public final jo3 a;
    public final Integer b;

    public lo3(jo3 jo3Var, Integer num) {
        jo3Var.getClass();
        this.a = jo3Var;
        this.b = num;
    }

    public static lo3 a(lo3 lo3Var, jo3 jo3Var, Integer num, int i) {
        if ((i & 1) != 0) {
            jo3Var = lo3Var.a;
        }
        if ((i & 2) != 0) {
            num = lo3Var.b;
        }
        lo3Var.getClass();
        jo3Var.getClass();
        return new lo3(jo3Var, num);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lo3)) {
            return false;
        }
        lo3 lo3Var = (lo3) obj;
        return aa4.e(this.a, lo3Var.a) && aa4.e(this.b, lo3Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Integer num = this.b;
        return iHashCode + (num == null ? 0 : num.hashCode());
    }

    public final String toString() {
        return "GamesUiState(screen=" + this.a + ", message=" + this.b + ")";
    }

    public lo3() {
        this(0);
    }

    public /* synthetic */ lo3(int i) {
        this(jo3.c.a, null);
    }
}

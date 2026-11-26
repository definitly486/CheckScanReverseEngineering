package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ey5 implements gy5 {
    public final Number a;

    public /* synthetic */ ey5(Number number) {
        this.a = number;
    }

    public static final /* synthetic */ ey5 a(Number number) {
        return new ey5(number);
    }

    public static Number b(Number number) {
        return number;
    }

    public static String c(Number number) {
        return "Num(value=" + number + ")";
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ey5) && defpackage.aa4.e(this.a, ((ey5) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return c(this.a);
    }

    public final /* synthetic */ Number a() {
        return this.a;
    }
}

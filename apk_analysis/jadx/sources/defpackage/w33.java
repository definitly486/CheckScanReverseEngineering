package defpackage;

import androidx.media3.common.C;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public final class w33 {
    public Random a;
    public long b;
    public double c;
    public double d;
    public long e;

    public static final class a implements i00 {
        public final w33 a() {
            w33 w33Var = new w33();
            w33Var.a = new Random();
            w33Var.b = 120000000000L;
            w33Var.c = 1.6d;
            w33Var.d = 0.2d;
            w33Var.e = C.NANOS_PER_SECOND;
            return w33Var;
        }
    }

    public final long a() {
        long j = this.e;
        double d = j;
        this.e = Math.min((long) (this.c * d), this.b);
        double d2 = this.d;
        double d3 = (-d2) * d;
        double d4 = d2 * d;
        o8.e(d4 >= d3);
        return j + ((long) ((this.a.nextDouble() * (d4 - d3)) + d3));
    }
}

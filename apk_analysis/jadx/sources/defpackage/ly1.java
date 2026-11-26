package defpackage;

import androidx.media3.common.C;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class ly1 implements ic6 {
    public static final String b(long j) {
        String strB;
        if (j <= -999500000) {
            strB = k2.b((j - 500000000) / C.NANOS_PER_SECOND, " s ", new StringBuilder());
        } else if (j <= -999500) {
            strB = k2.b((j - 500000) / 1000000, " ms", new StringBuilder());
        } else if (j <= 0) {
            strB = k2.b((j - 500) / 1000, " µs", new StringBuilder());
        } else if (j < 999500) {
            strB = k2.b((j + 500) / 1000, " µs", new StringBuilder());
        } else if (j < 999500000) {
            strB = k2.b((j + 500000) / 1000000, " ms", new StringBuilder());
        } else {
            strB = k2.b((j + 500000000) / C.NANOS_PER_SECOND, " s ", new StringBuilder());
        }
        return String.format("%6s", Arrays.copyOf(new Object[]{strB}, 1));
    }

    public static final ne4 c(mp7 mp7Var) {
        mp7Var.getClass();
        if (mp7Var instanceof my1) {
            return ((my1) mp7Var).b;
        }
        if (mp7Var instanceof np7) {
            return c(((np7) mp7Var).a);
        }
        return null;
    }

    public static ap7 d(bm3 bm3Var) {
        ap7 ap7Var = new ap7();
        ap7Var.e = zya.a(ap7Var, ap7Var, bm3Var);
        return ap7Var;
    }

    public static final void e(jl8 jl8Var, do8 do8Var, String str) {
        ho8.i.fine(do8Var.b + ' ' + String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1)) + ": " + jl8Var.a);
    }

    @Override // defpackage.ic6
    public void a(String str) {
    }
}

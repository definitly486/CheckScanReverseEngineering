package yads;

import android.os.Bundle;
import defpackage.u4;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class fq5 extends z35 {
    public static final jv e = new u4();
    public final int c;
    public final float d;

    public fq5(int i, float f) {
        boolean z = false;
        zj.a("maxStars must be a positive integer", i > 0);
        if (f >= 0.0f && f <= i) {
            z = true;
        }
        zj.a("starRating is out of range [0, maxStars]", z);
        this.c = i;
        this.d = f;
    }

    public static fq5 b(Bundle bundle) {
        if (bundle.getInt(Integer.toString(0, 36), -1) != 2) {
            defpackage.mi2.b();
            return null;
        }
        int i = bundle.getInt(Integer.toString(1, 36), 5);
        float f = bundle.getFloat(Integer.toString(2, 36), -1.0f);
        return f == -1.0f ? new fq5(i) : new fq5(i, f);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof fq5)) {
            return false;
        }
        fq5 fq5Var = (fq5) obj;
        return this.c == fq5Var.c && this.d == fq5Var.d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.c), Float.valueOf(this.d)});
    }

    public fq5(int i) {
        zj.a("maxStars must be a positive integer", i > 0);
        this.c = i;
        this.d = -1.0f;
    }
}

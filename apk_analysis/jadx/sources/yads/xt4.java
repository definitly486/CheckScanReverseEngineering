package yads;

import android.os.Bundle;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class xt4 extends z35 {
    public static final jv d = new defpackage.zg();
    public final float c;

    public xt4(float f) {
        zj.a("percent must be in the range of [0, 100]", f >= 0.0f && f <= 100.0f);
        this.c = f;
    }

    public static xt4 b(Bundle bundle) {
        if (bundle.getInt(Integer.toString(0, 36), -1) == 1) {
            float f = bundle.getFloat(Integer.toString(1, 36), -1.0f);
            return f == -1.0f ? new xt4() : new xt4(f);
        }
        defpackage.mi2.b();
        return null;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof xt4) && this.c == ((xt4) obj).c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.c)});
    }

    public xt4() {
        this.c = -1.0f;
    }
}

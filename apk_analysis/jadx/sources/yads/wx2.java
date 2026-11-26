package yads;

import android.content.Context;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class wx2 implements sl5 {
    public final rl5 a;
    public final so b;
    public final int c;
    public final int d;
    public final String e;

    public wx2(int i, int i2, rl5 rl5Var, so soVar, int i3) {
        soVar = (i3 & 8) != 0 ? null : soVar;
        this.a = rl5Var;
        this.b = soVar;
        this.c = (i >= 0 || -1 == i) ? i : 0;
        this.d = (i2 >= 0 || -2 == i2) ? i2 : 0;
        this.e = String.format(Locale.US, "%dx%d", Arrays.copyOf(new Object[]{Integer.valueOf(i), Integer.valueOf(i2)}, 2));
    }

    @Override // yads.sl5
    public final int a(Context context) {
        int i = this.d;
        return -2 == i ? eh6.b(context) : i;
    }

    @Override // yads.sl5
    public final rl5 b() {
        return this.a;
    }

    @Override // yads.sl5
    public final int c(Context context) {
        int i = this.c;
        return -1 == i ? eh6.d(context) : i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && wx2.class.equals(obj.getClass())) {
            wx2 wx2Var = (wx2) obj;
            if (this.c == wx2Var.c && this.d == wx2Var.d && this.a == wx2Var.a) {
                return true;
            }
        }
        return false;
    }

    @Override // yads.sl5
    public final int getHeight() {
        return this.d;
    }

    @Override // yads.sl5
    public final int getWidth() {
        return this.c;
    }

    public final int hashCode() {
        return this.a.hashCode() + l4.a(((this.c * 31) + this.d) * 31, 31, this.e);
    }

    public final String toString() {
        return this.e;
    }

    @Override // yads.sl5
    public final so a() {
        return this.b;
    }
}

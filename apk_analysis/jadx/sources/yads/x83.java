package yads;

import android.os.Bundle;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class x83 extends z35 {
    public static final jv e = new defpackage.g2(9);
    public final boolean c;
    public final boolean d;

    public x83() {
        this.c = false;
        this.d = false;
    }

    public static x83 b(Bundle bundle) {
        if (bundle.getInt(Integer.toString(0, 36), -1) == 0) {
            return bundle.getBoolean(Integer.toString(1, 36), false) ? new x83(bundle.getBoolean(Integer.toString(2, 36), false)) : new x83();
        }
        defpackage.mi2.b();
        return null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof x83)) {
            return false;
        }
        x83 x83Var = (x83) obj;
        return this.d == x83Var.d && this.c == x83Var.c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.c), Boolean.valueOf(this.d)});
    }

    public x83(boolean z) {
        this.c = true;
        this.d = z;
    }
}

package yads;

import android.os.Bundle;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class sw5 extends z35 {
    public static final jv e = new defpackage.ag();
    public final boolean c;
    public final boolean d;

    public sw5() {
        this.c = false;
        this.d = false;
    }

    public static sw5 b(Bundle bundle) {
        if (bundle.getInt(Integer.toString(0, 36), -1) == 3) {
            return bundle.getBoolean(Integer.toString(1, 36), false) ? new sw5(bundle.getBoolean(Integer.toString(2, 36), false)) : new sw5();
        }
        defpackage.mi2.b();
        return null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof sw5)) {
            return false;
        }
        sw5 sw5Var = (sw5) obj;
        return this.d == sw5Var.d && this.c == sw5Var.c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.c), Boolean.valueOf(this.d)});
    }

    public sw5(boolean z) {
        this.c = true;
        this.d = z;
    }
}

package yads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes6.dex */
public abstract class z35 implements kv {
    public static final jv b = new defpackage.yq(9);

    public static z35 a(Bundle bundle) {
        int i = bundle.getInt(Integer.toString(0, 36), -1);
        if (i == 0) {
            return (z35) x83.e.a(bundle);
        }
        if (i == 1) {
            return (z35) xt4.d.a(bundle);
        }
        if (i == 2) {
            return (z35) fq5.e.a(bundle);
        }
        if (i == 3) {
            return (z35) sw5.e.a(bundle);
        }
        defpackage.fg.c(vx4.a(i, "Unknown RatingType: "));
        return null;
    }
}

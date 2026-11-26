package yads;

import android.content.Context;
import android.os.Build;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class zn0 {
    public final bo0 a;
    public final fv3 b;
    public final kb5 c;

    public zn0() {
        bo0 bo0Var = new bo0();
        fv3 fv3Var = new fv3();
        this.a = bo0Var;
        this.b = fv3Var;
        this.c = kb5.a;
    }

    public static String b() {
        return Build.VERSION.RELEASE;
    }

    public final String a(Context context) {
        String lowerCase = this.a.a(context).name().toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        return lowerCase;
    }

    public static String a() {
        return Build.MANUFACTURER;
    }
}

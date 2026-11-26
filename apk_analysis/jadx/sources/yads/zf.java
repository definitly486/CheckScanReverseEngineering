package yads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;

/* JADX INFO: loaded from: classes6.dex */
public final class zf {
    public final Context a;
    public final zn0 b;

    public zf(Context context, zn0 zn0Var) {
        this.a = context;
        this.b = zn0Var;
    }

    public final we0 a() {
        PackageManager packageManager = this.a.getPackageManager();
        int i = Build.VERSION.SDK_INT;
        Context context = this.a;
        PackageInfo packageInfo = i >= 33 ? packageManager.getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L)) : packageManager.getPackageInfo(context.getPackageName(), 0);
        this.b.getClass();
        String strB = zn0.b();
        if (strB == null) {
            strB = "Undefined";
        }
        String strConcat = "Android ".concat(strB);
        String strB2 = defpackage.jh.b(i, "API ");
        String str = packageInfo.packageName;
        String str2 = packageInfo.versionName;
        if (str2 == null) {
            str2 = "";
        }
        return new we0(str, str2, strConcat, strB2);
    }
}

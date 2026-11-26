package defpackage;

import android.content.Context;
import android.os.Build;
import com.google.firebase.remoteconfig.RemoteConfigConstants;

/* JADX INFO: loaded from: classes2.dex */
public final class ow9 {
    public final Context a;
    public final xa5 b;

    public ow9(Context context, xa5 xa5Var) {
        this.a = context;
        this.b = xa5Var;
    }

    public final long a() {
        Object aVar;
        try {
            int i = Build.VERSION.SDK_INT;
            Context context = this.a;
            aVar = Long.valueOf(i >= 28 ? context.getPackageManager().getPackageInfo(context.getPackageName(), 0).getLongVersionCode() : context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) != null) {
            aVar = 0L;
        }
        return ((Number) aVar).longValue();
    }

    public final void b(uz4 uz4Var) {
        uz4Var.put(RemoteConfigConstants.RequestFieldKey.SDK_VERSION, "10.0.0");
        uz4Var.put(RemoteConfigConstants.RequestFieldKey.APP_VERSION, String.valueOf(a()));
        String packageName = this.a.getPackageName();
        packageName.getClass();
        uz4Var.put("package_name", packageName);
        uz4Var.put("sdkName", "ru.rustore.sdk:installreferrer");
    }

    public final void c(String str, uz4 uz4Var) {
        ya5 ya5Var = new ya5(str, uz4Var, System.currentTimeMillis());
        x2a x2aVar = (x2a) this.b.b;
        f18 f18Var = new f18(new k08(new s1a(x2aVar, ya5Var)), x2aVar.d);
        jo2 jo2VarA = po2.a();
        jo2VarA.getClass();
        f18 f18Var2 = new f18(f18Var, jo2VarA);
        lw9 lw9Var = lw9.f;
        lw9Var.getClass();
        d31.r(new v08(f18Var2, lw9Var), v03.a, mw9.f);
    }
}

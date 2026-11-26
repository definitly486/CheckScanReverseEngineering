package com.my.tracker.obfuscated;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.text.TextUtils;
import com.my.tracker.obfuscated.a1;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a1 {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Context context, c3 c3Var, i0 i0Var, a2 a2Var) {
        String str;
        String str2;
        c3 c3Var2;
        char c;
        PackageInfo packageInfoA = w.a(context);
        if (packageInfoA != null) {
            String string = Build.VERSION.SDK_INT >= 28 ? Long.toString(packageInfoA.getLongVersionCode()) : Integer.toString(packageInfoA.versionCode);
            str = packageInfoA.versionName;
            str2 = string;
        } else {
            str = "";
            str2 = str;
        }
        t1 t1VarA = t1.a(context);
        String strA = t1VarA.a();
        String strG = c3Var.g();
        if (strG.equals(t1VarA.c())) {
            c3Var2 = c3Var;
            if (str2.equals(strA)) {
                c = 0;
            } else {
                if (strA.isEmpty()) {
                    b3.a("InstallHandler: tracking update");
                } else {
                    b3.a("InstallHandler: tracking update from" + strA + " to " + str2);
                }
                i0Var.a(t1VarA.f(), strA, str, str2, w.b(context));
                c = 2;
            }
        } else {
            b3.a("InstallHandler: tracking install");
            long jB = packageInfoA != null ? z2.b(packageInfoA.firstInstallTime) : 0L;
            c3Var2 = c3Var;
            s1 s1VarA = s1.a(i0Var, c3Var2, context);
            s1.a aVarA = s1VarA.a();
            i0Var.a(jB, w.b(context), aVarA);
            if (aVarA == null) {
                s1VarA.c();
            }
            t1VarA.e(strG);
            c = 1;
        }
        long j = t1VarA.j();
        long jA = z2.a();
        String strB = c3Var2.b();
        if (!TextUtils.isEmpty(strB)) {
            if (jA - j < 604800 || j == 0) {
                b3.a("InstallHandler: tracking apkPreinstallParams");
                i0Var.d(strB);
            } else {
                b3.a("InstallHandler: can't track apkPreinstallParams, tracking period has ended");
            }
        }
        if (c == 0) {
            b3.a("InstallHandler: no install/update");
            a2Var.a(j);
            return;
        }
        if (c == 1) {
            t1VarA.b(jA);
            a2Var.a(jA);
        } else if (c == 2) {
            a2Var.a(j);
        }
        t1VarA.d(str2);
        t1VarA.g(str);
        t1VarA.c(jA);
    }

    public static void a(final c3 c3Var, final i0 i0Var, final a2 a2Var, final Context context) {
        m.a(new Runnable() { // from class: ym9
            @Override // java.lang.Runnable
            public final void run() {
                a1.a(context, c3Var, i0Var, a2Var);
            }
        });
    }
}

package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

/* JADX INFO: loaded from: classes4.dex */
public final class ra6 {
    public static final Object a = new Object();

    public static final class a {
        public static void a(Context context, ta6 ta6Var) {
            String str;
            List list;
            String str2;
            ic6 ly1Var = ta6Var.v;
            if (ly1Var instanceof mc6) {
                ly1Var = new ly1();
            }
            ly1Var.getClass();
            ta6Var.v = ly1Var;
            PackageInfo packageInfoB = za6.b(context, ta6Var);
            String str3 = "";
            if (packageInfoB == null || (str = packageInfoB.packageName) == null) {
                str = "";
            }
            if (packageInfoB != null && (str2 = packageInfoB.versionName) != null) {
                str3 = str2;
            }
            long jF = packageInfoB != null ? za6.f(packageInfoB) : 0L;
            if (str.length() > 0 && !ra8.C(str, "android.", false)) {
                ta6Var.q.a.add(str);
            }
            ob6 ua6Var = ta6Var.x;
            if (ua6Var == null) {
                ua6Var = new ua6(context, ta6Var);
            }
            ta6Var.x = ua6Var;
            File dir = context.getDir("app_posthog-disk-queue", 0);
            File file = new File(context.getCacheDir(), "posthog-disk-queue");
            File file2 = new File(context.getCacheDir(), "posthog-disk-replay-queue");
            File file3 = new File(context.getCacheDir(), "posthog-disk-logs-queue");
            String absolutePath = ta6Var.A;
            if (absolutePath == null) {
                absolutePath = dir.getAbsolutePath();
            }
            ta6Var.A = absolutePath;
            String absolutePath2 = ta6Var.B;
            if (absolutePath2 == null) {
                absolutePath2 = file.getAbsolutePath();
            }
            ta6Var.B = absolutePath2;
            String absolutePath3 = ta6Var.C;
            if (absolutePath3 == null) {
                absolutePath3 = file2.getAbsolutePath();
            }
            ta6Var.C = absolutePath3;
            String absolutePath4 = ta6Var.D;
            if (absolutePath4 == null) {
                absolutePath4 = file3.getAbsolutePath();
            }
            ta6Var.D = absolutePath4;
            oc6 zd6Var = ta6Var.E;
            if (zd6Var == null) {
                zd6Var = new zd6(context, ta6Var);
            }
            ta6Var.E = zd6Var;
            List list2 = null;
            if (Build.VERSION.SDK_INT >= 33) {
                qb6 qb6Var = ta6Var.I;
                if (qb6Var instanceof sb6) {
                    wa6 wa6Var = new wa6(null);
                    ta6Var.I = wa6Var;
                    gu8.e = wa6Var;
                    Object obj = yd6.a;
                    yd6.d = wa6Var;
                } else {
                    byte[] bArr = gu8.b;
                    qb6Var.getClass();
                    gu8.e = qb6Var;
                    Object obj2 = yd6.a;
                    qb6 qb6Var2 = ta6Var.I;
                    qb6Var2.getClass();
                    yd6.d = qb6Var2;
                }
            }
            lc6 ya6Var = ta6Var.F;
            if (ya6Var == null) {
                ya6Var = new ya6(context);
            }
            ta6Var.F = ya6Var;
            if (!aa4.e(ta6Var.y, "posthog-flutter") && !aa4.e(ta6Var.y, "posthog-react-native") && !aa4.e(ta6Var.y, "posthog-kmp")) {
                ta6Var.y = "posthog-android";
                ta6Var.z = "3.56.0";
            }
            Object obj3 = yd6.a;
            yd6.g = aa4.e(ta6Var.y, "posthog-react-native");
            yd6.h = true;
            String str4 = str + '@' + str3 + '+' + jF;
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(context.getAssets().open("posthog-meta.properties"));
                try {
                    Properties properties = new Properties();
                    properties.load(bufferedInputStream);
                    List listH = u96.h(properties);
                    bufferedInputStream.close();
                    list2 = listH;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        m96.c(bufferedInputStream, th);
                        throw th2;
                    }
                }
            } catch (FileNotFoundException unused) {
            } catch (Throwable th3) {
                sg.f("Failed reading the meta properties: ", th3, '.', ta6Var.v);
            }
            String str5 = ta6Var.r;
            if ((str5 == null || str5.length() == 0) && (list = list2) != null && !list.isEmpty()) {
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    String property = ((Properties) it.next()).getProperty("io.posthog.proguard.mapid");
                    if (property != null && property.length() != 0) {
                        ta6Var.v.a("releaseIdentifier found: ".concat(property));
                        ta6Var.r = property;
                        break;
                    }
                }
            } else {
                ta6Var.v.a("releaseIdentifier not found, using fallback: ".concat(str4));
                ta6Var.r = str4;
            }
            new az0(ta6Var, 2);
            az4 az4Var = new az4();
            ta6Var.a(new od6(context, ta6Var, az4Var));
            ta6Var.a(new ge6(ta6Var));
            ta6Var.a(new fc6(ta6Var));
            ta6Var.a(new dc6(context, ta6Var, az4Var));
        }
    }
}

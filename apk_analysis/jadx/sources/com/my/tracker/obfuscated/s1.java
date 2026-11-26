package com.my.tracker.obfuscated;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.BufferedReader;
import java.io.FileReader;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class s1 {
    final i0 a;
    final c3 b;
    final Context c;

    public static final class a {
        public final int a;
        public final String b;
        public final String c;

        public a(int i, String str, String str2) {
            this.a = i;
            this.b = str;
            this.c = str2;
        }
    }

    public s1(i0 i0Var, c3 c3Var, Context context) {
        this.a = i0Var;
        this.b = c3Var;
        this.c = context.getApplicationContext();
    }

    public String a(String str) {
        BufferedReader bufferedReader;
        try {
            try {
                b3.a("PreInstallHandler: searching string in file " + str);
                String str2 = this.c.getPackageName() + "=";
                int length = str2.length();
                bufferedReader = new BufferedReader(new FileReader(str));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            bufferedReader.close();
                            break;
                        }
                        b3.a("PreInstallHandler: processing string " + line);
                        if (line.startsWith(str2) && line.length() > length) {
                            String strSubstring = line.substring(length);
                            if (!TextUtils.isEmpty(strSubstring)) {
                                try {
                                    bufferedReader.close();
                                } catch (Throwable unused) {
                                }
                                return strSubstring;
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            b3.b("PreInstallHandler error: exception while retrieving data in file" + str, th);
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            return null;
                        } catch (Throwable th2) {
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Throwable unused2) {
                                }
                            }
                            throw th2;
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (Throwable unused3) {
        }
        return null;
    }

    public a b() {
        String str = "ro.mtpi." + this.b.g();
        String strA = g2.a(str);
        if (TextUtils.isEmpty(strA)) {
            b3.a("PreInstallHandler: empty data for source: 3");
            return null;
        }
        b3.a("PreInstallHandler: raw data in SystemProperties has been found: " + strA);
        return a(3, strA, str);
    }

    public void c() {
        String strR = this.b.r();
        if (TextUtils.isEmpty(strR)) {
            return;
        }
        t1 t1VarA = t1.a(this.c);
        if (t1VarA.q()) {
            return;
        }
        b3.a("PreInstallHandler: checking preinstall");
        try {
            String strA = a(this.c.getPackageManager().getResourcesForApplication(strR), this.c.getPackageName(), strR);
            t1VarA.u();
            if (TextUtils.isEmpty(strA)) {
                b3.a("PreInstallHandler: referrer is empty");
                return;
            }
            b3.a("PreInstallHandler: referrer " + strA);
            this.a.a(strA, w.b(this.c), (Runnable) null);
            t1.a(this.c).v();
        } catch (Throwable unused) {
            b3.a("PreInstallHandler: unable to locate vendor app " + strR);
        }
    }

    public static String a(Resources resources, String str, String str2) {
        int identifier = resources.getIdentifier(str + "_mytracker", TypedValues.Custom.S_STRING, str2);
        if (identifier == 0) {
            return null;
        }
        return resources.getString(identifier);
    }

    public static a a(int i, String str, String str2) {
        try {
            b3.a("PreInstallHandler: converting raw data to json");
            return new a(i, new JSONObject(str).toString(), str2);
        } catch (Throwable th) {
            b3.a("PreInstallHandler error: exception when converting raw data to json", th);
            try {
                b3.a("PreInstallHandler: converting raw data to json with pid");
                return new a(i, new JSONObject().put("pid", str).toString(), str2);
            } catch (Throwable th2) {
                b3.b("PreInstallHandler error: exception when converting raw data to json with pid", th2);
                b3.a("PreInstallHandler: nothing has been found for source: " + i);
                return null;
            }
        }
    }

    public a a() {
        if (!this.b.w()) {
            b3.a("PreInstallHandler: tracking preinstall is disabled");
            return null;
        }
        a aVarB = b();
        if (aVarB != null) {
            return aVarB;
        }
        a aVarA = a(1);
        if (aVarA != null) {
            return aVarA;
        }
        if (this.b.x()) {
            return a(2);
        }
        return null;
    }

    public a a(int i) {
        String str;
        if (i == 1) {
            str = "ro.mytracker.preinstall.path";
        } else if (i == 2) {
            str = "ro.appsflyer.preinstall.path";
        } else {
            b3.a("PreInstallHandler: wrong property property key");
            return null;
        }
        String strA = g2.a(str);
        if (TextUtils.isEmpty(strA)) {
            b3.a("PreInstallHandler: empty path for source: " + i);
            return null;
        }
        String strA2 = a(strA);
        if (TextUtils.isEmpty(strA2)) {
            b3.a("PreInstallHandler: empty data for source: " + i);
            return null;
        }
        b3.a("PreInstallHandler: raw data for source has been found: " + strA2);
        return a(i, strA2, strA);
    }

    public static s1 a(i0 i0Var, c3 c3Var, Context context) {
        return new s1(i0Var, c3Var, context);
    }
}

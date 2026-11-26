package com.my.tracker.obfuscated;

import android.content.Context;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

/* JADX INFO: loaded from: classes4.dex */
public abstract class g2 {
    public static String a(String str) {
        try {
            String str2 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            if (!TextUtils.isEmpty(str2)) {
                return str2;
            }
            b3.a("SystemUtils: value in system properties is null for " + str);
        } catch (Throwable th) {
            b3.a("SystemUtils: error occurred when getting value for property - " + str, th);
        }
        return null;
    }

    public static Object a(Context context, String str, Class cls) {
        try {
            return cls.cast(context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.get(str));
        } catch (Throwable th) {
            b3.a("SystemUtils: exception when access to application info with key - " + str, th);
            return null;
        }
    }

    public static String a(Throwable th) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                PrintStream printStream = new PrintStream(byteArrayOutputStream);
                try {
                    th.printStackTrace(printStream);
                    String string = byteArrayOutputStream.toString();
                    printStream.close();
                    byteArrayOutputStream.close();
                    return string;
                } catch (Throwable th2) {
                    try {
                        printStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th5) {
                    th4.addSuppressed(th5);
                }
                throw th4;
            }
        } catch (Throwable th6) {
            b3.a(th6.toString());
            return "cannot get stacktrace";
        }
    }
}

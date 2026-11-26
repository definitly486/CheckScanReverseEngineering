package com.my.tracker.obfuscated;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import defpackage.sr4;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f1 {
    private static final Integer a = 1;
    private static final AtomicBoolean b = new AtomicBoolean();

    public static boolean a(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        try {
            if ("debug_phone".equals(Settings.Secure.getString(contentResolver, "bluetooth_name"))) {
                return true;
            }
        } catch (Throwable unused) {
            b3.b("LoggingHandler: case 0 failure");
        }
        try {
            if ("debug_phone".equals(Settings.System.getString(contentResolver, "bluetooth_name"))) {
                return true;
            }
        } catch (Throwable unused2) {
            b3.b("LoggingHandler: case 1 failure");
        }
        try {
            return "debug_phone".equals(Settings.Global.getString(contentResolver, "device_name"));
        } catch (Throwable unused3) {
            b3.b("LoggingHandler: case 2 failure");
            return false;
        }
    }

    public static boolean b(Context context) {
        if (String.valueOf(a).equals(g2.a(context.getPackageName() + "_mytracker_debug"))) {
            b3.a("LoggingHandler: debug data in SystemProperties has been found");
            return true;
        }
        b3.a("LoggingHandler: no debug data in SystemProperties");
        return false;
    }

    public static void c(Context context) {
        if (!b.compareAndSet(false, true)) {
            b3.a("LoggingHandler: instance has already been initialized");
        } else if (b3.a()) {
            b3.a("LoggingHandler: tracing has already been enabled");
        } else {
            m.a(new sr4(context, 4));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(Context context) {
        if (a(context)) {
            b3.a(true);
            b3.a("LoggingHandler: debug mode is enabled by device name");
            return;
        }
        if (a.equals((Integer) g2.a(context, "com.my.tracker.debugMode", Integer.class))) {
            b3.a(true);
            b3.a("LoggingHandler: debug mode is enabled by manifest metadata");
        } else if (b(context)) {
            b3.a(true);
            b3.a("LoggingHandler: debug mode is enabled by system properties");
        }
    }
}

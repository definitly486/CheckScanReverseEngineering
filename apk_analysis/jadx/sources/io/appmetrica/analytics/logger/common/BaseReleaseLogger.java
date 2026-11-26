package io.appmetrica.analytics.logger.common;

import android.content.Context;
import android.util.Log;
import io.appmetrica.analytics.logger.common.impl.d;
import io.appmetrica.analytics.logger.common.impl.e;
import io.appmetrica.analytics.logger.common.impl.f;
import io.appmetrica.analytics.logger.common.impl.g;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseReleaseLogger {
    private static volatile String d = "";
    private final String a;
    private volatile boolean b = false;
    private final f c;

    public BaseReleaseLogger(String str, String str2) {
        this.c = new f(new g(str), new d(), new e());
        this.a = str2;
    }

    public static void init(Context context) {
        d = "[" + context.getPackageName() + "] : ";
    }

    public void error(String str, Object... objArr) {
        if (this.b) {
            f fVar = this.c;
            String prefix = getPrefix();
            fVar.b.getClass();
            for (String str2 : fVar.c.a(d.a(prefix, str, objArr))) {
                String str3 = fVar.a.a;
                if (str2 == null) {
                    str2 = "";
                }
                Log.println(6, str3, str2);
            }
        }
    }

    public String getPrefix() {
        return d + this.a;
    }

    public void info(String str, Object... objArr) {
        if (this.b) {
            f fVar = this.c;
            String prefix = getPrefix();
            fVar.b.getClass();
            for (String str2 : fVar.c.a(d.a(prefix, str, objArr))) {
                String str3 = fVar.a.a;
                if (str2 == null) {
                    str2 = "";
                }
                Log.println(4, str3, str2);
            }
        }
    }

    public void setEnabled(boolean z) {
        this.b = z;
    }

    public void warning(String str, Object... objArr) {
        if (this.b) {
            f fVar = this.c;
            String prefix = getPrefix();
            fVar.b.getClass();
            for (String str2 : fVar.c.a(d.a(prefix, str, objArr))) {
                String str3 = fVar.a.a;
                if (str2 == null) {
                    str2 = "";
                }
                Log.println(5, str3, str2);
            }
        }
    }

    public void error(Throwable th, String str, Object... objArr) {
        if (this.b) {
            f fVar = this.c;
            String prefix = getPrefix();
            fVar.b.getClass();
            for (String str2 : fVar.c.a(d.a(prefix, th, str, objArr))) {
                String str3 = fVar.a.a;
                if (str2 == null) {
                    str2 = "";
                }
                Log.println(6, str3, str2);
            }
        }
    }
}

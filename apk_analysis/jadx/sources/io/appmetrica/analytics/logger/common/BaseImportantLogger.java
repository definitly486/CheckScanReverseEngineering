package io.appmetrica.analytics.logger.common;

import android.util.Log;
import io.appmetrica.analytics.logger.common.impl.d;
import io.appmetrica.analytics.logger.common.impl.e;
import io.appmetrica.analytics.logger.common.impl.f;
import io.appmetrica.analytics.logger.common.impl.g;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseImportantLogger {
    private final f a;

    public BaseImportantLogger(String str) {
        this.a = new f(new g(str), new d(), new e());
    }

    public void info(String str, String str2, Object... objArr) {
        f fVar = this.a;
        fVar.b.getClass();
        for (String str3 : fVar.c.a(d.a(str, str2, objArr))) {
            String str4 = fVar.a.a;
            if (str3 == null) {
                str3 = "";
            }
            Log.println(4, str4, str3);
        }
    }
}

package yads;

import android.app.LocaleManager;
import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import defpackage.k57;
import defpackage.u96;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class fv3 {
    public final String a(Context context) {
        Object aVar;
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                Object systemService = context.getSystemService(CommonUrlParts.LOCALE);
                systemService.getClass();
                LocaleList applicationLocales = ((LocaleManager) systemService).getApplicationLocales();
                aVar = applicationLocales.isEmpty() ? dv3.a(context.getResources().getConfiguration().locale) : dv3.a(applicationLocales.get(0));
            } else {
                aVar = dv3.a(context.getResources().getConfiguration().locale);
            }
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        return (String) aVar;
    }

    public final List b(Context context) {
        try {
            LocaleList locales = context.getResources().getConfiguration().getLocales();
            defpackage.ar4 ar4VarE = u96.e();
            int size = locales.size();
            for (int i = 0; i < size; i++) {
                ar4VarE.add(dv3.a(locales.get(i)));
            }
            return u96.d(ar4VarE);
        } catch (Throwable unused) {
            return null;
        }
    }
}

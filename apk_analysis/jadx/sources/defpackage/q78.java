package defpackage;

import android.content.Context;
import com.warefly.checkscan.CheckScanApplication;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class q78 {
    public final b88 a;

    public q78(b88 b88Var) {
        this.a = b88Var;
    }

    public final mz7<k78> a(ha3 ha3Var) {
        ha3Var.getClass();
        Context context = CheckScanApplication.c;
        Locale locale = CheckScanApplication.a.a().getResources().getConfiguration().getLocales().get(0);
        locale.getClass();
        return this.a.b(locale.getLanguage() + "_" + locale.getCountry(), ha3Var);
    }
}

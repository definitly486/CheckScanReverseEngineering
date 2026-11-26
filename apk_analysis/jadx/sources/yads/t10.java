package yads;

import android.content.Context;
import com.tapjoy.TapjoyConstants;
import defpackage.j59;
import yads.t10;

/* JADX INFO: loaded from: classes6.dex */
public final class t10 {
    public final u75 a;

    public t10(u75 u75Var) {
        this.a = u75Var;
    }

    public static void a(Context context, defpackage.bm3 bm3Var) {
        if (u10.a == null) {
            synchronized (u10.b) {
                try {
                    if (u10.a == null) {
                        u10.a = v10.a(context);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        w10 w10Var = u10.a;
        if (w10Var == null) {
            defpackage.fg.c("Required value was null.");
            return;
        }
        bm3Var.invoke(TapjoyConstants.PREF_SUBJECT_TO_GDPR, w10Var.c());
        bm3Var.invoke("gdpr_consent", w10Var.b());
        bm3Var.invoke("parsed_purpose_consents", w10Var.d());
        bm3Var.invoke("parsed_vendor_consents", w10Var.e());
        bm3Var.invoke("cmp_present", Integer.valueOf(w10Var.a() ? 1 : 0).toString());
    }

    public static void a(Context context, final m35 m35Var) {
        a(context, new defpackage.bm3() { // from class: s8a
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return t10.a(m35Var, (String) obj, (String) obj2);
            }
        });
    }

    public static final j59 a(m35 m35Var, String str, String str2) {
        m35Var.a(str, str2);
        return j59.a;
    }
}

package yads;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.monetization.ads.quality.base.result.AdQualityVerificationResult;
import defpackage.b80;
import defpackage.fh8;
import defpackage.v39;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class b8 {
    public final e4 a;
    public final Context b;
    public final t5 c;
    public final s7 d;
    public d9 e;
    public String g;
    public l24 h;
    public AdQualityVerificationResult f = AdQualityVerificationResult.WaitingForVerification.INSTANCE;
    public final defpackage.cl4 i = new fh8(new b80(this, 6));

    public b8(e4 e4Var, Context context, t5 t5Var, s7 s7Var) {
        this.a = e4Var;
        this.b = context;
        this.c = t5Var;
        this.d = s7Var;
    }

    public static final i8 a(b8 b8Var) {
        return new j8().a(b8Var.b.getApplicationContext());
    }

    public final void b() {
        if (c()) {
            AdQualityVerificationResult adQualityVerificationResult = this.f;
            if (!(adQualityVerificationResult instanceof AdQualityVerificationResult.WaitingForVerification) || this.e != null) {
                s7 s7Var = this.d;
                Context context = this.b;
                h75 h75VarA = s7Var.c.a(this.e, s7Var.a, this.g, this.h);
                s7Var.d.getClass();
                Map linkedHashMap = defpackage.mx2.b;
                if (!v39.e(linkedHashMap)) {
                    linkedHashMap = null;
                }
                if (linkedHashMap == null) {
                    linkedHashMap = new LinkedHashMap();
                }
                String strA = u7.a(adQualityVerificationResult);
                if (strA == null) {
                    linkedHashMap.put("verification_status", StringUtils.UNDEFINED);
                } else {
                    linkedHashMap.put("verification_status", strA);
                }
                boolean z = adQualityVerificationResult instanceof AdQualityVerificationResult.Verified;
                if (z) {
                    ((AdQualityVerificationResult.Verified) adQualityVerificationResult).getVerifiedAd();
                    throw null;
                }
                linkedHashMap.put("verification_flow", StringUtils.UNDEFINED);
                if (z) {
                    ((AdQualityVerificationResult.Verified) adQualityVerificationResult).getVerifiedAd();
                    throw null;
                }
                if (adQualityVerificationResult instanceof AdQualityVerificationResult.NotVerified) {
                    ((AdQualityVerificationResult.NotVerified) adQualityVerificationResult).getReason();
                }
                linkedHashMap.put(NotificationCompat.CATEGORY_STATUS, "error");
                c cVar = h75VarA.b;
                if (cVar == null) {
                    cVar = null;
                }
                LinkedHashMap linkedHashMapG = defpackage.n05.g(h75VarA.a, linkedHashMap);
                if (!v39.e(linkedHashMapG)) {
                    linkedHashMapG = null;
                }
                if (linkedHashMapG == null) {
                    linkedHashMapG = new LinkedHashMap();
                }
                ab abVar = s7Var.f;
                linkedHashMapG.put("durations", defpackage.n05.g(abVar.b.a(), abVar.a.a(defpackage.l1.f(s5.AD_VERIFICATION))));
                e75 e75Var = e75.AD_LOADING_RESULT;
                g75 g75Var = new g75("ad_verification_result", new LinkedHashMap(linkedHashMapG), cVar);
                s7Var.b.getClass();
                re.a(context, new lm6(((do6) s7Var.b).a)).a(g75Var);
            }
            ((i8) this.i.getValue()).onInvalidated();
            ((i8) this.i.getValue()).a(null);
        }
    }

    public final boolean c() {
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(this.b);
        n7 n7Var = fe5VarA != null ? fe5VarA.z0 : null;
        return n7Var != null && n7Var.a;
    }
}

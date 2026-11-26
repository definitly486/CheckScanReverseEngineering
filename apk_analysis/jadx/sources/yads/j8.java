package yads;

import android.content.Context;
import com.monetization.ads.quality.base.AdQualityVerifierAdapter;
import com.monetization.ads.quality.base.model.configuration.AdQualityVerifierAdapterConfiguration;
import defpackage.k57;

/* JADX INFO: loaded from: classes6.dex */
public final class j8 {
    public final i8 a(Context context) {
        Object aVar;
        try {
            fe5 fe5VarA = yg5.a().a(context);
            n7 n7VarC = fe5VarA != null ? fe5VarA.c() : null;
            if (n7VarC != null && yt2.a(context.getApplicationContext(), xt2.APP_HARBR_QUALITY_VERIFICATION)) {
                n7VarC = new n7(n7VarC.a, true, n7VarC.c, n7VarC.d, n7VarC.e, n7VarC.f, n7VarC.g, n7VarC.h);
            }
            if (n7VarC == null || !n7VarC.a()) {
                aVar = new d7();
            } else {
                AdQualityVerifierAdapterConfiguration adQualityVerifierAdapterConfigurationA = z7.a(n7VarC, yt2.a(context.getApplicationContext(), xt2.APP_HARBR_QUALITY_VERIFICATION));
                AdQualityVerifierAdapter adQualityVerifierAdapterA = y7.a();
                if (adQualityVerifierAdapterA == null) {
                    aVar = new d7();
                } else {
                    r7 r7VarA = h8.a(n7VarC);
                    aVar = new i7(adQualityVerifierAdapterA, adQualityVerifierAdapterConfigurationA, adQualityVerifierAdapterConfigurationA.getVerificationTimeoutInSec() + 1, new g8(r7VarA), new w7(r7VarA));
                }
            }
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null) {
            thA.getMessage();
            aVar = new d7();
        }
        return (i8) aVar;
    }
}

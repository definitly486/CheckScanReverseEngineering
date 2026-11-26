package yads;

import com.monetization.ads.quality.base.AdQualityVerifierAdapter;
import defpackage.k57;

/* JADX INFO: loaded from: classes6.dex */
public final class y7 {
    public static AdQualityVerifierAdapter a() {
        Object aVar;
        try {
            Object objA = f55.a("com.yandex.mobile.ads.quality.AdQualityVerifierAdapter", new Object[0]);
            aVar = objA instanceof AdQualityVerifierAdapter ? (AdQualityVerifierAdapter) objA : null;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        if (thA != null) {
            thA.getMessage();
        }
        return (AdQualityVerifierAdapter) (aVar instanceof k57.a ? null : aVar);
    }
}

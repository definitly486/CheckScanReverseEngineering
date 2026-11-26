package yads;

import com.monetization.ads.quality.base.result.AdQualityVerificationResult;

/* JADX INFO: loaded from: classes6.dex */
public final class u7 {
    public static String a(AdQualityVerificationResult adQualityVerificationResult) {
        if (adQualityVerificationResult instanceof AdQualityVerificationResult.WaitingForVerification) {
            return "Verification not started";
        }
        if (adQualityVerificationResult instanceof AdQualityVerificationResult.NotVerified) {
            ((AdQualityVerificationResult.NotVerified) adQualityVerificationResult).getReason();
            throw null;
        }
        if (adQualityVerificationResult instanceof AdQualityVerificationResult.Verified) {
            ((AdQualityVerificationResult.Verified) adQualityVerificationResult).getVerifiedAd();
            throw null;
        }
        defpackage.me0.e();
        return null;
    }
}

package com.monetization.ads.quality.base.result;

import com.monetization.ads.quality.base.AdQualityVerificationStateFlow;
import com.monetization.ads.quality.base.model.AdQualityVerificationError;

/* JADX INFO: loaded from: classes4.dex */
public interface AdQualityVerificationResult {

    /* JADX INFO: loaded from: classes6.dex */
    public static final class NotVerified implements AdQualityVerificationResult {
        public final AdQualityVerificationError getReason() {
            throw null;
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static final class Verified implements AdQualityVerificationResult {
        public final AdQualityVerificationStateFlow getVerifiedAd() {
            throw null;
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static final class WaitingForVerification implements AdQualityVerificationResult {
        public static final WaitingForVerification INSTANCE = new WaitingForVerification();

        private WaitingForVerification() {
        }

        public boolean equals(Object obj) {
            return this == obj || (obj instanceof WaitingForVerification);
        }

        public int hashCode() {
            return 393213194;
        }

        public String toString() {
            return "WaitingForVerification";
        }
    }
}

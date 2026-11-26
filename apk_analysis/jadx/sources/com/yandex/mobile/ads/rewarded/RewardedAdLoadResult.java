package com.yandex.mobile.ads.rewarded;

import com.yandex.mobile.ads.common.AdRequestError;
import defpackage.aa4;

/* JADX INFO: loaded from: classes6.dex */
public interface RewardedAdLoadResult {

    public static final class Failure implements RewardedAdLoadResult {
        private final AdRequestError error;

        public Failure(AdRequestError adRequestError) {
            this.error = adRequestError;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!Failure.class.equals(obj != null ? obj.getClass() : null)) {
                return false;
            }
            obj.getClass();
            return aa4.e(this.error, ((Failure) obj).error);
        }

        public int hashCode() {
            return this.error.hashCode();
        }

        public String toString() {
            return "Failure(error=" + this.error + ")";
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class Success implements RewardedAdLoadResult {
        private final RewardedAd ad;

        public Success(RewardedAd rewardedAd) {
            this.ad = rewardedAd;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!Success.class.equals(obj != null ? obj.getClass() : null)) {
                return false;
            }
            obj.getClass();
            return aa4.e(this.ad, ((Success) obj).ad);
        }

        public final RewardedAd getAd() {
            return this.ad;
        }

        public int hashCode() {
            return this.ad.hashCode();
        }

        public String toString() {
            return "Success(ad=" + this.ad + ")";
        }
    }
}

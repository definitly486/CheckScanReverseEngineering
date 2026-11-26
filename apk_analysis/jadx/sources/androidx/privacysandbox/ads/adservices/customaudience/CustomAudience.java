package androidx.privacysandbox.ads.adservices.customaudience;

import android.net.Uri;
import androidx.privacysandbox.ads.adservices.common.AdData;
import androidx.privacysandbox.ads.adservices.common.AdSelectionSignals;
import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.zg;
import java.time.Instant;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class CustomAudience {
    private final Instant activationTime;
    private final List<AdData> ads;
    private final Uri biddingLogicUri;
    private final AdTechIdentifier buyer;
    private final Uri dailyUpdateUri;
    private final Instant expirationTime;
    private final String name;
    private final TrustedBiddingData trustedBiddingSignals;
    private final AdSelectionSignals userBiddingSignals;

    public static final class Builder {
        private Instant activationTime;
        private List<AdData> ads;
        private Uri biddingLogicUri;
        private AdTechIdentifier buyer;
        private Uri dailyUpdateUri;
        private Instant expirationTime;
        private String name;
        private TrustedBiddingData trustedBiddingData;
        private AdSelectionSignals userBiddingSignals;

        public Builder(AdTechIdentifier adTechIdentifier, String str, Uri uri, Uri uri2, List<AdData> list) {
            adTechIdentifier.getClass();
            str.getClass();
            uri.getClass();
            uri2.getClass();
            list.getClass();
            this.buyer = adTechIdentifier;
            this.name = str;
            this.dailyUpdateUri = uri;
            this.biddingLogicUri = uri2;
            this.ads = list;
        }

        public final CustomAudience build() {
            return new CustomAudience(this.buyer, this.name, this.dailyUpdateUri, this.biddingLogicUri, this.ads, this.activationTime, this.expirationTime, this.userBiddingSignals, this.trustedBiddingData);
        }

        public final Builder setActivationTime(Instant instant) {
            instant.getClass();
            this.activationTime = instant;
            return this;
        }

        public final Builder setAds(List<AdData> list) {
            list.getClass();
            this.ads = list;
            return this;
        }

        public final Builder setBiddingLogicUri(Uri uri) {
            uri.getClass();
            this.biddingLogicUri = uri;
            return this;
        }

        public final Builder setBuyer(AdTechIdentifier adTechIdentifier) {
            adTechIdentifier.getClass();
            this.buyer = adTechIdentifier;
            return this;
        }

        public final Builder setDailyUpdateUri(Uri uri) {
            uri.getClass();
            this.dailyUpdateUri = uri;
            return this;
        }

        public final Builder setExpirationTime(Instant instant) {
            instant.getClass();
            this.expirationTime = instant;
            return this;
        }

        public final Builder setName(String str) {
            str.getClass();
            this.name = str;
            return this;
        }

        public final Builder setTrustedBiddingData(TrustedBiddingData trustedBiddingData) {
            trustedBiddingData.getClass();
            this.trustedBiddingData = trustedBiddingData;
            return this;
        }

        public final Builder setUserBiddingSignals(AdSelectionSignals adSelectionSignals) {
            adSelectionSignals.getClass();
            this.userBiddingSignals = adSelectionSignals;
            return this;
        }
    }

    public CustomAudience(AdTechIdentifier adTechIdentifier, String str, Uri uri, Uri uri2, List<AdData> list, Instant instant, Instant instant2, AdSelectionSignals adSelectionSignals, TrustedBiddingData trustedBiddingData) {
        adTechIdentifier.getClass();
        str.getClass();
        uri.getClass();
        uri2.getClass();
        list.getClass();
        this.buyer = adTechIdentifier;
        this.name = str;
        this.dailyUpdateUri = uri;
        this.biddingLogicUri = uri2;
        this.ads = list;
        this.activationTime = instant;
        this.expirationTime = instant2;
        this.userBiddingSignals = adSelectionSignals;
        this.trustedBiddingSignals = trustedBiddingData;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomAudience)) {
            return false;
        }
        CustomAudience customAudience = (CustomAudience) obj;
        return aa4.e(this.buyer, customAudience.buyer) && aa4.e(this.name, customAudience.name) && aa4.e(this.activationTime, customAudience.activationTime) && aa4.e(this.expirationTime, customAudience.expirationTime) && aa4.e(this.dailyUpdateUri, customAudience.dailyUpdateUri) && aa4.e(this.userBiddingSignals, customAudience.userBiddingSignals) && aa4.e(this.trustedBiddingSignals, customAudience.trustedBiddingSignals) && aa4.e(this.ads, customAudience.ads);
    }

    public final Instant getActivationTime() {
        return this.activationTime;
    }

    public final List<AdData> getAds() {
        return this.ads;
    }

    public final Uri getBiddingLogicUri() {
        return this.biddingLogicUri;
    }

    public final AdTechIdentifier getBuyer() {
        return this.buyer;
    }

    public final Uri getDailyUpdateUri() {
        return this.dailyUpdateUri;
    }

    public final Instant getExpirationTime() {
        return this.expirationTime;
    }

    public final String getName() {
        return this.name;
    }

    public final TrustedBiddingData getTrustedBiddingSignals() {
        return this.trustedBiddingSignals;
    }

    public final AdSelectionSignals getUserBiddingSignals() {
        return this.userBiddingSignals;
    }

    public int hashCode() {
        int iB = zg.b(this.buyer.hashCode() * 31, 31, this.name);
        Instant instant = this.activationTime;
        int iHashCode = (iB + (instant != null ? instant.hashCode() : 0)) * 31;
        Instant instant2 = this.expirationTime;
        int iHashCode2 = (this.dailyUpdateUri.hashCode() + ((iHashCode + (instant2 != null ? instant2.hashCode() : 0)) * 31)) * 31;
        AdSelectionSignals adSelectionSignals = this.userBiddingSignals;
        int iHashCode3 = (iHashCode2 + (adSelectionSignals != null ? adSelectionSignals.hashCode() : 0)) * 31;
        TrustedBiddingData trustedBiddingData = this.trustedBiddingSignals;
        int iHashCode4 = trustedBiddingData != null ? trustedBiddingData.hashCode() : 0;
        return this.ads.hashCode() + ((this.biddingLogicUri.hashCode() + ((iHashCode3 + iHashCode4) * 31)) * 31);
    }

    public String toString() {
        return "CustomAudience: buyer=" + this.biddingLogicUri + ", name=" + this.name + ", activationTime=" + this.activationTime + ", expirationTime=" + this.expirationTime + ", dailyUpdateUri=" + this.dailyUpdateUri + ", userBiddingSignals=" + this.userBiddingSignals + ", trustedBiddingSignals=" + this.trustedBiddingSignals + ", biddingLogicUri=" + this.biddingLogicUri + ", ads=" + this.ads;
    }

    public /* synthetic */ CustomAudience(AdTechIdentifier adTechIdentifier, String str, Uri uri, Uri uri2, List list, Instant instant, Instant instant2, AdSelectionSignals adSelectionSignals, TrustedBiddingData trustedBiddingData, int i, jh2 jh2Var) {
        this(adTechIdentifier, str, uri, uri2, list, (i & 32) != 0 ? null : instant, (i & 64) != 0 ? null : instant2, (i & 128) != 0 ? null : adSelectionSignals, (i & 256) != 0 ? null : trustedBiddingData);
    }
}

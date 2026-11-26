package androidx.privacysandbox.ads.adservices.common;

import android.net.Uri;
import android.util.Log;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.ox2;
import defpackage.u7;
import defpackage.zg;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class AdData {
    private final Set<Integer> adCounterKeys;
    private final AdFilters adFilters;
    private final String adRenderId;
    private final String metadata;
    private final Uri renderUri;

    public /* synthetic */ AdData(Uri uri, String str, Set set, AdFilters adFilters, String str2, int i, jh2 jh2Var) {
        this(uri, str, (i & 4) != 0 ? ox2.b : set, (i & 8) != 0 ? null : adFilters, (i & 16) != 0 ? null : str2);
    }

    public final android.adservices.common.AdData convertToAdServices$ads_adservices_release() {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        if (adServicesInfo.adServicesVersion() >= 10 || adServicesInfo.extServicesVersionS() >= 10) {
            return Ext10Impl.Companion.convertAdData(this);
        }
        return (adServicesInfo.adServicesVersion() >= 8 || adServicesInfo.extServicesVersionS() >= 9) ? Ext8Impl.Companion.convertAdData(this) : Ext4Impl.Companion.convertAdData(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdData)) {
            return false;
        }
        AdData adData = (AdData) obj;
        return aa4.e(this.renderUri, adData.renderUri) && aa4.e(this.metadata, adData.metadata) && aa4.e(this.adCounterKeys, adData.adCounterKeys) && aa4.e(this.adFilters, adData.adFilters) && aa4.e(this.adRenderId, adData.adRenderId);
    }

    public final Set<Integer> getAdCounterKeys() {
        return this.adCounterKeys;
    }

    public final AdFilters getAdFilters() {
        return this.adFilters;
    }

    public final String getAdRenderId() {
        return this.adRenderId;
    }

    public final String getMetadata() {
        return this.metadata;
    }

    public final Uri getRenderUri() {
        return this.renderUri;
    }

    public int hashCode() {
        int iHashCode = (this.adCounterKeys.hashCode() + zg.b(this.renderUri.hashCode() * 31, 31, this.metadata)) * 31;
        AdFilters adFilters = this.adFilters;
        int iHashCode2 = (iHashCode + (adFilters != null ? adFilters.hashCode() : 0)) * 31;
        String str = this.adRenderId;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "AdData: renderUri=" + this.renderUri + ", metadata='" + this.metadata + "', adCounterKeys=" + this.adCounterKeys + ", adFilters=" + this.adFilters + ", adRenderId=" + this.adRenderId;
    }

    public static final class Ext10Impl {
        public static final Companion Companion = new Companion(null);

        private Ext10Impl() {
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final android.adservices.common.AdData convertAdData(AdData adData) {
                adData.getClass();
                android.adservices.common.AdData.Builder adCounterKeys = u7.a().setMetadata(adData.getMetadata()).setRenderUri(adData.getRenderUri()).setAdCounterKeys(adData.getAdCounterKeys());
                AdFilters adFilters = adData.getAdFilters();
                android.adservices.common.AdData adDataBuild = adCounterKeys.setAdFilters(adFilters != null ? adFilters.convertToAdServices$ads_adservices_release() : null).setAdRenderId(adData.getAdRenderId()).build();
                adDataBuild.getClass();
                return adDataBuild;
            }

            private Companion() {
            }
        }
    }

    public static final class Ext4Impl {
        public static final Companion Companion = new Companion(null);

        private Ext4Impl() {
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final android.adservices.common.AdData convertAdData(AdData adData) {
                adData.getClass();
                if (!adData.getAdCounterKeys().isEmpty()) {
                    Log.w("AdData", "adCounterKeys is ignored. Min version to use adCounterKeys is API 33 ext 8 or API 31/32 ext 9");
                }
                if (adData.getAdFilters() != null) {
                    Log.w("AdData", "adFilters is ignored. Min version to use adFilters is API 33 ext 8 or API 31/32 ext 9");
                }
                if (adData.getAdRenderId() != null) {
                    Log.w("AdData", "adRenderId is ignored. Min version to use adRenderId is API 31 ext 10");
                }
                android.adservices.common.AdData adDataBuild = u7.a().setMetadata(adData.getMetadata()).setRenderUri(adData.getRenderUri()).build();
                adDataBuild.getClass();
                return adDataBuild;
            }

            private Companion() {
            }
        }
    }

    public static final class Ext8Impl {
        public static final Companion Companion = new Companion(null);

        private Ext8Impl() {
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final android.adservices.common.AdData convertAdData(AdData adData) {
                adData.getClass();
                if (adData.getAdRenderId() != null) {
                    Log.w("AdData", "adRenderId is ignored. Min version to use adRenderId is API 31 ext 10");
                }
                android.adservices.common.AdData.Builder adCounterKeys = u7.a().setMetadata(adData.getMetadata()).setRenderUri(adData.getRenderUri()).setAdCounterKeys(adData.getAdCounterKeys());
                AdFilters adFilters = adData.getAdFilters();
                android.adservices.common.AdData adDataBuild = adCounterKeys.setAdFilters(adFilters != null ? adFilters.convertToAdServices$ads_adservices_release() : null).build();
                adDataBuild.getClass();
                return adDataBuild;
            }

            private Companion() {
            }
        }
    }

    @ExperimentalFeatures.Ext10OptIn
    public AdData(Uri uri, String str, Set<Integer> set, AdFilters adFilters, String str2) {
        uri.getClass();
        str.getClass();
        set.getClass();
        this.renderUri = uri;
        this.metadata = str;
        this.adCounterKeys = set;
        this.adFilters = adFilters;
        this.adRenderId = str2;
    }

    public /* synthetic */ AdData(Uri uri, String str, Set set, AdFilters adFilters, int i, jh2 jh2Var) {
        this(uri, str, (i & 4) != 0 ? ox2.b : set, (i & 8) != 0 ? null : adFilters);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ExperimentalFeatures.Ext8OptIn
    public AdData(Uri uri, String str, Set<Integer> set, AdFilters adFilters) {
        this(uri, str, set, adFilters, null);
        uri.getClass();
        str.getClass();
        set.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdData(Uri uri, String str) {
        this(uri, str, ox2.b, null);
        uri.getClass();
        str.getClass();
    }
}

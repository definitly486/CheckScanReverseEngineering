package androidx.privacysandbox.ads.adservices.adselection;

import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.n1;
import defpackage.u27;
import defpackage.v27;
import defpackage.w27;

/* JADX INFO: loaded from: classes3.dex */
public final class ReportImpressionRequest {
    private final AdSelectionConfig adSelectionConfig;
    private final long adSelectionId;

    public ReportImpressionRequest(long j, AdSelectionConfig adSelectionConfig) {
        adSelectionConfig.getClass();
        this.adSelectionId = j;
        this.adSelectionConfig = adSelectionConfig;
    }

    public final android.adservices.adselection.ReportImpressionRequest convertToAdServices$ads_adservices_release() {
        AdServicesInfo adServicesInfo = AdServicesInfo.INSTANCE;
        return (adServicesInfo.adServicesVersion() >= 10 || adServicesInfo.extServicesVersionS() >= 10) ? Ext10Impl.Companion.convertReportImpressionRequest(this) : Ext4Impl.Companion.convertReportImpressionRequest(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReportImpressionRequest)) {
            return false;
        }
        ReportImpressionRequest reportImpressionRequest = (ReportImpressionRequest) obj;
        return this.adSelectionId == reportImpressionRequest.adSelectionId && aa4.e(this.adSelectionConfig, reportImpressionRequest.adSelectionConfig);
    }

    public final AdSelectionConfig getAdSelectionConfig() {
        return this.adSelectionConfig;
    }

    public final long getAdSelectionId() {
        return this.adSelectionId;
    }

    public int hashCode() {
        return this.adSelectionConfig.hashCode() + (Long.hashCode(this.adSelectionId) * 31);
    }

    public String toString() {
        return "ReportImpressionRequest: adSelectionId=" + this.adSelectionId + ", adSelectionConfig=" + this.adSelectionConfig;
    }

    public static final class Ext10Impl {
        public static final Companion Companion = new Companion(null);

        private Ext10Impl() {
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final android.adservices.adselection.ReportImpressionRequest convertReportImpressionRequest(ReportImpressionRequest reportImpressionRequest) {
                reportImpressionRequest.getClass();
                if (aa4.e(reportImpressionRequest.getAdSelectionConfig(), AdSelectionConfig.Companion.getEMPTY())) {
                    w27.a();
                    return u27.a(reportImpressionRequest.getAdSelectionId());
                }
                w27.a();
                return v27.a(reportImpressionRequest.getAdSelectionId(), reportImpressionRequest.getAdSelectionConfig().convertToAdServices$ads_adservices_release());
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

            public final android.adservices.adselection.ReportImpressionRequest convertReportImpressionRequest(ReportImpressionRequest reportImpressionRequest) {
                reportImpressionRequest.getClass();
                if (aa4.e(reportImpressionRequest.getAdSelectionConfig(), AdSelectionConfig.Companion.getEMPTY())) {
                    n1.e("adSelectionConfig is mandatory forAPI versions lower than ext 10");
                    return null;
                }
                w27.a();
                return v27.a(reportImpressionRequest.getAdSelectionId(), reportImpressionRequest.getAdSelectionConfig().convertToAdServices$ads_adservices_release());
            }

            private Companion() {
            }
        }
    }

    @ExperimentalFeatures.Ext8OptIn
    public ReportImpressionRequest(long j) {
        this(j, AdSelectionConfig.Companion.getEMPTY());
    }
}

package androidx.privacysandbox.ads.adservices.java.adselection;

import android.content.Context;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionConfig;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionFromOutcomesConfig;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionManager;
import androidx.privacysandbox.ads.adservices.adselection.AdSelectionOutcome;
import androidx.privacysandbox.ads.adservices.adselection.GetAdSelectionDataOutcome;
import androidx.privacysandbox.ads.adservices.adselection.GetAdSelectionDataRequest;
import androidx.privacysandbox.ads.adservices.adselection.PersistAdSelectionResultRequest;
import androidx.privacysandbox.ads.adservices.adselection.ReportEventRequest;
import androidx.privacysandbox.ads.adservices.adselection.ReportImpressionRequest;
import androidx.privacysandbox.ads.adservices.adselection.UpdateAdCounterHistogramRequest;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.av0;
import defpackage.j59;
import defpackage.jh2;
import defpackage.qo2;
import defpackage.z22;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AdSelectionManagerFutures {
    public static final Companion Companion = new Companion(null);

    public static final AdSelectionManagerFutures from(Context context) {
        return Companion.from(context);
    }

    @ExperimentalFeatures.Ext10OptIn
    public abstract ListenableFuture<GetAdSelectionDataOutcome> getAdSelectionDataAsync(GetAdSelectionDataRequest getAdSelectionDataRequest);

    @ExperimentalFeatures.Ext10OptIn
    public abstract ListenableFuture<AdSelectionOutcome> persistAdSelectionResultAsync(PersistAdSelectionResultRequest persistAdSelectionResultRequest);

    @ExperimentalFeatures.Ext8OptIn
    public abstract ListenableFuture<j59> reportEventAsync(ReportEventRequest reportEventRequest);

    public abstract ListenableFuture<j59> reportImpressionAsync(ReportImpressionRequest reportImpressionRequest);

    public abstract ListenableFuture<AdSelectionOutcome> selectAdsAsync(AdSelectionConfig adSelectionConfig);

    @ExperimentalFeatures.Ext10OptIn
    public abstract ListenableFuture<AdSelectionOutcome> selectAdsAsync(AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig);

    @ExperimentalFeatures.Ext8OptIn
    public abstract ListenableFuture<j59> updateAdCounterHistogramAsync(UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final AdSelectionManagerFutures from(Context context) {
            context.getClass();
            AdSelectionManager adSelectionManagerObtain = AdSelectionManager.Companion.obtain(context);
            if (adSelectionManagerObtain != null) {
                return new Api33Ext4JavaImpl(adSelectionManagerObtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    public static final class Api33Ext4JavaImpl extends AdSelectionManagerFutures {
        private final AdSelectionManager mAdSelectionManager;

        public Api33Ext4JavaImpl(AdSelectionManager adSelectionManager) {
            this.mAdSelectionManager = adSelectionManager;
        }

        @Override // androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures
        public ListenableFuture<GetAdSelectionDataOutcome> getAdSelectionDataAsync(GetAdSelectionDataRequest getAdSelectionDataRequest) {
            getAdSelectionDataRequest.getClass();
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(qo2.a), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$getAdSelectionDataAsync$1(this, getAdSelectionDataRequest, null), 3), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures
        public ListenableFuture<AdSelectionOutcome> persistAdSelectionResultAsync(PersistAdSelectionResultRequest persistAdSelectionResultRequest) {
            persistAdSelectionResultRequest.getClass();
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(qo2.a), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$persistAdSelectionResultAsync$1(this, persistAdSelectionResultRequest, null), 3), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures
        public ListenableFuture<j59> reportEventAsync(ReportEventRequest reportEventRequest) {
            reportEventRequest.getClass();
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(qo2.a), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$reportEventAsync$1(this, reportEventRequest, null), 3), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures
        public ListenableFuture<j59> reportImpressionAsync(ReportImpressionRequest reportImpressionRequest) {
            reportImpressionRequest.getClass();
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(qo2.a), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$reportImpressionAsync$1(this, reportImpressionRequest, null), 3), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures
        public ListenableFuture<AdSelectionOutcome> selectAdsAsync(AdSelectionConfig adSelectionConfig) {
            adSelectionConfig.getClass();
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(qo2.a), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$1(this, adSelectionConfig, null), 3), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures
        public ListenableFuture<j59> updateAdCounterHistogramAsync(UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest) {
            updateAdCounterHistogramRequest.getClass();
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(qo2.a), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$updateAdCounterHistogramAsync$1(this, updateAdCounterHistogramRequest, null), 3), null, 1, null);
        }

        @Override // androidx.privacysandbox.ads.adservices.java.adselection.AdSelectionManagerFutures
        public ListenableFuture<AdSelectionOutcome> selectAdsAsync(AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig) {
            adSelectionFromOutcomesConfig.getClass();
            return CoroutineAdapterKt.asListenableFuture$default(av0.a(z22.a(qo2.a), null, null, new AdSelectionManagerFutures$Api33Ext4JavaImpl$selectAdsAsync$2(this, adSelectionFromOutcomesConfig, null), 3), null, 1, null);
        }
    }
}

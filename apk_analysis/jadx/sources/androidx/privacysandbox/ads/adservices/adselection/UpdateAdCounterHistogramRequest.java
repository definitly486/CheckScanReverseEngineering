package androidx.privacysandbox.ads.adservices.adselection;

import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import defpackage.aa4;
import defpackage.ej0;
import defpackage.fg;

/* JADX INFO: loaded from: classes3.dex */
@ExperimentalFeatures.Ext8OptIn
public final class UpdateAdCounterHistogramRequest {
    private final int adEventType;
    private final long adSelectionId;
    private final AdTechIdentifier callerAdTech;

    public UpdateAdCounterHistogramRequest(long j, int i, AdTechIdentifier adTechIdentifier) {
        adTechIdentifier.getClass();
        this.adSelectionId = j;
        this.adEventType = i;
        this.callerAdTech = adTechIdentifier;
        if (i == 0) {
            fg.c("Win event types cannot be manually updated.");
            throw null;
        }
        if (i == 1 || i == 2 || i == 3) {
            return;
        }
        fg.c("Ad event type must be one of AD_EVENT_TYPE_IMPRESSION, AD_EVENT_TYPE_VIEW, or AD_EVENT_TYPE_CLICK");
        throw null;
    }

    public final android.adservices.adselection.UpdateAdCounterHistogramRequest convertToAdServices$ads_adservices_release() {
        android.adservices.adselection.UpdateAdCounterHistogramRequest updateAdCounterHistogramRequestBuild = new android.adservices.adselection.UpdateAdCounterHistogramRequest.Builder(this.adSelectionId, this.adEventType, this.callerAdTech.convertToAdServices$ads_adservices_release()).build();
        updateAdCounterHistogramRequestBuild.getClass();
        return updateAdCounterHistogramRequestBuild;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UpdateAdCounterHistogramRequest)) {
            return false;
        }
        UpdateAdCounterHistogramRequest updateAdCounterHistogramRequest = (UpdateAdCounterHistogramRequest) obj;
        return this.adSelectionId == updateAdCounterHistogramRequest.adSelectionId && this.adEventType == updateAdCounterHistogramRequest.adEventType && aa4.e(this.callerAdTech, updateAdCounterHistogramRequest.callerAdTech);
    }

    public final int getAdEventType() {
        return this.adEventType;
    }

    public final long getAdSelectionId() {
        return this.adSelectionId;
    }

    public final AdTechIdentifier getCallerAdTech() {
        return this.callerAdTech;
    }

    public int hashCode() {
        return this.callerAdTech.hashCode() + ej0.b(this.adEventType, Long.hashCode(this.adSelectionId) * 31, 31);
    }

    public String toString() {
        String str;
        int i = this.adEventType;
        if (i == 0) {
            str = "AD_EVENT_TYPE_WIN";
        } else if (i == 1) {
            str = "AD_EVENT_TYPE_IMPRESSION";
        } else if (i != 2) {
            str = i != 3 ? "Invalid ad event type" : "AD_EVENT_TYPE_CLICK";
        } else {
            str = "AD_EVENT_TYPE_VIEW";
        }
        return "UpdateAdCounterHistogramRequest: adSelectionId=" + this.adSelectionId + ", adEventType=" + str + ", callerAdTech=" + this.callerAdTech;
    }
}

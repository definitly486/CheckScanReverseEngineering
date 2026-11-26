package androidx.privacysandbox.ads.adservices.adselection;

import android.net.Uri;
import androidx.privacysandbox.ads.adservices.common.AdSelectionSignals;
import androidx.privacysandbox.ads.adservices.common.AdTechIdentifier;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import defpackage.aa4;
import defpackage.e2;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@ExperimentalFeatures.Ext10OptIn
public final class AdSelectionFromOutcomesConfig {
    private final List<Long> adSelectionIds;
    private final AdSelectionSignals adSelectionSignals;
    private Uri selectionLogicUri;
    private final AdTechIdentifier seller;

    public AdSelectionFromOutcomesConfig(AdTechIdentifier adTechIdentifier, List<Long> list, AdSelectionSignals adSelectionSignals, Uri uri) {
        adTechIdentifier.getClass();
        list.getClass();
        adSelectionSignals.getClass();
        uri.getClass();
        this.seller = adTechIdentifier;
        this.adSelectionIds = list;
        this.adSelectionSignals = adSelectionSignals;
        this.selectionLogicUri = uri;
    }

    public final android.adservices.adselection.AdSelectionFromOutcomesConfig convertToAdServices$ads_adservices_release() {
        android.adservices.adselection.AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfigBuild = new android.adservices.adselection.AdSelectionFromOutcomesConfig.Builder().setSelectionSignals(this.adSelectionSignals.convertToAdServices$ads_adservices_release()).setAdSelectionIds(this.adSelectionIds).setSelectionLogicUri(this.selectionLogicUri).setSeller(this.seller.convertToAdServices$ads_adservices_release()).build();
        adSelectionFromOutcomesConfigBuild.getClass();
        return adSelectionFromOutcomesConfigBuild;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdSelectionFromOutcomesConfig)) {
            return false;
        }
        AdSelectionFromOutcomesConfig adSelectionFromOutcomesConfig = (AdSelectionFromOutcomesConfig) obj;
        return aa4.e(this.seller, adSelectionFromOutcomesConfig.seller) && aa4.e(this.adSelectionIds, adSelectionFromOutcomesConfig.adSelectionIds) && aa4.e(this.adSelectionSignals, adSelectionFromOutcomesConfig.adSelectionSignals) && aa4.e(this.selectionLogicUri, adSelectionFromOutcomesConfig.selectionLogicUri);
    }

    public final List<Long> getAdSelectionIds() {
        return this.adSelectionIds;
    }

    public final AdSelectionSignals getAdSelectionSignals() {
        return this.adSelectionSignals;
    }

    public final Uri getSelectionLogicUri() {
        return this.selectionLogicUri;
    }

    public final AdTechIdentifier getSeller() {
        return this.seller;
    }

    public int hashCode() {
        return this.selectionLogicUri.hashCode() + ((this.adSelectionSignals.hashCode() + e2.b(this.adSelectionIds, this.seller.hashCode() * 31, 31)) * 31);
    }

    public final void setSelectionLogicUri(Uri uri) {
        uri.getClass();
        this.selectionLogicUri = uri;
    }

    public String toString() {
        return "AdSelectionFromOutcomesConfig: seller=" + this.seller + ", adSelectionIds='" + this.adSelectionIds + "', adSelectionSignals=" + this.adSelectionSignals + ", selectionLogicUri=" + this.selectionLogicUri;
    }
}

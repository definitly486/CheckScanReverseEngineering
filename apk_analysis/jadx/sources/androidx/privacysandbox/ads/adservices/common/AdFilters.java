package androidx.privacysandbox.ads.adservices.common;

import defpackage.aa4;

/* JADX INFO: loaded from: classes3.dex */
@ExperimentalFeatures.Ext8OptIn
public final class AdFilters {
    private final FrequencyCapFilters frequencyCapFilters;

    public AdFilters(FrequencyCapFilters frequencyCapFilters) {
        this.frequencyCapFilters = frequencyCapFilters;
    }

    public final android.adservices.common.AdFilters convertToAdServices$ads_adservices_release() {
        android.adservices.common.AdFilters.Builder builder = new android.adservices.common.AdFilters.Builder();
        FrequencyCapFilters frequencyCapFilters = this.frequencyCapFilters;
        android.adservices.common.AdFilters adFiltersBuild = builder.setFrequencyCapFilters(frequencyCapFilters != null ? frequencyCapFilters.convertToAdServices$ads_adservices_release() : null).build();
        adFiltersBuild.getClass();
        return adFiltersBuild;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdFilters) {
            return aa4.e(this.frequencyCapFilters, ((AdFilters) obj).frequencyCapFilters);
        }
        return false;
    }

    public final FrequencyCapFilters getFrequencyCapFilters() {
        return this.frequencyCapFilters;
    }

    public int hashCode() {
        FrequencyCapFilters frequencyCapFilters = this.frequencyCapFilters;
        if (frequencyCapFilters != null) {
            return frequencyCapFilters.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "AdFilters: frequencyCapFilters=" + this.frequencyCapFilters;
    }
}

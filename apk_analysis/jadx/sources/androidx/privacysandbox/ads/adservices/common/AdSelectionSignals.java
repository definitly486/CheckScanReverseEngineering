package androidx.privacysandbox.ads.adservices.common;

import defpackage.aa4;

/* JADX INFO: loaded from: classes3.dex */
public final class AdSelectionSignals {
    private final String signals;

    public AdSelectionSignals(String str) {
        str.getClass();
        this.signals = str;
    }

    public final android.adservices.common.AdSelectionSignals convertToAdServices$ads_adservices_release() {
        android.adservices.common.AdSelectionSignals adSelectionSignalsFromString = android.adservices.common.AdSelectionSignals.fromString(this.signals);
        adSelectionSignalsFromString.getClass();
        return adSelectionSignalsFromString;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdSelectionSignals) {
            return aa4.e(this.signals, ((AdSelectionSignals) obj).signals);
        }
        return false;
    }

    public final String getSignals() {
        return this.signals;
    }

    public int hashCode() {
        return this.signals.hashCode();
    }

    public String toString() {
        return "AdSelectionSignals: " + this.signals;
    }
}

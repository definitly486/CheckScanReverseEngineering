package androidx.privacysandbox.ads.adservices.common;

import defpackage.aa4;
import defpackage.ej0;
import java.time.Duration;

/* JADX INFO: loaded from: classes3.dex */
@ExperimentalFeatures.Ext8OptIn
public final class KeyedFrequencyCap {
    private final int adCounterKey;
    private final Duration interval;
    private final int maxCount;

    public KeyedFrequencyCap(int i, int i2, Duration duration) {
        duration.getClass();
        this.adCounterKey = i;
        this.maxCount = i2;
        this.interval = duration;
    }

    public final android.adservices.common.KeyedFrequencyCap convertToAdServices$ads_adservices_release() {
        android.adservices.common.KeyedFrequencyCap keyedFrequencyCapBuild = new android.adservices.common.KeyedFrequencyCap.Builder(this.adCounterKey, this.maxCount, this.interval).build();
        keyedFrequencyCapBuild.getClass();
        return keyedFrequencyCapBuild;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyedFrequencyCap)) {
            return false;
        }
        KeyedFrequencyCap keyedFrequencyCap = (KeyedFrequencyCap) obj;
        return this.adCounterKey == keyedFrequencyCap.adCounterKey && this.maxCount == keyedFrequencyCap.maxCount && aa4.e(this.interval, keyedFrequencyCap.interval);
    }

    public final int getAdCounterKey() {
        return this.adCounterKey;
    }

    public final Duration getInterval() {
        return this.interval;
    }

    public final int getMaxCount() {
        return this.maxCount;
    }

    public int hashCode() {
        return this.interval.hashCode() + ej0.b(this.maxCount, Integer.hashCode(this.adCounterKey) * 31, 31);
    }

    public String toString() {
        return "KeyedFrequencyCap: adCounterKey=" + this.adCounterKey + ", maxCount=" + this.maxCount + ", interval=" + this.interval;
    }
}

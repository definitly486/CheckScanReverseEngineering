package androidx.camera.video.internal.config;

import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class CaptureEncodeRates {
    private final int captureRate;
    private final int encodeRate;

    public CaptureEncodeRates(int i, int i2) {
        this.captureRate = i;
        this.encodeRate = i2;
    }

    public static /* synthetic */ CaptureEncodeRates copy$default(CaptureEncodeRates captureEncodeRates, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = captureEncodeRates.captureRate;
        }
        if ((i3 & 2) != 0) {
            i2 = captureEncodeRates.encodeRate;
        }
        return captureEncodeRates.copy(i, i2);
    }

    public final int component1() {
        return this.captureRate;
    }

    public final int component2() {
        return this.encodeRate;
    }

    public final CaptureEncodeRates copy(int i, int i2) {
        return new CaptureEncodeRates(i, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CaptureEncodeRates)) {
            return false;
        }
        CaptureEncodeRates captureEncodeRates = (CaptureEncodeRates) obj;
        return this.captureRate == captureEncodeRates.captureRate && this.encodeRate == captureEncodeRates.encodeRate;
    }

    public final int getCaptureRate() {
        return this.captureRate;
    }

    public final int getEncodeRate() {
        return this.encodeRate;
    }

    public int hashCode() {
        return Integer.hashCode(this.encodeRate) + (Integer.hashCode(this.captureRate) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("CaptureEncodeRates(captureRate=");
        sb.append(this.captureRate);
        sb.append(", encodeRate=");
        return rg.h(sb, this.encodeRate, ')');
    }
}

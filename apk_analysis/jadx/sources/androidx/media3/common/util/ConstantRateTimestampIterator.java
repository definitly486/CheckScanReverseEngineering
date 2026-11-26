package androidx.media3.common.util;

import androidx.media3.common.C;
import defpackage.o8;

/* JADX INFO: loaded from: classes3.dex */
public final class ConstantRateTimestampIterator implements TimestampIterator {
    private final long endPositionUs;
    private final float frameRate;
    private int framesAdded;
    private final double framesDurationUs;
    private final long startPositionUs;
    private final int totalNumberOfFramesToAdd;

    public ConstantRateTimestampIterator(long j, long j2, float f) {
        boolean z = false;
        o8.e(j2 > 0);
        o8.e(f > 0.0f);
        if (0 <= j && j < j2) {
            z = true;
        }
        o8.e(z);
        this.startPositionUs = j;
        this.endPositionUs = j2;
        this.frameRate = f;
        this.totalNumberOfFramesToAdd = Math.max(Math.round(((j2 - j) / 1000000.0f) * f), 1);
        this.framesDurationUs = 1000000.0f / f;
    }

    private long getTimestampUsAfter(int i) {
        long jRound = Math.round(this.framesDurationUs * ((double) i)) + this.startPositionUs;
        o8.r(jRound >= 0);
        return jRound;
    }

    @Override // androidx.media3.common.util.TimestampIterator
    public ConstantRateTimestampIterator copyOf() {
        return new ConstantRateTimestampIterator(this.startPositionUs, this.endPositionUs, this.frameRate);
    }

    @Override // androidx.media3.common.util.TimestampIterator
    public long getLastTimestampUs() {
        int i = this.totalNumberOfFramesToAdd;
        return i == 0 ? C.TIME_UNSET : getTimestampUsAfter(i - 1);
    }

    @Override // androidx.media3.common.util.TimestampIterator
    public boolean hasNext() {
        return this.framesAdded < this.totalNumberOfFramesToAdd;
    }

    @Override // androidx.media3.common.util.TimestampIterator
    public long next() {
        o8.r(hasNext());
        int i = this.framesAdded;
        this.framesAdded = i + 1;
        return getTimestampUsAfter(i);
    }

    public ConstantRateTimestampIterator(long j, float f) {
        this(0L, j, f);
    }
}

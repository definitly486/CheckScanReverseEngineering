package androidx.media3.extractor.mp4;

import androidx.media3.common.util.Util;
import defpackage.k;
import defpackage.o8;

/* JADX INFO: loaded from: classes3.dex */
public final class TrackSampleTable {
    public final long durationUs;
    public final int[] flags;
    public final boolean hasOnlySyncSamples;
    public final int maximumSize;
    public final long[] offsets;
    public final int sampleCount;
    public final int[] sizes;
    public final int[] syncSampleIndices;
    public final long[] timestampsUs;
    public final Track track;

    public TrackSampleTable(Track track, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, int[] iArr3, boolean z, long j, int i2) {
        o8.e(iArr.length == jArr2.length);
        o8.e(jArr.length == jArr2.length);
        o8.e(iArr2.length == jArr2.length);
        this.track = track;
        this.offsets = jArr;
        this.sizes = iArr;
        this.maximumSize = i;
        this.timestampsUs = jArr2;
        this.flags = iArr2;
        this.syncSampleIndices = iArr3;
        this.hasOnlySyncSamples = z;
        this.durationUs = j;
        this.sampleCount = i2;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    public int getIndexOfEarlierOrEqualSynchronizationSample(long j) {
        int i = 0;
        if (this.hasOnlySyncSamples) {
            return Util.binarySearchFloor(this.timestampsUs, j, true, false);
        }
        int length = this.syncSampleIndices.length - 1;
        int i2 = -1;
        while (i <= length) {
            int iB = k.b(length, i, 2, i);
            if (this.timestampsUs[this.syncSampleIndices[iB]] <= j) {
                i = iB + 1;
                i2 = iB;
            } else {
                length = iB - 1;
            }
        }
        if (i2 == -1) {
            return -1;
        }
        long j2 = this.timestampsUs[this.syncSampleIndices[i2]];
        if (j2 == j) {
            while (i2 > 0 && this.timestampsUs[this.syncSampleIndices[i2 - 1]] == j2) {
                i2--;
            }
        }
        return this.syncSampleIndices[i2];
    }

    public int getIndexOfLaterOrEqualSynchronizationSample(long j) {
        int i = 0;
        if (this.hasOnlySyncSamples) {
            return Util.binarySearchCeil(this.timestampsUs, j, true, false);
        }
        int length = this.syncSampleIndices.length - 1;
        int i2 = -1;
        while (i <= length) {
            int iB = k.b(length, i, 2, i);
            if (this.timestampsUs[this.syncSampleIndices[iB]] >= j) {
                length = iB - 1;
                i2 = iB;
            } else {
                i = iB + 1;
            }
        }
        if (i2 == -1) {
            return -1;
        }
        long[] jArr = this.timestampsUs;
        int[] iArr = this.syncSampleIndices;
        long j2 = jArr[iArr[i2]];
        if (j2 == j) {
            while (true) {
                iArr = this.syncSampleIndices;
                if (i2 >= iArr.length - 1) {
                    break;
                }
                int i3 = i2 + 1;
                if (this.timestampsUs[iArr[i3]] != j2) {
                    break;
                }
                i2 = i3;
            }
        }
        return iArr[i2];
    }
}

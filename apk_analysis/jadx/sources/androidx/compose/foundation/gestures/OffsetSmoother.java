package androidx.compose.foundation.gestures;

import androidx.collection.LongList;
import androidx.collection.MutableLongList;
import androidx.compose.ui.geometry.Offset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.br2;
import defpackage.nl3;
import defpackage.qy2;

/* JADX INFO: loaded from: classes.dex */
public final class OffsetSmoother {
    public static final int $stable = 8;
    private MutableLongList eventRotatingArray = new MutableLongList(0, 1, null);
    private int eventRotatingIndex;

    private static final float smoothEventPosition_MK_Hz9U$averageBy(LongList longList, nl3<? super Long, Float> nl3Var) {
        long[] jArr = longList.content;
        int i = longList._size;
        float fFloatValue = 0.0f;
        for (int i2 = 0; i2 < i; i2++) {
            fFloatValue += nl3Var.invoke(Long.valueOf(jArr[i2])).floatValue();
        }
        return fFloatValue / longList._size;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float smoothEventPosition_MK_Hz9U$lambda$1(long j) {
        return Float.intBitsToFloat((int) (Offset.m5979constructorimpl(j) >> 32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float smoothEventPosition_MK_Hz9U$lambda$2(long j) {
        return Float.intBitsToFloat((int) (Offset.m5979constructorimpl(j) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public final void reset() {
        this.eventRotatingIndex = 0;
        this.eventRotatingArray.clear();
    }

    /* JADX INFO: renamed from: smoothEventPosition-MK-Hz9U, reason: not valid java name */
    public final long m1561smoothEventPositionMKHz9U(long j) {
        MutableLongList mutableLongList = this.eventRotatingArray;
        if (mutableLongList._size == 3) {
            int i = this.eventRotatingIndex;
            this.eventRotatingIndex = i + 1;
            mutableLongList.set(i, j);
        } else {
            mutableLongList.add(j);
        }
        if (this.eventRotatingIndex == 3) {
            this.eventRotatingIndex = 0;
        }
        float fSmoothEventPosition_MK_Hz9U$averageBy = smoothEventPosition_MK_Hz9U$averageBy(this.eventRotatingArray, new br2(1));
        float fSmoothEventPosition_MK_Hz9U$averageBy2 = smoothEventPosition_MK_Hz9U$averageBy(this.eventRotatingArray, new qy2(3));
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fSmoothEventPosition_MK_Hz9U$averageBy)) << 32) | (((long) Float.floatToRawIntBits(fSmoothEventPosition_MK_Hz9U$averageBy2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }
}

package androidx.compose.foundation.gestures;

import androidx.collection.MutableObjectList;
import androidx.collection.ObjectList;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.o44;
import defpackage.t2;

/* JADX INFO: loaded from: classes.dex */
public final class IndirectPointerInputEventSmoother {
    private static final int SmoothingFactor = 3;
    private MutableObjectList<IndirectPointerInputChange> eventRotatingArray = new MutableObjectList<>(0, 1, null);
    private int eventRotatingIndex;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    private static final <T> float smoothEventPosition_tuRUvjQ$averageBy(ObjectList<T> objectList, nl3<? super T, Float> nl3Var) {
        Object[] objArr = objectList.content;
        int i = objectList._size;
        float fFloatValue = 0.0f;
        for (int i2 = 0; i2 < i; i2++) {
            fFloatValue += nl3Var.invoke(objArr[i2]).floatValue();
        }
        return fFloatValue / objectList.getSize();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float smoothEventPosition_tuRUvjQ$lambda$1(IndirectPointerInputChange indirectPointerInputChange) {
        return Float.intBitsToFloat((int) (indirectPointerInputChange.m7074getPositionF1C5BW0() >> 32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float smoothEventPosition_tuRUvjQ$lambda$2(IndirectPointerInputChange indirectPointerInputChange) {
        return Float.intBitsToFloat((int) (indirectPointerInputChange.m7074getPositionF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: smoothEventPosition-tuRUvjQ, reason: not valid java name */
    public final long m1551smoothEventPositiontuRUvjQ(IndirectPointerInputChange indirectPointerInputChange) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (indirectPointerInputChange.m7074getPositionF1C5BW0() >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (indirectPointerInputChange.m7074getPositionF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        int i = 0;
        if (IndirectPointerInputDragCycleDetectorKt.changedToDownIgnoreConsumed(indirectPointerInputChange)) {
            this.eventRotatingIndex = 0;
            this.eventRotatingArray.clear();
        }
        if (!IndirectPointerInputDragCycleDetectorKt.changedToUpIgnoreConsumed(indirectPointerInputChange) && !IndirectPointerInputDragCycleDetectorKt.changedToDownIgnoreConsumed(indirectPointerInputChange)) {
            int size = this.eventRotatingArray.getSize();
            MutableObjectList<IndirectPointerInputChange> mutableObjectList = this.eventRotatingArray;
            if (size == 3) {
                int i2 = this.eventRotatingIndex;
                this.eventRotatingIndex = i2 + 1;
                mutableObjectList.set(i2, indirectPointerInputChange);
            } else {
                mutableObjectList.add(indirectPointerInputChange);
            }
            if (this.eventRotatingIndex == 3) {
                this.eventRotatingIndex = 0;
            }
            fIntBitsToFloat = smoothEventPosition_tuRUvjQ$averageBy(this.eventRotatingArray, new t2(1));
            fIntBitsToFloat2 = smoothEventPosition_tuRUvjQ$averageBy(this.eventRotatingArray, new o44(i));
        }
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}

package androidx.compose.material3.carousel;

import defpackage.ej0;
import defpackage.js2;

/* JADX INFO: loaded from: classes2.dex */
final class ShiftPointRange {
    private final int fromStepIndex;
    private final float steppedInterpolation;
    private final int toStepIndex;

    public ShiftPointRange(int i, int i2, float f) {
        this.fromStepIndex = i;
        this.toStepIndex = i2;
        this.steppedInterpolation = f;
    }

    public static /* synthetic */ ShiftPointRange copy$default(ShiftPointRange shiftPointRange, int i, int i2, float f, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = shiftPointRange.fromStepIndex;
        }
        if ((i3 & 2) != 0) {
            i2 = shiftPointRange.toStepIndex;
        }
        if ((i3 & 4) != 0) {
            f = shiftPointRange.steppedInterpolation;
        }
        return shiftPointRange.copy(i, i2, f);
    }

    public final int component1() {
        return this.fromStepIndex;
    }

    public final int component2() {
        return this.toStepIndex;
    }

    public final float component3() {
        return this.steppedInterpolation;
    }

    public final ShiftPointRange copy(int i, int i2, float f) {
        return new ShiftPointRange(i, i2, f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShiftPointRange)) {
            return false;
        }
        ShiftPointRange shiftPointRange = (ShiftPointRange) obj;
        return this.fromStepIndex == shiftPointRange.fromStepIndex && this.toStepIndex == shiftPointRange.toStepIndex && Float.compare(this.steppedInterpolation, shiftPointRange.steppedInterpolation) == 0;
    }

    public final int getFromStepIndex() {
        return this.fromStepIndex;
    }

    public final float getSteppedInterpolation() {
        return this.steppedInterpolation;
    }

    public final int getToStepIndex() {
        return this.toStepIndex;
    }

    public int hashCode() {
        return Float.hashCode(this.steppedInterpolation) + ej0.b(this.toStepIndex, Integer.hashCode(this.fromStepIndex) * 31, 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ShiftPointRange(fromStepIndex=");
        sb.append(this.fromStepIndex);
        sb.append(", toStepIndex=");
        sb.append(this.toStepIndex);
        sb.append(", steppedInterpolation=");
        return js2.b(sb, this.steppedInterpolation, ')');
    }
}

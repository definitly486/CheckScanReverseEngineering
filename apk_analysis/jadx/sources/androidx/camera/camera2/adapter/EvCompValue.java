package androidx.camera.camera2.adapter;

import android.util.Range;
import android.util.Rational;
import androidx.camera.core.ExposureState;
import defpackage.aa4;
import defpackage.ej0;

/* JADX INFO: loaded from: classes.dex */
public final class EvCompValue implements ExposureState {
    private final int index;
    private final Range<Integer> range;
    private final Rational step;
    private final boolean supported;

    public EvCompValue(boolean z, int i, Range<Integer> range, Rational rational) {
        range.getClass();
        rational.getClass();
        this.supported = z;
        this.index = i;
        this.range = range;
        this.step = rational;
    }

    private final boolean component1() {
        return this.supported;
    }

    private final int component2() {
        return this.index;
    }

    private final Range<Integer> component3() {
        return this.range;
    }

    private final Rational component4() {
        return this.step;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ EvCompValue copy$default(EvCompValue evCompValue, boolean z, int i, Range range, Rational rational, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = evCompValue.supported;
        }
        if ((i2 & 2) != 0) {
            i = evCompValue.index;
        }
        if ((i2 & 4) != 0) {
            range = evCompValue.range;
        }
        if ((i2 & 8) != 0) {
            rational = evCompValue.step;
        }
        return evCompValue.copy(z, i, range, rational);
    }

    public final EvCompValue copy(boolean z, int i, Range<Integer> range, Rational rational) {
        range.getClass();
        rational.getClass();
        return new EvCompValue(z, i, range, rational);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EvCompValue)) {
            return false;
        }
        EvCompValue evCompValue = (EvCompValue) obj;
        return this.supported == evCompValue.supported && this.index == evCompValue.index && aa4.e(this.range, evCompValue.range) && aa4.e(this.step, evCompValue.step);
    }

    @Override // androidx.camera.core.ExposureState
    public int getExposureCompensationIndex() {
        return this.index;
    }

    @Override // androidx.camera.core.ExposureState
    public Range<Integer> getExposureCompensationRange() {
        return this.range;
    }

    @Override // androidx.camera.core.ExposureState
    public Rational getExposureCompensationStep() {
        return this.step;
    }

    public int hashCode() {
        return this.step.hashCode() + ((this.range.hashCode() + ej0.b(this.index, Boolean.hashCode(this.supported) * 31, 31)) * 31);
    }

    @Override // androidx.camera.core.ExposureState
    public boolean isExposureCompensationSupported() {
        return this.supported;
    }

    public String toString() {
        return "EvCompValue(supported=" + this.supported + ", index=" + this.index + ", range=" + this.range + ", step=" + this.step + ')';
    }

    public final EvCompValue updateIndex$camera_camera2(int i) {
        return copy$default(this, false, i, null, null, 13, null);
    }
}

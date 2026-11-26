package androidx.compose.material3;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.mm1;
import defpackage.nm1;
import defpackage.ul2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public final class SliderPositions {
    public static final int $stable = 0;
    private final MutableState activeRange$delegate;
    private final MutableState tickFractions$delegate;

    public SliderPositions(nm1 nm1Var, float[] fArr, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new mm1(0.0f, 1.0f) : nm1Var, (i & 2) != 0 ? new float[0] : fArr);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SliderPositions)) {
            return false;
        }
        SliderPositions sliderPositions = (SliderPositions) obj;
        return aa4.e(getActiveRange(), sliderPositions.getActiveRange()) && Arrays.equals(getTickFractions(), sliderPositions.getTickFractions());
    }

    public final nm1<Float> getActiveRange() {
        return (nm1) this.activeRange$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final float[] getTickFractions() {
        return (float[]) this.tickFractions$delegate.getValue();
    }

    public int hashCode() {
        return Arrays.hashCode(getTickFractions()) + (getActiveRange().hashCode() * 31);
    }

    public final void setActiveRange$material3(nm1<Float> nm1Var) {
        this.activeRange$delegate.setValue(nm1Var);
    }

    public final void setTickFractions$material3(float[] fArr) {
        this.tickFractions$delegate.setValue(fArr);
    }

    public SliderPositions() {
        this(null, null, 3, null);
    }

    public SliderPositions(nm1<Float> nm1Var, float[] fArr) {
        this.activeRange$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(nm1Var, null, 2, null);
        this.tickFractions$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(fArr, null, 2, null);
    }
}

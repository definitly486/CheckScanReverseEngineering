package androidx.compose.foundation.shape;

import androidx.compose.ui.platform.InspectableValue;
import androidx.compose.ui.unit.Density;
import defpackage.xy;

/* JADX INFO: loaded from: classes.dex */
final class PxCornerSize implements CornerSize, InspectableValue {
    private final float size;

    public PxCornerSize(float f) {
        this.size = f;
    }

    private final float component1() {
        return this.size;
    }

    public static /* synthetic */ PxCornerSize copy$default(PxCornerSize pxCornerSize, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            f = pxCornerSize.size;
        }
        return pxCornerSize.copy(f);
    }

    public final PxCornerSize copy(float f) {
        return new PxCornerSize(f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PxCornerSize) && Float.compare(this.size, ((PxCornerSize) obj).size) == 0;
    }

    @Override // androidx.compose.ui.platform.InspectableValue
    public String getValueOverride() {
        return xy.e(new StringBuilder(), "px", this.size);
    }

    public int hashCode() {
        return Float.hashCode(this.size);
    }

    @Override // androidx.compose.foundation.shape.CornerSize
    /* JADX INFO: renamed from: toPx-TmRCtEA */
    public float mo2341toPxTmRCtEA(long j, Density density) {
        return this.size;
    }

    public String toString() {
        return xy.e(new StringBuilder("CornerSize(size = "), ".px)", this.size);
    }
}

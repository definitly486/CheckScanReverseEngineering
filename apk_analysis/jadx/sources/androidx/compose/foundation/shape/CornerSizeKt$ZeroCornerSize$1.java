package androidx.compose.foundation.shape;

import androidx.compose.ui.platform.InspectableValue;
import androidx.compose.ui.unit.Density;

/* JADX INFO: loaded from: classes.dex */
public final class CornerSizeKt$ZeroCornerSize$1 implements CornerSize, InspectableValue {
    @Override // androidx.compose.foundation.shape.CornerSize
    /* JADX INFO: renamed from: toPx-TmRCtEA */
    public float mo2341toPxTmRCtEA(long j, Density density) {
        return 0.0f;
    }

    public String toString() {
        return "ZeroCornerSize";
    }

    @Override // androidx.compose.ui.platform.InspectableValue
    public String getValueOverride() {
        return "ZeroCornerSize";
    }
}

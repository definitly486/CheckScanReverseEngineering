package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.Constraints;

/* JADX INFO: loaded from: classes.dex */
public final class AspectRatioKt {
    public static final Modifier aspectRatio(Modifier modifier, float f, boolean z) {
        return modifier.then(new AspectRatioElement(f, z, InspectableValueKt.isDebugInspectorInfoEnabled() ? new AspectRatioKt$aspectRatio$$inlined$debugInspectorInfo$1(f, z) : InspectableValueKt.getNoInspectorInfo()));
    }

    public static /* synthetic */ Modifier aspectRatio$default(Modifier modifier, float f, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return aspectRatio(modifier, f, z);
    }

    /* JADX INFO: renamed from: isSatisfiedBy-NN6Ew-U, reason: not valid java name */
    public static final boolean m1757isSatisfiedByNN6EwU(long j, int i, int i2) {
        int iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
        if (i > Constraints.m8995getMaxWidthimpl(j) || iM8997getMinWidthimpl > i) {
            return false;
        }
        return i2 <= Constraints.m8994getMaxHeightimpl(j) && Constraints.m8996getMinHeightimpl(j) <= i2;
    }
}

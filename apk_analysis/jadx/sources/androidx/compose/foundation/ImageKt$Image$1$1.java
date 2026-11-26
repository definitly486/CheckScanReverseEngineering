package androidx.compose.foundation;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.j59;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ImageKt$Image$1$1 implements MeasurePolicy {
    public static final ImageKt$Image$1$1 INSTANCE = new ImageKt$Image$1$1();

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable.PlacementScope placementScope) {
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        return MeasureScope.layout$default(measureScope, Constraints.m8997getMinWidthimpl(j), Constraints.m8996getMinHeightimpl(j), null, new h(), 4, null);
    }
}

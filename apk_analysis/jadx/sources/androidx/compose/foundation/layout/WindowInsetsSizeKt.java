package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.ad2;
import defpackage.i29;
import defpackage.kh;
import defpackage.xu2;

/* JADX INFO: loaded from: classes.dex */
public final class WindowInsetsSizeKt {
    private static final WindowInsetsWidthCalculator startCalc = new kh(3);
    private static final WindowInsetsWidthCalculator endCalc = new xu2();
    private static final WindowInsetsHeightCalculator topCalc = new ad2();
    private static final WindowInsetsHeightCalculator bottomCalc = new i29();

    /* JADX INFO: Access modifiers changed from: private */
    public static final int endCalc$lambda$0(WindowInsets windowInsets, LayoutDirection layoutDirection, Density density) {
        return layoutDirection == LayoutDirection.Rtl ? windowInsets.getLeft(density, layoutDirection) : windowInsets.getRight(density, layoutDirection);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int startCalc$lambda$0(WindowInsets windowInsets, LayoutDirection layoutDirection, Density density) {
        return layoutDirection == LayoutDirection.Ltr ? windowInsets.getLeft(density, layoutDirection) : windowInsets.getRight(density, layoutDirection);
    }

    public static final Modifier windowInsetsBottomHeight(Modifier modifier, WindowInsets windowInsets) {
        return modifier.then(new DerivedHeightModifierElement(windowInsets, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsSizeKt$windowInsetsBottomHeight$$inlined$debugInspectorInfo$1(windowInsets) : InspectableValueKt.getNoInspectorInfo(), bottomCalc));
    }

    public static final Modifier windowInsetsEndWidth(Modifier modifier, WindowInsets windowInsets) {
        return modifier.then(new DerivedWidthModifierElement(windowInsets, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsSizeKt$windowInsetsEndWidth$$inlined$debugInspectorInfo$1(windowInsets) : InspectableValueKt.getNoInspectorInfo(), endCalc));
    }

    public static final Modifier windowInsetsStartWidth(Modifier modifier, WindowInsets windowInsets) {
        return modifier.then(new DerivedWidthModifierElement(windowInsets, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsSizeKt$windowInsetsStartWidth$$inlined$debugInspectorInfo$1(windowInsets) : InspectableValueKt.getNoInspectorInfo(), startCalc));
    }

    public static final Modifier windowInsetsTopHeight(Modifier modifier, WindowInsets windowInsets) {
        return modifier.then(new DerivedHeightModifierElement(windowInsets, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsSizeKt$windowInsetsTopHeight$$inlined$debugInspectorInfo$1(windowInsets) : InspectableValueKt.getNoInspectorInfo(), topCalc));
    }
}

package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class WindowInsetsPaddingKt {
    public static final String InsetsConsumingModifierNodeKey = "androidx.compose.foundation.layout.ConsumedInsetsProvider";

    public static final Modifier consumeWindowInsets(Modifier modifier, WindowInsets windowInsets) {
        return modifier.then(new UnionInsetsConsumingModifierElement(windowInsets, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsPaddingKt$consumeWindowInsets$$inlined$debugInspectorInfo$1(windowInsets) : InspectableValueKt.getNoInspectorInfo()));
    }

    public static final Modifier onConsumedWindowInsetsChanged(Modifier modifier, nl3<? super WindowInsets, j59> nl3Var) {
        return modifier.then(new ConsumedInsetsModifierElement(nl3Var, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsPaddingKt$onConsumedWindowInsetsChanged$$inlined$debugInspectorInfo$1(nl3Var) : InspectableValueKt.getNoInspectorInfo()));
    }

    public static final Modifier recalculateWindowInsets(Modifier modifier) {
        return modifier.then(RecalculateWindowInsetsModifierElement.INSTANCE);
    }

    public static final Modifier windowInsetsPadding(Modifier modifier, WindowInsets windowInsets) {
        return modifier.then(new InsetsPaddingModifierElement(windowInsets, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsPaddingKt$windowInsetsPadding$$inlined$debugInspectorInfo$1(windowInsets) : InspectableValueKt.getNoInspectorInfo()));
    }

    public static final Modifier consumeWindowInsets(Modifier modifier, PaddingValues paddingValues) {
        return modifier.then(new PaddingValuesConsumingModifierElement(paddingValues, InspectableValueKt.isDebugInspectorInfoEnabled() ? new WindowInsetsPaddingKt$consumeWindowInsets$$inlined$debugInspectorInfo$2(paddingValues) : InspectableValueKt.getNoInspectorInfo()));
    }
}

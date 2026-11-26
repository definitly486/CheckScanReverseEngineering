package androidx.compose.foundation.layout;

import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
final class PaddingValuesConsumingModifierNode extends InsetsConsumingModifierNode {
    private PaddingValues paddingValues;

    public PaddingValuesConsumingModifierNode(PaddingValues paddingValues) {
        this.paddingValues = paddingValues;
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode
    public WindowInsets calculateInsets(WindowInsets windowInsets) {
        return WindowInsetsKt.add(windowInsets, WindowInsetsKt.asInsets(this.paddingValues));
    }

    public final void update(PaddingValues paddingValues) {
        if (aa4.e(paddingValues, this.paddingValues)) {
            return;
        }
        this.paddingValues = paddingValues;
        insetsInvalidated();
    }
}

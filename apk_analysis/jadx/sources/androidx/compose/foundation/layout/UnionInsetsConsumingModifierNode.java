package androidx.compose.foundation.layout;

import defpackage.aa4;

/* JADX INFO: loaded from: classes.dex */
final class UnionInsetsConsumingModifierNode extends InsetsConsumingModifierNode {
    private WindowInsets insets;

    public UnionInsetsConsumingModifierNode(WindowInsets windowInsets) {
        this.insets = windowInsets;
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode
    public WindowInsets calculateInsets(WindowInsets windowInsets) {
        return WindowInsetsKt.union(windowInsets, this.insets);
    }

    public final void update(WindowInsets windowInsets) {
        if (aa4.e(windowInsets, this.insets)) {
            return;
        }
        this.insets = windowInsets;
        insetsInvalidated();
    }
}

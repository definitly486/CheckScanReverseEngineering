package androidx.compose.foundation.layout;

import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class ConsumedInsetsModifierNode extends InsetsConsumingModifierNode {
    private nl3<? super WindowInsets, j59> block;

    public ConsumedInsetsModifierNode(nl3<? super WindowInsets, j59> nl3Var) {
        this.block = nl3Var;
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode
    public WindowInsets calculateInsets(WindowInsets windowInsets) {
        this.block.invoke(windowInsets);
        return windowInsets;
    }

    public final void update(nl3<? super WindowInsets, j59> nl3Var) {
        if (nl3Var != this.block) {
            this.block = nl3Var;
        }
    }
}

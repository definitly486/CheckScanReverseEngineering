package androidx.compose.ui.node;

import androidx.compose.runtime.AbstractApplier;

/* JADX INFO: loaded from: classes2.dex */
public final class UiApplier extends AbstractApplier<LayoutNode> {
    public static final int $stable = AbstractApplier.$stable;

    public UiApplier(LayoutNode layoutNode) {
        super(layoutNode);
    }

    @Override // androidx.compose.runtime.Applier
    public void insertBottomUp(int i, LayoutNode layoutNode) {
        getCurrent().insertAt$ui(i, layoutNode);
    }

    @Override // androidx.compose.runtime.Applier
    public void move(int i, int i2, int i3) {
        getCurrent().move$ui(i, i2, i3);
    }

    @Override // androidx.compose.runtime.AbstractApplier
    public void onClear() {
        getRoot().removeAll$ui();
    }

    @Override // androidx.compose.runtime.Applier
    public void onEndChanges() {
        super.onEndChanges();
        Owner owner$ui = getRoot().getOwner$ui();
        if (owner$ui != null) {
            owner$ui.onEndApplyChanges();
        }
    }

    @Override // androidx.compose.runtime.Applier
    public void remove(int i, int i2) {
        getCurrent().removeAt$ui(i, i2);
    }

    @Override // androidx.compose.runtime.Applier
    public void reuse() {
        getCurrent().onReuse();
    }

    @Override // androidx.compose.runtime.Applier
    public void insertTopDown(int i, LayoutNode layoutNode) {
    }
}

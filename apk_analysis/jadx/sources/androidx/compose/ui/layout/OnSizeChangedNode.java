package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.MeasuredSizeAwareModifierNode;
import androidx.compose.ui.unit.IntSize;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class OnSizeChangedNode extends Modifier.Node implements MeasuredSizeAwareModifierNode {
    public static final int $stable = 8;
    private nl3<? super IntSize, j59> onSizeChanged;
    private final boolean shouldAutoInvalidate = true;
    private long previousSize = IntSize.m9208constructorimpl(-9223372034707292160L);

    public OnSizeChangedNode(nl3<? super IntSize, j59> nl3Var) {
        this.onSizeChanged = nl3Var;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* JADX INFO: renamed from: onRemeasured-ozmzZPI */
    public void mo1423onRemeasuredozmzZPI(long j) {
        if (IntSize.m9211equalsimpl0(this.previousSize, j)) {
            return;
        }
        this.onSizeChanged.invoke(IntSize.m9205boximpl(j));
        this.previousSize = j;
    }

    public final void update(nl3<? super IntSize, j59> nl3Var) {
        this.onSizeChanged = nl3Var;
        this.previousSize = IntSize.m9208constructorimpl(-9223372034707292160L);
    }
}

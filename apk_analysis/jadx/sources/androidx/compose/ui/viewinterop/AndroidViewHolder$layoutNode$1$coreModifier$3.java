package androidx.compose.ui.viewinterop;

import android.view.WindowInsets;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.IntSize;
import androidx.core.view.WindowInsetsCompat;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidViewHolder$layoutNode$1$coreModifier$3 extends gh4 implements nl3<LayoutCoordinates, j59> {
    final /* synthetic */ LayoutNode $layoutNode;
    final /* synthetic */ AndroidViewHolder $this_run;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidViewHolder$layoutNode$1$coreModifier$3(AndroidViewHolder androidViewHolder, LayoutNode layoutNode) {
        super(1);
        this.$this_run = androidViewHolder;
        this.$layoutNode = layoutNode;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LayoutCoordinates layoutCoordinates) {
        WindowInsets windowInsets;
        AndroidViewHolder_androidKt.layoutAccordingTo(this.$this_run, this.$layoutNode);
        this.$this_run.owner.onInteropViewLayoutChange(this.$this_run);
        int i = this.$this_run.position[0];
        int i2 = this.$this_run.position[1];
        this.$this_run.getView().getLocationOnScreen(this.$this_run.position);
        long j = this.$this_run.size;
        this.$this_run.size = layoutCoordinates.mo7710getSizeYbymL2g();
        WindowInsetsCompat windowInsetsCompat = this.$this_run.insets;
        if (windowInsetsCompat != null) {
            if ((i == this.$this_run.position[0] && i2 == this.$this_run.position[1] && IntSize.m9211equalsimpl0(j, this.$this_run.size)) || (windowInsets = this.$this_run.insetToLayoutPosition(windowInsetsCompat).toWindowInsets()) == null) {
                return;
            }
            this.$this_run.getView().dispatchApplyWindowInsets(windowInsets);
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(LayoutCoordinates layoutCoordinates) {
        invoke2(layoutCoordinates);
        return j59.a;
    }
}

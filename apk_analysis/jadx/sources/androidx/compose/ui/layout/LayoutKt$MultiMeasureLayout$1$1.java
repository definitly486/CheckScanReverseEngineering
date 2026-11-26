package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutKt$MultiMeasureLayout$1$1 extends gh4 implements nl3<LayoutNode, j59> {
    public static final LayoutKt$MultiMeasureLayout$1$1 INSTANCE = new LayoutKt$MultiMeasureLayout$1$1();

    public LayoutKt$MultiMeasureLayout$1$1() {
        super(1);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(LayoutNode layoutNode) {
        invoke2(layoutNode);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LayoutNode layoutNode) {
        layoutNode.setCanMultiMeasure$ui(true);
    }
}

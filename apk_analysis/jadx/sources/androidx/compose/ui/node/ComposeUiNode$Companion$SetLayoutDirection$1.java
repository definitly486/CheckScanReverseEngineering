package androidx.compose.ui.node;

import androidx.compose.ui.unit.LayoutDirection;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposeUiNode$Companion$SetLayoutDirection$1 extends gh4 implements bm3<ComposeUiNode, LayoutDirection, j59> {
    public static final ComposeUiNode$Companion$SetLayoutDirection$1 INSTANCE = new ComposeUiNode$Companion$SetLayoutDirection$1();

    public ComposeUiNode$Companion$SetLayoutDirection$1() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(ComposeUiNode composeUiNode, LayoutDirection layoutDirection) {
        invoke2(composeUiNode, layoutDirection);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(ComposeUiNode composeUiNode, LayoutDirection layoutDirection) {
        composeUiNode.setLayoutDirection(layoutDirection);
    }
}

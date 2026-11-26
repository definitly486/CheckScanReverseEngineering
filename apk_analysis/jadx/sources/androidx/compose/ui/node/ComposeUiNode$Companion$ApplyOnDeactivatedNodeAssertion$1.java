package androidx.compose.ui.node;

import androidx.compose.ui.internal.InlineClassHelperKt;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposeUiNode$Companion$ApplyOnDeactivatedNodeAssertion$1 extends gh4 implements nl3<ComposeUiNode, j59> {
    public static final ComposeUiNode$Companion$ApplyOnDeactivatedNodeAssertion$1 INSTANCE = new ComposeUiNode$Companion$ApplyOnDeactivatedNodeAssertion$1();

    public ComposeUiNode$Companion$ApplyOnDeactivatedNodeAssertion$1() {
        super(1);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(ComposeUiNode composeUiNode) {
        LayoutNode layoutNode = composeUiNode instanceof LayoutNode ? (LayoutNode) composeUiNode : null;
        boolean z = false;
        if (layoutNode != null && layoutNode.isDeactivated()) {
            z = true;
        }
        if (z) {
            InlineClassHelperKt.throwIllegalStateException("Apply is called on deactivated node " + composeUiNode);
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(ComposeUiNode composeUiNode) {
        invoke2(composeUiNode);
        return j59.a;
    }
}

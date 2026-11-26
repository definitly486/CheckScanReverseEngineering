package androidx.compose.ui.viewinterop;

import android.view.View;
import androidx.compose.ui.focus.FocusEnterExitScope;
import androidx.compose.ui.focus.FocusInteropUtils_androidKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusGroupPropertiesNode$onEnter$1 extends gh4 implements nl3<FocusEnterExitScope, j59> {
    final /* synthetic */ FocusGroupPropertiesNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusGroupPropertiesNode$onEnter$1(FocusGroupPropertiesNode focusGroupPropertiesNode) {
        super(1);
        this.this$0 = focusGroupPropertiesNode;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(FocusEnterExitScope focusEnterExitScope) {
        View embeddedView = FocusGroupNode_androidKt.getEmbeddedView(this.this$0);
        if (embeddedView.isFocused() || embeddedView.hasFocus()) {
            return;
        }
        if (FocusInteropUtils_androidKt.requestInteropFocus(embeddedView, FocusInteropUtils_androidKt.m5874toAndroidFocusDirection3ESFkO8(focusEnterExitScope.mo5858getRequestedFocusDirectiondhqQ8s()), FocusGroupNode_androidKt.getCurrentlyFocusedRect(DelegatableNodeKt.requireOwner(this.this$0).getFocusOwner(), DelegatableNode_androidKt.requireView(this.this$0), embeddedView))) {
            return;
        }
        focusEnterExitScope.cancelFocusChange();
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(FocusEnterExitScope focusEnterExitScope) {
        invoke2(focusEnterExitScope);
        return j59.a;
    }
}

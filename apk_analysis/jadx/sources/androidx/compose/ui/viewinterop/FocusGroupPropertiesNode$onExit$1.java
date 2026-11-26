package androidx.compose.ui.viewinterop;

import android.graphics.Rect;
import android.view.FocusFinder;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.ui.ComposeUiFlags;
import androidx.compose.ui.focus.FocusEnterExitScope;
import androidx.compose.ui.focus.FocusInteropUtils_androidKt;
import androidx.compose.ui.focus.FocusOwner;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import androidx.media3.extractor.ts.TsExtractor;
import defpackage.ah;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusGroupPropertiesNode$onExit$1 extends gh4 implements nl3<FocusEnterExitScope, j59> {
    final /* synthetic */ FocusGroupPropertiesNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusGroupPropertiesNode$onExit$1(FocusGroupPropertiesNode focusGroupPropertiesNode) {
        super(1);
        this.this$0 = focusGroupPropertiesNode;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(FocusEnterExitScope focusEnterExitScope) {
        View viewFindNextFocusFromRect;
        View embeddedView = FocusGroupNode_androidKt.getEmbeddedView(this.this$0);
        if (ComposeUiFlags.isViewFocusFixEnabled) {
            if (embeddedView.hasFocus() || embeddedView.isFocused()) {
                embeddedView.clearFocus();
                return;
            }
            return;
        }
        if (ComposeUiFlags.isBypassUnfocusableComposeViewEnabled || !embeddedView.hasFocus()) {
            return;
        }
        FocusOwner focusOwner = DelegatableNodeKt.requireOwner(this.this$0).getFocusOwner();
        View viewRequireView = DelegatableNode_androidKt.requireView(this.this$0);
        if (!(embeddedView instanceof ViewGroup)) {
            if (viewRequireView.requestFocus()) {
                return;
            }
            ah.f("host view did not take focus");
            return;
        }
        Rect currentlyFocusedRect = FocusGroupNode_androidKt.getCurrentlyFocusedRect(focusOwner, viewRequireView, embeddedView);
        Integer numM5874toAndroidFocusDirection3ESFkO8 = FocusInteropUtils_androidKt.m5874toAndroidFocusDirection3ESFkO8(focusEnterExitScope.mo5858getRequestedFocusDirectiondhqQ8s());
        int iIntValue = numM5874toAndroidFocusDirection3ESFkO8 != null ? numM5874toAndroidFocusDirection3ESFkO8.intValue() : TsExtractor.TS_STREAM_TYPE_HDMV_DTS;
        FocusFinder focusFinder = FocusFinder.getInstance();
        FocusGroupPropertiesNode focusGroupPropertiesNode = this.this$0;
        if (focusGroupPropertiesNode.getFocusedChild() != null) {
            viewRequireView.getClass();
            viewFindNextFocusFromRect = focusFinder.findNextFocus((ViewGroup) viewRequireView, focusGroupPropertiesNode.getFocusedChild(), iIntValue);
        } else {
            viewRequireView.getClass();
            viewFindNextFocusFromRect = focusFinder.findNextFocusFromRect((ViewGroup) viewRequireView, currentlyFocusedRect, iIntValue);
        }
        if (viewFindNextFocusFromRect != null && FocusGroupNode_androidKt.containsDescendant(embeddedView, viewFindNextFocusFromRect)) {
            viewFindNextFocusFromRect.requestFocus(iIntValue, currentlyFocusedRect);
            focusEnterExitScope.cancelFocusChange();
        } else {
            if (viewRequireView.requestFocus()) {
                return;
            }
            ah.f("host view did not take focus");
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(FocusEnterExitScope focusEnterExitScope) {
        invoke2(focusEnterExitScope);
        return j59.a;
    }
}

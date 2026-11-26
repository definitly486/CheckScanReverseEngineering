package androidx.compose.foundation.text.handwriting;

import androidx.compose.foundation.text.input.internal.ComposeInputMethodManager;
import androidx.compose.foundation.text.input.internal.ComposeInputMethodManager_androidKt;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.PointerInputModifierNode;
import defpackage.cl4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nm4;
import defpackage.po4;

/* JADX INFO: loaded from: classes.dex */
final class HandwritingDetectorNode extends DelegatingNode implements PointerInputModifierNode {
    private ll3<j59> callback;
    private final cl4 composeImm$delegate = nm4.a(po4.NONE, new ll3() { // from class: androidx.compose.foundation.text.handwriting.a
        @Override // defpackage.ll3
        public final Object invoke() {
            return HandwritingDetectorNode.composeImm_delegate$lambda$0(this.b);
        }
    });
    private final StylusHandwritingNode pointerInputNode = (StylusHandwritingNode) delegate(new StylusHandwritingNode(new ll3() { // from class: androidx.compose.foundation.text.handwriting.b
        @Override // defpackage.ll3
        public final Object invoke() {
            return HandwritingDetectorNode.pointerInputNode$lambda$0(this.b);
        }
    }));

    public HandwritingDetectorNode(ll3<j59> ll3Var) {
        this.callback = ll3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ComposeInputMethodManager composeImm_delegate$lambda$0(HandwritingDetectorNode handwritingDetectorNode) {
        return ComposeInputMethodManager_androidKt.ComposeInputMethodManager(DelegatableNode_androidKt.requireView(handwritingDetectorNode));
    }

    private final ComposeInputMethodManager getComposeImm() {
        return (ComposeInputMethodManager) this.composeImm$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 pointerInputNode$lambda$0(HandwritingDetectorNode handwritingDetectorNode) {
        handwritingDetectorNode.callback.invoke();
        handwritingDetectorNode.getComposeImm().prepareStylusHandwritingDelegation();
        return j59.a;
    }

    public final ll3<j59> getCallback() {
        return this.callback;
    }

    public final StylusHandwritingNode getPointerInputNode() {
        return this.pointerInputNode;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* JADX INFO: renamed from: getTouchBoundsExpansion-RZrCHBk, reason: not valid java name */
    public long mo2651getTouchBoundsExpansionRZrCHBk() {
        return this.pointerInputNode.mo2651getTouchBoundsExpansionRZrCHBk();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void onCancelPointerInput() {
        this.pointerInputNode.onCancelPointerInput();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY */
    public void mo1259onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        this.pointerInputNode.mo1259onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
    }

    public final void setCallback(ll3<j59> ll3Var) {
        this.callback = ll3Var;
    }
}

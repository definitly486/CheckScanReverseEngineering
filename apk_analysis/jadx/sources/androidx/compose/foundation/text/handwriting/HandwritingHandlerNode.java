package androidx.compose.foundation.text.handwriting;

import androidx.compose.foundation.text.input.internal.ComposeInputMethodManager;
import androidx.compose.foundation.text.input.internal.ComposeInputMethodManager_androidKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.cl4;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nm4;
import defpackage.pg8;
import defpackage.po4;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
final class HandwritingHandlerNode extends Modifier.Node implements FocusEventModifierNode {
    private final cl4 composeImm$delegate = nm4.a(po4.NONE, new ll3() { // from class: androidx.compose.foundation.text.handwriting.c
        @Override // defpackage.ll3
        public final Object invoke() {
            return HandwritingHandlerNode.composeImm_delegate$lambda$0(this.b);
        }
    });
    private FocusState focusState;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.handwriting.HandwritingHandlerNode$onFocusEvent$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.handwriting.HandwritingHandlerNode$onFocusEvent$1", f = "HandwritingHandler.android.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return HandwritingHandlerNode.this.new AnonymousClass1(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            HandwritingHandlerNode.this.getComposeImm().acceptStylusHandwritingDelegation();
            return j59.a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ComposeInputMethodManager composeImm_delegate$lambda$0(HandwritingHandlerNode handwritingHandlerNode) {
        return ComposeInputMethodManager_androidKt.ComposeInputMethodManager(DelegatableNode_androidKt.requireView(handwritingHandlerNode));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ComposeInputMethodManager getComposeImm() {
        return (ComposeInputMethodManager) this.composeImm$delegate.getValue();
    }

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public void onFocusEvent(FocusState focusState) {
        if (aa4.e(this.focusState, focusState)) {
            return;
        }
        this.focusState = focusState;
        if (focusState.getHasFocus()) {
            av0.c(getCoroutineScope(), null, null, new AnonymousClass1(null), 3);
        }
    }
}

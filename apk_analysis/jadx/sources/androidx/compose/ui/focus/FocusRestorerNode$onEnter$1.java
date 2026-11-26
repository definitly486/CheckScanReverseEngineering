package androidx.compose.ui.focus;

import defpackage.aa4;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusRestorerNode$onEnter$1 extends gh4 implements nl3<FocusEnterExitScope, j59> {
    final /* synthetic */ FocusRestorerNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusRestorerNode$onEnter$1(FocusRestorerNode focusRestorerNode) {
        super(1);
        this.this$0 = focusRestorerNode;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(FocusEnterExitScope focusEnterExitScope) {
        if (FocusRequesterModifierNodeKt.restoreFocusedChild(this.this$0)) {
            return;
        }
        FocusRequester fallback = this.this$0.getFallback();
        FocusRequester.Companion companion = FocusRequester.Companion;
        if (aa4.e(fallback, companion.getDefault())) {
            return;
        }
        if (aa4.e(this.this$0.getFallback(), companion.getCancel())) {
            focusEnterExitScope.cancelFocusChange();
        } else {
            FocusRequester.m5892requestFocus3ESFkO8$default(this.this$0.getFallback(), 0, 1, null);
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(FocusEnterExitScope focusEnterExitScope) {
        invoke2(focusEnterExitScope);
        return j59.a;
    }
}

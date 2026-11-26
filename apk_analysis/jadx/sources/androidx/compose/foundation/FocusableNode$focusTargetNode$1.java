package androidx.compose.foundation;

import androidx.compose.ui.focus.FocusState;
import defpackage.bm3;
import defpackage.j59;
import defpackage.qm3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class FocusableNode$focusTargetNode$1 extends qm3 implements bm3<FocusState, FocusState, j59> {
    public FocusableNode$focusTargetNode$1(Object obj) {
        super(2, obj, FocusableNode.class, "onFocusStateChange", "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V", 0);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(FocusState focusState, FocusState focusState2) {
        invoke2(focusState, focusState2);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(FocusState focusState, FocusState focusState2) {
        ((FocusableNode) this.receiver).onFocusStateChange(focusState, focusState2);
    }
}

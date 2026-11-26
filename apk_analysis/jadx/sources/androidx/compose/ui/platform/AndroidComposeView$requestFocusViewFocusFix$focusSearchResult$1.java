package androidx.compose.ui.platform;

import androidx.compose.ui.focus.FocusTargetNode;
import defpackage.gh4;
import defpackage.n07;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidComposeView$requestFocusViewFocusFix$focusSearchResult$1 extends gh4 implements nl3<FocusTargetNode, Boolean> {
    final /* synthetic */ int $focusDirection;
    final /* synthetic */ n07 $foundFocusable;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeView$requestFocusViewFocusFix$focusSearchResult$1(n07 n07Var, int i) {
        super(1);
        this.$foundFocusable = n07Var;
        this.$focusDirection = i;
    }

    @Override // defpackage.nl3
    public final Boolean invoke(FocusTargetNode focusTargetNode) {
        this.$foundFocusable.b = true;
        return Boolean.valueOf(focusTargetNode.mo5896requestFocus3ESFkO8(this.$focusDirection));
    }
}

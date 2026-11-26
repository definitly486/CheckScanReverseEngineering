package androidx.compose.ui.platform;

import androidx.compose.ui.focus.FocusTargetNode;
import defpackage.gh4;
import defpackage.nl3;
import defpackage.r07;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidComposeView$focusSearch$searchResult$1 extends gh4 implements nl3<FocusTargetNode, Boolean> {
    final /* synthetic */ r07<FocusTargetNode> $focusTarget;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeView$focusSearch$searchResult$1(r07<FocusTargetNode> r07Var) {
        super(1);
        this.$focusTarget = r07Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nl3
    public final Boolean invoke(FocusTargetNode focusTargetNode) {
        this.$focusTarget.b = focusTargetNode;
        return Boolean.TRUE;
    }
}

package androidx.compose.ui.focus;

import defpackage.aa4;
import defpackage.ah;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusOwnerImpl$focusSearch$1 extends gh4 implements nl3<FocusTargetNode, Boolean> {
    final /* synthetic */ nl3<FocusTargetNode, Boolean> $onFound;
    final /* synthetic */ FocusTargetNode $source;
    final /* synthetic */ FocusOwnerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FocusOwnerImpl$focusSearch$1(FocusTargetNode focusTargetNode, FocusOwnerImpl focusOwnerImpl, nl3<? super FocusTargetNode, Boolean> nl3Var) {
        super(1);
        this.$source = focusTargetNode;
        this.this$0 = focusOwnerImpl;
        this.$onFound = nl3Var;
    }

    @Override // defpackage.nl3
    public final Boolean invoke(FocusTargetNode focusTargetNode) {
        boolean zBooleanValue;
        if (aa4.e(focusTargetNode, this.$source)) {
            zBooleanValue = false;
        } else {
            if (aa4.e(focusTargetNode, this.this$0.getRootFocusNode$ui())) {
                ah.f("Focus search landed at the root.");
                return null;
            }
            zBooleanValue = this.$onFound.invoke(focusTargetNode).booleanValue();
        }
        return Boolean.valueOf(zBooleanValue);
    }
}

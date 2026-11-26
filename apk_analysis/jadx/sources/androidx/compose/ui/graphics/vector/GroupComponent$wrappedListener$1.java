package androidx.compose.ui.graphics.vector;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class GroupComponent$wrappedListener$1 extends gh4 implements nl3<VNode, j59> {
    final /* synthetic */ GroupComponent this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GroupComponent$wrappedListener$1(GroupComponent groupComponent) {
        super(1);
        this.this$0 = groupComponent;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(VNode vNode) {
        this.this$0.markTintForVNode(vNode);
        nl3<VNode, j59> invalidateListener$ui = this.this$0.getInvalidateListener$ui();
        if (invalidateListener$ui != null) {
            invalidateListener$ui.invoke(vNode);
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(VNode vNode) {
        invoke2(vNode);
        return j59.a;
    }
}

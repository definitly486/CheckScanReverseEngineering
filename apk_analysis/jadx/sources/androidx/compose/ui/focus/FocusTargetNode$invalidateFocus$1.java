package androidx.compose.ui.focus;

import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;
import defpackage.r07;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusTargetNode$invalidateFocus$1 extends gh4 implements ll3<j59> {
    final /* synthetic */ r07<FocusProperties> $focusProperties;
    final /* synthetic */ FocusTargetNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusTargetNode$invalidateFocus$1(r07<FocusProperties> r07Var, FocusTargetNode focusTargetNode) {
        super(0);
        this.$focusProperties = r07Var;
        this.this$0 = focusTargetNode;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [T, androidx.compose.ui.focus.FocusProperties] */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$focusProperties.b = this.this$0.fetchFocusProperties$ui();
    }

    @Override // defpackage.ll3
    public /* bridge */ /* synthetic */ j59 invoke() {
        invoke2();
        return j59.a;
    }
}

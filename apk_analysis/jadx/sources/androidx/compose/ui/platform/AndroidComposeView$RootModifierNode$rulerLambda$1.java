package androidx.compose.ui.platform;

import androidx.compose.ui.layout.RulerScope;
import androidx.compose.ui.layout.WindowInsetsRulers_androidKt;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidComposeView$RootModifierNode$rulerLambda$1 extends gh4 implements nl3<RulerScope, j59> {
    final /* synthetic */ AndroidComposeView.RootModifierNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeView$RootModifierNode$rulerLambda$1(AndroidComposeView.RootModifierNode rootModifierNode) {
        super(1);
        this.this$0 = rootModifierNode;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(RulerScope rulerScope) {
        AndroidComposeView.RootModifierNode rootModifierNode = this.this$0;
        rootModifierNode.setPreviousGeneration(rootModifierNode.getGeneration().getIntValue());
        if (this.this$0.getPreviousGeneration() <= 0 || !ComposeView_androidKt.getAreWindowInsetsRulersEnabled()) {
            return;
        }
        WindowInsetsRulers_androidKt.provideWindowInsetsRulers(rulerScope, this.this$0);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(RulerScope rulerScope) {
        invoke2(rulerScope);
        return j59.a;
    }
}

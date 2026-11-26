package androidx.compose.ui.node;

import androidx.compose.ui.layout.MeasurePolicy;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposeUiNode$Companion$SetMeasurePolicy$1 extends gh4 implements bm3<ComposeUiNode, MeasurePolicy, j59> {
    public static final ComposeUiNode$Companion$SetMeasurePolicy$1 INSTANCE = new ComposeUiNode$Companion$SetMeasurePolicy$1();

    public ComposeUiNode$Companion$SetMeasurePolicy$1() {
        super(2);
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(ComposeUiNode composeUiNode, MeasurePolicy measurePolicy) {
        invoke2(composeUiNode, measurePolicy);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(ComposeUiNode composeUiNode, MeasurePolicy measurePolicy) {
        composeUiNode.setMeasurePolicy(measurePolicy);
    }
}

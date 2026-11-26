package androidx.compose.ui.platform;

import androidx.compose.ui.unit.AndroidDensity_androidKt;
import androidx.compose.ui.unit.IntSize;
import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposeViewContext$calculateWindowSizeLambda$1 extends gh4 implements ll3<DerivedSize> {
    final /* synthetic */ ComposeViewContext this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposeViewContext$calculateWindowSizeLambda$1(ComposeViewContext composeViewContext) {
        super(0);
        this.this$0 = composeViewContext;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final DerivedSize invoke() {
        return IntSize.m9211equalsimpl0(this.this$0.m8167getTestWindowSizeYbymL2g$ui(), IntSize.Companion.m9218getZeroYbymL2g()) ? AndroidWindowInfo_androidKt.calculateWindowSize(this.this$0.getView$ui()) : DerivedSize.Companion.m8178fromPxSizeviCIZxY(this.this$0.m8167getTestWindowSizeYbymL2g$ui(), AndroidDensity_androidKt.Density(this.this$0.getView$ui().getContext()));
    }
}

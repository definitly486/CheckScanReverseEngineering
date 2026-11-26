package androidx.compose.ui.platform;

import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidComposeView$viewTreeOwners$2 extends gh4 implements ll3<AndroidComposeView.ViewTreeOwners> {
    final /* synthetic */ AndroidComposeView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeView$viewTreeOwners$2(AndroidComposeView androidComposeView) {
        super(0);
        this.this$0 = androidComposeView;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final AndroidComposeView.ViewTreeOwners invoke() {
        return this.this$0.get_viewTreeOwners();
    }
}

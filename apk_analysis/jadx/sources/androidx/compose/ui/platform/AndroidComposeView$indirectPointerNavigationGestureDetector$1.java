package androidx.compose.ui.platform;

import androidx.compose.ui.focus.FocusDirection;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidComposeView$indirectPointerNavigationGestureDetector$1 extends gh4 implements nl3<FocusDirection, j59> {
    final /* synthetic */ AndroidComposeView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeView$indirectPointerNavigationGestureDetector$1(AndroidComposeView androidComposeView) {
        super(1);
        this.this$0 = androidComposeView;
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(FocusDirection focusDirection) {
        m8141invoke3ESFkO8(focusDirection.m5865unboximpl());
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke-3ESFkO8, reason: not valid java name */
    public final void m8141invoke3ESFkO8(int i) {
        this.this$0.getFocusOwner().mo5882moveFocusaToIllA(i, false);
    }
}

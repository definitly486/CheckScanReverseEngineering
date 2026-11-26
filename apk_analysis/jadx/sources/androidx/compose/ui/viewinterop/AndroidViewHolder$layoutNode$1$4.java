package androidx.compose.ui.viewinterop;

import androidx.compose.ui.ComposeUiFlags;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidViewHolder$layoutNode$1$4 extends gh4 implements nl3<Owner, j59> {
    final /* synthetic */ AndroidViewHolder $this_run;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidViewHolder$layoutNode$1$4(AndroidViewHolder androidViewHolder) {
        super(1);
        this.$this_run = androidViewHolder;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Owner owner) {
        if (ComposeUiFlags.isViewFocusFixEnabled && this.$this_run.hasFocus()) {
            owner.getFocusOwner().clearFocus(true);
        }
        AndroidComposeView androidComposeView = owner instanceof AndroidComposeView ? (AndroidComposeView) owner : null;
        if (androidComposeView != null) {
            androidComposeView.removeAndroidView(this.$this_run);
        }
        this.$this_run.removeAllViewsInLayout();
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(Owner owner) {
        invoke2(owner);
        return j59.a;
    }
}

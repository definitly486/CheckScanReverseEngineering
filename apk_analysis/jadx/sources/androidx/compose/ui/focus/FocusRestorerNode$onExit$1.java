package androidx.compose.ui.focus;

import androidx.compose.ui.ComposeUiFlags;
import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class FocusRestorerNode$onExit$1 extends gh4 implements nl3<FocusEnterExitScope, j59> {
    final /* synthetic */ FocusRestorerNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusRestorerNode$onExit$1(FocusRestorerNode focusRestorerNode) {
        super(1);
        this.this$0 = focusRestorerNode;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(FocusEnterExitScope focusEnterExitScope) {
        if (ComposeUiFlags.isFocusRestorationEnabled) {
            return;
        }
        FocusRequesterModifierNodeKt.saveFocusedChild(this.this$0);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(FocusEnterExitScope focusEnterExitScope) {
        invoke2(focusEnterExitScope);
        return j59.a;
    }
}

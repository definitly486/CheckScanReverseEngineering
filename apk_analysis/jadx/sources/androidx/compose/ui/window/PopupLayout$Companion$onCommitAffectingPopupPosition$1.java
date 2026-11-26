package androidx.compose.ui.window;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class PopupLayout$Companion$onCommitAffectingPopupPosition$1 extends gh4 implements nl3<PopupLayout, j59> {
    public static final PopupLayout$Companion$onCommitAffectingPopupPosition$1 INSTANCE = new PopupLayout$Companion$onCommitAffectingPopupPosition$1();

    public PopupLayout$Companion$onCommitAffectingPopupPosition$1() {
        super(1);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(PopupLayout popupLayout) {
        if (popupLayout.isAttachedToWindow()) {
            popupLayout.updatePosition();
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(PopupLayout popupLayout) {
        invoke2(popupLayout);
        return j59.a;
    }
}

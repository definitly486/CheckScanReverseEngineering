package androidx.compose.ui.focus;

import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public interface FocusEnterExitScope {
    @ul2
    default void cancelFocus() {
        cancelFocusChange();
    }

    void cancelFocusChange();

    /* JADX INFO: renamed from: getRequestedFocusDirection-dhqQ-8s */
    int mo5858getRequestedFocusDirectiondhqQ8s();
}

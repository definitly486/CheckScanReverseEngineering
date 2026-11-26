package androidx.compose.ui.focus;

import defpackage.n1;

/* JADX INFO: loaded from: classes2.dex */
public interface FocusManager {

    public static final class DefaultImpls {
    }

    static /* synthetic */ void clearFocus$default(FocusManager focusManager, boolean z, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: clearFocus");
            return;
        }
        if ((i & 1) != 0) {
            z = false;
        }
        focusManager.clearFocus(z);
    }

    void clearFocus(boolean z);

    /* JADX INFO: renamed from: moveFocus-3ESFkO8, reason: not valid java name */
    boolean mo5876moveFocus3ESFkO8(int i);
}

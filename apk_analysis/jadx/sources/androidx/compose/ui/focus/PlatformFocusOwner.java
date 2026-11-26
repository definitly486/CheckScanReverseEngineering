package androidx.compose.ui.focus;

import androidx.compose.ui.geometry.Rect;

/* JADX INFO: loaded from: classes2.dex */
public interface PlatformFocusOwner {
    void clearOwnerFocus();

    default void focusTargetAvailable() {
    }

    Rect getEmbeddedViewFocusRect();

    /* JADX INFO: renamed from: moveFocusInChildren-3ESFkO8, reason: not valid java name */
    boolean mo5928moveFocusInChildren3ESFkO8(int i);

    /* JADX INFO: renamed from: requestOwnerFocus-7o62pno, reason: not valid java name */
    boolean mo5929requestOwnerFocus7o62pno(FocusDirection focusDirection, Rect rect);
}

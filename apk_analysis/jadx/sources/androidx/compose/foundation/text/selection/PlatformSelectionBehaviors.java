package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.text.TextRange;
import defpackage.e02;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public interface PlatformSelectionBehaviors {
    /* JADX INFO: renamed from: onShowContextMenu-_2OEclM, reason: not valid java name */
    Object mo2971onShowContextMenu_2OEclM(CharSequence charSequence, long j, Offset offset, e02<? super j59> e02Var);

    /* JADX INFO: renamed from: onShowSelectionToolbar-Sb-Bc2M, reason: not valid java name */
    Object mo2972onShowSelectionToolbarSbBc2M(CharSequence charSequence, long j, e02<? super j59> e02Var);

    /* JADX INFO: renamed from: suggestSelectionForLongPressOrDoubleClick-pYaCw-w, reason: not valid java name */
    Object mo2973suggestSelectionForLongPressOrDoubleClickpYaCww(CharSequence charSequence, long j, e02<? super TextRange> e02Var);
}

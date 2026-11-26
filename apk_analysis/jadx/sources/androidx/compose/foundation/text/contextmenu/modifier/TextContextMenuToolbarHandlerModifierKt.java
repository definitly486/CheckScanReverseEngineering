package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class TextContextMenuToolbarHandlerModifierKt {
    private static final String ToolbarRequesterNotInitialized = "ToolbarRequester is not initialized.";

    public static final Modifier textContextMenuToolbarHandler(Modifier modifier, ToolbarRequester toolbarRequester, nl3<? super e02<? super j59>, ? extends Object> nl3Var, nl3<? super e02<? super j59>, ? extends Object> nl3Var2, nl3<? super LayoutCoordinates, Rect> nl3Var3) {
        return modifier.then(new TextContextMenuToolbarHandlerElement(toolbarRequester, nl3Var, nl3Var2, nl3Var3));
    }

    public static /* synthetic */ Modifier textContextMenuToolbarHandler$default(Modifier modifier, ToolbarRequester toolbarRequester, nl3 nl3Var, nl3 nl3Var2, nl3 nl3Var3, int i, Object obj) {
        if ((i & 2) != 0) {
            nl3Var = null;
        }
        if ((i & 4) != 0) {
            nl3Var2 = null;
        }
        return textContextMenuToolbarHandler(modifier, toolbarRequester, nl3Var, nl3Var2, nl3Var3);
    }

    public static final Rect translateRootToDestination(Rect rect, LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2) {
        if (!layoutCoordinates.isAttached() || !layoutCoordinates2.isAttached()) {
            return Rect.Companion.getZero();
        }
        return RectKt.m6027Recttz77jQw(layoutCoordinates2.mo7711localPositionOfR5De75A(LayoutCoordinatesKt.findRootCoordinates(layoutCoordinates), rect.m6022getTopLeftF1C5BW0()), rect.m6020getSizeNHjbRc());
    }
}

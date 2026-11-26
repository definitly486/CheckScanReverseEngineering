package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public final class TextContextMenuGesturesModifierKt {
    public static final Modifier showTextContextMenuOnSecondaryClick(Modifier modifier, bm3<? super Offset, ? super e02<? super j59>, ? extends Object> bm3Var) {
        return modifier.then(new TextContextMenuGestureElement(bm3Var));
    }

    public static /* synthetic */ Modifier showTextContextMenuOnSecondaryClick$default(Modifier modifier, bm3 bm3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            bm3Var = null;
        }
        return showTextContextMenuOnSecondaryClick(modifier, bm3Var);
    }
}

package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class SelectionController_androidKt {
    public static final Modifier makeSelectionModifier(SelectionRegistrar selectionRegistrar, long j, ll3<? extends LayoutCoordinates> ll3Var) {
        return SelectionControllerKt.makeDefaultSelectionModifier(selectionRegistrar, j, ll3Var);
    }
}

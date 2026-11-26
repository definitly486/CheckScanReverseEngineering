package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class OnPlacedModifierKt {
    public static final Modifier onPlaced(Modifier modifier, nl3<? super LayoutCoordinates, j59> nl3Var) {
        return modifier.then(new OnPlacedElement(nl3Var));
    }
}

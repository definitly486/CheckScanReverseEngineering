package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class FocusedBoundsKt {
    public static final Modifier onFocusedBoundsChanged(Modifier modifier, nl3<? super LayoutCoordinates, j59> nl3Var) {
        return modifier.then(new FocusedBoundsObserverElement(nl3Var));
    }
}

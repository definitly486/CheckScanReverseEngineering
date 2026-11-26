package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class ExcludeFromSystemGestureKt {
    @ul2
    public static final Modifier excludeFromSystemGesture(Modifier modifier) {
        return SystemGestureExclusionKt.systemGestureExclusion(modifier);
    }

    @ul2
    public static final Modifier excludeFromSystemGesture(Modifier modifier, nl3<? super LayoutCoordinates, Rect> nl3Var) {
        return SystemGestureExclusionKt.systemGestureExclusion(modifier, nl3Var);
    }
}

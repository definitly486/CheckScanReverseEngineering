package androidx.compose.foundation;

import android.os.Build;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class SystemGestureExclusionKt {
    private static final Modifier excludeFromSystemGestureQ(nl3<? super LayoutCoordinates, Rect> nl3Var) {
        return new ExcludeFromSystemGestureElement(nl3Var);
    }

    public static final Modifier systemGestureExclusion(Modifier modifier) {
        return Build.VERSION.SDK_INT < 29 ? modifier : modifier.then(new ExcludeFromSystemGestureElement(null));
    }

    public static final Modifier systemGestureExclusion(Modifier modifier, nl3<? super LayoutCoordinates, Rect> nl3Var) {
        return Build.VERSION.SDK_INT < 29 ? modifier : modifier.then(new ExcludeFromSystemGestureElement(nl3Var));
    }
}

package androidx.compose.foundation;

import android.os.Build;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class PreferKeepClear_androidKt {
    public static final Modifier preferKeepClear(Modifier modifier) {
        return Build.VERSION.SDK_INT < 33 ? modifier : modifier.then(new PreferKeepClearElement(null));
    }

    private static final Modifier preferKeepClearT(nl3<? super LayoutCoordinates, Rect> nl3Var) {
        return new PreferKeepClearElement(nl3Var);
    }

    public static final Modifier preferKeepClear(Modifier modifier, nl3<? super LayoutCoordinates, Rect> nl3Var) {
        return Build.VERSION.SDK_INT < 33 ? modifier : modifier.then(new PreferKeepClearElement(nl3Var));
    }
}

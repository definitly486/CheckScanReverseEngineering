package yads;

import android.view.View;
import androidx.core.view.ViewCompat;
import defpackage.kx6;

/* JADX INFO: loaded from: classes6.dex */
public abstract class oh6 {
    public static final defpackage.w74 a(View view, int i, int i2) {
        int i3 = i2 + i;
        return b(view) ? kx6.k(i3 - 1, i) : kx6.n(i, i3);
    }

    public static final boolean b(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    public static final boolean a(View view) {
        return view.getWidth() > 0 || view.getHeight() > 0;
    }
}

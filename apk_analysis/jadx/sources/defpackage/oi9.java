package defpackage;

import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

/* JADX INFO: loaded from: classes.dex */
public final class oi9 {
    public static void a(int i, View view, final boolean z) {
        final boolean z2 = (i & 2) != 0;
        final int paddingLeft = view.getPaddingLeft();
        final int paddingTop = view.getPaddingTop();
        final int paddingRight = view.getPaddingRight();
        final int paddingBottom = view.getPaddingBottom();
        ViewCompat.setOnApplyWindowInsetsListener(view, new OnApplyWindowInsetsListener() { // from class: ni9
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
                view2.getClass();
                view2.setPadding(paddingLeft + insets.left, paddingTop + insets.top, paddingRight + insets.right, paddingBottom + (z2 ? insets.bottom : 0));
                return z ? WindowInsetsCompat.CONSUMED : windowInsetsCompat;
            }
        });
        ViewCompat.requestApplyInsets(view);
    }
}

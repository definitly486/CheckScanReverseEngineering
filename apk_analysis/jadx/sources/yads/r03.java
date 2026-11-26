package yads;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.widget.RelativeLayout;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;

/* JADX INFO: loaded from: classes2.dex */
public final class r03 {
    public final n70 a;

    public r03(n70 n70Var) {
        this.a = n70Var;
    }

    public static void b(RelativeLayout relativeLayout) {
        ViewCompat.setOnApplyWindowInsetsListener(relativeLayout, new defpackage.jg());
    }

    public static final WindowInsetsCompat c(View view, WindowInsetsCompat windowInsetsCompat) {
        view.setPadding(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
        return windowInsetsCompat;
    }

    public final void a(Window window, RelativeLayout relativeLayout) {
        WindowCompat.setDecorFitsSystemWindows(window, false);
        if (za.a(30)) {
            window.getAttributes().layoutInDisplayCutoutMode = 3;
        }
        if (this.a == n70.APPOPENAD) {
            b(relativeLayout);
        } else if (Build.VERSION.SDK_INT >= 28) {
            a(relativeLayout);
        } else {
            c(relativeLayout);
        }
    }

    public static final WindowInsetsCompat b(View view, WindowInsetsCompat windowInsetsCompat) {
        return WindowInsetsCompat.CONSUMED;
    }

    public static void c(RelativeLayout relativeLayout) {
        ViewCompat.setOnApplyWindowInsetsListener(relativeLayout, new defpackage.ig(9));
    }

    public static void a(RelativeLayout relativeLayout) {
        ViewCompat.setOnApplyWindowInsetsListener(relativeLayout, new defpackage.kg());
    }

    public static final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
        view.setPadding(insets.left, insets.top, insets.right, insets.bottom);
        return WindowInsetsCompat.CONSUMED;
    }
}

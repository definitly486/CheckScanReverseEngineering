package androidx.core.splashscreen;

import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import android.view.WindowInsetsController;

/* JADX INFO: loaded from: classes2.dex */
public final class ThemeUtils {
    public static final ThemeUtils INSTANCE = new ThemeUtils();

    private ThemeUtils() {
    }

    public static final class Api31 {
        public static final Api31 INSTANCE = new Api31();

        private Api31() {
        }

        public static final void applyThemesSystemBarAppearance(Resources.Theme theme, View view, TypedValue typedValue) {
            theme.getClass();
            view.getClass();
            typedValue.getClass();
            int i = (!theme.resolveAttribute(android.R.attr.windowLightStatusBar, typedValue, true) || typedValue.data == 0) ? 0 : 8;
            if (theme.resolveAttribute(android.R.attr.windowLightNavigationBar, typedValue, true) && typedValue.data != 0) {
                i |= 16;
            }
            WindowInsetsController windowInsetsController = view.getWindowInsetsController();
            windowInsetsController.getClass();
            windowInsetsController.setSystemBarsAppearance(i, 24);
        }

        public static /* synthetic */ void applyThemesSystemBarAppearance$default(Resources.Theme theme, View view, TypedValue typedValue, int i, Object obj) {
            if ((i & 4) != 0) {
                typedValue = new TypedValue();
            }
            applyThemesSystemBarAppearance(theme, view, typedValue);
        }

        public static final void applyThemesSystemBarAppearance(Resources.Theme theme, View view) {
            theme.getClass();
            view.getClass();
            applyThemesSystemBarAppearance$default(theme, view, null, 4, null);
        }
    }
}

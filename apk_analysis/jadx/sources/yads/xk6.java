package yads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Insets;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes2.dex */
public abstract class xk6 {
    public static sp0 a(Context context) {
        Activity activityA;
        WindowInsets rootWindowInsets;
        if (za.a(30)) {
            Object systemService = context.getSystemService("window");
            systemService.getClass();
            WindowInsets windowInsets = ((WindowManager) systemService).getCurrentWindowMetrics().getWindowInsets();
            Insets insetsIgnoringVisibility = windowInsets.getInsetsIgnoringVisibility(WindowInsets.Type.systemBars());
            Insets insetsIgnoringVisibility2 = windowInsets.getInsetsIgnoringVisibility(WindowInsets.Type.displayCutout());
            th6 th6Var = eh6.a;
            float f = context.getResources().getDisplayMetrics().density;
            return new sp0(eh6.b(insetsIgnoringVisibility.left, f), eh6.b(insetsIgnoringVisibility.top, f), eh6.b(insetsIgnoringVisibility.right, f), eh6.b(insetsIgnoringVisibility.bottom, f), eh6.b(insetsIgnoringVisibility2.top, f), eh6.b(insetsIgnoringVisibility2.bottom, f));
        }
        if (za.a(28) && (activityA = s1.a()) != null && (rootWindowInsets = activityA.getWindow().getDecorView().getRootWindowInsets()) != null) {
            th6 th6Var2 = eh6.a;
            float f2 = context.getResources().getDisplayMetrics().density;
            DisplayCutout displayCutout = rootWindowInsets.getDisplayCutout();
            return new sp0(eh6.b(rootWindowInsets.getSystemWindowInsetLeft(), f2), eh6.b(rootWindowInsets.getSystemWindowInsetTop(), f2), eh6.b(rootWindowInsets.getSystemWindowInsetRight(), f2), eh6.b(rootWindowInsets.getSystemWindowInsetBottom(), f2), eh6.b(displayCutout != null ? displayCutout.getSafeInsetTop() : 0, f2), eh6.b(displayCutout != null ? displayCutout.getSafeInsetBottom() : 0, f2));
        }
        return sp0.g;
    }
}

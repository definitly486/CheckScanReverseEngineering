package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.StateSet;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import com.tapjoy.TJAdUnitConstants;

/* JADX INFO: loaded from: classes4.dex */
public final class l3a {
    public final Context a;

    public static class a {
        public static final float a;
        public static final int b;

        static {
            DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
            a = displayMetrics.density;
            b = displayMetrics.densityDpi;
        }
    }

    public static class b extends View.AccessibilityDelegate {
        public final String a;

        public b(String str) {
            this.a = str;
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.setViewIdResourceName(this.a);
        }
    }

    public l3a(Context context) {
        this.a = context;
    }

    public static float a(View view) {
        if (view != null && view.getParent() != null && view.getWindowVisibility() == 0 && view.getVisibility() == 0 && view.getAlpha() >= 0.5f) {
            int width = view.getWidth();
            int height = view.getHeight();
            if (height > 0 && width > 0) {
                Rect rect = new Rect();
                if (view.getGlobalVisibleRect(rect)) {
                    return (rect.height() * rect.width()) / ((width * height) / 100.0f);
                }
            }
        }
        return 0.0f;
    }

    public static int c(int i) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        fArr[2] = fArr[2] * 0.7f;
        return Color.HSVToColor(fArr);
    }

    public static int d(int i, Context context) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static int e(int... iArr) {
        int iMax = 0;
        for (int i : iArr) {
            iMax = Math.max(i, iMax);
        }
        return iMax;
    }

    public static DisplayMetrics f(Context context) {
        Display display;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager == null || (display = displayManager.getDisplay(0)) == null) {
            return displayMetrics;
        }
        display.getRealMetrics(displayMetrics);
        return displayMetrics;
    }

    public static void g(int i, int i2, int i3, int i4, View... viewArr) {
        int i5 = i3 - i;
        for (View view : viewArr) {
            if (view.getVisibility() != 8) {
                r(view, ((i5 - view.getMeasuredHeight()) / 2) + i, i2);
                if (view.getMeasuredWidth() > 0) {
                    i2 = view.getMeasuredWidth() + i4 + i2;
                }
            }
        }
    }

    public static void h(View view, int i, int i2) {
        ColorDrawable colorDrawable = new ColorDrawable(i);
        ColorDrawable colorDrawable2 = new ColorDrawable(i2);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, colorDrawable2);
        int[] iArr = StateSet.WILD_CARD;
        stateListDrawable.addState(iArr, colorDrawable);
        view.setBackground(new RippleDrawable(new ColorStateList(new int[][]{new int[]{R.attr.state_pressed}, iArr}, new int[]{c(i2), c(i)}), stateListDrawable, null));
    }

    public static void i(View view, int i, int i2, int i3) {
        if (view == null || view.getVisibility() == 8) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec(i, i3), View.MeasureSpec.makeMeasureSpec(i2, i3));
    }

    public static void j(View view, int i, int i2, int i3, int i4) {
        if (view == null || view.getVisibility() == 8) {
            return;
        }
        int measuredWidth = (((i3 - i) - view.getMeasuredWidth()) / 2) + i;
        int measuredHeight = (((i4 - i2) - view.getMeasuredHeight()) / 2) + i2;
        view.layout(measuredWidth, measuredHeight, view.getMeasuredWidth() + measuredWidth, view.getMeasuredHeight() + measuredHeight);
    }

    public static void k(View view, int i, int i2, int i3, int i4, int i5) {
        GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
        GradientDrawable gradientDrawable = new GradientDrawable(orientation, new int[]{i, i});
        float f = i5;
        gradientDrawable.setCornerRadius(f);
        GradientDrawable gradientDrawable2 = new GradientDrawable(orientation, new int[]{i2, i2});
        gradientDrawable2.setCornerRadius(f);
        if (i3 != 0) {
            gradientDrawable.setStroke(i4, i3);
            gradientDrawable2.setStroke(i4, i3);
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, gradientDrawable2);
        int[] iArr = StateSet.WILD_CARD;
        stateListDrawable.addState(iArr, gradientDrawable);
        view.setBackground(new RippleDrawable(new ColorStateList(new int[][]{new int[]{R.attr.state_pressed}, iArr}, new int[]{c(i2), c(i)}), stateListDrawable, null));
    }

    public static Point l(Context context) {
        Point point = new Point();
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            if (Build.VERSION.SDK_INT >= 30) {
                WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
                Insets insetsIgnoringVisibility = currentWindowMetrics.getWindowInsets().getInsetsIgnoringVisibility(WindowInsets.Type.navigationBars() | WindowInsets.Type.displayCutout() | WindowInsets.Type.statusBars());
                int i = insetsIgnoringVisibility.right + insetsIgnoringVisibility.left;
                int i2 = insetsIgnoringVisibility.top + insetsIgnoringVisibility.bottom;
                Rect bounds = currentWindowMetrics.getBounds();
                point.y = bounds.height() - i2;
                point.x = bounds.width() - i;
                return point;
            }
            Display defaultDisplay = windowManager.getDefaultDisplay();
            if (defaultDisplay != null) {
                defaultDisplay.getSize(point);
                return point;
            }
        }
        return point;
    }

    public static void m(View view, int i, int i2) {
        if (view.getVisibility() == 8) {
            return;
        }
        view.layout(i2 - view.getMeasuredWidth(), i, i2, view.getMeasuredHeight() + i);
    }

    public static void n(View view, String str) {
        view.setAccessibilityDelegate(new b(str));
    }

    public static void o(Button button, int i, int i2, int i3) {
        k(button, i, i2, 0, 0, i3);
    }

    public static int p(int i) {
        return Math.round(i / (a.b / 160.0f));
    }

    public static Point q(Context context) {
        Point point = new Point();
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            if (Build.VERSION.SDK_INT >= 30) {
                WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
                Insets insetsIgnoringVisibility = currentWindowMetrics.getWindowInsets().getInsetsIgnoringVisibility(WindowInsets.Type.navigationBars() | WindowInsets.Type.displayCutout());
                int i = insetsIgnoringVisibility.right + insetsIgnoringVisibility.left;
                int i2 = insetsIgnoringVisibility.top + insetsIgnoringVisibility.bottom;
                Rect bounds = currentWindowMetrics.getBounds();
                point.y = bounds.height() - i2;
                point.x = bounds.width() - i;
                return point;
            }
            Display defaultDisplay = windowManager.getDefaultDisplay();
            if (defaultDisplay != null) {
                defaultDisplay.getSize(point);
                return point;
            }
        }
        return point;
    }

    public static void r(View view, int i, int i2) {
        if (view == null || view.getVisibility() == 8) {
            return;
        }
        view.layout(i2, i, view.getMeasuredWidth() + i2, view.getMeasuredHeight() + i);
    }

    public static void s(View view, int i, int i2) {
        if (view.getVisibility() == 8) {
            return;
        }
        view.layout(i2 - view.getMeasuredWidth(), i - view.getMeasuredHeight(), i2, i);
    }

    public static String t(Context context) {
        Configuration configuration;
        Resources resources = context.getResources();
        int i = 0;
        if (resources != null && (configuration = resources.getConfiguration()) != null) {
            i = configuration.orientation;
        }
        if (i == 2) {
            return TJAdUnitConstants.String.LANDSCAPE;
        }
        if (i == 1) {
            return TJAdUnitConstants.String.PORTRAIT;
        }
        return null;
    }

    public static void u(View view, int i, int i2) {
        if (view == null || view.getVisibility() == 8) {
            return;
        }
        view.layout(i2, i - view.getMeasuredHeight(), view.getMeasuredWidth() + i2, i);
    }

    public final int b(float f) {
        return (int) rk3.b(this.a, 1, f);
    }
}

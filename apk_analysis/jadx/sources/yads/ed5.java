package yads;

import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.concurrent.Callable;
import yads.ed5;

/* JADX INFO: loaded from: classes6.dex */
public final class ed5 {
    public final Point a(Context context) {
        Object systemService = context.getSystemService("window");
        systemService.getClass();
        final WindowManager windowManager = (WindowManager) systemService;
        final Display display = (Display) ju5.a(new Callable() { // from class: hu9
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return ed5.a(windowManager);
            }
        }, windowManager, "getting display", "WindowManager");
        final Point point = new Point(0, 0);
        Object objA = ju5.a(new Callable() { // from class: iu9
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return ed5.a(display, point, this);
            }
        }, display, "getting display metrics", "Display");
        Object obj = point;
        if (objA != null) {
            obj = objA;
        }
        return (Point) obj;
    }

    public static final Display a(WindowManager windowManager) {
        return windowManager.getDefaultDisplay();
    }

    public static final Point a(Display display, Point point, ed5 ed5Var) {
        if (display == null) {
            return point;
        }
        ed5Var.getClass();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        display.getRealMetrics(displayMetrics);
        return new Point(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }
}

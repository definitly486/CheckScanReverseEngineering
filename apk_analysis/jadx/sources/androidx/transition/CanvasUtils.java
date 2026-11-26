package androidx.transition;

import android.graphics.Canvas;
import android.os.Build;
import defpackage.ah;
import defpackage.ti0;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
class CanvasUtils {
    private static Method sInorderBarrierMethod;
    private static boolean sOrderMethodsFetched;
    private static Method sReorderBarrierMethod;

    public static class Api29Impl {
        private Api29Impl() {
        }

        public static void disableZ(Canvas canvas) {
            canvas.disableZ();
        }

        public static void enableZ(Canvas canvas) {
            canvas.enableZ();
        }
    }

    private CanvasUtils() {
    }

    public static void enableZ(Canvas canvas, boolean z) {
        Method method;
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            if (z) {
                Api29Impl.enableZ(canvas);
                return;
            } else {
                Api29Impl.disableZ(canvas);
                return;
            }
        }
        if (i == 28) {
            ah.f("This method doesn't work on Pie!");
            return;
        }
        if (!sOrderMethodsFetched) {
            try {
                Method declaredMethod = Canvas.class.getDeclaredMethod("insertReorderBarrier", null);
                sReorderBarrierMethod = declaredMethod;
                declaredMethod.setAccessible(true);
                Method declaredMethod2 = Canvas.class.getDeclaredMethod("insertInorderBarrier", null);
                sInorderBarrierMethod = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            sOrderMethodsFetched = true;
        }
        if (z) {
            try {
                Method method2 = sReorderBarrierMethod;
                if (method2 != null) {
                    method2.invoke(canvas, null);
                }
            } catch (IllegalAccessException unused2) {
                return;
            } catch (InvocationTargetException e) {
                ti0.f(e.getCause());
                return;
            }
        }
        if (z || (method = sInorderBarrierMethod) == null) {
            return;
        }
        method.invoke(canvas, null);
    }
}

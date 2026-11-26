package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import androidx.window.core.Bounds;
import androidx.window.layout.util.WindowMetricsCompatHelper;
import defpackage.nl3;
import defpackage.oo5;
import defpackage.oy2;
import defpackage.yt1;

/* JADX INFO: loaded from: classes3.dex */
public interface WindowMetricsCalculator {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static nl3<? super WindowMetricsCalculator, ? extends WindowMetricsCalculator> decorator = new yt1(2);
        private static final WindowMetricsCalculatorCompat windowMetricsCalculatorCompat = new WindowMetricsCalculatorCompat(null, 1, 0 == true ? 1 : 0);

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final WindowMetricsCalculator decorator$lambda$0(WindowMetricsCalculator windowMetricsCalculator) {
            windowMetricsCalculator.getClass();
            return windowMetricsCalculator;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final WindowMetricsCalculator reset$lambda$1(WindowMetricsCalculator windowMetricsCalculator) {
            windowMetricsCalculator.getClass();
            return windowMetricsCalculator;
        }

        public final WindowMetrics fromDisplayMetrics$window_release(DisplayMetrics displayMetrics) {
            displayMetrics.getClass();
            return new WindowMetrics(new Bounds(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels), displayMetrics.density);
        }

        public final WindowMetricsCalculator getOrCreate() {
            return decorator.invoke(windowMetricsCalculatorCompat);
        }

        public final void overrideDecorator(WindowMetricsCalculatorDecorator windowMetricsCalculatorDecorator) {
            windowMetricsCalculatorDecorator.getClass();
            decorator = new WindowMetricsCalculator$Companion$overrideDecorator$1(windowMetricsCalculatorDecorator);
        }

        public final void reset() {
            decorator = new oy2(1);
        }

        public final WindowMetrics translateWindowMetrics$window_release(android.view.WindowMetrics windowMetrics, float f) {
            windowMetrics.getClass();
            return WindowMetricsCompatHelper.Companion.getInstance().translateWindowMetrics(windowMetrics, f);
        }
    }

    static WindowMetricsCalculator getOrCreate() {
        return Companion.getOrCreate();
    }

    static void overrideDecorator(WindowMetricsCalculatorDecorator windowMetricsCalculatorDecorator) {
        Companion.overrideDecorator(windowMetricsCalculatorDecorator);
    }

    static void reset() {
        Companion.reset();
    }

    WindowMetrics computeCurrentWindowMetrics(Activity activity);

    default WindowMetrics computeCurrentWindowMetrics(Context context) {
        context.getClass();
        throw new oo5("Must override computeCurrentWindowMetrics(context) and provide an implementation.");
    }

    WindowMetrics computeMaximumWindowMetrics(Activity activity);

    default WindowMetrics computeMaximumWindowMetrics(Context context) {
        context.getClass();
        throw new oo5("Must override computeMaximumWindowMetrics(context) and provide an implementation.");
    }
}

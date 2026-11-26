package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import androidx.core.view.WindowInsetsCompat;
import androidx.window.layout.util.DensityCompatHelper;
import androidx.window.layout.util.WindowMetricsCompatHelper;
import defpackage.jh2;
import defpackage.u96;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class WindowMetricsCalculatorCompat implements WindowMetricsCalculator {
    private final DensityCompatHelper densityCompatHelper;
    private final ArrayList<Integer> insetsTypeMasks;

    public WindowMetricsCalculatorCompat(DensityCompatHelper densityCompatHelper) {
        densityCompatHelper.getClass();
        this.densityCompatHelper = densityCompatHelper;
        this.insetsTypeMasks = u96.a(Integer.valueOf(WindowInsetsCompat.Type.statusBars()), Integer.valueOf(WindowInsetsCompat.Type.navigationBars()), Integer.valueOf(WindowInsetsCompat.Type.captionBar()), Integer.valueOf(WindowInsetsCompat.Type.ime()), Integer.valueOf(WindowInsetsCompat.Type.systemGestures()), Integer.valueOf(WindowInsetsCompat.Type.mandatorySystemGestures()), Integer.valueOf(WindowInsetsCompat.Type.tappableElement()), Integer.valueOf(WindowInsetsCompat.Type.displayCutout()));
    }

    @Override // androidx.window.layout.WindowMetricsCalculator
    public WindowMetrics computeCurrentWindowMetrics(Context context) {
        context.getClass();
        return WindowMetricsCompatHelper.Companion.getInstance().currentWindowMetrics(context, this.densityCompatHelper);
    }

    @Override // androidx.window.layout.WindowMetricsCalculator
    public WindowMetrics computeMaximumWindowMetrics(Activity activity) {
        activity.getClass();
        return WindowMetricsCompatHelper.Companion.getInstance().maximumWindowMetrics(activity, this.densityCompatHelper);
    }

    public final ArrayList<Integer> getInsetsTypeMasks$window_release() {
        return this.insetsTypeMasks;
    }

    @Override // androidx.window.layout.WindowMetricsCalculator
    public WindowMetrics computeCurrentWindowMetrics(Activity activity) {
        activity.getClass();
        return WindowMetricsCompatHelper.Companion.getInstance().currentWindowMetrics(activity, this.densityCompatHelper);
    }

    @Override // androidx.window.layout.WindowMetricsCalculator
    public WindowMetrics computeMaximumWindowMetrics(Context context) {
        context.getClass();
        return WindowMetricsCompatHelper.Companion.getInstance().maximumWindowMetrics(context, this.densityCompatHelper);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WindowMetricsCalculatorCompat() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ WindowMetricsCalculatorCompat(DensityCompatHelper densityCompatHelper, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? DensityCompatHelper.Companion.getInstance() : densityCompatHelper);
    }
}

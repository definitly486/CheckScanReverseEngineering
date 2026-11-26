package androidx.compose.ui.platform;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.inputmethodservice.InputMethodService;
import android.view.View;
import androidx.compose.ui.unit.AndroidDensity_androidKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import androidx.window.layout.WindowMetrics;
import androidx.window.layout.WindowMetricsCalculator;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidWindowInfo_androidKt {
    public static final DerivedSize calculateWindowSize(View view) {
        Context context = view.getContext();
        Context contextTryUnwrapContext = tryUnwrapContext(context);
        if (contextTryUnwrapContext == null) {
            Configuration configuration = context.getResources().getConfiguration();
            return DerivedSize.Companion.m8177fromDpSizeitqla9I(DpKt.m9064DpSizeYgX7TsA(Dp.m9042constructorimpl(configuration.screenWidthDp), Dp.m9042constructorimpl(configuration.screenHeightDp)), AndroidDensity_androidKt.Density(context));
        }
        WindowMetrics windowMetricsComputeCurrentWindowMetrics = WindowMetricsCalculator.Companion.getOrCreate().computeCurrentWindowMetrics(contextTryUnwrapContext);
        return DerivedSize.Companion.m8178fromPxSizeviCIZxY(IntSize.m9208constructorimpl((((long) windowMetricsComputeCurrentWindowMetrics.getBounds().width()) << 32) | (((long) windowMetricsComputeCurrentWindowMetrics.getBounds().height()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), AndroidDensity_androidKt.Density(contextTryUnwrapContext));
    }

    private static final Context tryUnwrapContext(Context context) {
        while (context instanceof ContextWrapper) {
            if ((context instanceof Activity) || (context instanceof InputMethodService) || (context instanceof Application)) {
                return context;
            }
            ContextWrapper contextWrapper = (ContextWrapper) context;
            if (contextWrapper.getBaseContext() == null) {
                return null;
            }
            context = contextWrapper.getBaseContext();
        }
        return null;
    }
}

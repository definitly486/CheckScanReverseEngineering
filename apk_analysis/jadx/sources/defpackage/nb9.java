package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class nb9 {
    public static final long a = ConstraintsKt.Constraints$default(0, 0, 0, 0, 5, null);
    public static final /* synthetic */ int b = 0;

    public static final class a implements MeasurePolicy {
        public static final a a = new a();

        @Override // androidx.compose.ui.layout.MeasurePolicy
        /* JADX INFO: renamed from: measure-3p2s80s */
        public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
            return MeasureScope.layout$default(measureScope, Constraints.m8997getMinWidthimpl(j), Constraints.m8996getMinHeightimpl(j), null, new z2(5), 4, null);
        }
    }

    public static final w18 a(ContentScale contentScale, Composer composer, int i) {
        Object obj;
        Object obj2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-894086142, i, -1, "coil3.compose.internal.rememberSizeResolver (utils.kt:86)");
        }
        boolean zE = aa4.e(contentScale, ContentScale.Companion.getNone());
        boolean zChanged = composer.changed(zE);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            if (zE) {
                obj = w18.u1;
            } else {
                ox1 ox1Var = new ox1();
                ox1Var.b = a;
                ox1Var.c = new ArrayList();
                obj = ox1Var;
            }
            Object obj3 = obj;
            composer.updateRememberedValue(obj3);
            obj2 = obj3;
        }
        obj2 = objRememberedValue;
        w18 w18Var = (w18) obj2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return w18Var;
    }

    public static final long b(long j) {
        int iB = w65.b(Float.intBitsToFloat((int) (j >> 32)));
        return IntSize.m9208constructorimpl((((long) w65.b(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) iB) << 32));
    }

    public static void c(String str) {
        throw new IllegalArgumentException(pg.g("Unsupported type: ", str, ". ", me0.c("If you wish to display this ", str, ", use androidx.compose.foundation.Image.")));
    }
}

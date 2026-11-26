package androidx.compose.material3;

import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.unit.Dp;
import defpackage.jh2;
import defpackage.ru2;

/* JADX INFO: loaded from: classes2.dex */
public final class RippleKt {
    private static final RippleNodeFactory DefaultBoundedRipple;
    private static final RippleNodeFactory DefaultUnboundedRipple;
    private static final ProvidableCompositionLocal<RippleConfiguration> LocalRippleConfiguration = CompositionLocalKt.compositionLocalOf$default(null, new ru2(3), 1, null);

    static {
        Dp.Companion companion = Dp.Companion;
        float fM9062getUnspecifiedD9Ej5fM = companion.m9062getUnspecifiedD9Ej5fM();
        Color.Companion companion2 = Color.Companion;
        DefaultBoundedRipple = new RippleNodeFactory(true, fM9062getUnspecifiedD9Ej5fM, companion2.m6268getUnspecified0d7_KjU(), (jh2) null);
        DefaultUnboundedRipple = new RippleNodeFactory(false, companion.m9062getUnspecifiedD9Ej5fM(), companion2.m6268getUnspecified0d7_KjU(), (jh2) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RippleConfiguration LocalRippleConfiguration$lambda$0() {
        return new RippleConfiguration(0L, null, 3, null);
    }

    public static final ProvidableCompositionLocal<RippleConfiguration> getLocalRippleConfiguration() {
        return LocalRippleConfiguration;
    }

    /* JADX INFO: renamed from: ripple-H2RKhps, reason: not valid java name */
    public static final IndicationNodeFactory m3774rippleH2RKhps(boolean z, float f, long j) {
        if (Dp.m9047equalsimpl0(f, Dp.Companion.m9062getUnspecifiedD9Ej5fM()) && Color.m6233equalsimpl0(j, Color.Companion.m6268getUnspecified0d7_KjU())) {
            return z ? DefaultBoundedRipple : DefaultUnboundedRipple;
        }
        return new RippleNodeFactory(z, f, j, (jh2) null);
    }

    /* JADX INFO: renamed from: ripple-H2RKhps$default, reason: not valid java name */
    public static /* synthetic */ IndicationNodeFactory m3775rippleH2RKhps$default(boolean z, float f, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            f = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
        }
        if ((i & 4) != 0) {
            j = Color.Companion.m6268getUnspecified0d7_KjU();
        }
        return m3774rippleH2RKhps(z, f, j);
    }

    /* JADX INFO: renamed from: ripple-wH6b6FI, reason: not valid java name */
    public static final IndicationNodeFactory m3776ripplewH6b6FI(ColorProducer colorProducer, boolean z, float f) {
        return new RippleNodeFactory(z, f, colorProducer, (jh2) null);
    }

    /* JADX INFO: renamed from: ripple-wH6b6FI$default, reason: not valid java name */
    public static /* synthetic */ IndicationNodeFactory m3777ripplewH6b6FI$default(ColorProducer colorProducer, boolean z, float f, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            f = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
        }
        return m3776ripplewH6b6FI(colorProducer, z, f);
    }
}

package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.mk;
import defpackage.nl3;
import defpackage.ul2;
import defpackage.vf3;
import defpackage.wf3;

/* JADX INFO: loaded from: classes.dex */
@ul2
public final class FlowRowOverflow extends FlowLayoutOverflow {
    public static final int $stable = 0;
    private static final FlowRowOverflow Clip;
    public static final Companion Companion = new Companion(null);
    private static final FlowRowOverflow Visible;

    static {
        int i = 0;
        nl3 nl3Var = null;
        Visible = new FlowRowOverflow(FlowLayoutOverflow.OverflowType.Visible, 0, i, null, nl3Var, 30, null);
        Clip = new FlowRowOverflow(FlowLayoutOverflow.OverflowType.Clip, i, 0, nl3Var, null, 30, null);
    }

    public /* synthetic */ FlowRowOverflow(FlowLayoutOverflow.OverflowType overflowType, int i, int i2, nl3 nl3Var, nl3 nl3Var2, int i3, jh2 jh2Var) {
        this(overflowType, (i3 & 2) != 0 ? 0 : i, (i3 & 4) != 0 ? 0 : i2, (i3 & 8) != 0 ? null : nl3Var, (i3 & 16) != 0 ? null : nl3Var2);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final bm3 expandIndicator$lambda$0(final dm3 dm3Var, final FlowLayoutOverflowState flowLayoutOverflowState) {
            return ComposableLambdaKt.composableLambdaInstance(-982932461, true, new bm3() { // from class: yf3
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return FlowRowOverflow.Companion.expandIndicator$lambda$0$0(flowLayoutOverflowState, dm3Var, (Composer) obj, iIntValue);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 expandIndicator$lambda$0$0(FlowLayoutOverflowState flowLayoutOverflowState, dm3 dm3Var, Composer composer, int i) {
            if (composer.shouldExecute((i & 3) != 2, i & 1)) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-982932461, i, -1, "androidx.compose.foundation.layout.FlowRowOverflow.Companion.expandIndicator.<anonymous>.<anonymous> (FlowLayoutOverflow.kt:98)");
                }
                dm3Var.invoke(new FlowRowOverflowScopeImpl(flowLayoutOverflowState), composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composer.skipToGroupEnd();
            }
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final bm3 expandOrCollapseIndicator__jt2gSs$lambda$1$0(final dm3 dm3Var, final FlowLayoutOverflowState flowLayoutOverflowState) {
            return ComposableLambdaKt.composableLambdaInstance(1742323353, true, new bm3() { // from class: xf3
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return FlowRowOverflow.Companion.expandOrCollapseIndicator__jt2gSs$lambda$1$0$0(flowLayoutOverflowState, dm3Var, (Composer) obj, iIntValue);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 expandOrCollapseIndicator__jt2gSs$lambda$1$0$0(FlowLayoutOverflowState flowLayoutOverflowState, dm3 dm3Var, Composer composer, int i) {
            if (composer.shouldExecute((i & 3) != 2, i & 1)) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1742323353, i, -1, "androidx.compose.foundation.layout.FlowRowOverflow.Companion.expandOrCollapseIndicator.<anonymous>.<anonymous>.<anonymous> (FlowLayoutOverflow.kt:145)");
                }
                dm3Var.invoke(new FlowRowOverflowScopeImpl(flowLayoutOverflowState), composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composer.skipToGroupEnd();
            }
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final bm3 expandOrCollapseIndicator__jt2gSs$lambda$1$1(final dm3 dm3Var, final FlowLayoutOverflowState flowLayoutOverflowState) {
            return ComposableLambdaKt.composableLambdaInstance(-1862526094, true, new bm3() { // from class: zf3
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return FlowRowOverflow.Companion.expandOrCollapseIndicator__jt2gSs$lambda$1$1$0(flowLayoutOverflowState, dm3Var, (Composer) obj, iIntValue);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 expandOrCollapseIndicator__jt2gSs$lambda$1$1$0(FlowLayoutOverflowState flowLayoutOverflowState, dm3 dm3Var, Composer composer, int i) {
            if (composer.shouldExecute((i & 3) != 2, i & 1)) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1862526094, i, -1, "androidx.compose.foundation.layout.FlowRowOverflow.Companion.expandOrCollapseIndicator.<anonymous>.<anonymous>.<anonymous> (FlowLayoutOverflow.kt:152)");
                }
                dm3Var.invoke(new FlowRowOverflowScopeImpl(flowLayoutOverflowState), composer, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composer.skipToGroupEnd();
            }
            return j59.a;
        }

        public static /* synthetic */ void getClip$annotations() {
        }

        public static /* synthetic */ void getVisible$annotations() {
        }

        public final FlowRowOverflow expandIndicator(dm3<? super FlowRowOverflowScope, ? super Composer, ? super Integer, j59> dm3Var) {
            return new FlowRowOverflow(FlowLayoutOverflow.OverflowType.ExpandIndicator, 0, 0, new mk(dm3Var, 1), null, 22, null);
        }

        /* JADX INFO: renamed from: expandOrCollapseIndicator--jt2gSs, reason: not valid java name */
        public final FlowRowOverflow m1911expandOrCollapseIndicatorjt2gSs(dm3<? super FlowRowOverflowScope, ? super Composer, ? super Integer, j59> dm3Var, dm3<? super FlowRowOverflowScope, ? super Composer, ? super Integer, j59> dm3Var2, int i, float f, Composer composer, int i2, int i3) {
            boolean z = true;
            int i4 = (i3 & 4) != 0 ? 1 : i;
            if ((i3 & 8) != 0) {
                f = Dp.m9042constructorimpl(0.0f);
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1512952504, i2, -1, "androidx.compose.foundation.layout.FlowRowOverflow.Companion.expandOrCollapseIndicator (FlowLayoutOverflow.kt:134)");
            }
            int iMo1428roundToPx0680j_4 = ((Density) composer.consume(CompositionLocalsKt.getLocalDensity())).mo1428roundToPx0680j_4(f);
            int i5 = 0;
            boolean zChanged = ((((i2 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && composer.changed(i4)) || (i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composer.changed(iMo1428roundToPx0680j_4) | ((((i2 & 14) ^ 6) > 4 && composer.changed(dm3Var)) || (i2 & 6) == 4);
            if ((((i2 & 112) ^ 48) <= 32 || !composer.changed(dm3Var2)) && (i2 & 48) != 32) {
                z = false;
            }
            boolean z2 = zChanged | z;
            Object objRememberedValue = composer.rememberedValue();
            if (z2 || objRememberedValue == Composer.Companion.getEmpty()) {
                FlowRowOverflow flowRowOverflow = new FlowRowOverflow(FlowLayoutOverflow.OverflowType.ExpandOrCollapseIndicator, i4, iMo1428roundToPx0680j_4, new vf3(dm3Var, i5), new wf3(dm3Var2, i5), null);
                composer.updateRememberedValue(flowRowOverflow);
                objRememberedValue = flowRowOverflow;
            }
            FlowRowOverflow flowRowOverflow2 = (FlowRowOverflow) objRememberedValue;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            return flowRowOverflow2;
        }

        public final FlowRowOverflow getClip() {
            return FlowRowOverflow.Clip;
        }

        public final FlowRowOverflow getVisible() {
            return FlowRowOverflow.Visible;
        }

        private Companion() {
        }
    }

    private FlowRowOverflow(FlowLayoutOverflow.OverflowType overflowType, int i, int i2, nl3<? super FlowLayoutOverflowState, ? extends bm3<? super Composer, ? super Integer, j59>> nl3Var, nl3<? super FlowLayoutOverflowState, ? extends bm3<? super Composer, ? super Integer, j59>> nl3Var2) {
        super(overflowType, i, i2, nl3Var, nl3Var2, null);
    }

    public /* synthetic */ FlowRowOverflow(FlowLayoutOverflow.OverflowType overflowType, int i, int i2, nl3 nl3Var, nl3 nl3Var2, jh2 jh2Var) {
        this(overflowType, i, i2, nl3Var, nl3Var2);
    }
}

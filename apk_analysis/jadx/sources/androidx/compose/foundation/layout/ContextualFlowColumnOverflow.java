package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.ContextualFlowColumnOverflow;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.i31;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.nu1;
import defpackage.qz1;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
@ul2
public final class ContextualFlowColumnOverflow extends FlowLayoutOverflow {
    public static final int $stable = 0;
    private static final ContextualFlowColumnOverflow Clip;
    public static final Companion Companion = new Companion(null);
    private static final ContextualFlowColumnOverflow Visible;

    static {
        int i = 0;
        nl3 nl3Var = null;
        Visible = new ContextualFlowColumnOverflow(FlowLayoutOverflow.OverflowType.Visible, 0, i, null, nl3Var, 30, null);
        Clip = new ContextualFlowColumnOverflow(FlowLayoutOverflow.OverflowType.Clip, i, 0, nl3Var, null, 30, null);
    }

    public /* synthetic */ ContextualFlowColumnOverflow(FlowLayoutOverflow.OverflowType overflowType, int i, int i2, nl3 nl3Var, nl3 nl3Var2, int i3, jh2 jh2Var) {
        this(overflowType, (i3 & 2) != 0 ? 0 : i, (i3 & 4) != 0 ? 0 : i2, (i3 & 8) != 0 ? null : nl3Var, (i3 & 16) != 0 ? null : nl3Var2);
    }

    @ul2
    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final bm3 expandIndicator$lambda$0(final dm3 dm3Var, final FlowLayoutOverflowState flowLayoutOverflowState) {
            return ComposableLambdaKt.composableLambdaInstance(-800948529, true, new bm3() { // from class: rz1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ContextualFlowColumnOverflow.Companion.expandIndicator$lambda$0$0(flowLayoutOverflowState, dm3Var, (Composer) obj, iIntValue);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 expandIndicator$lambda$0$0(FlowLayoutOverflowState flowLayoutOverflowState, dm3 dm3Var, Composer composer, int i) {
            if (composer.shouldExecute((i & 3) != 2, i & 1)) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-800948529, i, -1, "androidx.compose.foundation.layout.ContextualFlowColumnOverflow.Companion.expandIndicator.<anonymous>.<anonymous> (FlowLayoutOverflow.kt:504)");
                }
                dm3Var.invoke(new ContextualFlowColumnOverflowScopeImpl(flowLayoutOverflowState), composer, 0);
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
            return ComposableLambdaKt.composableLambdaInstance(494662780, true, new bm3() { // from class: pz1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ContextualFlowColumnOverflow.Companion.expandOrCollapseIndicator__jt2gSs$lambda$1$0$0(flowLayoutOverflowState, dm3Var, (Composer) obj, iIntValue);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 expandOrCollapseIndicator__jt2gSs$lambda$1$0$0(FlowLayoutOverflowState flowLayoutOverflowState, dm3 dm3Var, Composer composer, int i) {
            if (composer.shouldExecute((i & 3) != 2, i & 1)) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(494662780, i, -1, "androidx.compose.foundation.layout.ContextualFlowColumnOverflow.Companion.expandOrCollapseIndicator.<anonymous>.<anonymous>.<anonymous> (FlowLayoutOverflow.kt:554)");
                }
                dm3Var.invoke(new ContextualFlowColumnOverflowScopeImpl(flowLayoutOverflowState), composer, 0);
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
            return ComposableLambdaKt.composableLambdaInstance(1829455235, true, new bm3() { // from class: sz1
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return ContextualFlowColumnOverflow.Companion.expandOrCollapseIndicator__jt2gSs$lambda$1$1$0(flowLayoutOverflowState, dm3Var, (Composer) obj, iIntValue);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 expandOrCollapseIndicator__jt2gSs$lambda$1$1$0(FlowLayoutOverflowState flowLayoutOverflowState, dm3 dm3Var, Composer composer, int i) {
            if (composer.shouldExecute((i & 3) != 2, i & 1)) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1829455235, i, -1, "androidx.compose.foundation.layout.ContextualFlowColumnOverflow.Companion.expandOrCollapseIndicator.<anonymous>.<anonymous>.<anonymous> (FlowLayoutOverflow.kt:561)");
                }
                dm3Var.invoke(new ContextualFlowColumnOverflowScopeImpl(flowLayoutOverflowState), composer, 0);
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

        public final ContextualFlowColumnOverflow expandIndicator(dm3<? super ContextualFlowColumnOverflowScope, ? super Composer, ? super Integer, j59> dm3Var) {
            return new ContextualFlowColumnOverflow(FlowLayoutOverflow.OverflowType.ExpandIndicator, 0, 0, new nu1(dm3Var, 1), null, 22, null);
        }

        /* JADX INFO: renamed from: expandOrCollapseIndicator--jt2gSs, reason: not valid java name */
        public final ContextualFlowColumnOverflow m1772expandOrCollapseIndicatorjt2gSs(dm3<? super ContextualFlowColumnOverflowScope, ? super Composer, ? super Integer, j59> dm3Var, dm3<? super ContextualFlowColumnOverflowScope, ? super Composer, ? super Integer, j59> dm3Var2, int i, float f, Composer composer, int i2, int i3) {
            int i4 = 1;
            int i5 = (i3 & 4) != 0 ? 1 : i;
            if ((i3 & 8) != 0) {
                f = Dp.m9042constructorimpl(0.0f);
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1169622732, i2, -1, "androidx.compose.foundation.layout.ContextualFlowColumnOverflow.Companion.expandOrCollapseIndicator (FlowLayoutOverflow.kt:543)");
            }
            int iMo1428roundToPx0680j_4 = ((Density) composer.consume(CompositionLocalsKt.getLocalDensity())).mo1428roundToPx0680j_4(f);
            int i6 = 0;
            boolean zChanged = ((((i2 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && composer.changed(i5)) || (i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composer.changed(iMo1428roundToPx0680j_4) | ((((i2 & 14) ^ 6) > 4 && composer.changed(dm3Var)) || (i2 & 6) == 4) | ((((i2 & 112) ^ 48) > 32 && composer.changed(dm3Var2)) || (i2 & 48) == 32);
            Object objRememberedValue = composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                ContextualFlowColumnOverflow contextualFlowColumnOverflow = new ContextualFlowColumnOverflow(FlowLayoutOverflow.OverflowType.ExpandOrCollapseIndicator, i5, iMo1428roundToPx0680j_4, new qz1(dm3Var, i6), new i31(dm3Var2, i4), null);
                composer.updateRememberedValue(contextualFlowColumnOverflow);
                objRememberedValue = contextualFlowColumnOverflow;
            }
            ContextualFlowColumnOverflow contextualFlowColumnOverflow2 = (ContextualFlowColumnOverflow) objRememberedValue;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            return contextualFlowColumnOverflow2;
        }

        public final ContextualFlowColumnOverflow getClip() {
            return ContextualFlowColumnOverflow.Clip;
        }

        public final ContextualFlowColumnOverflow getVisible() {
            return ContextualFlowColumnOverflow.Visible;
        }

        private Companion() {
        }
    }

    private ContextualFlowColumnOverflow(FlowLayoutOverflow.OverflowType overflowType, int i, int i2, nl3<? super FlowLayoutOverflowState, ? extends bm3<? super Composer, ? super Integer, j59>> nl3Var, nl3<? super FlowLayoutOverflowState, ? extends bm3<? super Composer, ? super Integer, j59>> nl3Var2) {
        super(overflowType, i, i2, nl3Var, nl3Var2, null);
    }

    public /* synthetic */ ContextualFlowColumnOverflow(FlowLayoutOverflow.OverflowType overflowType, int i, int i2, nl3 nl3Var, nl3 nl3Var2, jh2 jh2Var) {
        this(overflowType, i, i2, nl3Var, nl3Var2);
    }
}

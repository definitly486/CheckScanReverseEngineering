package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsStateKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.ll3;
import defpackage.me0;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class LazyStaggeredGridMeasurePolicyKt {

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Orientation.values().length];
            try {
                iArr[Orientation.Vertical.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Orientation.Horizontal.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float afterPadding(PaddingValues paddingValues, Orientation orientation, boolean z, LayoutDirection layoutDirection) {
        int i = WhenMappings.$EnumSwitchMapping$0[orientation.ordinal()];
        if (i == 1) {
            return z ? paddingValues.mo1985calculateTopPaddingD9Ej5fM() : paddingValues.mo1982calculateBottomPaddingD9Ej5fM();
        }
        if (i == 2) {
            return z ? PaddingKt.calculateStartPadding(paddingValues, layoutDirection) : PaddingKt.calculateEndPadding(paddingValues, layoutDirection);
        }
        me0.e();
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float beforePadding(PaddingValues paddingValues, Orientation orientation, boolean z, LayoutDirection layoutDirection) {
        int i = WhenMappings.$EnumSwitchMapping$0[orientation.ordinal()];
        if (i == 1) {
            return z ? paddingValues.mo1982calculateBottomPaddingD9Ej5fM() : paddingValues.mo1985calculateTopPaddingD9Ej5fM();
        }
        if (i == 2) {
            return z ? PaddingKt.calculateEndPadding(paddingValues, layoutDirection) : PaddingKt.calculateStartPadding(paddingValues, layoutDirection);
        }
        me0.e();
        return 0.0f;
    }

    /* JADX INFO: renamed from: rememberStaggeredGridMeasurePolicy-qKj4JfE, reason: not valid java name */
    public static final LazyLayoutMeasurePolicy m2270rememberStaggeredGridMeasurePolicyqKj4JfE(final LazyStaggeredGridState lazyStaggeredGridState, final ll3<? extends LazyStaggeredGridItemProvider> ll3Var, final PaddingValues paddingValues, final boolean z, final Orientation orientation, final float f, float f2, final y22 y22Var, final LazyGridStaggeredGridSlotsProvider lazyGridStaggeredGridSlotsProvider, final GraphicsContext graphicsContext, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(234882793, i, -1, "androidx.compose.foundation.lazy.staggeredgrid.rememberStaggeredGridMeasurePolicy (LazyStaggeredGridMeasurePolicy.kt:50)");
        }
        boolean zChanged = ((((i & 14) ^ 6) > 4 && composer.changed(lazyStaggeredGridState)) || (i & 6) == 4) | ((((i & 112) ^ 48) > 32 && composer.changed(ll3Var)) || (i & 48) == 32) | ((((i & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && composer.changed(paddingValues)) || (i & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | ((((i & 7168) ^ 3072) > 2048 && composer.changed(z)) || (i & 3072) == 2048) | ((((57344 & i) ^ 24576) > 16384 && composer.changed(orientation.ordinal())) || (i & 24576) == 16384) | ((((458752 & i) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) > 131072 && composer.changed(f)) || (i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 131072) | ((((3670016 & i) ^ 1572864) > 1048576 && composer.changed(f2)) || (i & 1572864) == 1048576) | ((((234881024 & i) ^ 100663296) > 67108864 && composer.changed(lazyGridStaggeredGridSlotsProvider)) || (i & 100663296) == 67108864) | composer.changed(graphicsContext);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy = new LazyLayoutMeasurePolicy() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1
                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                /* JADX INFO: renamed from: measure-0kLqBqw */
                public final MeasureResult mo2154measure0kLqBqw(LazyLayoutMeasureScope lazyLayoutMeasureScope, long j) {
                    long jM9164constructorimpl;
                    ObservableScopeInvalidator.m2232attachToScopeimpl(lazyStaggeredGridState.m2276getMeasurementScopeInvalidatorzYiylxw$foundation());
                    boolean z2 = lazyStaggeredGridState.getHasLookaheadOccurred$foundation() || lazyLayoutMeasureScope.isLookingAhead();
                    CheckScrollableContainerConstraintsKt.m1316checkScrollableContainerConstraintsK40F9xA(j, orientation);
                    LazyStaggeredGridSlots lazyStaggeredGridSlotsMo2252invoke0kLqBqw = lazyGridStaggeredGridSlotsProvider.mo2252invoke0kLqBqw(lazyLayoutMeasureScope, j);
                    boolean z3 = orientation == Orientation.Vertical;
                    LazyStaggeredGridItemProvider lazyStaggeredGridItemProviderInvoke = ll3Var.invoke();
                    int iMo1428roundToPx0680j_4 = lazyLayoutMeasureScope.mo1428roundToPx0680j_4(LazyStaggeredGridMeasurePolicyKt.beforePadding(paddingValues, orientation, z, lazyLayoutMeasureScope.getLayoutDirection()));
                    int iMo1428roundToPx0680j_5 = lazyLayoutMeasureScope.mo1428roundToPx0680j_4(LazyStaggeredGridMeasurePolicyKt.afterPadding(paddingValues, orientation, z, lazyLayoutMeasureScope.getLayoutDirection()));
                    int iMo1428roundToPx0680j_6 = lazyLayoutMeasureScope.mo1428roundToPx0680j_4(LazyStaggeredGridMeasurePolicyKt.startPadding(paddingValues, orientation, lazyLayoutMeasureScope.getLayoutDirection()));
                    int iM8994getMaxHeightimpl = ((z3 ? Constraints.m8994getMaxHeightimpl(j) : Constraints.m8995getMaxWidthimpl(j)) - iMo1428roundToPx0680j_4) - iMo1428roundToPx0680j_5;
                    if (z3) {
                        jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) iMo1428roundToPx0680j_4) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) iMo1428roundToPx0680j_6) << 32));
                    } else {
                        jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) iMo1428roundToPx0680j_4) << 32) | (((long) iMo1428roundToPx0680j_6) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                    }
                    long j2 = jM9164constructorimpl;
                    PaddingValues paddingValues2 = paddingValues;
                    int iMo1428roundToPx0680j_7 = lazyLayoutMeasureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(PaddingKt.calculateEndPadding(paddingValues2, lazyLayoutMeasureScope.getLayoutDirection()) + PaddingKt.calculateStartPadding(paddingValues2, lazyLayoutMeasureScope.getLayoutDirection())));
                    PaddingValues paddingValues3 = paddingValues;
                    int iMo1428roundToPx0680j_8 = lazyLayoutMeasureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(paddingValues3.mo1982calculateBottomPaddingD9Ej5fM() + paddingValues3.mo1985calculateTopPaddingD9Ej5fM()));
                    LazyStaggeredGridMeasureResult lazyStaggeredGridMeasureResultM2269measureStaggeredGridC6celF4 = LazyStaggeredGridMeasureKt.m2269measureStaggeredGridC6celF4(lazyLayoutMeasureScope, lazyStaggeredGridState, LazyLayoutBeyondBoundsStateKt.calculateLazyLayoutPinnedIndices(lazyStaggeredGridItemProviderInvoke, lazyStaggeredGridState.getPinnedItems$foundation(), lazyStaggeredGridState.getBeyondBoundsInfo$foundation()), lazyStaggeredGridItemProviderInvoke, lazyStaggeredGridSlotsMo2252invoke0kLqBqw, Constraints.m8985copyZbe2FdA$default(j, ConstraintsKt.m9012constrainWidthK40F9xA(j, iMo1428roundToPx0680j_7), 0, ConstraintsKt.m9011constrainHeightK40F9xA(j, iMo1428roundToPx0680j_8), 0, 10, null), z3, z, j2, iM8994getMaxHeightimpl, lazyLayoutMeasureScope.mo1428roundToPx0680j_4(f), iMo1428roundToPx0680j_4, iMo1428roundToPx0680j_5, y22Var, z2, lazyLayoutMeasureScope.isLookingAhead(), lazyStaggeredGridState.getApproachLayoutInfo$foundation(), graphicsContext);
                    LazyStaggeredGridState.applyMeasureResult$foundation$default(lazyStaggeredGridState, lazyStaggeredGridMeasureResultM2269measureStaggeredGridC6celF4, lazyLayoutMeasureScope.isLookingAhead(), false, 4, null);
                    return lazyStaggeredGridMeasureResultM2269measureStaggeredGridC6celF4;
                }
            };
            composer.updateRememberedValue(lazyLayoutMeasurePolicy);
            objRememberedValue = lazyLayoutMeasurePolicy;
        }
        LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2 = (LazyLayoutMeasurePolicy) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return lazyLayoutMeasurePolicy2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float startPadding(PaddingValues paddingValues, Orientation orientation, LayoutDirection layoutDirection) {
        int i = WhenMappings.$EnumSwitchMapping$0[orientation.ordinal()];
        if (i == 1) {
            return PaddingKt.calculateStartPadding(paddingValues, layoutDirection);
        }
        if (i == 2) {
            return paddingValues.mo1985calculateTopPaddingD9Ej5fM();
        }
        me0.e();
        return 0.0f;
    }
}

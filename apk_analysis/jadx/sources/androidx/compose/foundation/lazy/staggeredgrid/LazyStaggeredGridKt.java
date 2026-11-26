package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.ScrollableAreaKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsModifierLocalKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsKt;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bm3;
import defpackage.gx2;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class LazyStaggeredGridKt {
    /* JADX WARN: Code duplicated, block: B:100:0x0121  */
    /* JADX WARN: Code duplicated, block: B:102:0x0125  */
    /* JADX WARN: Code duplicated, block: B:104:0x012f  */
    /* JADX WARN: Code duplicated, block: B:105:0x0132  */
    /* JADX WARN: Code duplicated, block: B:107:0x0137  */
    /* JADX WARN: Code duplicated, block: B:110:0x0141  */
    /* JADX WARN: Code duplicated, block: B:112:0x0147  */
    /* JADX WARN: Code duplicated, block: B:113:0x014a  */
    /* JADX WARN: Code duplicated, block: B:117:0x0162  */
    /* JADX WARN: Code duplicated, block: B:121:0x016a  */
    /* JADX WARN: Code duplicated, block: B:124:0x0174  */
    /* JADX WARN: Code duplicated, block: B:126:0x017e  */
    /* JADX WARN: Code duplicated, block: B:134:0x01a4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:135:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:136:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:139:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:140:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:143:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:146:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:147:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:150:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:152:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:153:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:155:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:156:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:159:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:162:0x021a  */
    /* JADX WARN: Code duplicated, block: B:165:0x0279  */
    /* JADX WARN: Code duplicated, block: B:167:0x0294  */
    /* JADX WARN: Code duplicated, block: B:170:0x030f  */
    /* JADX WARN: Code duplicated, block: B:172:0x031f  */
    /* JADX WARN: Code duplicated, block: B:175:0x0333  */
    /* JADX WARN: Code duplicated, block: B:177:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x006f  */
    /* JADX WARN: Code duplicated, block: B:42:0x0074  */
    /* JADX WARN: Code duplicated, block: B:44:0x0078  */
    /* JADX WARN: Code duplicated, block: B:46:0x0080  */
    /* JADX WARN: Code duplicated, block: B:47:0x0083  */
    /* JADX WARN: Code duplicated, block: B:51:0x008d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0092  */
    /* JADX WARN: Code duplicated, block: B:54:0x0098  */
    /* JADX WARN: Code duplicated, block: B:56:0x009e  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:68:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:72:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:77:0x00db  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:88:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:90:0x0101  */
    /* JADX WARN: Code duplicated, block: B:92:0x0105  */
    /* JADX WARN: Code duplicated, block: B:94:0x010f  */
    /* JADX WARN: Code duplicated, block: B:95:0x0112  */
    /* JADX WARN: Code duplicated, block: B:99:0x011a  */
    /* JADX INFO: renamed from: LazyStaggeredGrid-w41Enmo, reason: not valid java name */
    public static final void m2259LazyStaggeredGridw41Enmo(final LazyStaggeredGridState lazyStaggeredGridState, final Orientation orientation, final LazyGridStaggeredGridSlotsProvider lazyGridStaggeredGridSlotsProvider, Modifier modifier, PaddingValues paddingValues, boolean z, FlingBehavior flingBehavior, boolean z2, final OverscrollEffect overscrollEffect, float f, float f2, final nl3<? super LazyStaggeredGridScope, j59> nl3Var, Composer composer, final int i, final int i2, final int i3) {
        int i4;
        Modifier modifier2;
        int i5;
        PaddingValues paddingValues2;
        int i6;
        int i7;
        int i8;
        FlingBehavior flingBehavior2;
        int i9;
        boolean z3;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean z4;
        final float f3;
        Composer composer2;
        final FlingBehavior flingBehavior3;
        final boolean z5;
        final Modifier modifier3;
        final PaddingValues paddingValues3;
        final boolean z6;
        final float f4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        PaddingValues paddingValuesM2026PaddingValues0680j_4;
        boolean z7;
        int i18;
        boolean z8;
        Modifier modifier5;
        int i19;
        FlingBehavior flingBehavior4;
        PaddingValues paddingValues4;
        float fM9042constructorimpl;
        int i20;
        Object objRememberedValue;
        Orientation orientation2;
        Modifier modifierLazyLayoutBeyondBoundsModifier;
        int i21;
        int i22;
        int i23;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1904835166);
        if ((i & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(lazyStaggeredGridState) ? 4 : 2) | i;
        } else {
            i4 = i;
        }
        if ((i & 48) == 0) {
            i4 |= composerStartRestartGroup.changed(orientation.ordinal()) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i4 |= (i & 512) == 0 ? composerStartRestartGroup.changed(lazyGridStaggeredGridSlotsProvider) : composerStartRestartGroup.changedInstance(lazyGridStaggeredGridSlotsProvider) ? 256 : 128;
        }
        int i24 = i3 & 8;
        if (i24 == 0) {
            if ((i & 3072) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 2048 : 1024;
            }
            i5 = i3 & 16;
            if (i5 != 0) {
                if ((i & 24576) == 0) {
                    paddingValues2 = paddingValues;
                    if (composerStartRestartGroup.changed(paddingValues2)) {
                        i6 = 16384;
                    } else {
                        i6 = 8192;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 32;
                if (i7 != 0) {
                    i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                    if (composerStartRestartGroup.changed(z)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
                if ((i & 1572864) == 0) {
                    flingBehavior2 = flingBehavior;
                    if ((i3 & 64) == 0 || !composerStartRestartGroup.changed(flingBehavior2)) {
                        i23 = 524288;
                    } else {
                        i23 = 1048576;
                    }
                    i4 |= i23;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i9 = i3 & 128;
                if (i9 != 0) {
                    i4 |= 12582912;
                    z3 = z2;
                } else {
                    z3 = z2;
                    if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(z3)) {
                            i10 = 8388608;
                        } else {
                            i10 = 4194304;
                        }
                        i4 |= i10;
                    }
                }
                if ((i & 100663296) == 0) {
                    if (composerStartRestartGroup.changed(overscrollEffect)) {
                        i22 = 67108864;
                    } else {
                        i22 = GroupFlagsKt.HasAuxSlotFlag;
                    }
                    i4 |= i22;
                }
                i11 = i3 & 512;
                if (i11 != 0) {
                    if ((i & 805306368) == 0) {
                        if (composerStartRestartGroup.changed(f)) {
                            i12 = 536870912;
                        } else {
                            i12 = 268435456;
                        }
                        i4 |= i12;
                    }
                    i13 = i3 & 1024;
                    if (i13 != 0) {
                        i14 = i2 | 6;
                    } else if ((i2 & 6) == 0) {
                        if (composerStartRestartGroup.changed(f2)) {
                            i15 = 4;
                        } else {
                            i15 = 2;
                        }
                        i14 = i2 | i15;
                    } else {
                        i14 = i2;
                    }
                    if ((i2 & 48) == 0) {
                        if (composerStartRestartGroup.changedInstance(nl3Var)) {
                            i21 = 32;
                        } else {
                            i21 = 16;
                        }
                        i14 |= i21;
                    }
                    i16 = i14;
                    i17 = i4;
                    if ((i17 & 306783379) == 306783378 || (i16 & 19) != 18) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z4, i17 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                            if (i24 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if (i5 != 0) {
                                paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                            } else {
                                paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                            }
                            z7 = i7 == 0 ? z : false;
                            if ((i3 & 64) != 0) {
                                flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                                i18 = i17 & (-3670017);
                            } else {
                                i18 = i17;
                            }
                            z8 = i9 == 0 ? z3 : true;
                            if (i11 != 0) {
                                f = Dp.m9042constructorimpl(0.0f);
                            } else {
                                f = f;
                            }
                            if (i13 != 0) {
                                modifier5 = modifier4;
                                flingBehavior4 = flingBehavior2;
                                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                                i19 = i18;
                                z = z7;
                            } else {
                                modifier5 = modifier4;
                                i19 = i18;
                                flingBehavior4 = flingBehavior2;
                                paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                                z = z7;
                                fM9042constructorimpl = f2;
                            }
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            i19 = (i3 & 64) != 0 ? i17 & (-3670017) : i17;
                            flingBehavior4 = flingBehavior2;
                            z8 = z3;
                            paddingValues4 = paddingValues2;
                            fM9042constructorimpl = f2;
                            modifier5 = modifier2;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1904835166, i19, i16, "androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGrid (LazyStaggeredGrid.kt:62)");
                        }
                        i20 = i19 & 14;
                        ll3<LazyStaggeredGridItemProvider> ll3VarRememberStaggeredGridItemProviderLambda = LazyStaggeredGridItemProviderKt.rememberStaggeredGridItemProviderLambda(lazyStaggeredGridState, nl3Var, composerStartRestartGroup, (i16 & 112) | i20);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        int i25 = i19 >> 6;
                        int i26 = i19 >> 12;
                        int i27 = i19;
                        float f5 = f;
                        LazyLayoutMeasurePolicy lazyLayoutMeasurePolicyM2270rememberStaggeredGridMeasurePolicyqKj4JfE = LazyStaggeredGridMeasurePolicyKt.m2270rememberStaggeredGridMeasurePolicyqKj4JfE(lazyStaggeredGridState, ll3VarRememberStaggeredGridItemProviderLambda, paddingValues4, z, orientation, f5, fM9042constructorimpl, (y22) objRememberedValue, lazyGridStaggeredGridSlotsProvider, (GraphicsContext) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalGraphicsContext()), composerStartRestartGroup, (i25 & 7168) | (i25 & 896) | i20 | ((i19 << 9) & 57344) | (i26 & 458752) | ((i16 << 18) & 3670016) | ((i19 << 18) & 234881024));
                        PaddingValues paddingValues5 = paddingValues4;
                        float f6 = fM9042constructorimpl;
                        LazyLayoutSemanticState lazyLayoutSemanticStateRememberLazyStaggeredGridSemanticState = LazyStaggeredGridSemanticsKt.rememberLazyStaggeredGridSemanticState(lazyStaggeredGridState, z, composerStartRestartGroup, (i26 & 112) | i20);
                        if (z8) {
                            composerStartRestartGroup.startReplaceGroup(-1834596342);
                            orientation2 = orientation;
                            modifierLazyLayoutBeyondBoundsModifier = LazyLayoutBeyondBoundsModifierLocalKt.lazyLayoutBeyondBoundsModifier(Modifier.Companion, LazyStaggeredGridBeyondBoundsModifierKt.rememberLazyStaggeredGridBeyondBoundsState(lazyStaggeredGridState, composerStartRestartGroup, i20), lazyStaggeredGridState.getBeyondBoundsInfo$foundation(), z, orientation2);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            orientation2 = orientation;
                            composerStartRestartGroup.startReplaceGroup(-1834291488);
                            composerStartRestartGroup.endReplaceGroup();
                            modifierLazyLayoutBeyondBoundsModifier = Modifier.Companion;
                        }
                        boolean z9 = z;
                        boolean z10 = z8;
                        FlingBehavior flingBehavior5 = flingBehavior4;
                        LazyLayoutKt.LazyLayout(ll3VarRememberStaggeredGridItemProviderLambda, ScrollableAreaKt.scrollableArea$default(LazyLayoutSemanticsKt.lazyLayoutSemantics(modifier5.then(lazyStaggeredGridState.getRemeasurementModifier$foundation()).then(lazyStaggeredGridState.getAwaitLayoutModifier$foundation()), ll3VarRememberStaggeredGridItemProviderLambda, lazyLayoutSemanticStateRememberLazyStaggeredGridSemanticState, orientation2, z10, z9, composerStartRestartGroup, ((i27 << 6) & 7168) | ((i27 >> 9) & 57344) | (i27 & 458752)).then(modifierLazyLayoutBeyondBoundsModifier).then(lazyStaggeredGridState.getItemAnimator$foundation().getModifier()), lazyStaggeredGridState, orientation, overscrollEffect, z10, z9, flingBehavior5, lazyStaggeredGridState.getMutableInteractionSource$foundation(), null, 128, null), lazyStaggeredGridState.getPrefetchState$foundation(), lazyLayoutMeasurePolicyM2270rememberStaggeredGridMeasurePolicyqKj4JfE, composerStartRestartGroup, 0, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        composer2 = composerStartRestartGroup;
                        z6 = z9;
                        flingBehavior3 = flingBehavior5;
                        modifier3 = modifier5;
                        z5 = z10;
                        paddingValues3 = paddingValues5;
                        f4 = f5;
                        f3 = f6;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        f3 = f2;
                        composer2 = composerStartRestartGroup;
                        flingBehavior3 = flingBehavior2;
                        z5 = z3;
                        modifier3 = modifier2;
                        paddingValues3 = paddingValues2;
                        z6 = z;
                        f4 = f;
                    }
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: io4
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return LazyStaggeredGridKt.LazyStaggeredGrid_w41Enmo$lambda$0(lazyStaggeredGridState, orientation, lazyGridStaggeredGridSlotsProvider, modifier3, paddingValues3, z6, flingBehavior3, z5, overscrollEffect, f4, f3, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 805306368;
                i13 = i3 & 1024;
                if (i13 != 0) {
                    i14 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changed(f2)) {
                        i15 = 4;
                    } else {
                        i15 = 2;
                    }
                    i14 = i2 | i15;
                } else {
                    i14 = i2;
                }
                if ((i2 & 48) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i21 = 32;
                    } else {
                        i21 = 16;
                    }
                    i14 |= i21;
                }
                i16 = i14;
                i17 = i4;
                if ((i17 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i17 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i24 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 == 0) {
                        }
                        if ((i3 & 64) != 0) {
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i18 = i17 & (-3670017);
                        } else {
                            i18 = i17;
                        }
                        if (i9 == 0) {
                        }
                        if (i11 != 0) {
                            f = Dp.m9042constructorimpl(0.0f);
                        } else {
                            f = f;
                        }
                        if (i13 != 0) {
                            modifier5 = modifier4;
                            flingBehavior4 = flingBehavior2;
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            i19 = i18;
                            z = z7;
                        } else {
                            modifier5 = modifier4;
                            i19 = i18;
                            flingBehavior4 = flingBehavior2;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            z = z7;
                            fM9042constructorimpl = f2;
                        }
                    } else {
                        if (i24 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 == 0) {
                        }
                        if ((i3 & 64) != 0) {
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i18 = i17 & (-3670017);
                        } else {
                            i18 = i17;
                        }
                        if (i9 == 0) {
                        }
                        if (i11 != 0) {
                            f = Dp.m9042constructorimpl(0.0f);
                        } else {
                            f = f;
                        }
                        if (i13 != 0) {
                            modifier5 = modifier4;
                            flingBehavior4 = flingBehavior2;
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            i19 = i18;
                            z = z7;
                        } else {
                            modifier5 = modifier4;
                            i19 = i18;
                            flingBehavior4 = flingBehavior2;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            z = z7;
                            fM9042constructorimpl = f2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1904835166, i19, i16, "androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGrid (LazyStaggeredGrid.kt:62)");
                    }
                    i20 = i19 & 14;
                    ll3<LazyStaggeredGridItemProvider> ll3VarRememberStaggeredGridItemProviderLambda2 = LazyStaggeredGridItemProviderKt.rememberStaggeredGridItemProviderLambda(lazyStaggeredGridState, nl3Var, composerStartRestartGroup, (i16 & 112) | i20);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    int i28 = i19 >> 6;
                    int i29 = i19 >> 12;
                    int i210 = i19;
                    float f7 = f;
                    LazyLayoutMeasurePolicy lazyLayoutMeasurePolicyM2270rememberStaggeredGridMeasurePolicyqKj4JfE2 = LazyStaggeredGridMeasurePolicyKt.m2270rememberStaggeredGridMeasurePolicyqKj4JfE(lazyStaggeredGridState, ll3VarRememberStaggeredGridItemProviderLambda2, paddingValues4, z, orientation, f7, fM9042constructorimpl, (y22) objRememberedValue, lazyGridStaggeredGridSlotsProvider, (GraphicsContext) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalGraphicsContext()), composerStartRestartGroup, (i28 & 7168) | (i28 & 896) | i20 | ((i19 << 9) & 57344) | (i29 & 458752) | ((i16 << 18) & 3670016) | ((i19 << 18) & 234881024));
                    PaddingValues paddingValues6 = paddingValues4;
                    float f8 = fM9042constructorimpl;
                    LazyLayoutSemanticState lazyLayoutSemanticStateRememberLazyStaggeredGridSemanticState2 = LazyStaggeredGridSemanticsKt.rememberLazyStaggeredGridSemanticState(lazyStaggeredGridState, z, composerStartRestartGroup, (i29 & 112) | i20);
                    if (z8) {
                        composerStartRestartGroup.startReplaceGroup(-1834596342);
                        orientation2 = orientation;
                        modifierLazyLayoutBeyondBoundsModifier = LazyLayoutBeyondBoundsModifierLocalKt.lazyLayoutBeyondBoundsModifier(Modifier.Companion, LazyStaggeredGridBeyondBoundsModifierKt.rememberLazyStaggeredGridBeyondBoundsState(lazyStaggeredGridState, composerStartRestartGroup, i20), lazyStaggeredGridState.getBeyondBoundsInfo$foundation(), z, orientation2);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        orientation2 = orientation;
                        composerStartRestartGroup.startReplaceGroup(-1834291488);
                        composerStartRestartGroup.endReplaceGroup();
                        modifierLazyLayoutBeyondBoundsModifier = Modifier.Companion;
                    }
                    boolean z11 = z;
                    boolean z12 = z8;
                    FlingBehavior flingBehavior6 = flingBehavior4;
                    LazyLayoutKt.LazyLayout(ll3VarRememberStaggeredGridItemProviderLambda2, ScrollableAreaKt.scrollableArea$default(LazyLayoutSemanticsKt.lazyLayoutSemantics(modifier5.then(lazyStaggeredGridState.getRemeasurementModifier$foundation()).then(lazyStaggeredGridState.getAwaitLayoutModifier$foundation()), ll3VarRememberStaggeredGridItemProviderLambda2, lazyLayoutSemanticStateRememberLazyStaggeredGridSemanticState2, orientation2, z12, z11, composerStartRestartGroup, ((i210 << 6) & 7168) | ((i210 >> 9) & 57344) | (i210 & 458752)).then(modifierLazyLayoutBeyondBoundsModifier).then(lazyStaggeredGridState.getItemAnimator$foundation().getModifier()), lazyStaggeredGridState, orientation, overscrollEffect, z12, z11, flingBehavior6, lazyStaggeredGridState.getMutableInteractionSource$foundation(), null, 128, null), lazyStaggeredGridState.getPrefetchState$foundation(), lazyLayoutMeasurePolicyM2270rememberStaggeredGridMeasurePolicyqKj4JfE2, composerStartRestartGroup, 0, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    composer2 = composerStartRestartGroup;
                    z6 = z11;
                    flingBehavior3 = flingBehavior6;
                    modifier3 = modifier5;
                    z5 = z12;
                    paddingValues3 = paddingValues6;
                    f4 = f7;
                    f3 = f8;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    f3 = f2;
                    composer2 = composerStartRestartGroup;
                    flingBehavior3 = flingBehavior2;
                    z5 = z3;
                    modifier3 = modifier2;
                    paddingValues3 = paddingValues2;
                    z6 = z;
                    f4 = f;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: io4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyStaggeredGridKt.LazyStaggeredGrid_w41Enmo$lambda$0(lazyStaggeredGridState, orientation, lazyGridStaggeredGridSlotsProvider, modifier3, paddingValues3, z6, flingBehavior3, z5, overscrollEffect, f4, f3, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            paddingValues2 = paddingValues;
            i7 = i3 & 32;
            if (i7 != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(z)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i4 |= i8;
            }
            if ((i & 1572864) == 0) {
                flingBehavior2 = flingBehavior;
                if ((i3 & 64) == 0) {
                    i23 = 524288;
                } else {
                    i23 = 524288;
                }
                i4 |= i23;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i9 = i3 & 128;
            if (i9 != 0) {
                i4 |= 12582912;
                z3 = z2;
            } else {
                z3 = z2;
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(z3)) {
                        i10 = 8388608;
                    } else {
                        i10 = 4194304;
                    }
                    i4 |= i10;
                }
            }
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(overscrollEffect)) {
                    i22 = 67108864;
                } else {
                    i22 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i22;
            }
            i11 = i3 & 512;
            if (i11 != 0) {
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(f)) {
                        i12 = 536870912;
                    } else {
                        i12 = 268435456;
                    }
                    i4 |= i12;
                }
                i13 = i3 & 1024;
                if (i13 != 0) {
                    i14 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changed(f2)) {
                        i15 = 4;
                    } else {
                        i15 = 2;
                    }
                    i14 = i2 | i15;
                } else {
                    i14 = i2;
                }
                if ((i2 & 48) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i21 = 32;
                    } else {
                        i21 = 16;
                    }
                    i14 |= i21;
                }
                i16 = i14;
                i17 = i4;
                if ((i17 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i17 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i24 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 == 0) {
                        }
                        if ((i3 & 64) != 0) {
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i18 = i17 & (-3670017);
                        } else {
                            i18 = i17;
                        }
                        if (i9 == 0) {
                        }
                        if (i11 != 0) {
                            f = Dp.m9042constructorimpl(0.0f);
                        } else {
                            f = f;
                        }
                        if (i13 != 0) {
                            modifier5 = modifier4;
                            flingBehavior4 = flingBehavior2;
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            i19 = i18;
                            z = z7;
                        } else {
                            modifier5 = modifier4;
                            i19 = i18;
                            flingBehavior4 = flingBehavior2;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            z = z7;
                            fM9042constructorimpl = f2;
                        }
                    } else {
                        if (i24 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 == 0) {
                        }
                        if ((i3 & 64) != 0) {
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i18 = i17 & (-3670017);
                        } else {
                            i18 = i17;
                        }
                        if (i9 == 0) {
                        }
                        if (i11 != 0) {
                            f = Dp.m9042constructorimpl(0.0f);
                        } else {
                            f = f;
                        }
                        if (i13 != 0) {
                            modifier5 = modifier4;
                            flingBehavior4 = flingBehavior2;
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            i19 = i18;
                            z = z7;
                        } else {
                            modifier5 = modifier4;
                            i19 = i18;
                            flingBehavior4 = flingBehavior2;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            z = z7;
                            fM9042constructorimpl = f2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1904835166, i19, i16, "androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGrid (LazyStaggeredGrid.kt:62)");
                    }
                    i20 = i19 & 14;
                    ll3<LazyStaggeredGridItemProvider> ll3VarRememberStaggeredGridItemProviderLambda3 = LazyStaggeredGridItemProviderKt.rememberStaggeredGridItemProviderLambda(lazyStaggeredGridState, nl3Var, composerStartRestartGroup, (i16 & 112) | i20);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    int i211 = i19 >> 6;
                    int i212 = i19 >> 12;
                    int i213 = i19;
                    float f9 = f;
                    LazyLayoutMeasurePolicy lazyLayoutMeasurePolicyM2270rememberStaggeredGridMeasurePolicyqKj4JfE3 = LazyStaggeredGridMeasurePolicyKt.m2270rememberStaggeredGridMeasurePolicyqKj4JfE(lazyStaggeredGridState, ll3VarRememberStaggeredGridItemProviderLambda3, paddingValues4, z, orientation, f9, fM9042constructorimpl, (y22) objRememberedValue, lazyGridStaggeredGridSlotsProvider, (GraphicsContext) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalGraphicsContext()), composerStartRestartGroup, (i211 & 7168) | (i211 & 896) | i20 | ((i19 << 9) & 57344) | (i212 & 458752) | ((i16 << 18) & 3670016) | ((i19 << 18) & 234881024));
                    PaddingValues paddingValues7 = paddingValues4;
                    float f10 = fM9042constructorimpl;
                    LazyLayoutSemanticState lazyLayoutSemanticStateRememberLazyStaggeredGridSemanticState3 = LazyStaggeredGridSemanticsKt.rememberLazyStaggeredGridSemanticState(lazyStaggeredGridState, z, composerStartRestartGroup, (i212 & 112) | i20);
                    if (z8) {
                        composerStartRestartGroup.startReplaceGroup(-1834596342);
                        orientation2 = orientation;
                        modifierLazyLayoutBeyondBoundsModifier = LazyLayoutBeyondBoundsModifierLocalKt.lazyLayoutBeyondBoundsModifier(Modifier.Companion, LazyStaggeredGridBeyondBoundsModifierKt.rememberLazyStaggeredGridBeyondBoundsState(lazyStaggeredGridState, composerStartRestartGroup, i20), lazyStaggeredGridState.getBeyondBoundsInfo$foundation(), z, orientation2);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        orientation2 = orientation;
                        composerStartRestartGroup.startReplaceGroup(-1834291488);
                        composerStartRestartGroup.endReplaceGroup();
                        modifierLazyLayoutBeyondBoundsModifier = Modifier.Companion;
                    }
                    boolean z13 = z;
                    boolean z14 = z8;
                    FlingBehavior flingBehavior7 = flingBehavior4;
                    LazyLayoutKt.LazyLayout(ll3VarRememberStaggeredGridItemProviderLambda3, ScrollableAreaKt.scrollableArea$default(LazyLayoutSemanticsKt.lazyLayoutSemantics(modifier5.then(lazyStaggeredGridState.getRemeasurementModifier$foundation()).then(lazyStaggeredGridState.getAwaitLayoutModifier$foundation()), ll3VarRememberStaggeredGridItemProviderLambda3, lazyLayoutSemanticStateRememberLazyStaggeredGridSemanticState3, orientation2, z14, z13, composerStartRestartGroup, ((i213 << 6) & 7168) | ((i213 >> 9) & 57344) | (i213 & 458752)).then(modifierLazyLayoutBeyondBoundsModifier).then(lazyStaggeredGridState.getItemAnimator$foundation().getModifier()), lazyStaggeredGridState, orientation, overscrollEffect, z14, z13, flingBehavior7, lazyStaggeredGridState.getMutableInteractionSource$foundation(), null, 128, null), lazyStaggeredGridState.getPrefetchState$foundation(), lazyLayoutMeasurePolicyM2270rememberStaggeredGridMeasurePolicyqKj4JfE3, composerStartRestartGroup, 0, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    composer2 = composerStartRestartGroup;
                    z6 = z13;
                    flingBehavior3 = flingBehavior7;
                    modifier3 = modifier5;
                    z5 = z14;
                    paddingValues3 = paddingValues7;
                    f4 = f9;
                    f3 = f10;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    f3 = f2;
                    composer2 = composerStartRestartGroup;
                    flingBehavior3 = flingBehavior2;
                    z5 = z3;
                    modifier3 = modifier2;
                    paddingValues3 = paddingValues2;
                    z6 = z;
                    f4 = f;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: io4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyStaggeredGridKt.LazyStaggeredGrid_w41Enmo$lambda$0(lazyStaggeredGridState, orientation, lazyGridStaggeredGridSlotsProvider, modifier3, paddingValues3, z6, flingBehavior3, z5, overscrollEffect, f4, f3, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 805306368;
            i13 = i3 & 1024;
            if (i13 != 0) {
                i14 = i2 | 6;
            } else if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i15 = 4;
                } else {
                    i15 = 2;
                }
                i14 = i2 | i15;
            } else {
                i14 = i2;
            }
            if ((i2 & 48) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i21 = 32;
                } else {
                    i21 = 16;
                }
                i14 |= i21;
            }
            i16 = i14;
            i17 = i4;
            if ((i17 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i17 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i24 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 == 0) {
                    }
                    if ((i3 & 64) != 0) {
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i18 = i17 & (-3670017);
                    } else {
                        i18 = i17;
                    }
                    if (i9 == 0) {
                    }
                    if (i11 != 0) {
                        f = Dp.m9042constructorimpl(0.0f);
                    } else {
                        f = f;
                    }
                    if (i13 != 0) {
                        modifier5 = modifier4;
                        flingBehavior4 = flingBehavior2;
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        i19 = i18;
                        z = z7;
                    } else {
                        modifier5 = modifier4;
                        i19 = i18;
                        flingBehavior4 = flingBehavior2;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        z = z7;
                        fM9042constructorimpl = f2;
                    }
                } else {
                    if (i24 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 == 0) {
                    }
                    if ((i3 & 64) != 0) {
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i18 = i17 & (-3670017);
                    } else {
                        i18 = i17;
                    }
                    if (i9 == 0) {
                    }
                    if (i11 != 0) {
                        f = Dp.m9042constructorimpl(0.0f);
                    } else {
                        f = f;
                    }
                    if (i13 != 0) {
                        modifier5 = modifier4;
                        flingBehavior4 = flingBehavior2;
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        i19 = i18;
                        z = z7;
                    } else {
                        modifier5 = modifier4;
                        i19 = i18;
                        flingBehavior4 = flingBehavior2;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        z = z7;
                        fM9042constructorimpl = f2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1904835166, i19, i16, "androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGrid (LazyStaggeredGrid.kt:62)");
                }
                i20 = i19 & 14;
                ll3<LazyStaggeredGridItemProvider> ll3VarRememberStaggeredGridItemProviderLambda4 = LazyStaggeredGridItemProviderKt.rememberStaggeredGridItemProviderLambda(lazyStaggeredGridState, nl3Var, composerStartRestartGroup, (i16 & 112) | i20);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                int i214 = i19 >> 6;
                int i215 = i19 >> 12;
                int i216 = i19;
                float f11 = f;
                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicyM2270rememberStaggeredGridMeasurePolicyqKj4JfE4 = LazyStaggeredGridMeasurePolicyKt.m2270rememberStaggeredGridMeasurePolicyqKj4JfE(lazyStaggeredGridState, ll3VarRememberStaggeredGridItemProviderLambda4, paddingValues4, z, orientation, f11, fM9042constructorimpl, (y22) objRememberedValue, lazyGridStaggeredGridSlotsProvider, (GraphicsContext) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalGraphicsContext()), composerStartRestartGroup, (i214 & 7168) | (i214 & 896) | i20 | ((i19 << 9) & 57344) | (i215 & 458752) | ((i16 << 18) & 3670016) | ((i19 << 18) & 234881024));
                PaddingValues paddingValues8 = paddingValues4;
                float f12 = fM9042constructorimpl;
                LazyLayoutSemanticState lazyLayoutSemanticStateRememberLazyStaggeredGridSemanticState4 = LazyStaggeredGridSemanticsKt.rememberLazyStaggeredGridSemanticState(lazyStaggeredGridState, z, composerStartRestartGroup, (i215 & 112) | i20);
                if (z8) {
                    composerStartRestartGroup.startReplaceGroup(-1834596342);
                    orientation2 = orientation;
                    modifierLazyLayoutBeyondBoundsModifier = LazyLayoutBeyondBoundsModifierLocalKt.lazyLayoutBeyondBoundsModifier(Modifier.Companion, LazyStaggeredGridBeyondBoundsModifierKt.rememberLazyStaggeredGridBeyondBoundsState(lazyStaggeredGridState, composerStartRestartGroup, i20), lazyStaggeredGridState.getBeyondBoundsInfo$foundation(), z, orientation2);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    orientation2 = orientation;
                    composerStartRestartGroup.startReplaceGroup(-1834291488);
                    composerStartRestartGroup.endReplaceGroup();
                    modifierLazyLayoutBeyondBoundsModifier = Modifier.Companion;
                }
                boolean z15 = z;
                boolean z16 = z8;
                FlingBehavior flingBehavior8 = flingBehavior4;
                LazyLayoutKt.LazyLayout(ll3VarRememberStaggeredGridItemProviderLambda4, ScrollableAreaKt.scrollableArea$default(LazyLayoutSemanticsKt.lazyLayoutSemantics(modifier5.then(lazyStaggeredGridState.getRemeasurementModifier$foundation()).then(lazyStaggeredGridState.getAwaitLayoutModifier$foundation()), ll3VarRememberStaggeredGridItemProviderLambda4, lazyLayoutSemanticStateRememberLazyStaggeredGridSemanticState4, orientation2, z16, z15, composerStartRestartGroup, ((i216 << 6) & 7168) | ((i216 >> 9) & 57344) | (i216 & 458752)).then(modifierLazyLayoutBeyondBoundsModifier).then(lazyStaggeredGridState.getItemAnimator$foundation().getModifier()), lazyStaggeredGridState, orientation, overscrollEffect, z16, z15, flingBehavior8, lazyStaggeredGridState.getMutableInteractionSource$foundation(), null, 128, null), lazyStaggeredGridState.getPrefetchState$foundation(), lazyLayoutMeasurePolicyM2270rememberStaggeredGridMeasurePolicyqKj4JfE4, composerStartRestartGroup, 0, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer2 = composerStartRestartGroup;
                z6 = z15;
                flingBehavior3 = flingBehavior8;
                modifier3 = modifier5;
                z5 = z16;
                paddingValues3 = paddingValues8;
                f4 = f11;
                f3 = f12;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                f3 = f2;
                composer2 = composerStartRestartGroup;
                flingBehavior3 = flingBehavior2;
                z5 = z3;
                modifier3 = modifier2;
                paddingValues3 = paddingValues2;
                z6 = z;
                f4 = f;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: io4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyStaggeredGridKt.LazyStaggeredGrid_w41Enmo$lambda$0(lazyStaggeredGridState, orientation, lazyGridStaggeredGridSlotsProvider, modifier3, paddingValues3, z6, flingBehavior3, z5, overscrollEffect, f4, f3, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 3072;
        modifier2 = modifier;
        i5 = i3 & 16;
        if (i5 != 0) {
            if ((i & 24576) == 0) {
                paddingValues2 = paddingValues;
                if (composerStartRestartGroup.changed(paddingValues2)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i4 |= i6;
            }
            i7 = i3 & 32;
            if (i7 != 0) {
                i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                if (composerStartRestartGroup.changed(z)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i4 |= i8;
            }
            if ((i & 1572864) == 0) {
                flingBehavior2 = flingBehavior;
                if ((i3 & 64) == 0) {
                    i23 = 524288;
                } else {
                    i23 = 524288;
                }
                i4 |= i23;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i9 = i3 & 128;
            if (i9 != 0) {
                i4 |= 12582912;
                z3 = z2;
            } else {
                z3 = z2;
                if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(z3)) {
                        i10 = 8388608;
                    } else {
                        i10 = 4194304;
                    }
                    i4 |= i10;
                }
            }
            if ((i & 100663296) == 0) {
                if (composerStartRestartGroup.changed(overscrollEffect)) {
                    i22 = 67108864;
                } else {
                    i22 = GroupFlagsKt.HasAuxSlotFlag;
                }
                i4 |= i22;
            }
            i11 = i3 & 512;
            if (i11 != 0) {
                if ((i & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(f)) {
                        i12 = 536870912;
                    } else {
                        i12 = 268435456;
                    }
                    i4 |= i12;
                }
                i13 = i3 & 1024;
                if (i13 != 0) {
                    i14 = i2 | 6;
                } else if ((i2 & 6) == 0) {
                    if (composerStartRestartGroup.changed(f2)) {
                        i15 = 4;
                    } else {
                        i15 = 2;
                    }
                    i14 = i2 | i15;
                } else {
                    i14 = i2;
                }
                if ((i2 & 48) == 0) {
                    if (composerStartRestartGroup.changedInstance(nl3Var)) {
                        i21 = 32;
                    } else {
                        i21 = 16;
                    }
                    i14 |= i21;
                }
                i16 = i14;
                i17 = i4;
                if ((i17 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (composerStartRestartGroup.shouldExecute(z4, i17 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i24 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 == 0) {
                        }
                        if ((i3 & 64) != 0) {
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i18 = i17 & (-3670017);
                        } else {
                            i18 = i17;
                        }
                        if (i9 == 0) {
                        }
                        if (i11 != 0) {
                            f = Dp.m9042constructorimpl(0.0f);
                        } else {
                            f = f;
                        }
                        if (i13 != 0) {
                            modifier5 = modifier4;
                            flingBehavior4 = flingBehavior2;
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            i19 = i18;
                            z = z7;
                        } else {
                            modifier5 = modifier4;
                            i19 = i18;
                            flingBehavior4 = flingBehavior2;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            z = z7;
                            fM9042constructorimpl = f2;
                        }
                    } else {
                        if (i24 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i5 != 0) {
                            paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                        } else {
                            paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                        }
                        if (i7 == 0) {
                        }
                        if ((i3 & 64) != 0) {
                            flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                            i18 = i17 & (-3670017);
                        } else {
                            i18 = i17;
                        }
                        if (i9 == 0) {
                        }
                        if (i11 != 0) {
                            f = Dp.m9042constructorimpl(0.0f);
                        } else {
                            f = f;
                        }
                        if (i13 != 0) {
                            modifier5 = modifier4;
                            flingBehavior4 = flingBehavior2;
                            fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            i19 = i18;
                            z = z7;
                        } else {
                            modifier5 = modifier4;
                            i19 = i18;
                            flingBehavior4 = flingBehavior2;
                            paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                            z = z7;
                            fM9042constructorimpl = f2;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1904835166, i19, i16, "androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGrid (LazyStaggeredGrid.kt:62)");
                    }
                    i20 = i19 & 14;
                    ll3<LazyStaggeredGridItemProvider> ll3VarRememberStaggeredGridItemProviderLambda5 = LazyStaggeredGridItemProviderKt.rememberStaggeredGridItemProviderLambda(lazyStaggeredGridState, nl3Var, composerStartRestartGroup, (i16 & 112) | i20);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    int i217 = i19 >> 6;
                    int i218 = i19 >> 12;
                    int i219 = i19;
                    float f13 = f;
                    LazyLayoutMeasurePolicy lazyLayoutMeasurePolicyM2270rememberStaggeredGridMeasurePolicyqKj4JfE5 = LazyStaggeredGridMeasurePolicyKt.m2270rememberStaggeredGridMeasurePolicyqKj4JfE(lazyStaggeredGridState, ll3VarRememberStaggeredGridItemProviderLambda5, paddingValues4, z, orientation, f13, fM9042constructorimpl, (y22) objRememberedValue, lazyGridStaggeredGridSlotsProvider, (GraphicsContext) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalGraphicsContext()), composerStartRestartGroup, (i217 & 7168) | (i217 & 896) | i20 | ((i19 << 9) & 57344) | (i218 & 458752) | ((i16 << 18) & 3670016) | ((i19 << 18) & 234881024));
                    PaddingValues paddingValues9 = paddingValues4;
                    float f14 = fM9042constructorimpl;
                    LazyLayoutSemanticState lazyLayoutSemanticStateRememberLazyStaggeredGridSemanticState5 = LazyStaggeredGridSemanticsKt.rememberLazyStaggeredGridSemanticState(lazyStaggeredGridState, z, composerStartRestartGroup, (i218 & 112) | i20);
                    if (z8) {
                        composerStartRestartGroup.startReplaceGroup(-1834596342);
                        orientation2 = orientation;
                        modifierLazyLayoutBeyondBoundsModifier = LazyLayoutBeyondBoundsModifierLocalKt.lazyLayoutBeyondBoundsModifier(Modifier.Companion, LazyStaggeredGridBeyondBoundsModifierKt.rememberLazyStaggeredGridBeyondBoundsState(lazyStaggeredGridState, composerStartRestartGroup, i20), lazyStaggeredGridState.getBeyondBoundsInfo$foundation(), z, orientation2);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        orientation2 = orientation;
                        composerStartRestartGroup.startReplaceGroup(-1834291488);
                        composerStartRestartGroup.endReplaceGroup();
                        modifierLazyLayoutBeyondBoundsModifier = Modifier.Companion;
                    }
                    boolean z17 = z;
                    boolean z18 = z8;
                    FlingBehavior flingBehavior9 = flingBehavior4;
                    LazyLayoutKt.LazyLayout(ll3VarRememberStaggeredGridItemProviderLambda5, ScrollableAreaKt.scrollableArea$default(LazyLayoutSemanticsKt.lazyLayoutSemantics(modifier5.then(lazyStaggeredGridState.getRemeasurementModifier$foundation()).then(lazyStaggeredGridState.getAwaitLayoutModifier$foundation()), ll3VarRememberStaggeredGridItemProviderLambda5, lazyLayoutSemanticStateRememberLazyStaggeredGridSemanticState5, orientation2, z18, z17, composerStartRestartGroup, ((i219 << 6) & 7168) | ((i219 >> 9) & 57344) | (i219 & 458752)).then(modifierLazyLayoutBeyondBoundsModifier).then(lazyStaggeredGridState.getItemAnimator$foundation().getModifier()), lazyStaggeredGridState, orientation, overscrollEffect, z18, z17, flingBehavior9, lazyStaggeredGridState.getMutableInteractionSource$foundation(), null, 128, null), lazyStaggeredGridState.getPrefetchState$foundation(), lazyLayoutMeasurePolicyM2270rememberStaggeredGridMeasurePolicyqKj4JfE5, composerStartRestartGroup, 0, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    composer2 = composerStartRestartGroup;
                    z6 = z17;
                    flingBehavior3 = flingBehavior9;
                    modifier3 = modifier5;
                    z5 = z18;
                    paddingValues3 = paddingValues9;
                    f4 = f13;
                    f3 = f14;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    f3 = f2;
                    composer2 = composerStartRestartGroup;
                    flingBehavior3 = flingBehavior2;
                    z5 = z3;
                    modifier3 = modifier2;
                    paddingValues3 = paddingValues2;
                    z6 = z;
                    f4 = f;
                }
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: io4
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return LazyStaggeredGridKt.LazyStaggeredGrid_w41Enmo$lambda$0(lazyStaggeredGridState, orientation, lazyGridStaggeredGridSlotsProvider, modifier3, paddingValues3, z6, flingBehavior3, z5, overscrollEffect, f4, f3, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 805306368;
            i13 = i3 & 1024;
            if (i13 != 0) {
                i14 = i2 | 6;
            } else if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i15 = 4;
                } else {
                    i15 = 2;
                }
                i14 = i2 | i15;
            } else {
                i14 = i2;
            }
            if ((i2 & 48) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i21 = 32;
                } else {
                    i21 = 16;
                }
                i14 |= i21;
            }
            i16 = i14;
            i17 = i4;
            if ((i17 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i17 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i24 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 == 0) {
                    }
                    if ((i3 & 64) != 0) {
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i18 = i17 & (-3670017);
                    } else {
                        i18 = i17;
                    }
                    if (i9 == 0) {
                    }
                    if (i11 != 0) {
                        f = Dp.m9042constructorimpl(0.0f);
                    } else {
                        f = f;
                    }
                    if (i13 != 0) {
                        modifier5 = modifier4;
                        flingBehavior4 = flingBehavior2;
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        i19 = i18;
                        z = z7;
                    } else {
                        modifier5 = modifier4;
                        i19 = i18;
                        flingBehavior4 = flingBehavior2;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        z = z7;
                        fM9042constructorimpl = f2;
                    }
                } else {
                    if (i24 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 == 0) {
                    }
                    if ((i3 & 64) != 0) {
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i18 = i17 & (-3670017);
                    } else {
                        i18 = i17;
                    }
                    if (i9 == 0) {
                    }
                    if (i11 != 0) {
                        f = Dp.m9042constructorimpl(0.0f);
                    } else {
                        f = f;
                    }
                    if (i13 != 0) {
                        modifier5 = modifier4;
                        flingBehavior4 = flingBehavior2;
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        i19 = i18;
                        z = z7;
                    } else {
                        modifier5 = modifier4;
                        i19 = i18;
                        flingBehavior4 = flingBehavior2;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        z = z7;
                        fM9042constructorimpl = f2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1904835166, i19, i16, "androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGrid (LazyStaggeredGrid.kt:62)");
                }
                i20 = i19 & 14;
                ll3<LazyStaggeredGridItemProvider> ll3VarRememberStaggeredGridItemProviderLambda6 = LazyStaggeredGridItemProviderKt.rememberStaggeredGridItemProviderLambda(lazyStaggeredGridState, nl3Var, composerStartRestartGroup, (i16 & 112) | i20);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                int i2110 = i19 >> 6;
                int i2111 = i19 >> 12;
                int i2112 = i19;
                float f15 = f;
                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicyM2270rememberStaggeredGridMeasurePolicyqKj4JfE6 = LazyStaggeredGridMeasurePolicyKt.m2270rememberStaggeredGridMeasurePolicyqKj4JfE(lazyStaggeredGridState, ll3VarRememberStaggeredGridItemProviderLambda6, paddingValues4, z, orientation, f15, fM9042constructorimpl, (y22) objRememberedValue, lazyGridStaggeredGridSlotsProvider, (GraphicsContext) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalGraphicsContext()), composerStartRestartGroup, (i2110 & 7168) | (i2110 & 896) | i20 | ((i19 << 9) & 57344) | (i2111 & 458752) | ((i16 << 18) & 3670016) | ((i19 << 18) & 234881024));
                PaddingValues paddingValues10 = paddingValues4;
                float f16 = fM9042constructorimpl;
                LazyLayoutSemanticState lazyLayoutSemanticStateRememberLazyStaggeredGridSemanticState6 = LazyStaggeredGridSemanticsKt.rememberLazyStaggeredGridSemanticState(lazyStaggeredGridState, z, composerStartRestartGroup, (i2111 & 112) | i20);
                if (z8) {
                    composerStartRestartGroup.startReplaceGroup(-1834596342);
                    orientation2 = orientation;
                    modifierLazyLayoutBeyondBoundsModifier = LazyLayoutBeyondBoundsModifierLocalKt.lazyLayoutBeyondBoundsModifier(Modifier.Companion, LazyStaggeredGridBeyondBoundsModifierKt.rememberLazyStaggeredGridBeyondBoundsState(lazyStaggeredGridState, composerStartRestartGroup, i20), lazyStaggeredGridState.getBeyondBoundsInfo$foundation(), z, orientation2);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    orientation2 = orientation;
                    composerStartRestartGroup.startReplaceGroup(-1834291488);
                    composerStartRestartGroup.endReplaceGroup();
                    modifierLazyLayoutBeyondBoundsModifier = Modifier.Companion;
                }
                boolean z19 = z;
                boolean z110 = z8;
                FlingBehavior flingBehavior10 = flingBehavior4;
                LazyLayoutKt.LazyLayout(ll3VarRememberStaggeredGridItemProviderLambda6, ScrollableAreaKt.scrollableArea$default(LazyLayoutSemanticsKt.lazyLayoutSemantics(modifier5.then(lazyStaggeredGridState.getRemeasurementModifier$foundation()).then(lazyStaggeredGridState.getAwaitLayoutModifier$foundation()), ll3VarRememberStaggeredGridItemProviderLambda6, lazyLayoutSemanticStateRememberLazyStaggeredGridSemanticState6, orientation2, z110, z19, composerStartRestartGroup, ((i2112 << 6) & 7168) | ((i2112 >> 9) & 57344) | (i2112 & 458752)).then(modifierLazyLayoutBeyondBoundsModifier).then(lazyStaggeredGridState.getItemAnimator$foundation().getModifier()), lazyStaggeredGridState, orientation, overscrollEffect, z110, z19, flingBehavior10, lazyStaggeredGridState.getMutableInteractionSource$foundation(), null, 128, null), lazyStaggeredGridState.getPrefetchState$foundation(), lazyLayoutMeasurePolicyM2270rememberStaggeredGridMeasurePolicyqKj4JfE6, composerStartRestartGroup, 0, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer2 = composerStartRestartGroup;
                z6 = z19;
                flingBehavior3 = flingBehavior10;
                modifier3 = modifier5;
                z5 = z110;
                paddingValues3 = paddingValues10;
                f4 = f15;
                f3 = f16;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                f3 = f2;
                composer2 = composerStartRestartGroup;
                flingBehavior3 = flingBehavior2;
                z5 = z3;
                modifier3 = modifier2;
                paddingValues3 = paddingValues2;
                z6 = z;
                f4 = f;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: io4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyStaggeredGridKt.LazyStaggeredGrid_w41Enmo$lambda$0(lazyStaggeredGridState, orientation, lazyGridStaggeredGridSlotsProvider, modifier3, paddingValues3, z6, flingBehavior3, z5, overscrollEffect, f4, f3, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 24576;
        paddingValues2 = paddingValues;
        i7 = i3 & 32;
        if (i7 != 0) {
            i4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if (composerStartRestartGroup.changed(z)) {
                i8 = 131072;
            } else {
                i8 = 65536;
            }
            i4 |= i8;
        }
        if ((i & 1572864) == 0) {
            flingBehavior2 = flingBehavior;
            if ((i3 & 64) == 0) {
                i23 = 524288;
            } else {
                i23 = 524288;
            }
            i4 |= i23;
        } else {
            flingBehavior2 = flingBehavior;
        }
        i9 = i3 & 128;
        if (i9 != 0) {
            i4 |= 12582912;
            z3 = z2;
        } else {
            z3 = z2;
            if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(z3)) {
                    i10 = 8388608;
                } else {
                    i10 = 4194304;
                }
                i4 |= i10;
            }
        }
        if ((i & 100663296) == 0) {
            if (composerStartRestartGroup.changed(overscrollEffect)) {
                i22 = 67108864;
            } else {
                i22 = GroupFlagsKt.HasAuxSlotFlag;
            }
            i4 |= i22;
        }
        i11 = i3 & 512;
        if (i11 != 0) {
            if ((i & 805306368) == 0) {
                if (composerStartRestartGroup.changed(f)) {
                    i12 = 536870912;
                } else {
                    i12 = 268435456;
                }
                i4 |= i12;
            }
            i13 = i3 & 1024;
            if (i13 != 0) {
                i14 = i2 | 6;
            } else if ((i2 & 6) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i15 = 4;
                } else {
                    i15 = 2;
                }
                i14 = i2 | i15;
            } else {
                i14 = i2;
            }
            if ((i2 & 48) == 0) {
                if (composerStartRestartGroup.changedInstance(nl3Var)) {
                    i21 = 32;
                } else {
                    i21 = 16;
                }
                i14 |= i21;
            }
            i16 = i14;
            i17 = i4;
            if ((i17 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (composerStartRestartGroup.shouldExecute(z4, i17 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i24 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 == 0) {
                    }
                    if ((i3 & 64) != 0) {
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i18 = i17 & (-3670017);
                    } else {
                        i18 = i17;
                    }
                    if (i9 == 0) {
                    }
                    if (i11 != 0) {
                        f = Dp.m9042constructorimpl(0.0f);
                    } else {
                        f = f;
                    }
                    if (i13 != 0) {
                        modifier5 = modifier4;
                        flingBehavior4 = flingBehavior2;
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        i19 = i18;
                        z = z7;
                    } else {
                        modifier5 = modifier4;
                        i19 = i18;
                        flingBehavior4 = flingBehavior2;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        z = z7;
                        fM9042constructorimpl = f2;
                    }
                } else {
                    if (i24 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i5 != 0) {
                        paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                    } else {
                        paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                    }
                    if (i7 == 0) {
                    }
                    if ((i3 & 64) != 0) {
                        flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                        i18 = i17 & (-3670017);
                    } else {
                        i18 = i17;
                    }
                    if (i9 == 0) {
                    }
                    if (i11 != 0) {
                        f = Dp.m9042constructorimpl(0.0f);
                    } else {
                        f = f;
                    }
                    if (i13 != 0) {
                        modifier5 = modifier4;
                        flingBehavior4 = flingBehavior2;
                        fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        i19 = i18;
                        z = z7;
                    } else {
                        modifier5 = modifier4;
                        i19 = i18;
                        flingBehavior4 = flingBehavior2;
                        paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                        z = z7;
                        fM9042constructorimpl = f2;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1904835166, i19, i16, "androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGrid (LazyStaggeredGrid.kt:62)");
                }
                i20 = i19 & 14;
                ll3<LazyStaggeredGridItemProvider> ll3VarRememberStaggeredGridItemProviderLambda7 = LazyStaggeredGridItemProviderKt.rememberStaggeredGridItemProviderLambda(lazyStaggeredGridState, nl3Var, composerStartRestartGroup, (i16 & 112) | i20);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                int i2113 = i19 >> 6;
                int i2114 = i19 >> 12;
                int i2115 = i19;
                float f17 = f;
                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicyM2270rememberStaggeredGridMeasurePolicyqKj4JfE7 = LazyStaggeredGridMeasurePolicyKt.m2270rememberStaggeredGridMeasurePolicyqKj4JfE(lazyStaggeredGridState, ll3VarRememberStaggeredGridItemProviderLambda7, paddingValues4, z, orientation, f17, fM9042constructorimpl, (y22) objRememberedValue, lazyGridStaggeredGridSlotsProvider, (GraphicsContext) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalGraphicsContext()), composerStartRestartGroup, (i2113 & 7168) | (i2113 & 896) | i20 | ((i19 << 9) & 57344) | (i2114 & 458752) | ((i16 << 18) & 3670016) | ((i19 << 18) & 234881024));
                PaddingValues paddingValues11 = paddingValues4;
                float f18 = fM9042constructorimpl;
                LazyLayoutSemanticState lazyLayoutSemanticStateRememberLazyStaggeredGridSemanticState7 = LazyStaggeredGridSemanticsKt.rememberLazyStaggeredGridSemanticState(lazyStaggeredGridState, z, composerStartRestartGroup, (i2114 & 112) | i20);
                if (z8) {
                    composerStartRestartGroup.startReplaceGroup(-1834596342);
                    orientation2 = orientation;
                    modifierLazyLayoutBeyondBoundsModifier = LazyLayoutBeyondBoundsModifierLocalKt.lazyLayoutBeyondBoundsModifier(Modifier.Companion, LazyStaggeredGridBeyondBoundsModifierKt.rememberLazyStaggeredGridBeyondBoundsState(lazyStaggeredGridState, composerStartRestartGroup, i20), lazyStaggeredGridState.getBeyondBoundsInfo$foundation(), z, orientation2);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    orientation2 = orientation;
                    composerStartRestartGroup.startReplaceGroup(-1834291488);
                    composerStartRestartGroup.endReplaceGroup();
                    modifierLazyLayoutBeyondBoundsModifier = Modifier.Companion;
                }
                boolean z111 = z;
                boolean z112 = z8;
                FlingBehavior flingBehavior11 = flingBehavior4;
                LazyLayoutKt.LazyLayout(ll3VarRememberStaggeredGridItemProviderLambda7, ScrollableAreaKt.scrollableArea$default(LazyLayoutSemanticsKt.lazyLayoutSemantics(modifier5.then(lazyStaggeredGridState.getRemeasurementModifier$foundation()).then(lazyStaggeredGridState.getAwaitLayoutModifier$foundation()), ll3VarRememberStaggeredGridItemProviderLambda7, lazyLayoutSemanticStateRememberLazyStaggeredGridSemanticState7, orientation2, z112, z111, composerStartRestartGroup, ((i2115 << 6) & 7168) | ((i2115 >> 9) & 57344) | (i2115 & 458752)).then(modifierLazyLayoutBeyondBoundsModifier).then(lazyStaggeredGridState.getItemAnimator$foundation().getModifier()), lazyStaggeredGridState, orientation, overscrollEffect, z112, z111, flingBehavior11, lazyStaggeredGridState.getMutableInteractionSource$foundation(), null, 128, null), lazyStaggeredGridState.getPrefetchState$foundation(), lazyLayoutMeasurePolicyM2270rememberStaggeredGridMeasurePolicyqKj4JfE7, composerStartRestartGroup, 0, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer2 = composerStartRestartGroup;
                z6 = z111;
                flingBehavior3 = flingBehavior11;
                modifier3 = modifier5;
                z5 = z112;
                paddingValues3 = paddingValues11;
                f4 = f17;
                f3 = f18;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                f3 = f2;
                composer2 = composerStartRestartGroup;
                flingBehavior3 = flingBehavior2;
                z5 = z3;
                modifier3 = modifier2;
                paddingValues3 = paddingValues2;
                z6 = z;
                f4 = f;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: io4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyStaggeredGridKt.LazyStaggeredGrid_w41Enmo$lambda$0(lazyStaggeredGridState, orientation, lazyGridStaggeredGridSlotsProvider, modifier3, paddingValues3, z6, flingBehavior3, z5, overscrollEffect, f4, f3, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 805306368;
        i13 = i3 & 1024;
        if (i13 != 0) {
            i14 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            if (composerStartRestartGroup.changed(f2)) {
                i15 = 4;
            } else {
                i15 = 2;
            }
            i14 = i2 | i15;
        } else {
            i14 = i2;
        }
        if ((i2 & 48) == 0) {
            if (composerStartRestartGroup.changedInstance(nl3Var)) {
                i21 = 32;
            } else {
                i21 = 16;
            }
            i14 |= i21;
        }
        i16 = i14;
        i17 = i4;
        if ((i17 & 306783379) == 306783378) {
            z4 = true;
        } else {
            z4 = true;
        }
        if (composerStartRestartGroup.shouldExecute(z4, i17 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i24 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i5 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i7 == 0) {
                }
                if ((i3 & 64) != 0) {
                    flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i18 = i17 & (-3670017);
                } else {
                    i18 = i17;
                }
                if (i9 == 0) {
                }
                if (i11 != 0) {
                    f = Dp.m9042constructorimpl(0.0f);
                } else {
                    f = f;
                }
                if (i13 != 0) {
                    modifier5 = modifier4;
                    flingBehavior4 = flingBehavior2;
                    fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    i19 = i18;
                    z = z7;
                } else {
                    modifier5 = modifier4;
                    i19 = i18;
                    flingBehavior4 = flingBehavior2;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    z = z7;
                    fM9042constructorimpl = f2;
                }
            } else {
                if (i24 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i5 != 0) {
                    paddingValuesM2026PaddingValues0680j_4 = PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f));
                } else {
                    paddingValuesM2026PaddingValues0680j_4 = paddingValues2;
                }
                if (i7 == 0) {
                }
                if ((i3 & 64) != 0) {
                    flingBehavior2 = ScrollableDefaults.INSTANCE.flingBehavior(composerStartRestartGroup, 6);
                    i18 = i17 & (-3670017);
                } else {
                    i18 = i17;
                }
                if (i9 == 0) {
                }
                if (i11 != 0) {
                    f = Dp.m9042constructorimpl(0.0f);
                } else {
                    f = f;
                }
                if (i13 != 0) {
                    modifier5 = modifier4;
                    flingBehavior4 = flingBehavior2;
                    fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    i19 = i18;
                    z = z7;
                } else {
                    modifier5 = modifier4;
                    i19 = i18;
                    flingBehavior4 = flingBehavior2;
                    paddingValues4 = paddingValuesM2026PaddingValues0680j_4;
                    z = z7;
                    fM9042constructorimpl = f2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1904835166, i19, i16, "androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGrid (LazyStaggeredGrid.kt:62)");
            }
            i20 = i19 & 14;
            ll3<LazyStaggeredGridItemProvider> ll3VarRememberStaggeredGridItemProviderLambda8 = LazyStaggeredGridItemProviderKt.rememberStaggeredGridItemProviderLambda(lazyStaggeredGridState, nl3Var, composerStartRestartGroup, (i16 & 112) | i20);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            int i2116 = i19 >> 6;
            int i2117 = i19 >> 12;
            int i2118 = i19;
            float f19 = f;
            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicyM2270rememberStaggeredGridMeasurePolicyqKj4JfE8 = LazyStaggeredGridMeasurePolicyKt.m2270rememberStaggeredGridMeasurePolicyqKj4JfE(lazyStaggeredGridState, ll3VarRememberStaggeredGridItemProviderLambda8, paddingValues4, z, orientation, f19, fM9042constructorimpl, (y22) objRememberedValue, lazyGridStaggeredGridSlotsProvider, (GraphicsContext) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalGraphicsContext()), composerStartRestartGroup, (i2116 & 7168) | (i2116 & 896) | i20 | ((i19 << 9) & 57344) | (i2117 & 458752) | ((i16 << 18) & 3670016) | ((i19 << 18) & 234881024));
            PaddingValues paddingValues12 = paddingValues4;
            float f110 = fM9042constructorimpl;
            LazyLayoutSemanticState lazyLayoutSemanticStateRememberLazyStaggeredGridSemanticState8 = LazyStaggeredGridSemanticsKt.rememberLazyStaggeredGridSemanticState(lazyStaggeredGridState, z, composerStartRestartGroup, (i2117 & 112) | i20);
            if (z8) {
                composerStartRestartGroup.startReplaceGroup(-1834596342);
                orientation2 = orientation;
                modifierLazyLayoutBeyondBoundsModifier = LazyLayoutBeyondBoundsModifierLocalKt.lazyLayoutBeyondBoundsModifier(Modifier.Companion, LazyStaggeredGridBeyondBoundsModifierKt.rememberLazyStaggeredGridBeyondBoundsState(lazyStaggeredGridState, composerStartRestartGroup, i20), lazyStaggeredGridState.getBeyondBoundsInfo$foundation(), z, orientation2);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                orientation2 = orientation;
                composerStartRestartGroup.startReplaceGroup(-1834291488);
                composerStartRestartGroup.endReplaceGroup();
                modifierLazyLayoutBeyondBoundsModifier = Modifier.Companion;
            }
            boolean z113 = z;
            boolean z114 = z8;
            FlingBehavior flingBehavior12 = flingBehavior4;
            LazyLayoutKt.LazyLayout(ll3VarRememberStaggeredGridItemProviderLambda8, ScrollableAreaKt.scrollableArea$default(LazyLayoutSemanticsKt.lazyLayoutSemantics(modifier5.then(lazyStaggeredGridState.getRemeasurementModifier$foundation()).then(lazyStaggeredGridState.getAwaitLayoutModifier$foundation()), ll3VarRememberStaggeredGridItemProviderLambda8, lazyLayoutSemanticStateRememberLazyStaggeredGridSemanticState8, orientation2, z114, z113, composerStartRestartGroup, ((i2118 << 6) & 7168) | ((i2118 >> 9) & 57344) | (i2118 & 458752)).then(modifierLazyLayoutBeyondBoundsModifier).then(lazyStaggeredGridState.getItemAnimator$foundation().getModifier()), lazyStaggeredGridState, orientation, overscrollEffect, z114, z113, flingBehavior12, lazyStaggeredGridState.getMutableInteractionSource$foundation(), null, 128, null), lazyStaggeredGridState.getPrefetchState$foundation(), lazyLayoutMeasurePolicyM2270rememberStaggeredGridMeasurePolicyqKj4JfE8, composerStartRestartGroup, 0, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer2 = composerStartRestartGroup;
            z6 = z113;
            flingBehavior3 = flingBehavior12;
            modifier3 = modifier5;
            z5 = z114;
            paddingValues3 = paddingValues12;
            f4 = f19;
            f3 = f110;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            f3 = f2;
            composer2 = composerStartRestartGroup;
            flingBehavior3 = flingBehavior2;
            z5 = z3;
            modifier3 = modifier2;
            paddingValues3 = paddingValues2;
            z6 = z;
            f4 = f;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: io4
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return LazyStaggeredGridKt.LazyStaggeredGrid_w41Enmo$lambda$0(lazyStaggeredGridState, orientation, lazyGridStaggeredGridSlotsProvider, modifier3, paddingValues3, z6, flingBehavior3, z5, overscrollEffect, f4, f3, nl3Var, i, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 LazyStaggeredGrid_w41Enmo$lambda$0(LazyStaggeredGridState lazyStaggeredGridState, Orientation orientation, LazyGridStaggeredGridSlotsProvider lazyGridStaggeredGridSlotsProvider, Modifier modifier, PaddingValues paddingValues, boolean z, FlingBehavior flingBehavior, boolean z2, OverscrollEffect overscrollEffect, float f, float f2, nl3 nl3Var, int i, int i2, int i3, Composer composer, int i4) {
        m2259LazyStaggeredGridw41Enmo(lazyStaggeredGridState, orientation, lazyGridStaggeredGridSlotsProvider, modifier, paddingValues, z, flingBehavior, z2, overscrollEffect, f, f2, nl3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2), i3);
        return j59.a;
    }
}

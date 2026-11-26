package androidx.compose.foundation.pager;

import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.ScrollableAreaKt;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.BringIntoViewSpec_androidKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsModifierLocalKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsKt;
import androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap;
import androidx.compose.foundation.pager.LazyLayoutPagerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.a32;
import defpackage.af4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.eh4;
import defpackage.f57;
import defpackage.fm3;
import defpackage.gx2;
import defpackage.j59;
import defpackage.js3;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;
import defpackage.zr6;

/* JADX INFO: loaded from: classes.dex */
public final class LazyLayoutPagerKt {
    /* JADX WARN: Code duplicated, block: B:100:0x0135  */
    /* JADX WARN: Code duplicated, block: B:102:0x013a  */
    /* JADX WARN: Code duplicated, block: B:105:0x0140  */
    /* JADX WARN: Code duplicated, block: B:107:0x0148  */
    /* JADX WARN: Code duplicated, block: B:109:0x014d  */
    /* JADX WARN: Code duplicated, block: B:112:0x0153  */
    /* JADX WARN: Code duplicated, block: B:114:0x015b  */
    /* JADX WARN: Code duplicated, block: B:116:0x0160  */
    /* JADX WARN: Code duplicated, block: B:119:0x0168  */
    /* JADX WARN: Code duplicated, block: B:121:0x016e  */
    /* JADX WARN: Code duplicated, block: B:125:0x0178  */
    /* JADX WARN: Code duplicated, block: B:127:0x017e  */
    /* JADX WARN: Code duplicated, block: B:135:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:138:0x01a9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:139:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:140:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:142:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:143:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:146:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:149:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:152:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:153:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:158:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:161:0x022d  */
    /* JADX WARN: Code duplicated, block: B:164:0x023a  */
    /* JADX WARN: Code duplicated, block: B:165:0x023c  */
    /* JADX WARN: Code duplicated, block: B:172:0x024d  */
    /* JADX WARN: Code duplicated, block: B:175:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:176:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:179:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:180:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:183:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:184:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:191:0x02de  */
    /* JADX WARN: Code duplicated, block: B:194:0x0304  */
    /* JADX WARN: Code duplicated, block: B:196:0x030e  */
    /* JADX WARN: Code duplicated, block: B:197:0x0311  */
    /* JADX WARN: Code duplicated, block: B:202:0x032d  */
    /* JADX WARN: Code duplicated, block: B:205:0x033c  */
    /* JADX WARN: Code duplicated, block: B:207:0x0346  */
    /* JADX WARN: Code duplicated, block: B:208:0x0349  */
    /* JADX WARN: Code duplicated, block: B:213:0x035c  */
    /* JADX WARN: Code duplicated, block: B:216:0x036c  */
    /* JADX WARN: Code duplicated, block: B:217:0x0389  */
    /* JADX WARN: Code duplicated, block: B:220:0x03c9  */
    /* JADX WARN: Code duplicated, block: B:221:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:224:0x0409  */
    /* JADX WARN: Code duplicated, block: B:226:0x040f  */
    /* JADX WARN: Code duplicated, block: B:229:0x041d  */
    /* JADX WARN: Code duplicated, block: B:231:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:74:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:76:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:78:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:79:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:83:0x0108  */
    /* JADX WARN: Code duplicated, block: B:85:0x010e  */
    /* JADX WARN: Code duplicated, block: B:86:0x0111  */
    /* JADX WARN: Code duplicated, block: B:88:0x0116  */
    /* JADX WARN: Code duplicated, block: B:91:0x011c  */
    /* JADX WARN: Code duplicated, block: B:93:0x0122  */
    /* JADX WARN: Code duplicated, block: B:94:0x0125  */
    /* JADX WARN: Code duplicated, block: B:98:0x012d  */
    /* JADX WARN: Instruction removed from duplicated block: B:149:0x01cb, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: Pager-eLwUrMk, reason: not valid java name */
    public static final void m2292PagereLwUrMk(final Modifier modifier, PagerState pagerState, final PaddingValues paddingValues, final boolean z, final Orientation orientation, final TargetedFlingBehavior targetedFlingBehavior, final boolean z2, final OverscrollEffect overscrollEffect, int i, float f, final PageSize pageSize, NestedScrollConnection nestedScrollConnection, final nl3<? super Integer, ? extends Object> nl3Var, final Alignment.Horizontal horizontal, final Alignment.Vertical vertical, final SnapPosition snapPosition, final fm3<? super PagerScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var, Composer composer, final int i2, final int i3, final int i4) {
        int i5;
        int i6;
        float f2;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z3;
        final NestedScrollConnection nestedScrollConnection2;
        Composer composer2;
        final int i11;
        final float f3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i12;
        float fM9042constructorimpl;
        int i13;
        Object[] objArr;
        Object objRememberedValue;
        int i14;
        int i15;
        int i16;
        Object objRememberedValue2;
        Composer.Companion companion;
        boolean z4;
        Object objRememberedValue3;
        int i17;
        int i18;
        Orientation orientation2;
        boolean z5;
        int i19;
        int i20;
        int i21;
        Object objRememberedValue4;
        BringIntoViewSpec bringIntoViewSpec;
        LayoutDirection layoutDirection;
        int i22;
        int i23;
        Object objRememberedValue5;
        BringIntoViewSpec bringIntoViewSpec2;
        Modifier modifierLazyLayoutBeyondBoundsModifier;
        boolean z6;
        int i24;
        boolean z7;
        Object objRememberedValue6;
        int i25;
        int i26;
        final PagerState pagerState2 = pagerState;
        Composer composerStartRestartGroup = composer.startRestartGroup(-572816025);
        if ((i2 & 6) == 0) {
            i5 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i2;
        } else {
            i5 = i2;
        }
        if ((i2 & 48) == 0) {
            i5 |= composerStartRestartGroup.changed(pagerState2) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i5 |= composerStartRestartGroup.changed(paddingValues) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i5 |= composerStartRestartGroup.changed(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i5 |= composerStartRestartGroup.changed(orientation.ordinal()) ? 16384 : 8192;
        }
        if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i5 |= composerStartRestartGroup.changed(targetedFlingBehavior) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i5 |= composerStartRestartGroup.changed(z2) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i5 |= composerStartRestartGroup.changed(overscrollEffect) ? 8388608 : 4194304;
        }
        int i27 = i4 & 256;
        if (i27 == 0) {
            if ((i2 & 100663296) == 0) {
                i5 |= composerStartRestartGroup.changed(i) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
            }
            i6 = i4 & 512;
            if (i6 != 0) {
                i5 |= 805306368;
                f2 = f;
            } else {
                f2 = f;
                if ((i2 & 805306368) == 0) {
                    if (composerStartRestartGroup.changed(f2)) {
                        i7 = 536870912;
                    } else {
                        i7 = 268435456;
                    }
                    i5 |= i7;
                }
            }
            if ((i3 & 6) == 0) {
                if (composerStartRestartGroup.changed(pageSize)) {
                    i26 = 4;
                } else {
                    i26 = 2;
                }
                i8 = i3 | i26;
            } else {
                i8 = i3;
            }
            if ((i3 & 48) == 0) {
                if (composerStartRestartGroup.changedInstance(nestedScrollConnection)) {
                    i25 = 32;
                } else {
                    i25 = 16;
                }
                i8 |= i25;
            }
            if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
                i8 |= composerStartRestartGroup.changedInstance(nl3Var) ? 256 : 128;
            }
            if ((i3 & 3072) != 0) {
                i8 |= composerStartRestartGroup.changed(horizontal) ? 2048 : 1024;
            }
            if ((i3 & 24576) != 0) {
                i8 |= composerStartRestartGroup.changed(vertical) ? 16384 : 8192;
            }
            if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                i8 |= composerStartRestartGroup.changed(snapPosition) ? 131072 : 65536;
            }
            if ((i3 & 1572864) == 0) {
                i8 |= composerStartRestartGroup.changedInstance(fm3Var) ? 1048576 : 524288;
            }
            i9 = i8;
            i10 = 1;
            if ((i5 & 306783379) == 306783378 || (599187 & i9) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i5 & 1)) {
                if (i27 != 0) {
                    i12 = 0;
                } else {
                    i12 = i;
                }
                if (i6 != 0) {
                    fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
                } else {
                    fM9042constructorimpl = f2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-572816025, i5, i9, "androidx.compose.foundation.pager.Pager (LazyLayoutPager.kt:106)");
                }
                if (i12 < 0) {
                    InlineClassHelperKt.throwIllegalArgumentException("beyondViewportPageCount should be greater than or equal to 0, you selected " + i12);
                }
                i13 = i5 & 112;
                if (i13 == 32) {
                    objArr = true;
                } else {
                    objArr = false;
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objArr == true || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new js3(pagerState2, i10);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                int i28 = i5 >> 3;
                i14 = i28 & 14;
                int i29 = i9 >> 15;
                i15 = i5;
                i16 = i12;
                ll3<PagerLazyLayoutItemProvider> ll3VarRememberPagerItemProviderLambda = rememberPagerItemProviderLambda(pagerState, fm3Var, nl3Var, (ll3) objRememberedValue, composerStartRestartGroup, i14 | (i29 & 112) | (i9 & 896));
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                companion = Composer.Companion;
                if (objRememberedValue2 == companion.getEmpty()) {
                    objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                y22 y22Var = (y22) objRememberedValue2;
                if (i13 == 32) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (!z4 || objRememberedValue3 == companion.getEmpty()) {
                    i17 = 1;
                    objRememberedValue3 = new eh4(pagerState, i17);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    i17 = 1;
                }
                int i30 = i15 >> 9;
                int i31 = i9 << 15;
                i18 = i17;
                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicyM2303rememberPagerMeasurePolicy8u0NR3k = PagerMeasurePolicyKt.m2303rememberPagerMeasurePolicy8u0NR3k(ll3VarRememberPagerItemProviderLambda, pagerState, paddingValues, z, orientation, i16, fM9042constructorimpl, pageSize, horizontal, vertical, snapPosition, y22Var, (ll3) objRememberedValue3, composerStartRestartGroup, (i15 & 65520) | (i30 & 458752) | (i30 & 3670016) | ((i9 << 21) & 29360128) | (i31 & 234881024) | (i31 & 1879048192), i29 & 14);
                float f4 = fM9042constructorimpl;
                orientation2 = Orientation.Vertical;
                if (orientation == orientation2) {
                    z5 = i18;
                } else {
                    z5 = 0;
                }
                LazyLayoutSemanticState lazyLayoutSemanticStateRememberPagerSemanticState = PagerSemanticsKt.rememberPagerSemanticState(pagerState, z5, composerStartRestartGroup, i14);
                if (i13 == 32) {
                    i19 = i18;
                } else {
                    i19 = 0;
                }
                if ((i15 & 458752) == 131072) {
                    i20 = i18;
                } else {
                    i20 = 0;
                }
                i21 = i20 | i19;
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (i21 == 0 || objRememberedValue4 == companion.getEmpty()) {
                    objRememberedValue4 = new PagerWrapperFlingBehavior(targetedFlingBehavior, pagerState);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                PagerWrapperFlingBehavior pagerWrapperFlingBehavior = (PagerWrapperFlingBehavior) objRememberedValue4;
                bringIntoViewSpec = (BringIntoViewSpec) composerStartRestartGroup.consume(BringIntoViewSpec_androidKt.getLocalBringIntoViewSpec());
                layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
                if (ComposeFoundationFlags.isBringIntoViewRltBouncyBehaviorInPagerFixEnabled) {
                    composerStartRestartGroup.startReplaceGroup(-853904960);
                    if (i13 == 32) {
                        i24 = i18;
                    } else {
                        i24 = 0;
                    }
                    z7 = ((i24 | (composerStartRestartGroup.changed(bringIntoViewSpec) ? 1 : 0)) == true ? 1 : 0) | (composerStartRestartGroup.changed(layoutDirection.ordinal()) ? 1 : 0);
                    objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                    if (z7 == 0 || objRememberedValue6 == companion.getEmpty()) {
                        objRememberedValue6 = new PagerBringIntoViewSpec(pagerState, bringIntoViewSpec, layoutDirection);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                    }
                    bringIntoViewSpec2 = (PagerBringIntoViewSpec) objRememberedValue6;
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-853714372);
                    if (i13 == 32) {
                        i22 = i18;
                    } else {
                        i22 = 0;
                    }
                    i23 = i22 | (composerStartRestartGroup.changed(bringIntoViewSpec) ? 1 : 0);
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (i23 == 0 || objRememberedValue5 == companion.getEmpty()) {
                        objRememberedValue5 = new LegacyPagerBringIntoViewSpec(pagerState, bringIntoViewSpec);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    }
                    bringIntoViewSpec2 = (LegacyPagerBringIntoViewSpec) objRememberedValue5;
                    composerStartRestartGroup.endReplaceGroup();
                }
                BringIntoViewSpec bringIntoViewSpec3 = bringIntoViewSpec2;
                if (z2) {
                    composerStartRestartGroup.startReplaceGroup(-853484445);
                    modifierLazyLayoutBeyondBoundsModifier = LazyLayoutBeyondBoundsModifierLocalKt.lazyLayoutBeyondBoundsModifier(Modifier.Companion, PagerBeyondBoundsModifierKt.rememberPagerBeyondBoundsState(pagerState, i16, composerStartRestartGroup, i14 | ((i15 >> 21) & 112)), pagerState.getBeyondBoundsInfo$foundation(), z, orientation);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-853054661);
                    composerStartRestartGroup.endReplaceGroup();
                    modifierLazyLayoutBeyondBoundsModifier = Modifier.Companion;
                }
                Modifier modifierLazyLayoutSemantics = LazyLayoutSemanticsKt.lazyLayoutSemantics(modifier.then(pagerState.getRemeasurementModifier$foundation()).then(pagerState.getAwaitLayoutModifier$foundation()), ll3VarRememberPagerItemProviderLambda, lazyLayoutSemanticStateRememberPagerSemanticState, orientation, z2, z, composerStartRestartGroup, (i28 & 7168) | ((i15 >> 6) & 57344) | ((i15 << 6) & 458752));
                if (orientation == orientation2) {
                    z6 = i18;
                } else {
                    z6 = 0;
                }
                Modifier modifierScrollableArea = ScrollableAreaKt.scrollableArea(PagerKt.pagerSemantics(modifierLazyLayoutSemantics, pagerState, z6, y22Var, z2).then(modifierLazyLayoutBeyondBoundsModifier), pagerState, orientation, overscrollEffect, z2, z, pagerWrapperFlingBehavior, pagerState.getInternalInteractionSource$foundation(), bringIntoViewSpec3);
                pagerState2 = pagerState;
                nestedScrollConnection2 = nestedScrollConnection;
                LazyLayoutKt.LazyLayout(ll3VarRememberPagerItemProviderLambda, NestedScrollModifierKt.nestedScroll$default(dragDirectionDetector(modifierScrollableArea, pagerState2), nestedScrollConnection2, null, 2, null), pagerState2.getPrefetchState$foundation(), lazyLayoutMeasurePolicyM2303rememberPagerMeasurePolicy8u0NR3k, composerStartRestartGroup, 0, 0);
                composer2 = composerStartRestartGroup;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                f3 = f4;
                i11 = i16;
            } else {
                nestedScrollConnection2 = nestedScrollConnection;
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                i11 = i;
                f3 = f2;
            }
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: xm4
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return LazyLayoutPagerKt.Pager_eLwUrMk$lambda$6(modifier, pagerState2, paddingValues, z, orientation, targetedFlingBehavior, z2, overscrollEffect, i11, f3, pageSize, nestedScrollConnection2, nl3Var, horizontal, vertical, snapPosition, fm3Var, i2, i3, i4, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i5 |= 100663296;
        i6 = i4 & 512;
        if (i6 != 0) {
            i5 |= 805306368;
            f2 = f;
        } else {
            f2 = f;
            if ((i2 & 805306368) == 0) {
                if (composerStartRestartGroup.changed(f2)) {
                    i7 = 536870912;
                } else {
                    i7 = 268435456;
                }
                i5 |= i7;
            }
        }
        if ((i3 & 6) == 0) {
            if (composerStartRestartGroup.changed(pageSize)) {
                i26 = 4;
            } else {
                i26 = 2;
            }
            i8 = i3 | i26;
        } else {
            i8 = i3;
        }
        if ((i3 & 48) == 0) {
            if (composerStartRestartGroup.changedInstance(nestedScrollConnection)) {
                i25 = 32;
            } else {
                i25 = 16;
            }
            i8 |= i25;
        }
        if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) != 0) {
            i8 |= composerStartRestartGroup.changedInstance(nl3Var) ? 256 : 128;
        }
        if ((i3 & 3072) != 0) {
            i8 |= composerStartRestartGroup.changed(horizontal) ? 2048 : 1024;
        }
        if ((i3 & 24576) != 0) {
            i8 |= composerStartRestartGroup.changed(vertical) ? 16384 : 8192;
        }
        if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i8 |= composerStartRestartGroup.changed(snapPosition) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i8 |= composerStartRestartGroup.changedInstance(fm3Var) ? 1048576 : 524288;
        }
        i9 = i8;
        i10 = 1;
        if ((i5 & 306783379) == 306783378) {
            z3 = true;
        } else {
            z3 = true;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i5 & 1)) {
            if (i27 != 0) {
                i12 = 0;
            } else {
                i12 = i;
            }
            if (i6 != 0) {
                fM9042constructorimpl = Dp.m9042constructorimpl(0.0f);
            } else {
                fM9042constructorimpl = f2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-572816025, i5, i9, "androidx.compose.foundation.pager.Pager (LazyLayoutPager.kt:106)");
            }
            if (i12 < 0) {
                InlineClassHelperKt.throwIllegalArgumentException("beyondViewportPageCount should be greater than or equal to 0, you selected " + i12);
            }
            i13 = i5 & 112;
            if (i13 == 32) {
                objArr = true;
            } else {
                objArr = false;
            }
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objArr == true) {
                objRememberedValue = new js3(pagerState2, i10);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                objRememberedValue = new js3(pagerState2, i10);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            int i210 = i5 >> 3;
            i14 = i210 & 14;
            int i211 = i9 >> 15;
            i15 = i5;
            i16 = i12;
            ll3<PagerLazyLayoutItemProvider> ll3VarRememberPagerItemProviderLambda2 = rememberPagerItemProviderLambda(pagerState, fm3Var, nl3Var, (ll3) objRememberedValue, composerStartRestartGroup, i14 | (i211 & 112) | (i9 & 896));
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            companion = Composer.Companion;
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            y22 y22Var2 = (y22) objRememberedValue2;
            if (i13 == 32) {
                z4 = true;
            } else {
                z4 = false;
            }
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (z4) {
                i17 = 1;
                objRememberedValue3 = new eh4(pagerState, i17);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                i17 = 1;
                objRememberedValue3 = new eh4(pagerState, i17);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            int i32 = i15 >> 9;
            int i33 = i9 << 15;
            i18 = i17;
            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicyM2303rememberPagerMeasurePolicy8u0NR3k2 = PagerMeasurePolicyKt.m2303rememberPagerMeasurePolicy8u0NR3k(ll3VarRememberPagerItemProviderLambda2, pagerState, paddingValues, z, orientation, i16, fM9042constructorimpl, pageSize, horizontal, vertical, snapPosition, y22Var2, (ll3) objRememberedValue3, composerStartRestartGroup, (i15 & 65520) | (i32 & 458752) | (i32 & 3670016) | ((i9 << 21) & 29360128) | (i33 & 234881024) | (i33 & 1879048192), i211 & 14);
            float f5 = fM9042constructorimpl;
            orientation2 = Orientation.Vertical;
            if (orientation == orientation2) {
                z5 = i18;
            } else {
                z5 = 0;
            }
            LazyLayoutSemanticState lazyLayoutSemanticStateRememberPagerSemanticState2 = PagerSemanticsKt.rememberPagerSemanticState(pagerState, z5, composerStartRestartGroup, i14);
            if (i13 == 32) {
                i19 = i18;
            } else {
                i19 = 0;
            }
            if ((i15 & 458752) == 131072) {
                i20 = i18;
            } else {
                i20 = 0;
            }
            i21 = i20 | i19;
            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (i21 == 0) {
                objRememberedValue4 = new PagerWrapperFlingBehavior(targetedFlingBehavior, pagerState);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            } else {
                objRememberedValue4 = new PagerWrapperFlingBehavior(targetedFlingBehavior, pagerState);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            PagerWrapperFlingBehavior pagerWrapperFlingBehavior2 = (PagerWrapperFlingBehavior) objRememberedValue4;
            bringIntoViewSpec = (BringIntoViewSpec) composerStartRestartGroup.consume(BringIntoViewSpec_androidKt.getLocalBringIntoViewSpec());
            layoutDirection = (LayoutDirection) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalLayoutDirection());
            if (ComposeFoundationFlags.isBringIntoViewRltBouncyBehaviorInPagerFixEnabled) {
                composerStartRestartGroup.startReplaceGroup(-853904960);
                if (i13 == 32) {
                    i24 = i18;
                } else {
                    i24 = 0;
                }
                z7 = ((i24 | (composerStartRestartGroup.changed(bringIntoViewSpec) ? 1 : 0)) == true ? 1 : 0) | (composerStartRestartGroup.changed(layoutDirection.ordinal()) ? 1 : 0);
                objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                if (z7 == 0) {
                    objRememberedValue6 = new PagerBringIntoViewSpec(pagerState, bringIntoViewSpec, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                } else {
                    objRememberedValue6 = new PagerBringIntoViewSpec(pagerState, bringIntoViewSpec, layoutDirection);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
                }
                bringIntoViewSpec2 = (PagerBringIntoViewSpec) objRememberedValue6;
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-853714372);
                if (i13 == 32) {
                    i22 = i18;
                } else {
                    i22 = 0;
                }
                i23 = i22 | (composerStartRestartGroup.changed(bringIntoViewSpec) ? 1 : 0);
                objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (i23 == 0) {
                    objRememberedValue5 = new LegacyPagerBringIntoViewSpec(pagerState, bringIntoViewSpec);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                } else {
                    objRememberedValue5 = new LegacyPagerBringIntoViewSpec(pagerState, bringIntoViewSpec);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                }
                bringIntoViewSpec2 = (LegacyPagerBringIntoViewSpec) objRememberedValue5;
                composerStartRestartGroup.endReplaceGroup();
            }
            BringIntoViewSpec bringIntoViewSpec4 = bringIntoViewSpec2;
            if (z2) {
                composerStartRestartGroup.startReplaceGroup(-853484445);
                modifierLazyLayoutBeyondBoundsModifier = LazyLayoutBeyondBoundsModifierLocalKt.lazyLayoutBeyondBoundsModifier(Modifier.Companion, PagerBeyondBoundsModifierKt.rememberPagerBeyondBoundsState(pagerState, i16, composerStartRestartGroup, i14 | ((i15 >> 21) & 112)), pagerState.getBeyondBoundsInfo$foundation(), z, orientation);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-853054661);
                composerStartRestartGroup.endReplaceGroup();
                modifierLazyLayoutBeyondBoundsModifier = Modifier.Companion;
            }
            Modifier modifierLazyLayoutSemantics2 = LazyLayoutSemanticsKt.lazyLayoutSemantics(modifier.then(pagerState.getRemeasurementModifier$foundation()).then(pagerState.getAwaitLayoutModifier$foundation()), ll3VarRememberPagerItemProviderLambda2, lazyLayoutSemanticStateRememberPagerSemanticState2, orientation, z2, z, composerStartRestartGroup, (i210 & 7168) | ((i15 >> 6) & 57344) | ((i15 << 6) & 458752));
            if (orientation == orientation2) {
                z6 = i18;
            } else {
                z6 = 0;
            }
            Modifier modifierScrollableArea2 = ScrollableAreaKt.scrollableArea(PagerKt.pagerSemantics(modifierLazyLayoutSemantics2, pagerState, z6, y22Var2, z2).then(modifierLazyLayoutBeyondBoundsModifier), pagerState, orientation, overscrollEffect, z2, z, pagerWrapperFlingBehavior2, pagerState.getInternalInteractionSource$foundation(), bringIntoViewSpec4);
            pagerState2 = pagerState;
            nestedScrollConnection2 = nestedScrollConnection;
            LazyLayoutKt.LazyLayout(ll3VarRememberPagerItemProviderLambda2, NestedScrollModifierKt.nestedScroll$default(dragDirectionDetector(modifierScrollableArea2, pagerState2), nestedScrollConnection2, null, 2, null), pagerState2.getPrefetchState$foundation(), lazyLayoutMeasurePolicyM2303rememberPagerMeasurePolicy8u0NR3k2, composerStartRestartGroup, 0, 0);
            composer2 = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            f3 = f5;
            i11 = i16;
        } else {
            nestedScrollConnection2 = nestedScrollConnection;
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            i11 = i;
            f3 = f2;
        }
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: xm4
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return LazyLayoutPagerKt.Pager_eLwUrMk$lambda$6(modifier, pagerState2, paddingValues, z, orientation, targetedFlingBehavior, z2, overscrollEffect, i11, f3, pageSize, nestedScrollConnection2, nl3Var, horizontal, vertical, snapPosition, fm3Var, i2, i3, i4, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Pager_eLwUrMk$lambda$6(Modifier modifier, PagerState pagerState, PaddingValues paddingValues, boolean z, Orientation orientation, TargetedFlingBehavior targetedFlingBehavior, boolean z2, OverscrollEffect overscrollEffect, int i, float f, PageSize pageSize, NestedScrollConnection nestedScrollConnection, nl3 nl3Var, Alignment.Horizontal horizontal, Alignment.Vertical vertical, SnapPosition snapPosition, fm3 fm3Var, int i2, int i3, int i4, Composer composer, int i5) {
        m2292PagereLwUrMk(modifier, pagerState, paddingValues, z, orientation, targetedFlingBehavior, z2, overscrollEffect, i, f, pageSize, nestedScrollConnection, nl3Var, horizontal, vertical, snapPosition, fm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3), i4);
        return j59.a;
    }

    private static final Modifier dragDirectionDetector(Modifier modifier, final PagerState pagerState) {
        return modifier.then(SuspendingPointerInputFilterKt.pointerInput(Modifier.Companion, pagerState, new PointerInputEventHandler() { // from class: androidx.compose.foundation.pager.LazyLayoutPagerKt.dragDirectionDetector.1

            /* JADX INFO: renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1, reason: invalid class name and collision with other inner class name */
            @bd2(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1", f = "LazyLayoutPager.kt", l = {296}, m = "invokeSuspend", v = 1)
            public static final class C00371 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                final /* synthetic */ PagerState $state;
                final /* synthetic */ PointerInputScope $this_pointerInput;
                int label;

                /* JADX INFO: renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1, reason: invalid class name and collision with other inner class name */
                @bd2(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1", f = "LazyLayoutPager.kt", l = {298, 302}, m = "invokeSuspend", v = 1)
                public static final class C00381 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
                    final /* synthetic */ PagerState $state;
                    private /* synthetic */ Object L$0;
                    Object L$1;
                    Object L$2;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C00381(PagerState pagerState, e02<? super C00381> e02Var) {
                        super(2, e02Var);
                        this.$state = pagerState;
                    }

                    @Override // defpackage.cd0
                    public final e02<j59> create(Object obj, e02<?> e02Var) {
                        C00381 c00381 = new C00381(this.$state, e02Var);
                        c00381.L$0 = obj;
                        return c00381;
                    }

                    @Override // defpackage.bm3
                    public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
                        return ((C00381) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
                    }

                    /* JADX WARN: Code duplicated, block: B:21:0x0076  */
                    /* JADX WARN: Code duplicated, block: B:24:0x0085 A[LOOP:0: B:20:0x0074->B:24:0x0085, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:28:0x0088 A[SYNTHETIC] */
                    /* JADX WARN: Code duplicated, block: B:29:0x0082 A[SYNTHETIC] */
                    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0062 -> B:19:0x0066). Please report as a decompilation issue!!! */
                    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
                        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                        */
                    @Override // defpackage.cd0
                    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
                        /*
                            r11 = this;
                            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                            int r1 = r11.label
                            r2 = 0
                            r3 = 2
                            r4 = 0
                            r5 = 1
                            if (r1 == 0) goto L2c
                            if (r1 == r5) goto L24
                            if (r1 != r3) goto L1e
                            java.lang.Object r1 = r11.L$2
                            androidx.compose.ui.input.pointer.PointerInputChange r1 = (androidx.compose.ui.input.pointer.PointerInputChange) r1
                            java.lang.Object r2 = r11.L$1
                            androidx.compose.ui.input.pointer.PointerInputChange r2 = (androidx.compose.ui.input.pointer.PointerInputChange) r2
                            java.lang.Object r5 = r11.L$0
                            androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
                            defpackage.r57.b(r12)
                            goto L66
                        L1e:
                            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                            defpackage.ah.f(r11)
                            return r2
                        L24:
                            java.lang.Object r1 = r11.L$0
                            androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                            defpackage.r57.b(r12)
                            goto L41
                        L2c:
                            defpackage.r57.b(r12)
                            java.lang.Object r12 = r11.L$0
                            r1 = r12
                            androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                            androidx.compose.ui.input.pointer.PointerEventPass r12 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                            r11.L$0 = r1
                            r11.label = r5
                            java.lang.Object r12 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown(r1, r4, r12, r11)
                            if (r12 != r0) goto L41
                            goto L61
                        L41:
                            androidx.compose.ui.input.pointer.PointerInputChange r12 = (androidx.compose.ui.input.pointer.PointerInputChange) r12
                            androidx.compose.foundation.pager.PagerState r5 = r11.$state
                            androidx.compose.ui.geometry.Offset$Companion r6 = androidx.compose.ui.geometry.Offset.Companion
                            long r6 = r6.m6003getZeroF1C5BW0()
                            r5.m2310setUpDownDifferencek4lQ0M$foundation(r6)
                            r5 = r1
                        L4f:
                            if (r2 != 0) goto L96
                            androidx.compose.ui.input.pointer.PointerEventPass r1 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                            r11.L$0 = r5
                            r11.L$1 = r12
                            r11.L$2 = r2
                            r11.label = r3
                            java.lang.Object r1 = r5.awaitPointerEvent(r1, r11)
                            if (r1 != r0) goto L62
                        L61:
                            return r0
                        L62:
                            r10 = r2
                            r2 = r12
                            r12 = r1
                            r1 = r10
                        L66:
                            androidx.compose.ui.input.pointer.PointerEvent r12 = (androidx.compose.ui.input.pointer.PointerEvent) r12
                            java.util.List r6 = r12.getChanges()
                            r7 = r6
                            java.util.Collection r7 = (java.util.Collection) r7
                            int r7 = r7.size()
                            r8 = r4
                        L74:
                            if (r8 >= r7) goto L88
                            java.lang.Object r9 = r6.get(r8)
                            androidx.compose.ui.input.pointer.PointerInputChange r9 = (androidx.compose.ui.input.pointer.PointerInputChange) r9
                            boolean r9 = androidx.compose.ui.input.pointer.PointerEventKt.changedToUp(r9)
                            if (r9 != 0) goto L85
                            r12 = r2
                            r2 = r1
                            goto L4f
                        L85:
                            int r8 = r8 + 1
                            goto L74
                        L88:
                            java.util.List r12 = r12.getChanges()
                            java.lang.Object r12 = r12.get(r4)
                            androidx.compose.ui.input.pointer.PointerInputChange r12 = (androidx.compose.ui.input.pointer.PointerInputChange) r12
                            r10 = r2
                            r2 = r12
                            r12 = r10
                            goto L4f
                        L96:
                            androidx.compose.foundation.pager.PagerState r11 = r11.$state
                            long r0 = r2.m7569getPositionF1C5BW0()
                            long r2 = r12.m7569getPositionF1C5BW0()
                            long r0 = androidx.compose.ui.geometry.Offset.m5991minusMKHz9U(r0, r2)
                            r11.m2310setUpDownDifferencek4lQ0M$foundation(r0)
                            j59 r11 = defpackage.j59.a
                            return r11
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.LazyLayoutPagerKt.AnonymousClass1.C00371.C00381.invokeSuspend(java.lang.Object):java.lang.Object");
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C00371(PointerInputScope pointerInputScope, PagerState pagerState, e02<? super C00371> e02Var) {
                    super(2, e02Var);
                    this.$this_pointerInput = pointerInputScope;
                    this.$state = pagerState;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    return new C00371(this.$this_pointerInput, this.$state, e02Var);
                }

                @Override // defpackage.bm3
                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                    return ((C00371) create(y22Var, e02Var)).invokeSuspend(j59.a);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    int i = this.label;
                    if (i == 0) {
                        r57.b(obj);
                        PointerInputScope pointerInputScope = this.$this_pointerInput;
                        C00381 c00381 = new C00381(this.$state, null);
                        this.label = 1;
                        if (ForEachGestureKt.awaitEachGesture(pointerInputScope, c00381, this) == a32Var) {
                            return a32Var;
                        }
                    } else {
                        if (i != 1) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        r57.b(obj);
                    }
                    return j59.a;
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                Object objC = z22.c(new C00371(pointerInputScope, pagerState, null), e02Var);
                return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
            }
        }));
    }

    private static final ll3<PagerLazyLayoutItemProvider> rememberPagerItemProviderLambda(final PagerState pagerState, fm3<? super PagerScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var, nl3<? super Integer, ? extends Object> nl3Var, final ll3<Integer> ll3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1052364153, i, -1, "androidx.compose.foundation.pager.rememberPagerItemProviderLambda (LazyLayoutPager.kt:268)");
        }
        final State stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(fm3Var, composer, (i >> 3) & 14);
        final State stateRememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(nl3Var, composer, (i >> 6) & 14);
        boolean zChanged = ((((i & 14) ^ 6) > 4 && composer.changed(pagerState)) || (i & 6) == 4) | composer.changed(stateRememberUpdatedState) | composer.changed(stateRememberUpdatedState2) | ((((i & 7168) ^ 3072) > 2048 && composer.changed(ll3Var)) || (i & 3072) == 2048);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            final State stateDerivedStateOf = SnapshotStateKt.derivedStateOf(SnapshotStateKt.referentialEqualityPolicy(), new ll3() { // from class: ym4
                @Override // defpackage.ll3
                public final Object invoke() {
                    return LazyLayoutPagerKt.rememberPagerItemProviderLambda$lambda$0$0(stateRememberUpdatedState, stateRememberUpdatedState2, ll3Var);
                }
            });
            final State stateDerivedStateOf2 = SnapshotStateKt.derivedStateOf(SnapshotStateKt.referentialEqualityPolicy(), new ll3() { // from class: zm4
                @Override // defpackage.ll3
                public final Object invoke() {
                    return LazyLayoutPagerKt.rememberPagerItemProviderLambda$lambda$0$1(stateDerivedStateOf, pagerState);
                }
            });
            objRememberedValue = new zr6(stateDerivedStateOf2) { // from class: androidx.compose.foundation.pager.LazyLayoutPagerKt$rememberPagerItemProviderLambda$1$1
                @Override // defpackage.zr6, defpackage.af4
                public Object get() {
                    return ((State) this.receiver).getValue();
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        af4 af4Var = (af4) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return af4Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PagerLayoutIntervalContent rememberPagerItemProviderLambda$lambda$0$0(State state, State state2, ll3 ll3Var) {
        return new PagerLayoutIntervalContent((fm3) state.getValue(), (nl3) state2.getValue(), ((Number) ll3Var.invoke()).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PagerLazyLayoutItemProvider rememberPagerItemProviderLambda$lambda$0$1(State state, PagerState pagerState) {
        PagerLayoutIntervalContent pagerLayoutIntervalContent = (PagerLayoutIntervalContent) state.getValue();
        return new PagerLazyLayoutItemProvider(pagerState, pagerLayoutIntervalContent, new NearestRangeKeyIndexMap(pagerState.getNearestRange$foundation(), pagerLayoutIntervalContent));
    }
}

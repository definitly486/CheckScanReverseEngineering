package androidx.compose.material3;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.material3.NavigationItemKt;
import androidx.compose.material3.internal.MappedInteractionSource;
import androidx.compose.material3.internal.ProvideContentColorTextStyleKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.muxer.MuxerUtil;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.aa4;
import defpackage.al5;
import defpackage.bm3;
import defpackage.cc;
import defpackage.cl5;
import defpackage.dc;
import defpackage.eh4;
import defpackage.j59;
import defpackage.js2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.rk5;
import defpackage.tg;
import defpackage.ug;
import defpackage.uk5;
import defpackage.w65;
import defpackage.wk5;

/* JADX INFO: loaded from: classes2.dex */
public final class NavigationItemKt {
    private static final String IconLayoutIdTag = "icon";
    private static final String IndicatorLayoutIdTag = "indicator";
    private static final String IndicatorRippleLayoutIdTag = "indicatorRipple";
    private static final float IndicatorVerticalOffset = Dp.m9042constructorimpl(12.0f);
    private static final String LabelLayoutIdTag = "label";

    /* JADX WARN: Code duplicated, block: B:184:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:186:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:189:0x0316  */
    /* JADX WARN: Code duplicated, block: B:192:0x0328  */
    /* JADX WARN: Code duplicated, block: B:193:0x034e  */
    /* JADX WARN: Code duplicated, block: B:195:0x0360  */
    /* JADX WARN: Code duplicated, block: B:197:0x03a1  */
    /* JADX WARN: Code duplicated, block: B:198:0x03a4  */
    /* JADX WARN: Code duplicated, block: B:203:0x03b8  */
    /* JADX WARN: Code duplicated, block: B:205:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:207:0x03d4  */
    /* JADX WARN: Code duplicated, block: B:209:0x03d8  */
    /* JADX WARN: Code duplicated, block: B:214:0x03ee  */
    /* JADX WARN: Code duplicated, block: B:219:0x040a  */
    /* JADX WARN: Code duplicated, block: B:222:0x046a  */
    /* JADX INFO: renamed from: AnimatedNavigationItem-DQd_Gtc, reason: not valid java name */
    public static final void m3684AnimatedNavigationItemDQd_Gtc(final boolean z, final ll3<j59> ll3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var, final Shape shape, final float f, final TextStyle textStyle, final TextStyle textStyle2, final float f2, final float f3, final float f4, final float f5, final float f6, final float f7, final float f8, final float f9, final NavigationItemColors navigationItemColors, final Modifier modifier, final boolean z2, final bm3<? super Composer, ? super Integer, j59> bm3Var2, final int i, MutableInteractionSource mutableInteractionSource, Composer composer, final int i2, final int i3, final int i4) {
        int i5;
        int i6;
        int i7;
        MutableInteractionSource mutableInteractionSource2;
        Composer composer2;
        int i8;
        ComposeUiNode.Companion companion;
        final boolean zM3678equalsimpl0;
        State<Float> stateAnimateIndicatorProgressAsState;
        float f10;
        final State<Float> stateAnimateFloatAsState;
        Object objRememberedValue;
        final State state;
        State<Float> state2;
        ComposableLambda composableLambda;
        MappedInteractionSource mappedInteractionSource;
        InteractionSource interactionSource;
        boolean zChanged;
        Object objRememberedValue2;
        boolean zChanged2;
        Object objRememberedValue3;
        int i9;
        long jM5979constructorimpl;
        boolean z3;
        boolean zChanged3;
        Object objRememberedValue4;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1114086313);
        if ((i2 & 6) == 0) {
            i5 = (composerStartRestartGroup.changed(z) ? 4 : 2) | i2;
        } else {
            i5 = i2;
        }
        if ((i2 & 48) == 0) {
            i5 |= composerStartRestartGroup.changedInstance(ll3Var) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i5 |= composerStartRestartGroup.changedInstance(bm3Var) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i5 |= composerStartRestartGroup.changed(shape) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i5 |= composerStartRestartGroup.changed(f) ? 16384 : 8192;
        }
        if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i5 |= composerStartRestartGroup.changed(textStyle) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i5 |= composerStartRestartGroup.changed(textStyle2) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i5 |= composerStartRestartGroup.changed(f2) ? 8388608 : 4194304;
        }
        int i10 = i2 & 100663296;
        int i11 = GroupFlagsKt.HasAuxSlotFlag;
        if (i10 == 0) {
            i5 |= composerStartRestartGroup.changed(f3) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i5 |= composerStartRestartGroup.changed(f4) ? 536870912 : 268435456;
        }
        if ((i3 & 6) == 0) {
            i6 = i3 | (composerStartRestartGroup.changed(f5) ? 4 : 2);
        } else {
            i6 = i3;
        }
        if ((i3 & 48) == 0) {
            i6 |= composerStartRestartGroup.changed(f6) ? 32 : 16;
        }
        if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i6 |= composerStartRestartGroup.changed(f7) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i6 |= composerStartRestartGroup.changed(f8) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i6 |= composerStartRestartGroup.changed(f9) ? 16384 : 8192;
        }
        if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i6 |= composerStartRestartGroup.changed(navigationItemColors) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i6 |= composerStartRestartGroup.changed(modifier) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i6 |= composerStartRestartGroup.changed(z2) ? 8388608 : 4194304;
        }
        if ((i3 & 100663296) == 0) {
            if (composerStartRestartGroup.changedInstance(bm3Var2)) {
                i11 = 67108864;
            }
            i6 |= i11;
        }
        if ((i3 & 805306368) == 0) {
            i6 |= composerStartRestartGroup.changed(i) ? 536870912 : 268435456;
        }
        int i12 = i6;
        if ((i4 & 6) == 0) {
            i7 = i4 | (composerStartRestartGroup.changed(mutableInteractionSource) ? 4 : 2);
        } else {
            i7 = i4;
        }
        if (composerStartRestartGroup.shouldExecute(((i5 & 306783379) == 306783378 && (i12 & 306783379) == 306783378 && (i7 & 3) == 2) ? false : true, i5 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1114086313, i5, i12, "androidx.compose.material3.AnimatedNavigationItem (NavigationItem.kt:343)");
            }
            final long jM3673iconColorWaAFU9c = navigationItemColors.m3673iconColorWaAFU9c(z, z2);
            ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(851124593, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationItemKt$AnimatedNavigationItem$styledIcon$1
                public final void invoke(Composer composer3, int i13) {
                    if (!composer3.shouldExecute((i13 & 3) != 2, i13 & 1)) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(851124593, i13, -1, "androidx.compose.material3.AnimatedNavigationItem.<anonymous> (NavigationItem.kt:346)");
                    }
                    CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3673iconColorWaAFU9c)), bm3Var, composer3, ProvidedValue.$stable);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54);
            Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion2 = Composer.Companion;
            if (objRememberedValue5 == companion2.getEmpty()) {
                objRememberedValue5 = SnapshotIntStateKt.mutableIntStateOf(0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            MutableIntState mutableIntState = (MutableIntState) objRememberedValue5;
            int i13 = i5;
            mutableInteractionSource2 = mutableInteractionSource;
            Modifier modifierM2083defaultMinSizeVpY3zN4 = SizeKt.m2083defaultMinSizeVpY3zN4(SelectableKt.m2312selectableO2vRcR0(modifier, z, mutableInteractionSource, null, z2, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var), ((Dp) composerStartRestartGroup.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl(), ((Dp) composerStartRestartGroup.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl());
            Object objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue6 == companion2.getEmpty()) {
                i8 = 0;
                objRememberedValue6 = new uk5(mutableIntState, i8);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            } else {
                i8 = 0;
            }
            Modifier modifierOnSizeChanged = OnRemeasuredModifierKt.onSizeChanged(modifierM2083defaultMinSizeVpY3zN4, (nl3) objRememberedValue6);
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i8);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged);
            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion3.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting()) {
                companion = companion3;
            } else {
                companion = companion3;
                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(i, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
                stateAnimateIndicatorProgressAsState = animateIndicatorProgressAsState(z, composerStartRestartGroup, i13 & 14);
                if (zM3678equalsimpl0) {
                    f10 = 0.0f;
                } else {
                    f10 = 1.0f;
                }
                stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f10, MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue == companion2.getEmpty()) {
                    objRememberedValue = SnapshotStateKt.derivedStateOf(new ll3() { // from class: vk5
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return NavigationItemKt.AnimatedNavigationItem_DQd_Gtc$lambda$26$lambda$18$lambda$17(zM3678equalsimpl0, textStyle, textStyle2, stateAnimateFloatAsState);
                        }
                    });
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                state = (State) objRememberedValue;
                if (bm3Var2 != null) {
                    composerStartRestartGroup.startReplaceGroup(680212713);
                    state2 = stateAnimateIndicatorProgressAsState;
                    composer2 = composerStartRestartGroup;
                    ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(22475789, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationItemKt$AnimatedNavigationItem$2$styledLabel$1
                        public final void invoke(Composer composer3, int i14) {
                            if (!composer3.shouldExecute((i14 & 3) != 2, i14 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(22475789, i14, -1, "androidx.compose.material3.AnimatedNavigationItem.<anonymous>.<anonymous> (NavigationItem.kt:387)");
                            }
                            NavigationItemKt.StyledLabel(z, NavigationItemKt.AnimatedNavigationItem_DQd_Gtc$lambda$26$lambda$19(state), navigationItemColors, z2, bm3Var2, composer3, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composer2, 54);
                    composer2.endReplaceGroup();
                    composableLambda = composableLambdaRememberComposableLambda2;
                } else {
                    state2 = stateAnimateIndicatorProgressAsState;
                    composer2 = composerStartRestartGroup;
                    composer2.startReplaceGroup(680534989);
                    composer2.endReplaceGroup();
                    composableLambda = null;
                }
                if (zM3678equalsimpl0) {
                    composer2.startReplaceGroup(680694081);
                    Density density = (Density) composer2.consume(CompositionLocalsKt.getLocalDensity());
                    jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState.getIntValue() - density.mo1428roundToPx0680j_4(f)) / 2.0f)) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                    j59 j59Var = j59.a;
                    if ((i7 & 14) == 4) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    zChanged3 = z3 | composer2.changed(jM5979constructorimpl);
                    objRememberedValue4 = composer2.rememberedValue();
                    if (zChanged3 || objRememberedValue4 == companion2.getEmpty()) {
                        objRememberedValue4 = new MappedInteractionSource(mutableInteractionSource2, jM5979constructorimpl, null);
                        composer2.updateRememberedValue(objRememberedValue4);
                    }
                    composer2.endReplaceGroup();
                    mappedInteractionSource = (MappedInteractionSource) objRememberedValue4;
                } else {
                    mappedInteractionSource = null;
                    composer2.startReplaceGroup(681416753);
                    composer2.endReplaceGroup();
                }
                if (mappedInteractionSource != null) {
                    interactionSource = mappedInteractionSource;
                } else {
                    interactionSource = mutableInteractionSource2;
                }
                long jM3669getSelectedIndicatorColor0d7_KjU = navigationItemColors.m3669getSelectedIndicatorColor0d7_KjU();
                zChanged = composer2.changed(state2);
                objRememberedValue2 = composer2.rememberedValue();
                if (zChanged || objRememberedValue2 == companion2.getEmpty()) {
                    objRememberedValue2 = new wk5(state2, 0);
                    composer2.updateRememberedValue(objRememberedValue2);
                }
                ll3 ll3Var2 = (ll3) objRememberedValue2;
                zChanged2 = composer2.changed(stateAnimateFloatAsState);
                objRememberedValue3 = composer2.rememberedValue();
                i9 = 3;
                if (zChanged2 || objRememberedValue3 == companion2.getEmpty()) {
                    objRememberedValue3 = new eh4(stateAnimateFloatAsState, i9);
                    composer2.updateRememberedValue(objRememberedValue3);
                }
                int i14 = i13 << 3;
                int i15 = i12 << 3;
                m3685AnimatedNavigationItemLayouthe0WsC4(interactionSource, jM3669getSelectedIndicatorColor0d7_KjU, shape, ll3Var2, composableLambdaRememberComposableLambda, i, (ll3) objRememberedValue3, composableLambda, f2, f3, f4, f5, f6, f7, f8, f9, composer2, ((i13 >> 3) & 896) | 24576 | ((i12 >> 12) & 458752) | (234881024 & i14) | (i14 & 1879048192), ((i13 >> 27) & 14) | (i15 & 112) | (i15 & 896) | (i15 & 7168) | (57344 & i15) | (i15 & 458752));
                composer2.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
            zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(i, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
            stateAnimateIndicatorProgressAsState = animateIndicatorProgressAsState(z, composerStartRestartGroup, i13 & 14);
            if (zM3678equalsimpl0) {
                f10 = 0.0f;
            } else {
                f10 = 1.0f;
            }
            stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(f10, MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultSpatial, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == companion2.getEmpty()) {
                objRememberedValue = SnapshotStateKt.derivedStateOf(new ll3() { // from class: vk5
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return NavigationItemKt.AnimatedNavigationItem_DQd_Gtc$lambda$26$lambda$18$lambda$17(zM3678equalsimpl0, textStyle, textStyle2, stateAnimateFloatAsState);
                    }
                });
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            state = (State) objRememberedValue;
            if (bm3Var2 != null) {
                composerStartRestartGroup.startReplaceGroup(680212713);
                state2 = stateAnimateIndicatorProgressAsState;
                composer2 = composerStartRestartGroup;
                ComposableLambda composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(22475789, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationItemKt$AnimatedNavigationItem$2$styledLabel$1
                    public final void invoke(Composer composer3, int i16) {
                        if (!composer3.shouldExecute((i16 & 3) != 2, i16 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(22475789, i16, -1, "androidx.compose.material3.AnimatedNavigationItem.<anonymous>.<anonymous> (NavigationItem.kt:387)");
                        }
                        NavigationItemKt.StyledLabel(z, NavigationItemKt.AnimatedNavigationItem_DQd_Gtc$lambda$26$lambda$19(state), navigationItemColors, z2, bm3Var2, composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composer2, 54);
                composer2.endReplaceGroup();
                composableLambda = composableLambdaRememberComposableLambda3;
            } else {
                state2 = stateAnimateIndicatorProgressAsState;
                composer2 = composerStartRestartGroup;
                composer2.startReplaceGroup(680534989);
                composer2.endReplaceGroup();
                composableLambda = null;
            }
            if (zM3678equalsimpl0) {
                composer2.startReplaceGroup(680694081);
                Density density2 = (Density) composer2.consume(CompositionLocalsKt.getLocalDensity());
                jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((mutableIntState.getIntValue() - density2.mo1428roundToPx0680j_4(f)) / 2.0f)) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(density2.mo1434toPx0680j_4(IndicatorVerticalOffset)))));
                j59 j59Var2 = j59.a;
                if ((i7 & 14) == 4) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                zChanged3 = z3 | composer2.changed(jM5979constructorimpl);
                objRememberedValue4 = composer2.rememberedValue();
                if (zChanged3) {
                    objRememberedValue4 = new MappedInteractionSource(mutableInteractionSource2, jM5979constructorimpl, null);
                    composer2.updateRememberedValue(objRememberedValue4);
                } else {
                    objRememberedValue4 = new MappedInteractionSource(mutableInteractionSource2, jM5979constructorimpl, null);
                    composer2.updateRememberedValue(objRememberedValue4);
                }
                composer2.endReplaceGroup();
                mappedInteractionSource = (MappedInteractionSource) objRememberedValue4;
            } else {
                mappedInteractionSource = null;
                composer2.startReplaceGroup(681416753);
                composer2.endReplaceGroup();
            }
            if (mappedInteractionSource != null) {
                interactionSource = mappedInteractionSource;
            } else {
                interactionSource = mutableInteractionSource2;
            }
            long jM3669getSelectedIndicatorColor0d7_KjU2 = navigationItemColors.m3669getSelectedIndicatorColor0d7_KjU();
            zChanged = composer2.changed(state2);
            objRememberedValue2 = composer2.rememberedValue();
            if (zChanged) {
                objRememberedValue2 = new wk5(state2, 0);
                composer2.updateRememberedValue(objRememberedValue2);
            } else {
                objRememberedValue2 = new wk5(state2, 0);
                composer2.updateRememberedValue(objRememberedValue2);
            }
            ll3 ll3Var3 = (ll3) objRememberedValue2;
            zChanged2 = composer2.changed(stateAnimateFloatAsState);
            objRememberedValue3 = composer2.rememberedValue();
            i9 = 3;
            if (zChanged2) {
                objRememberedValue3 = new eh4(stateAnimateFloatAsState, i9);
                composer2.updateRememberedValue(objRememberedValue3);
            } else {
                objRememberedValue3 = new eh4(stateAnimateFloatAsState, i9);
                composer2.updateRememberedValue(objRememberedValue3);
            }
            int i16 = i13 << 3;
            int i17 = i12 << 3;
            m3685AnimatedNavigationItemLayouthe0WsC4(interactionSource, jM3669getSelectedIndicatorColor0d7_KjU2, shape, ll3Var3, composableLambdaRememberComposableLambda, i, (ll3) objRememberedValue3, composableLambda, f2, f3, f4, f5, f6, f7, f8, f9, composer2, ((i13 >> 3) & 896) | 24576 | ((i12 >> 12) & 458752) | (234881024 & i16) | (i16 & 1879048192), ((i13 >> 27) & 14) | (i17 & 112) | (i17 & 896) | (i17 & 7168) | (57344 & i17) | (i17 & 458752));
            composer2.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            mutableInteractionSource2 = mutableInteractionSource;
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource2;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: xk5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return NavigationItemKt.AnimatedNavigationItem_DQd_Gtc$lambda$27(z, ll3Var, bm3Var, shape, f, textStyle, textStyle2, f2, f3, f4, f5, f6, f7, f8, f9, navigationItemColors, modifier, z2, bm3Var2, i, mutableInteractionSource3, i2, i3, i4, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:150:0x025e  */
    /* JADX WARN: Code duplicated, block: B:153:0x026a  */
    /* JADX WARN: Code duplicated, block: B:154:0x026e  */
    /* JADX WARN: Code duplicated, block: B:159:0x028d  */
    /* JADX WARN: Code duplicated, block: B:162:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:164:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:167:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:168:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:173:0x0303  */
    /* JADX WARN: Code duplicated, block: B:175:0x0315  */
    /* JADX WARN: Code duplicated, block: B:178:0x0327  */
    /* JADX INFO: renamed from: AnimatedNavigationItemLayout-he0WsC4, reason: not valid java name */
    private static final void m3685AnimatedNavigationItemLayouthe0WsC4(final InteractionSource interactionSource, final long j, final Shape shape, final ll3<Float> ll3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var, final int i, final ll3<Float> ll3Var2, final bm3<? super Composer, ? super Integer, j59> bm3Var2, final float f, final float f2, final float f3, final float f4, final float f5, final float f6, final float f7, final float f8, Composer composer, final int i2, final int i3) {
        int i4;
        ll3<Float> ll3Var3;
        int i5;
        Modifier.Companion companion;
        int i6;
        Modifier.Companion companion2;
        Alignment.Companion companion3;
        int currentCompositeKeyHash;
        ll3<ComposeUiNode> constructor;
        Composer composerM5355constructorimpl;
        bm3 bm3VarB;
        int currentCompositeKeyHash2;
        ll3<ComposeUiNode> constructor2;
        Composer composerM5355constructorimpl2;
        bm3 bm3VarB2;
        Composer composerStartRestartGroup = composer.startRestartGroup(94433406);
        if ((i2 & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(interactionSource) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= composerStartRestartGroup.changed(j) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i4 |= composerStartRestartGroup.changed(shape) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            ll3Var3 = ll3Var;
            i4 |= composerStartRestartGroup.changedInstance(ll3Var3) ? 2048 : 1024;
        } else {
            ll3Var3 = ll3Var;
        }
        if ((i2 & 24576) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(bm3Var) ? 16384 : 8192;
        }
        if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i4 |= composerStartRestartGroup.changed(i) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(ll3Var2) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(bm3Var2) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= composerStartRestartGroup.changed(f) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= composerStartRestartGroup.changed(f2) ? 536870912 : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (composerStartRestartGroup.changed(f3) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= composerStartRestartGroup.changed(f4) ? 32 : 16;
        }
        if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i5 |= composerStartRestartGroup.changed(f5) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= composerStartRestartGroup.changed(f6) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= composerStartRestartGroup.changed(f7) ? 16384 : 8192;
        }
        if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i5 |= composerStartRestartGroup.changed(f8) ? 131072 : 65536;
        }
        int i7 = i5;
        if (composerStartRestartGroup.shouldExecute(((i4 & 306783379) == 306783378 && (74899 & i7) == 74898) ? false : true, i4 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(94433406, i4, i7, "androidx.compose.material3.AnimatedNavigationItemLayout (NavigationItem.kt:508)");
            }
            Modifier.Companion companion4 = Modifier.Companion;
            Modifier modifierBadgeBounds = BadgeKt.badgeBounds(companion4);
            MeasurePolicy animatedMeasurePolicy = bm3Var2 != null ? new AnimatedMeasurePolicy(i, ll3Var2, ll3Var3, f, f2, f3, f4, f5, f7, f8, null) : new TopIconOrIconOnlyMeasurePolicy(false, ll3Var, f6, f6, Dp.m9042constructorimpl(0.0f), Dp.m9042constructorimpl(0.0f), null);
            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierBadgeBounds);
            ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor3 = companion5.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor3);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB3 = cc.b(companion5, composerM5355constructorimpl3, animatedMeasurePolicy, composerM5355constructorimpl3, currentCompositionLocalMap);
            if (composerM5355constructorimpl3.getInserting()) {
                companion = companion4;
            } else {
                companion = companion4;
                if (!aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                }
                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier, companion5.getSetModifier());
                int i8 = i4 >> 3;
                IndicatorRipple(interactionSource, shape, composerStartRestartGroup, (i4 & 14) | (i8 & 112));
                i6 = i4;
                companion2 = companion;
                m3686Indicator3JVO9M(j, shape, ll3Var, composerStartRestartGroup, i8 & AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED);
                Modifier modifierLayoutId = LayoutIdKt.layoutId(companion2, IconLayoutIdTag);
                companion3 = Alignment.Companion;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierLayoutId);
                constructor = companion5.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB = cc.b(companion5, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap2);
                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion5.getSetModifier());
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                bm3Var.invoke(composerStartRestartGroup, Integer.valueOf((i6 >> 12) & 14));
                composerStartRestartGroup.endNode();
                if (bm3Var2 != null) {
                    composerStartRestartGroup.startReplaceGroup(-987944825);
                    Modifier modifierLayoutId2 = LayoutIdKt.layoutId(companion2, "label");
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                    currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierLayoutId2);
                    constructor2 = companion5.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB2 = cc.b(companion5, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl2, currentCompositionLocalMap3);
                    if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                        dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier3, companion5.getSetModifier());
                    js2.d(bm3Var2, composerStartRestartGroup, (i6 >> 21) & 14);
                } else {
                    composerStartRestartGroup.startReplaceGroup(-987864101);
                    composerStartRestartGroup.endReplaceGroup();
                }
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
            Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier, companion5.getSetModifier());
            int i9 = i4 >> 3;
            IndicatorRipple(interactionSource, shape, composerStartRestartGroup, (i4 & 14) | (i9 & 112));
            i6 = i4;
            companion2 = companion;
            m3686Indicator3JVO9M(j, shape, ll3Var, composerStartRestartGroup, i9 & AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED);
            Modifier modifierLayoutId3 = LayoutIdKt.layoutId(companion2, IconLayoutIdTag);
            companion3 = Alignment.Companion;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierLayoutId3);
            constructor = companion5.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3VarB = cc.b(companion5, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy3, composerM5355constructorimpl, currentCompositionLocalMap4);
            if (composerM5355constructorimpl.getInserting()) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            } else {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier4, companion5.getSetModifier());
            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
            bm3Var.invoke(composerStartRestartGroup, Integer.valueOf((i6 >> 12) & 14));
            composerStartRestartGroup.endNode();
            if (bm3Var2 != null) {
                composerStartRestartGroup.startReplaceGroup(-987944825);
                Modifier modifierLayoutId4 = LayoutIdKt.layoutId(companion2, "label");
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
                currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierLayoutId4);
                constructor2 = companion5.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor2);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB2 = cc.b(companion5, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy4, composerM5355constructorimpl2, currentCompositionLocalMap5);
                if (composerM5355constructorimpl2.getInserting()) {
                    dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                } else {
                    dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                }
                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier5, companion5.getSetModifier());
                js2.d(bm3Var2, composerStartRestartGroup, (i6 >> 21) & 14);
            } else {
                composerStartRestartGroup.startReplaceGroup(-987864101);
                composerStartRestartGroup.endReplaceGroup();
            }
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: el5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return NavigationItemKt.AnimatedNavigationItemLayout_he0WsC4$lambda$35(interactionSource, j, shape, ll3Var, bm3Var, i, ll3Var2, bm3Var2, f, f2, f3, f4, f5, f6, f7, f8, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 AnimatedNavigationItemLayout_he0WsC4$lambda$35(InteractionSource interactionSource, long j, Shape shape, ll3 ll3Var, bm3 bm3Var, int i, ll3 ll3Var2, bm3 bm3Var2, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, int i2, int i3, Composer composer, int i4) {
        m3685AnimatedNavigationItemLayouthe0WsC4(interactionSource, j, shape, ll3Var, bm3Var, i, ll3Var2, bm3Var2, f, f2, f3, f4, f5, f6, f7, f8, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 AnimatedNavigationItem_DQd_Gtc$lambda$15$lambda$14(MutableIntState mutableIntState, IntSize intSize) {
        mutableIntState.setIntValue((int) (intSize.m9217unboximpl() >> 32));
        return j59.a;
    }

    private static final float AnimatedNavigationItem_DQd_Gtc$lambda$26$lambda$16(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextStyle AnimatedNavigationItem_DQd_Gtc$lambda$26$lambda$18$lambda$17(boolean z, TextStyle textStyle, TextStyle textStyle2, State state) {
        return (!z || AnimatedNavigationItem_DQd_Gtc$lambda$26$lambda$16(state) >= 0.5f) ? textStyle2 : textStyle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextStyle AnimatedNavigationItem_DQd_Gtc$lambda$26$lambda$19(State<TextStyle> state) {
        return state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float AnimatedNavigationItem_DQd_Gtc$lambda$26$lambda$23$lambda$22(State state) {
        float fFloatValue = ((Number) state.getValue()).floatValue();
        if (fFloatValue < 0.0f) {
            return 0.0f;
        }
        return fFloatValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float AnimatedNavigationItem_DQd_Gtc$lambda$26$lambda$25$lambda$24(State state) {
        float fAnimatedNavigationItem_DQd_Gtc$lambda$26$lambda$16 = AnimatedNavigationItem_DQd_Gtc$lambda$26$lambda$16(state);
        if (fAnimatedNavigationItem_DQd_Gtc$lambda$26$lambda$16 < 0.0f) {
            return 0.0f;
        }
        return fAnimatedNavigationItem_DQd_Gtc$lambda$26$lambda$16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 AnimatedNavigationItem_DQd_Gtc$lambda$27(boolean z, ll3 ll3Var, bm3 bm3Var, Shape shape, float f, TextStyle textStyle, TextStyle textStyle2, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, NavigationItemColors navigationItemColors, Modifier modifier, boolean z2, bm3 bm3Var2, int i, MutableInteractionSource mutableInteractionSource, int i2, int i3, int i4, Composer composer, int i5) {
        m3684AnimatedNavigationItemDQd_Gtc(z, ll3Var, bm3Var, shape, f, textStyle, textStyle2, f2, f3, f4, f5, f6, f7, f8, f9, navigationItemColors, modifier, z2, bm3Var2, i, mutableInteractionSource, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3), RecomposeScopeImplKt.updateChangedFlags(i4));
        return j59.a;
    }

    /* JADX INFO: renamed from: Indicator-3J-VO9M, reason: not valid java name */
    private static final void m3686Indicator3JVO9M(final long j, final Shape shape, final ll3<Float> ll3Var, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-273382589);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(shape) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(ll3Var) ? 256 : 128;
        }
        int i3 = 0;
        if (composerStartRestartGroup.shouldExecute((i2 & 147) != 146, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-273382589, i2, -1, "androidx.compose.material3.Indicator (NavigationItem.kt:1114)");
            }
            Modifier modifierLayoutId = LayoutIdKt.layoutId(Modifier.Companion, IndicatorLayoutIdTag);
            boolean z = (i2 & 896) == 256;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new cl5(ll3Var, i3);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            BoxKt.Box(BackgroundKt.m1288backgroundbw27NRU(GraphicsLayerModifierKt.graphicsLayer(modifierLayoutId, (nl3) objRememberedValue), j, shape), composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: dl5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return NavigationItemKt.Indicator_3J_VO9M$lambda$45(j, shape, ll3Var, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    private static final void IndicatorRipple(final InteractionSource interactionSource, final Shape shape, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-629069867);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(interactionSource) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(shape) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-629069867, i2, -1, "androidx.compose.material3.IndicatorRipple (NavigationItem.kt:1101)");
            }
            BoxKt.Box(IndicationKt.indication(ClipKt.clip(LayoutIdKt.layoutId(Modifier.Companion, IndicatorRippleLayoutIdTag), shape), interactionSource, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null)), composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: gl5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return NavigationItemKt.IndicatorRipple$lambda$42(interactionSource, shape, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 IndicatorRipple$lambda$42(InteractionSource interactionSource, Shape shape, int i, Composer composer, int i2) {
        IndicatorRipple(interactionSource, shape, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Indicator_3J_VO9M$lambda$44$lambda$43(ll3 ll3Var, GraphicsLayerScope graphicsLayerScope) {
        graphicsLayerScope.setAlpha(((Number) ll3Var.invoke()).floatValue());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Indicator_3J_VO9M$lambda$45(long j, Shape shape, ll3 ll3Var, int i, Composer composer, int i2) {
        m3686Indicator3JVO9M(j, shape, ll3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: renamed from: NavigationItem-8Df7sds, reason: not valid java name */
    public static final void m3687NavigationItem8Df7sds(boolean z, final ll3<j59> ll3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var, final TextStyle textStyle, final Shape shape, final float f, final float f2, final float f3, final float f4, final float f5, final float f6, final NavigationItemColors navigationItemColors, final Modifier modifier, final boolean z2, final bm3<? super Composer, ? super Integer, j59> bm3Var2, final int i, MutableInteractionSource mutableInteractionSource, Composer composer, final int i2, final int i3) {
        int i4;
        ll3<j59> ll3Var2;
        int i5;
        MutableInteractionSource mutableInteractionSource2;
        Composer composer2;
        ComposableLambda composableLambda;
        int i6;
        InteractionSource interactionSource;
        final boolean z3 = z;
        Composer composerStartRestartGroup = composer.startRestartGroup(2075155418);
        if ((i2 & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(z3) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            ll3Var2 = ll3Var;
            i4 |= composerStartRestartGroup.changedInstance(ll3Var2) ? 32 : 16;
        } else {
            ll3Var2 = ll3Var;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(bm3Var) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= composerStartRestartGroup.changed(textStyle) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= composerStartRestartGroup.changed(shape) ? 16384 : 8192;
        }
        if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i4 |= composerStartRestartGroup.changed(f) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= composerStartRestartGroup.changed(f2) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= composerStartRestartGroup.changed(f3) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= composerStartRestartGroup.changed(f4) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= composerStartRestartGroup.changed(f5) ? 536870912 : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (composerStartRestartGroup.changed(f6) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= composerStartRestartGroup.changed(navigationItemColors) ? 32 : 16;
        }
        if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i5 |= composerStartRestartGroup.changed(modifier) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= composerStartRestartGroup.changed(z2) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= composerStartRestartGroup.changedInstance(bm3Var2) ? 16384 : 8192;
        }
        if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i5 |= composerStartRestartGroup.changed(i) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i5 |= composerStartRestartGroup.changed(mutableInteractionSource) ? 1048576 : 524288;
        }
        int i7 = i5;
        if (composerStartRestartGroup.shouldExecute(((i4 & 306783379) == 306783378 && (599187 & i7) == 599186) ? false : true, i4 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2075155418, i4, i7, "androidx.compose.material3.NavigationItem (NavigationItem.kt:245)");
            }
            final long jM3673iconColorWaAFU9c = navigationItemColors.m3673iconColorWaAFU9c(z3, z2);
            ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1119868672, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationItemKt$NavigationItem$styledIcon$1
                public final void invoke(Composer composer3, int i8) {
                    if (!composer3.shouldExecute((i8 & 3) != 2, i8 & 1)) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1119868672, i8, -1, "androidx.compose.material3.NavigationItem.<anonymous> (NavigationItem.kt:248)");
                    }
                    CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3673iconColorWaAFU9c)), bm3Var, composer3, ProvidedValue.$stable);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54);
            if (bm3Var2 == null) {
                composerStartRestartGroup.startReplaceGroup(-803302356);
                composerStartRestartGroup.endReplaceGroup();
                composableLambda = null;
            } else {
                composerStartRestartGroup.startReplaceGroup(-803266737);
                ComposableLambda composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1062206119, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.NavigationItemKt$NavigationItem$styledLabel$1
                    public final void invoke(Composer composer3, int i8) {
                        if (!composer3.shouldExecute((i8 & 3) != 2, i8 & 1)) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1062206119, i8, -1, "androidx.compose.material3.NavigationItem.<anonymous> (NavigationItem.kt:254)");
                        }
                        NavigationItemKt.StyledLabel(z3, textStyle, navigationItemColors, z2, bm3Var2, composer3, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                        invoke(composer3, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54);
                composerStartRestartGroup.endReplaceGroup();
                composableLambda = composableLambdaRememberComposableLambda2;
            }
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = SnapshotIntStateKt.mutableIntStateOf(0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            MutableIntState mutableIntState = (MutableIntState) objRememberedValue;
            z3 = z;
            mutableInteractionSource2 = mutableInteractionSource;
            Modifier modifierM2083defaultMinSizeVpY3zN4 = SizeKt.m2083defaultMinSizeVpY3zN4(SelectableKt.m2312selectableO2vRcR0(modifier, z3, mutableInteractionSource2, null, z2, Role.m8254boximpl(Role.Companion.m8268getTabo7Vup1c()), ll3Var2), ((Dp) composerStartRestartGroup.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl(), ((Dp) composerStartRestartGroup.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl());
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                i6 = 0;
                objRememberedValue2 = new rk5(mutableIntState, i6);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            } else {
                i6 = 0;
            }
            Modifier modifierOnSizeChanged = OnRemeasuredModifierKt.onSizeChanged(modifierM2083defaultMinSizeVpY3zN4, (nl3) objRememberedValue2);
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), true);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, i6);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierOnSizeChanged);
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion2.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            State<Float> stateAnimateIndicatorProgressAsState = animateIndicatorProgressAsState(z3, composerStartRestartGroup, i4 & 14);
            if (NavigationItemIconPosition.m3678equalsimpl0(i, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg())) {
                composerStartRestartGroup.startReplaceGroup(484755993);
                Density density = (Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity());
                long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(density.mo1434toPx0680j_4(IndicatorVerticalOffset))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits((mutableIntState.getIntValue() - density.mo1428roundToPx0680j_4(f)) / 2.0f)) << 32));
                j59 j59Var = j59.a;
                boolean zChanged = ((i7 & 3670016) == 1048576) | composerStartRestartGroup.changed(jM5979constructorimpl);
                Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged || objRememberedValue3 == companion.getEmpty()) {
                    objRememberedValue3 = new MappedInteractionSource(mutableInteractionSource2, jM5979constructorimpl, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                interactionSource = (MappedInteractionSource) objRememberedValue3;
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(485471938);
                composerStartRestartGroup.endReplaceGroup();
                interactionSource = null;
            }
            if (interactionSource == null) {
                interactionSource = mutableInteractionSource2;
            }
            long jM3669getSelectedIndicatorColor0d7_KjU = navigationItemColors.m3669getSelectedIndicatorColor0d7_KjU();
            boolean zChanged2 = composerStartRestartGroup.changed(stateAnimateIndicatorProgressAsState);
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChanged2 || objRememberedValue4 == companion.getEmpty()) {
                objRememberedValue4 = new al5(stateAnimateIndicatorProgressAsState, 0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            int i8 = i4 << 3;
            composer2 = composerStartRestartGroup;
            m3688NavigationItemLayoutKmRXDg(interactionSource, jM3669getSelectedIndicatorColor0d7_KjU, shape, composableLambdaRememberComposableLambda, i, composableLambda, (ll3) objRememberedValue4, f2, f3, f4, f5, f6, composer2, ((i4 >> 6) & 896) | 3072 | ((i7 >> 3) & 57344) | (29360128 & i8) | (234881024 & i8) | (i8 & 1879048192), ((i4 >> 27) & 14) | ((i7 << 3) & 112));
            composer2.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            mutableInteractionSource2 = mutableInteractionSource;
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource2;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bl5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return NavigationItemKt.NavigationItem_8Df7sds$lambda$10(z3, ll3Var, bm3Var, textStyle, shape, f, f2, f3, f4, f5, f6, navigationItemColors, modifier, z2, bm3Var2, i, mutableInteractionSource3, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:129:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:132:0x0208  */
    /* JADX WARN: Code duplicated, block: B:133:0x020c  */
    /* JADX WARN: Code duplicated, block: B:138:0x022b  */
    /* JADX WARN: Code duplicated, block: B:141:0x0247  */
    /* JADX WARN: Code duplicated, block: B:143:0x0272  */
    /* JADX WARN: Code duplicated, block: B:146:0x027e  */
    /* JADX WARN: Code duplicated, block: B:147:0x0282  */
    /* JADX WARN: Code duplicated, block: B:152:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:154:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:157:0x02c5  */
    /* JADX INFO: renamed from: NavigationItemLayout-KmRX-Dg, reason: not valid java name */
    private static final void m3688NavigationItemLayoutKmRXDg(final InteractionSource interactionSource, final long j, final Shape shape, final bm3<? super Composer, ? super Integer, j59> bm3Var, final int i, final bm3<? super Composer, ? super Integer, j59> bm3Var2, final ll3<Float> ll3Var, final float f, final float f2, final float f3, final float f4, final float f5, Composer composer, final int i2, final int i3) {
        int i4;
        ll3<Float> ll3Var2;
        int i5;
        MeasurePolicy topIconOrIconOnlyMeasurePolicy;
        int i6;
        Alignment.Companion companion;
        int currentCompositeKeyHash;
        ll3<ComposeUiNode> constructor;
        Composer composerM5355constructorimpl;
        bm3 bm3VarB;
        int currentCompositeKeyHash2;
        ll3<ComposeUiNode> constructor2;
        Composer composerM5355constructorimpl2;
        bm3 bm3VarB2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1473868071);
        if ((i2 & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(interactionSource) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= composerStartRestartGroup.changed(j) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i4 |= composerStartRestartGroup.changed(shape) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(bm3Var) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= composerStartRestartGroup.changed(i) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(bm3Var2) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            ll3Var2 = ll3Var;
            i4 |= composerStartRestartGroup.changedInstance(ll3Var2) ? 1048576 : 524288;
        } else {
            ll3Var2 = ll3Var;
        }
        if ((12582912 & i2) == 0) {
            i4 |= composerStartRestartGroup.changed(f) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= composerStartRestartGroup.changed(f2) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= composerStartRestartGroup.changed(f3) ? 536870912 : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (composerStartRestartGroup.changed(f4) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= composerStartRestartGroup.changed(f5) ? 32 : 16;
        }
        int i7 = i5;
        if (composerStartRestartGroup.shouldExecute(((i4 & 306783379) == 306783378 && (i7 & 19) == 18) ? false : true, i4 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1473868071, i4, i7, "androidx.compose.material3.NavigationItemLayout (NavigationItem.kt:453)");
            }
            Modifier.Companion companion2 = Modifier.Companion;
            Modifier modifierBadgeBounds = BadgeKt.badgeBounds(companion2);
            if (bm3Var2 == null || NavigationItemIconPosition.m3678equalsimpl0(i, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg())) {
                topIconOrIconOnlyMeasurePolicy = new TopIconOrIconOnlyMeasurePolicy(bm3Var2 != null, ll3Var, f, f2, f3, f5, null);
            } else {
                topIconOrIconOnlyMeasurePolicy = new StartIconMeasurePolicy(ll3Var2, f, f2, f4, null);
            }
            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierBadgeBounds);
            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor3 = companion3.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor3);
            } else {
                composerStartRestartGroup.useNode();
            }
            Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3 bm3VarB3 = cc.b(companion3, composerM5355constructorimpl3, topIconOrIconOnlyMeasurePolicy, composerM5355constructorimpl3, currentCompositionLocalMap);
            if (composerM5355constructorimpl3.getInserting()) {
                i6 = i4;
            } else {
                i6 = i4;
                if (!aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                }
                Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier, companion3.getSetModifier());
                int i8 = i6 >> 3;
                IndicatorRipple(interactionSource, shape, composerStartRestartGroup, (i6 & 14) | (i8 & 112));
                m3686Indicator3JVO9M(j, shape, ll3Var, composerStartRestartGroup, (i8 & 126) | ((i6 >> 12) & 896));
                Modifier modifierLayoutId = LayoutIdKt.layoutId(companion2, IconLayoutIdTag);
                companion = Alignment.Companion;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion.getTopStart(), false);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierLayoutId);
                constructor = companion3.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap2);
                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion3.getSetModifier());
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                bm3Var.invoke(composerStartRestartGroup, Integer.valueOf((i6 >> 9) & 14));
                composerStartRestartGroup.endNode();
                if (bm3Var2 != null) {
                    composerStartRestartGroup.startReplaceGroup(-2087200706);
                    Modifier modifierLayoutId2 = LayoutIdKt.layoutId(companion2, "label");
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion.getTopStart(), false);
                    currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierLayoutId2);
                    constructor2 = companion3.getConstructor();
                    if (composerStartRestartGroup.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composerStartRestartGroup.startReusableNode();
                    if (composerStartRestartGroup.getInserting()) {
                        composerStartRestartGroup.createNode(constructor2);
                    } else {
                        composerStartRestartGroup.useNode();
                    }
                    composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                    bm3VarB2 = cc.b(companion3, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl2, currentCompositionLocalMap3);
                    if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                        dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier3, companion3.getSetModifier());
                    js2.d(bm3Var2, composerStartRestartGroup, (i6 >> 15) & 14);
                } else {
                    composerStartRestartGroup.startReplaceGroup(-2087119982);
                    composerStartRestartGroup.endReplaceGroup();
                }
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
            Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier, companion3.getSetModifier());
            int i9 = i6 >> 3;
            IndicatorRipple(interactionSource, shape, composerStartRestartGroup, (i6 & 14) | (i9 & 112));
            m3686Indicator3JVO9M(j, shape, ll3Var, composerStartRestartGroup, (i9 & 126) | ((i6 >> 12) & 896));
            Modifier modifierLayoutId3 = LayoutIdKt.layoutId(companion2, IconLayoutIdTag);
            companion = Alignment.Companion;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(companion.getTopStart(), false);
            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierLayoutId3);
            constructor = companion3.getConstructor();
            if (composerStartRestartGroup.getApplier() == null) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                composerStartRestartGroup.createNode(constructor);
            } else {
                composerStartRestartGroup.useNode();
            }
            composerM5355constructorimpl = Updater.m5355constructorimpl(composerStartRestartGroup);
            bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy3, composerM5355constructorimpl, currentCompositionLocalMap4);
            if (composerM5355constructorimpl.getInserting()) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            } else {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier4, companion3.getSetModifier());
            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
            bm3Var.invoke(composerStartRestartGroup, Integer.valueOf((i6 >> 9) & 14));
            composerStartRestartGroup.endNode();
            if (bm3Var2 != null) {
                composerStartRestartGroup.startReplaceGroup(-2087200706);
                Modifier modifierLayoutId4 = LayoutIdKt.layoutId(companion2, "label");
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(companion.getTopStart(), false);
                currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierLayoutId4);
                constructor2 = companion3.getConstructor();
                if (composerStartRestartGroup.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composerStartRestartGroup.startReusableNode();
                if (composerStartRestartGroup.getInserting()) {
                    composerStartRestartGroup.createNode(constructor2);
                } else {
                    composerStartRestartGroup.useNode();
                }
                composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                bm3VarB2 = cc.b(companion3, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy4, composerM5355constructorimpl2, currentCompositionLocalMap5);
                if (composerM5355constructorimpl2.getInserting()) {
                    dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                } else {
                    dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                }
                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier5, companion3.getSetModifier());
                js2.d(bm3Var2, composerStartRestartGroup, (i6 >> 15) & 14);
            } else {
                composerStartRestartGroup.startReplaceGroup(-2087119982);
                composerStartRestartGroup.endReplaceGroup();
            }
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hl5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return NavigationItemKt.NavigationItemLayout_KmRX_Dg$lambda$31(interactionSource, j, shape, bm3Var, i, bm3Var2, ll3Var, f, f2, f3, f4, f5, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationItemLayout_KmRX_Dg$lambda$31(InteractionSource interactionSource, long j, Shape shape, bm3 bm3Var, int i, bm3 bm3Var2, ll3 ll3Var, float f, float f2, float f3, float f4, float f5, int i2, int i3, Composer composer, int i4) {
        m3688NavigationItemLayoutKmRXDg(interactionSource, j, shape, bm3Var, i, bm3Var2, ll3Var, f, f2, f3, f4, f5, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationItem_8Df7sds$lambda$10(boolean z, ll3 ll3Var, bm3 bm3Var, TextStyle textStyle, Shape shape, float f, float f2, float f3, float f4, float f5, float f6, NavigationItemColors navigationItemColors, Modifier modifier, boolean z2, bm3 bm3Var2, int i, MutableInteractionSource mutableInteractionSource, int i2, int i3, Composer composer, int i4) {
        m3687NavigationItem8Df7sds(z, ll3Var, bm3Var, textStyle, shape, f, f2, f3, f4, f5, f6, navigationItemColors, modifier, z2, bm3Var2, i, mutableInteractionSource, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NavigationItem_8Df7sds$lambda$4$lambda$3(MutableIntState mutableIntState, IntSize intSize) {
        mutableIntState.setIntValue((int) (intSize.m9217unboximpl() >> 32));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float NavigationItem_8Df7sds$lambda$9$lambda$8$lambda$7(State state) {
        float fFloatValue = ((Number) state.getValue()).floatValue();
        if (fFloatValue < 0.0f) {
            return 0.0f;
        }
        return fFloatValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void StyledLabel(final boolean z, TextStyle textStyle, final NavigationItemColors navigationItemColors, final boolean z2, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i) {
        int i2;
        TextStyle textStyle2;
        final bm3<? super Composer, ? super Integer, j59> bm3Var2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-2136267443);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(textStyle) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(navigationItemColors) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(z2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 16384 : 8192;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 9363) != 9362, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2136267443, i2, -1, "androidx.compose.material3.StyledLabel (NavigationItem.kt:1083)");
            }
            textStyle2 = textStyle;
            ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(navigationItemColors.m3674textColorWaAFU9c(z, z2), textStyle2, bm3Var, composerStartRestartGroup, (i2 & 112) | ((i2 >> 6) & 896));
            bm3Var2 = bm3Var;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            textStyle2 = textStyle;
            bm3Var2 = bm3Var;
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final TextStyle textStyle3 = textStyle2;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zk5
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return NavigationItemKt.StyledLabel$lambda$41(z, textStyle3, navigationItemColors, z2, bm3Var2, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 StyledLabel$lambda$41(boolean z, TextStyle textStyle, NavigationItemColors navigationItemColors, boolean z2, bm3 bm3Var, int i, Composer composer, int i2) {
        StyledLabel(z, textStyle, navigationItemColors, z2, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    private static final State<Float> animateIndicatorProgressAsState(boolean z, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1105658511, i, -1, "androidx.compose.material3.animateIndicatorProgressAsState (NavigationItem.kt:1094)");
        }
        State<Float> stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(z ? 1.0f : 0.0f, MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultSpatial, composer, 6), 0.0f, null, null, composer, 0, 28);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return stateAnimateFloatAsState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: placeAnimatedLabelAndIcon-2QYhCQ8, reason: not valid java name */
    public static final MeasureResult m3693placeAnimatedLabelAndIcon2QYhCQ8(MeasureScope measureScope, int i, ll3<Float> ll3Var, final Placeable placeable, final Placeable placeable2, final Placeable placeable3, final Placeable placeable4, int i2, long j, float f, float f2, float f3, float f4, float f5, float f6, float f7) {
        float fMo1428roundToPx0680j_4;
        final float fFloatValue = ll3Var.invoke().floatValue();
        boolean zM3678equalsimpl0 = NavigationItemIconPosition.m3678equalsimpl0(i, NavigationItemIconPosition.Companion.m3683getTopxw1Ddg());
        float f8 = f7 * 2.0f;
        int iM9012constrainWidthK40F9xA = ConstraintsKt.m9012constrainWidthK40F9xA(j, Math.max(placeable.getWidth(), measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(f8)) + i2));
        float fM9012constrainWidthK40F9xA = ((ConstraintsKt.m9012constrainWidthK40F9xA(j, measureScope.mo1428roundToPx0680j_4(f7) + placeable3.getWidth()) - iM9012constrainWidthK40F9xA) * fFloatValue) + iM9012constrainWidthK40F9xA;
        int iLerp = MathHelpersKt.lerp(ConstraintsKt.m9011constrainHeightK40F9xA(j, w65.b(measureScope.mo1434toPx0680j_4(f) + placeable3.getHeight() + placeable.getHeight())), ConstraintsKt.m9011constrainHeightK40F9xA(j, placeable3.getHeight()), fFloatValue);
        final int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(f7);
        int iLerp2 = (fFloatValue == 0.0f || fFloatValue == 1.0f) ? MathHelpersKt.lerp(w65.b((fM9012constrainWidthK40F9xA - placeable4.getWidth()) / 2.0f), w65.b(((iMo1428roundToPx0680j_4 + fM9012constrainWidthK40F9xA) - placeable4.getWidth()) / 2.0f), fFloatValue) : measureScope.mo1428roundToPx0680j_4(f7);
        int iMo1428roundToPx0680j_5 = measureScope.mo1428roundToPx0680j_4(f3) + iMo1428roundToPx0680j_4;
        int iMo1428roundToPx0680j_6 = measureScope.mo1428roundToPx0680j_4(f4) + iMo1428roundToPx0680j_4;
        int iMo1428roundToPx0680j_7 = measureScope.mo1428roundToPx0680j_4(f2);
        int iMo1428roundToPx0680j_8 = measureScope.mo1428roundToPx0680j_4(f5);
        final int iLerp3 = MathHelpersKt.lerp(iMo1428roundToPx0680j_5, iMo1428roundToPx0680j_6, fFloatValue);
        final int iLerp4 = MathHelpersKt.lerp(iMo1428roundToPx0680j_7, iMo1428roundToPx0680j_8, fFloatValue);
        int iB = ug.b(measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(Dp.m9042constructorimpl(f8) + Dp.m9042constructorimpl(f3 * 2.0f))) + placeable2.getWidth(), 2, placeable);
        int iMo1428roundToPx0680j_9 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(f + f)) + placeable2.getHeight() + iLerp4;
        if (!zM3678equalsimpl0 || fFloatValue <= 0.0f) {
            fMo1428roundToPx0680j_4 = (1.0f - fFloatValue) * measureScope.mo1428roundToPx0680j_4(f7);
        } else {
            fMo1428roundToPx0680j_4 = 0.0f;
        }
        float fMo1428roundToPx0680j_5 = (measureScope.mo1428roundToPx0680j_4(f6) + (placeable2.getWidth() + iLerp3)) - fMo1428roundToPx0680j_4;
        int iB2 = tg.b(iLerp, 2, placeable);
        Number numberValueOf = fFloatValue < 0.5f ? Integer.valueOf(iB) : Float.valueOf(fMo1428roundToPx0680j_5 * fFloatValue);
        if (fFloatValue >= 0.5f) {
            iMo1428roundToPx0680j_9 = iB2;
        }
        int iB3 = w65.b(fM9012constrainWidthK40F9xA);
        final int i3 = iMo1428roundToPx0680j_9;
        final int i4 = iLerp2;
        final Number number = numberValueOf;
        return MeasureScope.layout$default(measureScope, iB3, iLerp, null, new nl3() { // from class: il5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return NavigationItemKt.placeAnimatedLabelAndIcon_2QYhCQ8$lambda$40(placeable4, i4, placeable2, iLerp3, iLerp4, placeable, number, i3, placeable3, iMo1428roundToPx0680j_4, fFloatValue, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 placeAnimatedLabelAndIcon_2QYhCQ8$lambda$40(Placeable placeable, int i, Placeable placeable2, int i2, int i3, Placeable placeable3, Object obj, int i4, Placeable placeable4, int i5, final float f, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelativeWithLayer$default(placementScope, placeable, i, 0, 0.0f, (nl3) null, 12, (Object) null);
        Placeable.PlacementScope.placeRelativeWithLayer$default(placementScope, placeable2, i2, i3, 0.0f, (nl3) null, 12, (Object) null);
        Placeable.PlacementScope.placeRelativeWithLayer$default(placementScope, placeable3, ((Number) obj).intValue(), i4, 0.0f, new nl3() { // from class: fl5
            @Override // defpackage.nl3
            public final Object invoke(Object obj2) {
                return NavigationItemKt.placeAnimatedLabelAndIcon_2QYhCQ8$lambda$40$lambda$39(f, (GraphicsLayerScope) obj2);
            }
        }, 4, (Object) null);
        Placeable.PlacementScope.placeRelativeWithLayer$default(placementScope, placeable4, i5, 0, 0.0f, (nl3) null, 12, (Object) null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 placeAnimatedLabelAndIcon_2QYhCQ8$lambda$40$lambda$39(float f, GraphicsLayerScope graphicsLayerScope) {
        float f2 = f - 0.5f;
        graphicsLayerScope.setAlpha(4.0f * f2 * f2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: placeIcon-X9ElhV4, reason: not valid java name */
    public static final MeasureResult m3694placeIconX9ElhV4(MeasureScope measureScope, final Placeable placeable, final Placeable placeable2, final Placeable placeable3, long j) {
        int iM9012constrainWidthK40F9xA = ConstraintsKt.m9012constrainWidthK40F9xA(j, placeable2.getWidth());
        int iM9011constrainHeightK40F9xA = ConstraintsKt.m9011constrainHeightK40F9xA(j, placeable2.getHeight());
        final int iB = ug.b(iM9012constrainWidthK40F9xA, 2, placeable3);
        final int iB2 = tg.b(iM9011constrainHeightK40F9xA, 2, placeable3);
        final int iB3 = ug.b(iM9012constrainWidthK40F9xA, 2, placeable);
        final int iB4 = tg.b(iM9011constrainHeightK40F9xA, 2, placeable);
        final int iB5 = ug.b(iM9012constrainWidthK40F9xA, 2, placeable2);
        final int iB6 = tg.b(iM9011constrainHeightK40F9xA, 2, placeable2);
        return MeasureScope.layout$default(measureScope, iM9012constrainWidthK40F9xA, iM9011constrainHeightK40F9xA, null, new nl3() { // from class: sk5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return NavigationItemKt.placeIcon_X9ElhV4$lambda$36(placeable3, iB, iB2, placeable, iB3, iB4, placeable2, iB5, iB6, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 placeIcon_X9ElhV4$lambda$36(Placeable placeable, int i, int i2, Placeable placeable2, int i3, int i4, Placeable placeable3, int i5, int i6, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, i, i2, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i3, i4, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, i5, i6, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: placeLabelAndStartIcon-nru01g4, reason: not valid java name */
    public static final MeasureResult m3695placeLabelAndStartIconnru01g4(MeasureScope measureScope, final Placeable placeable, final Placeable placeable2, final Placeable placeable3, final Placeable placeable4, long j, float f) {
        int iM9012constrainWidthK40F9xA = ConstraintsKt.m9012constrainWidthK40F9xA(j, placeable3.getWidth());
        int iM9011constrainHeightK40F9xA = ConstraintsKt.m9011constrainHeightK40F9xA(j, placeable3.getHeight());
        final int iB = ug.b(iM9012constrainWidthK40F9xA, 2, placeable4);
        final int iB2 = tg.b(iM9011constrainHeightK40F9xA, 2, placeable4);
        final int iB3 = tg.b(iM9011constrainHeightK40F9xA, 2, placeable2);
        final int iB4 = tg.b(iM9011constrainHeightK40F9xA, 2, placeable);
        final int width = (iM9012constrainWidthK40F9xA - (placeable.getWidth() + (measureScope.mo1428roundToPx0680j_4(f) + placeable2.getWidth()))) / 2;
        final int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(f) + placeable2.getWidth() + width;
        final int iB5 = ug.b(iM9012constrainWidthK40F9xA, 2, placeable3);
        final int iB6 = tg.b(iM9011constrainHeightK40F9xA, 2, placeable3);
        return MeasureScope.layout$default(measureScope, iM9012constrainWidthK40F9xA, iM9011constrainHeightK40F9xA, null, new nl3() { // from class: yk5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return NavigationItemKt.placeLabelAndStartIcon_nru01g4$lambda$38(placeable4, iB, iB2, placeable, iMo1428roundToPx0680j_4, iB4, placeable2, width, iB3, placeable3, iB5, iB6, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 placeLabelAndStartIcon_nru01g4$lambda$38(Placeable placeable, int i, int i2, Placeable placeable2, int i3, int i4, Placeable placeable3, int i5, int i6, Placeable placeable4, int i7, int i8, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, i, i2, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i3, i4, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, i5, i6, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable4, i7, i8, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: placeLabelAndTopIcon-qoqLrGI, reason: not valid java name */
    public static final MeasureResult m3696placeLabelAndTopIconqoqLrGI(MeasureScope measureScope, final Placeable placeable, final Placeable placeable2, final Placeable placeable3, final Placeable placeable4, long j, float f, float f2, float f3) {
        int iM9012constrainWidthK40F9xA = ConstraintsKt.m9012constrainWidthK40F9xA(j, Math.max(placeable.getWidth(), placeable3.getWidth()));
        int iM9011constrainHeightK40F9xA = ConstraintsKt.m9011constrainHeightK40F9xA(j, w65.b((measureScope.mo1434toPx0680j_4(f3) * 2.0f) + measureScope.mo1434toPx0680j_4(f) + placeable3.getHeight() + placeable.getHeight()));
        final int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(f3 + f2));
        final int iB = ug.b(iM9012constrainWidthK40F9xA, 2, placeable2);
        final int iB2 = ug.b(iM9012constrainWidthK40F9xA, 2, placeable4);
        final int iMo1428roundToPx0680j_5 = iMo1428roundToPx0680j_4 - measureScope.mo1428roundToPx0680j_4(f2);
        final int iB3 = ug.b(iM9012constrainWidthK40F9xA, 2, placeable);
        final int iMo1428roundToPx0680j_6 = measureScope.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(f + f2)) + placeable2.getHeight() + iMo1428roundToPx0680j_4;
        final int iB4 = ug.b(iM9012constrainWidthK40F9xA, 2, placeable3);
        return MeasureScope.layout$default(measureScope, iM9012constrainWidthK40F9xA, iM9011constrainHeightK40F9xA, null, new nl3() { // from class: tk5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return NavigationItemKt.placeLabelAndTopIcon_qoqLrGI$lambda$37(placeable4, iB2, iMo1428roundToPx0680j_5, placeable, iB3, iMo1428roundToPx0680j_6, placeable2, iB, iMo1428roundToPx0680j_4, placeable3, iB4, iMo1428roundToPx0680j_5, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 placeLabelAndTopIcon_qoqLrGI$lambda$37(Placeable placeable, int i, int i2, Placeable placeable2, int i3, int i4, Placeable placeable3, int i5, int i6, Placeable placeable4, int i7, int i8, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, i, i2, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i3, i4, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, i5, i6, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable4, i7, i8, 0.0f, 4, null);
        return j59.a;
    }
}

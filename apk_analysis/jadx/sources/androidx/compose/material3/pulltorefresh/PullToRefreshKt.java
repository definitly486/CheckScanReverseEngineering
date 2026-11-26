package androidx.compose.material3.pulltorefresh;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.MotionSchemeKt;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.pulltorefresh.PullToRefreshKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathFillType;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import androidx.profileinstaller.ProfileVerifier;
import com.google.android.material.internal.ViewUtils;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.j59;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.mm1;
import defpackage.n1;
import defpackage.nl3;
import defpackage.nt6;
import defpackage.t96;
import defpackage.u12;

/* JADX INFO: loaded from: classes2.dex */
public final class PullToRefreshKt {
    private static final float DragMultiplier = 0.5f;
    private static final float MaxAlpha = 1.0f;
    private static final float MaxProgressArc = 0.8f;
    private static final float MinAlpha = 0.3f;
    private static final float StrokeWidth = Dp.m9042constructorimpl(2.5f);
    private static final float ArcRadius = Dp.m9042constructorimpl(5.5f);
    private static final float SpinnerSize = Dp.m9042constructorimpl(16.0f);
    private static final float SpinnerContainerSize = Dp.m9042constructorimpl(40.0f);
    private static final float ArrowWidth = Dp.m9042constructorimpl(10.0f);
    private static final float ArrowHeight = Dp.m9042constructorimpl(5.0f);

    private static final ArrowValues ArrowValues(float f) {
        float fMax = (Math.max(Math.min(1.0f, f) - 0.4f, 0.0f) * 5.0f) / 3.0f;
        float fD = kx6.d(Math.abs(f) - 1.0f, 0.0f, 2.0f);
        float fPow = (((0.4f * fMax) - 0.25f) + (fD - (((float) Math.pow(fD, 2.0d)) / 4.0f))) * 0.5f;
        return new ArrowValues(fPow, fPow * 360.0f, ((0.8f * fMax) + fPow) * 360.0f, Math.min(1.0f, fMax));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: CircularArrowProgressIndicator-RPmYEkk, reason: not valid java name */
    public static final void m4476CircularArrowProgressIndicatorRPmYEkk(final FloatProducer floatProducer, final long j, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1353562852);
        int i3 = 2;
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(floatProducer) : composerStartRestartGroup.changedInstance(floatProducer) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(j) ? 32 : 16;
        }
        int i4 = 1;
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1353562852, i2, -1, "androidx.compose.material3.pulltorefresh.CircularArrowProgressIndicator (PullToRefresh.kt:631)");
            }
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            Object obj = objRememberedValue;
            if (objRememberedValue == companion.getEmpty()) {
                Path Path = AndroidPath_androidKt.Path();
                Path.mo6122setFillTypeoQ8Xj4U(PathFillType.Companion.m6528getEvenOddRgk1Os());
                composerStartRestartGroup.updateRememberedValue(Path);
                obj = Path;
            }
            final Path path = (Path) obj;
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = SnapshotStateKt.derivedStateOf(new u12(floatProducer, i3));
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            final State<Float> stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(CircularArrowProgressIndicator_RPmYEkk$lambda$8((State) objRememberedValue2), MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composerStartRestartGroup, 6), 0.0f, null, null, composerStartRestartGroup, 0, 28);
            Modifier.Companion companion2 = Modifier.Companion;
            int i5 = i2 & 14;
            boolean z = i5 == 4 || ((i2 & 8) != 0 && composerStartRestartGroup.changedInstance(floatProducer));
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue3 == companion.getEmpty()) {
                objRememberedValue3 = new t96(floatProducer, i4);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            Modifier modifierM2099size3ABfNKs = SizeKt.m2099size3ABfNKs(SemanticsModifierKt.clearAndSetSemantics(companion2, (nl3) objRememberedValue3), SpinnerSize);
            boolean zChanged = composerStartRestartGroup.changed(stateAnimateFloatAsState) | (i5 == 4 || ((i2 & 8) != 0 && composerStartRestartGroup.changedInstance(floatProducer))) | ((i2 & 112) == 32) | composerStartRestartGroup.changedInstance(path);
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue4 == companion.getEmpty()) {
                nl3 nl3Var = new nl3() { // from class: kt6
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return PullToRefreshKt.CircularArrowProgressIndicator_RPmYEkk$lambda$13$lambda$12(floatProducer, stateAnimateFloatAsState, j, path, (DrawScope) obj2);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(nl3Var);
                objRememberedValue4 = nl3Var;
            }
            CanvasKt.Canvas(modifierM2099size3ABfNKs, (nl3) objRememberedValue4, composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: lt6
                @Override // defpackage.bm3
                public final Object invoke(Object obj2, Object obj3) {
                    int iIntValue = ((Integer) obj3).intValue();
                    return PullToRefreshKt.CircularArrowProgressIndicator_RPmYEkk$lambda$14(floatProducer, j, i, (Composer) obj2, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CircularArrowProgressIndicator_RPmYEkk$lambda$10$lambda$9(FloatProducer floatProducer, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (floatProducer.invoke() > 0.0f) {
            SemanticsPropertiesKt.setProgressBarRangeInfo(semanticsPropertyReceiver, new ProgressBarRangeInfo(floatProducer.invoke(), new mm1(0.0f, 1.0f), 0));
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CircularArrowProgressIndicator_RPmYEkk$lambda$13$lambda$12(FloatProducer floatProducer, State state, long j, Path path, DrawScope drawScope) {
        ArrowValues ArrowValues = ArrowValues(floatProducer.invoke());
        float fFloatValue = ((Number) state.getValue()).floatValue();
        float rotation = ArrowValues.getRotation();
        long jMo6805getCenterF1C5BW0 = drawScope.mo6805getCenterF1C5BW0();
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6733rotateUv8p0NA(rotation, jMo6805getCenterF1C5BW0);
            float fMo1434toPx0680j_4 = drawScope.mo1434toPx0680j_4(ArcRadius);
            float f = StrokeWidth;
            Rect rectM6026Rect3MmeM6k = RectKt.m6026Rect3MmeM6k(androidx.compose.ui.geometry.SizeKt.m6066getCenteruvyYCjk(drawScope.mo6806getSizeNHjbRc()), (drawScope.mo1434toPx0680j_4(f) / 2.0f) + fMo1434toPx0680j_4);
            m4479drawCircularIndicatorKzyDr3Q(drawScope, j, fFloatValue, ArrowValues, rectM6026Rect3MmeM6k, f);
            m4478drawArrowuDrxG_w(drawScope, path, rectM6026Rect3MmeM6k, j, fFloatValue, ArrowValues, f);
            return j59.a;
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 CircularArrowProgressIndicator_RPmYEkk$lambda$14(FloatProducer floatProducer, long j, int i, Composer composer, int i2) {
        m4476CircularArrowProgressIndicatorRPmYEkk(floatProducer, j, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float CircularArrowProgressIndicator_RPmYEkk$lambda$7$lambda$6(FloatProducer floatProducer) {
        if (floatProducer.invoke() >= 1.0f) {
            return 1.0f;
        }
        return MinAlpha;
    }

    private static final float CircularArrowProgressIndicator_RPmYEkk$lambda$8(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0112  */
    /* JADX WARN: Code duplicated, block: B:105:0x012e  */
    /* JADX WARN: Code duplicated, block: B:108:0x015e  */
    /* JADX WARN: Code duplicated, block: B:111:0x016a  */
    /* JADX WARN: Code duplicated, block: B:112:0x016e  */
    /* JADX WARN: Code duplicated, block: B:115:0x017f  */
    /* JADX WARN: Code duplicated, block: B:117:0x018d  */
    /* JADX WARN: Code duplicated, block: B:120:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:123:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:126:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:128:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0060  */
    /* JADX WARN: Code duplicated, block: B:38:0x0064  */
    /* JADX WARN: Code duplicated, block: B:40:0x006c  */
    /* JADX WARN: Code duplicated, block: B:41:0x006f  */
    /* JADX WARN: Code duplicated, block: B:44:0x0075  */
    /* JADX WARN: Code duplicated, block: B:47:0x007b  */
    /* JADX WARN: Code duplicated, block: B:49:0x0080  */
    /* JADX WARN: Code duplicated, block: B:51:0x0084  */
    /* JADX WARN: Code duplicated, block: B:53:0x008c  */
    /* JADX WARN: Code duplicated, block: B:54:0x008f  */
    /* JADX WARN: Code duplicated, block: B:58:0x0098  */
    /* JADX WARN: Code duplicated, block: B:60:0x009c  */
    /* JADX WARN: Code duplicated, block: B:62:0x009f  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:65:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:72:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:74:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:83:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:92:0x00f8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:93:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:96:0x0100  */
    /* JADX WARN: Code duplicated, block: B:98:0x0108  */
    /* JADX WARN: Code duplicated, block: B:99:0x010f  */
    public static final void PullToRefreshBox(final boolean z, final ll3<j59> ll3Var, Modifier modifier, PullToRefreshState pullToRefreshState, Alignment alignment, dm3<? super BoxScope, ? super Composer, ? super Integer, j59> dm3Var, final dm3<? super BoxScope, ? super Composer, ? super Integer, j59> dm3Var2, Composer composer, final int i, final int i2) {
        int i3;
        ll3<j59> ll3Var2;
        Modifier modifier2;
        final PullToRefreshState pullToRefreshStateRememberPullToRefreshState;
        int i4;
        Alignment alignment2;
        int i5;
        int i6;
        dm3<? super BoxScope, ? super Composer, ? super Integer, j59> dm3VarRememberComposableLambda;
        int i7;
        int i8;
        boolean z2;
        final Modifier modifier3;
        final PullToRefreshState pullToRefreshState2;
        final Alignment alignment3;
        final dm3<? super BoxScope, ? super Composer, ? super Integer, j59> dm3Var3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Alignment topStart;
        int i9;
        Modifier modifier4;
        PullToRefreshState pullToRefreshState3;
        int currentCompositeKeyHash;
        ll3<ComposeUiNode> constructor;
        Composer composerM5355constructorimpl;
        bm3 bm3VarB;
        Composer composerStartRestartGroup = composer.startRestartGroup(-532332839);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
            ll3Var2 = ll3Var;
        } else {
            ll3Var2 = ll3Var;
            if ((i & 48) == 0) {
                i3 |= composerStartRestartGroup.changedInstance(ll3Var2) ? 32 : 16;
            }
        }
        int i10 = i2 & 4;
        if (i10 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 256 : 128;
            }
            if ((i & 3072) == 0) {
                if ((i2 & 8) == 0) {
                    pullToRefreshStateRememberPullToRefreshState = pullToRefreshState;
                    int i11 = composerStartRestartGroup.changed(pullToRefreshStateRememberPullToRefreshState) ? 2048 : 1024;
                    i3 |= i11;
                } else {
                    pullToRefreshStateRememberPullToRefreshState = pullToRefreshState;
                }
                i3 |= i11;
            } else {
                pullToRefreshStateRememberPullToRefreshState = pullToRefreshState;
            }
            i4 = i2 & 16;
            if (i4 != 0) {
                if ((i & 24576) == 0) {
                    alignment2 = alignment;
                    if (composerStartRestartGroup.changed(alignment2)) {
                        i5 = 16384;
                    } else {
                        i5 = 8192;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    if ((196608 & i) == 0) {
                        dm3VarRememberComposableLambda = dm3Var;
                        if (composerStartRestartGroup.changedInstance(dm3VarRememberComposableLambda)) {
                            i7 = 131072;
                        } else {
                            i7 = 65536;
                        }
                        i3 |= i7;
                    }
                    if ((i2 & 64) != 0) {
                        i3 |= 1572864;
                    } else if ((i & 1572864) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                            i8 = 1048576;
                        } else {
                            i8 = 524288;
                        }
                        i3 |= i8;
                    }
                    if ((599187 & i3) != 599186) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                            if (i10 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 8) != 0) {
                                pullToRefreshStateRememberPullToRefreshState = rememberPullToRefreshState(composerStartRestartGroup, 0);
                                i3 &= -7169;
                            }
                            if (i4 != 0) {
                                topStart = Alignment.Companion.getTopStart();
                            } else {
                                topStart = alignment2;
                            }
                            if (i6 != 0) {
                                dm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1028036671, true, new dm3<BoxScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshKt.PullToRefreshBox.1
                                    public final void invoke(BoxScope boxScope, Composer composer2, int i12) {
                                        int i13;
                                        if ((i12 & 6) == 0) {
                                            i13 = (composer2.changed(boxScope) ? 4 : 2) | i12;
                                        } else {
                                            i13 = i12;
                                        }
                                        if (!composer2.shouldExecute((i13 & 19) != 18, i13 & 1)) {
                                            composer2.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1028036671, i13, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox.<anonymous> (PullToRefresh.kt:126)");
                                        }
                                        PullToRefreshDefaults.INSTANCE.m4469Indicator2poqoh4(pullToRefreshStateRememberPullToRefreshState, z, boxScope.align(Modifier.Companion, Alignment.Companion.getTopCenter()), 0L, 0L, 0.0f, composer2, 1572864, 56);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.dm3
                                    public /* bridge */ /* synthetic */ j59 invoke(BoxScope boxScope, Composer composer2, Integer num) {
                                        invoke(boxScope, composer2, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, 54);
                            }
                            i9 = i3;
                            modifier4 = modifier2;
                            pullToRefreshState3 = pullToRefreshStateRememberPullToRefreshState;
                            alignment2 = topStart;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            if ((i2 & 8) != 0) {
                                i3 &= -7169;
                            }
                            i9 = i3;
                            modifier4 = modifier2;
                            pullToRefreshState3 = pullToRefreshStateRememberPullToRefreshState;
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-532332839, i9, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox (PullToRefresh.kt:133)");
                        }
                        Modifier modifierM4481pullToRefreshZ4HSEVQ$default = m4481pullToRefreshZ4HSEVQ$default(modifier4, z, pullToRefreshState3, false, 0.0f, ll3Var2, 12, null);
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(alignment2, false);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM4481pullToRefreshZ4HSEVQ$default);
                        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                        constructor = companion.getConstructor();
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
                        bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        dm3Var2.invoke(boxScopeInstance, composerStartRestartGroup, Integer.valueOf(((i9 >> 15) & 112) | 6));
                        dm3VarRememberComposableLambda.invoke(boxScopeInstance, composerStartRestartGroup, Integer.valueOf(((i9 >> 12) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                        pullToRefreshState2 = pullToRefreshState3;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        pullToRefreshState2 = pullToRefreshStateRememberPullToRefreshState;
                    }
                    alignment3 = alignment2;
                    dm3Var3 = dm3VarRememberComposableLambda;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mt6
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return PullToRefreshKt.PullToRefreshBox$lambda$1(z, ll3Var, modifier3, pullToRefreshState2, alignment3, dm3Var3, dm3Var2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                dm3VarRememberComposableLambda = dm3Var;
                if ((i2 & 64) != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i3 |= i8;
                }
                if ((599187 & i3) != 599186) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i10 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 8) != 0) {
                            pullToRefreshStateRememberPullToRefreshState = rememberPullToRefreshState(composerStartRestartGroup, 0);
                            i3 &= -7169;
                        }
                        if (i4 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                        } else {
                            topStart = alignment2;
                        }
                        if (i6 != 0) {
                            dm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1028036671, true, new dm3<BoxScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshKt.PullToRefreshBox.1
                                public final void invoke(BoxScope boxScope, Composer composer2, int i12) {
                                    int i13;
                                    if ((i12 & 6) == 0) {
                                        i13 = (composer2.changed(boxScope) ? 4 : 2) | i12;
                                    } else {
                                        i13 = i12;
                                    }
                                    if (!composer2.shouldExecute((i13 & 19) != 18, i13 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1028036671, i13, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox.<anonymous> (PullToRefresh.kt:126)");
                                    }
                                    PullToRefreshDefaults.INSTANCE.m4469Indicator2poqoh4(pullToRefreshStateRememberPullToRefreshState, z, boxScope.align(Modifier.Companion, Alignment.Companion.getTopCenter()), 0L, 0L, 0.0f, composer2, 1572864, 56);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(BoxScope boxScope, Composer composer2, Integer num) {
                                    invoke(boxScope, composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                        }
                        i9 = i3;
                        modifier4 = modifier2;
                        pullToRefreshState3 = pullToRefreshStateRememberPullToRefreshState;
                        alignment2 = topStart;
                    } else {
                        if (i10 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 8) != 0) {
                            pullToRefreshStateRememberPullToRefreshState = rememberPullToRefreshState(composerStartRestartGroup, 0);
                            i3 &= -7169;
                        }
                        if (i4 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                        } else {
                            topStart = alignment2;
                        }
                        if (i6 != 0) {
                            dm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1028036671, true, new dm3<BoxScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshKt.PullToRefreshBox.1
                                public final void invoke(BoxScope boxScope, Composer composer2, int i12) {
                                    int i13;
                                    if ((i12 & 6) == 0) {
                                        i13 = (composer2.changed(boxScope) ? 4 : 2) | i12;
                                    } else {
                                        i13 = i12;
                                    }
                                    if (!composer2.shouldExecute((i13 & 19) != 18, i13 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1028036671, i13, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox.<anonymous> (PullToRefresh.kt:126)");
                                    }
                                    PullToRefreshDefaults.INSTANCE.m4469Indicator2poqoh4(pullToRefreshStateRememberPullToRefreshState, z, boxScope.align(Modifier.Companion, Alignment.Companion.getTopCenter()), 0L, 0L, 0.0f, composer2, 1572864, 56);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(BoxScope boxScope, Composer composer2, Integer num) {
                                    invoke(boxScope, composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                        }
                        i9 = i3;
                        modifier4 = modifier2;
                        pullToRefreshState3 = pullToRefreshStateRememberPullToRefreshState;
                        alignment2 = topStart;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532332839, i9, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox (PullToRefresh.kt:133)");
                    }
                    Modifier modifierM4481pullToRefreshZ4HSEVQ$default2 = m4481pullToRefreshZ4HSEVQ$default(modifier4, z, pullToRefreshState3, false, 0.0f, ll3Var2, 12, null);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(alignment2, false);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM4481pullToRefreshZ4HSEVQ$default2);
                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                    constructor = companion2.getConstructor();
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
                    bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl, currentCompositionLocalMap2);
                    if (composerM5355constructorimpl.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion2.getSetModifier());
                    BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                    dm3Var2.invoke(boxScopeInstance2, composerStartRestartGroup, Integer.valueOf(((i9 >> 15) & 112) | 6));
                    dm3VarRememberComposableLambda.invoke(boxScopeInstance2, composerStartRestartGroup, Integer.valueOf(((i9 >> 12) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    pullToRefreshState2 = pullToRefreshState3;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    pullToRefreshState2 = pullToRefreshStateRememberPullToRefreshState;
                }
                alignment3 = alignment2;
                dm3Var3 = dm3VarRememberComposableLambda;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mt6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return PullToRefreshKt.PullToRefreshBox$lambda$1(z, ll3Var, modifier3, pullToRefreshState2, alignment3, dm3Var3, dm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            alignment2 = alignment;
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    dm3VarRememberComposableLambda = dm3Var;
                    if (composerStartRestartGroup.changedInstance(dm3VarRememberComposableLambda)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((i2 & 64) != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i3 |= i8;
                }
                if ((599187 & i3) != 599186) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i10 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 8) != 0) {
                            pullToRefreshStateRememberPullToRefreshState = rememberPullToRefreshState(composerStartRestartGroup, 0);
                            i3 &= -7169;
                        }
                        if (i4 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                        } else {
                            topStart = alignment2;
                        }
                        if (i6 != 0) {
                            dm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1028036671, true, new dm3<BoxScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshKt.PullToRefreshBox.1
                                public final void invoke(BoxScope boxScope, Composer composer2, int i12) {
                                    int i13;
                                    if ((i12 & 6) == 0) {
                                        i13 = (composer2.changed(boxScope) ? 4 : 2) | i12;
                                    } else {
                                        i13 = i12;
                                    }
                                    if (!composer2.shouldExecute((i13 & 19) != 18, i13 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1028036671, i13, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox.<anonymous> (PullToRefresh.kt:126)");
                                    }
                                    PullToRefreshDefaults.INSTANCE.m4469Indicator2poqoh4(pullToRefreshStateRememberPullToRefreshState, z, boxScope.align(Modifier.Companion, Alignment.Companion.getTopCenter()), 0L, 0L, 0.0f, composer2, 1572864, 56);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(BoxScope boxScope, Composer composer2, Integer num) {
                                    invoke(boxScope, composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                        }
                        i9 = i3;
                        modifier4 = modifier2;
                        pullToRefreshState3 = pullToRefreshStateRememberPullToRefreshState;
                        alignment2 = topStart;
                    } else {
                        if (i10 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 8) != 0) {
                            pullToRefreshStateRememberPullToRefreshState = rememberPullToRefreshState(composerStartRestartGroup, 0);
                            i3 &= -7169;
                        }
                        if (i4 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                        } else {
                            topStart = alignment2;
                        }
                        if (i6 != 0) {
                            dm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1028036671, true, new dm3<BoxScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshKt.PullToRefreshBox.1
                                public final void invoke(BoxScope boxScope, Composer composer2, int i12) {
                                    int i13;
                                    if ((i12 & 6) == 0) {
                                        i13 = (composer2.changed(boxScope) ? 4 : 2) | i12;
                                    } else {
                                        i13 = i12;
                                    }
                                    if (!composer2.shouldExecute((i13 & 19) != 18, i13 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1028036671, i13, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox.<anonymous> (PullToRefresh.kt:126)");
                                    }
                                    PullToRefreshDefaults.INSTANCE.m4469Indicator2poqoh4(pullToRefreshStateRememberPullToRefreshState, z, boxScope.align(Modifier.Companion, Alignment.Companion.getTopCenter()), 0L, 0L, 0.0f, composer2, 1572864, 56);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(BoxScope boxScope, Composer composer2, Integer num) {
                                    invoke(boxScope, composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                        }
                        i9 = i3;
                        modifier4 = modifier2;
                        pullToRefreshState3 = pullToRefreshStateRememberPullToRefreshState;
                        alignment2 = topStart;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532332839, i9, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox (PullToRefresh.kt:133)");
                    }
                    Modifier modifierM4481pullToRefreshZ4HSEVQ$default3 = m4481pullToRefreshZ4HSEVQ$default(modifier4, z, pullToRefreshState3, false, 0.0f, ll3Var2, 12, null);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(alignment2, false);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM4481pullToRefreshZ4HSEVQ$default3);
                    ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
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
                    bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy3, composerM5355constructorimpl, currentCompositionLocalMap3);
                    if (composerM5355constructorimpl.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier3, companion3.getSetModifier());
                    BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                    dm3Var2.invoke(boxScopeInstance3, composerStartRestartGroup, Integer.valueOf(((i9 >> 15) & 112) | 6));
                    dm3VarRememberComposableLambda.invoke(boxScopeInstance3, composerStartRestartGroup, Integer.valueOf(((i9 >> 12) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    pullToRefreshState2 = pullToRefreshState3;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    pullToRefreshState2 = pullToRefreshStateRememberPullToRefreshState;
                }
                alignment3 = alignment2;
                dm3Var3 = dm3VarRememberComposableLambda;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mt6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return PullToRefreshKt.PullToRefreshBox$lambda$1(z, ll3Var, modifier3, pullToRefreshState2, alignment3, dm3Var3, dm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            dm3VarRememberComposableLambda = dm3Var;
            if ((i2 & 64) != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i3 |= i8;
            }
            if ((599187 & i3) != 599186) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i10 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 8) != 0) {
                        pullToRefreshStateRememberPullToRefreshState = rememberPullToRefreshState(composerStartRestartGroup, 0);
                        i3 &= -7169;
                    }
                    if (i4 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                    } else {
                        topStart = alignment2;
                    }
                    if (i6 != 0) {
                        dm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1028036671, true, new dm3<BoxScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshKt.PullToRefreshBox.1
                            public final void invoke(BoxScope boxScope, Composer composer2, int i12) {
                                int i13;
                                if ((i12 & 6) == 0) {
                                    i13 = (composer2.changed(boxScope) ? 4 : 2) | i12;
                                } else {
                                    i13 = i12;
                                }
                                if (!composer2.shouldExecute((i13 & 19) != 18, i13 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1028036671, i13, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox.<anonymous> (PullToRefresh.kt:126)");
                                }
                                PullToRefreshDefaults.INSTANCE.m4469Indicator2poqoh4(pullToRefreshStateRememberPullToRefreshState, z, boxScope.align(Modifier.Companion, Alignment.Companion.getTopCenter()), 0L, 0L, 0.0f, composer2, 1572864, 56);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(BoxScope boxScope, Composer composer2, Integer num) {
                                invoke(boxScope, composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                    }
                    i9 = i3;
                    modifier4 = modifier2;
                    pullToRefreshState3 = pullToRefreshStateRememberPullToRefreshState;
                    alignment2 = topStart;
                } else {
                    if (i10 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 8) != 0) {
                        pullToRefreshStateRememberPullToRefreshState = rememberPullToRefreshState(composerStartRestartGroup, 0);
                        i3 &= -7169;
                    }
                    if (i4 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                    } else {
                        topStart = alignment2;
                    }
                    if (i6 != 0) {
                        dm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1028036671, true, new dm3<BoxScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshKt.PullToRefreshBox.1
                            public final void invoke(BoxScope boxScope, Composer composer2, int i12) {
                                int i13;
                                if ((i12 & 6) == 0) {
                                    i13 = (composer2.changed(boxScope) ? 4 : 2) | i12;
                                } else {
                                    i13 = i12;
                                }
                                if (!composer2.shouldExecute((i13 & 19) != 18, i13 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1028036671, i13, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox.<anonymous> (PullToRefresh.kt:126)");
                                }
                                PullToRefreshDefaults.INSTANCE.m4469Indicator2poqoh4(pullToRefreshStateRememberPullToRefreshState, z, boxScope.align(Modifier.Companion, Alignment.Companion.getTopCenter()), 0L, 0L, 0.0f, composer2, 1572864, 56);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(BoxScope boxScope, Composer composer2, Integer num) {
                                invoke(boxScope, composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                    }
                    i9 = i3;
                    modifier4 = modifier2;
                    pullToRefreshState3 = pullToRefreshStateRememberPullToRefreshState;
                    alignment2 = topStart;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-532332839, i9, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox (PullToRefresh.kt:133)");
                }
                Modifier modifierM4481pullToRefreshZ4HSEVQ$default4 = m4481pullToRefreshZ4HSEVQ$default(modifier4, z, pullToRefreshState3, false, 0.0f, ll3Var2, 12, null);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(alignment2, false);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM4481pullToRefreshZ4HSEVQ$default4);
                ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                constructor = companion4.getConstructor();
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
                bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy4, composerM5355constructorimpl, currentCompositionLocalMap4);
                if (composerM5355constructorimpl.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier4, companion4.getSetModifier());
                BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                dm3Var2.invoke(boxScopeInstance4, composerStartRestartGroup, Integer.valueOf(((i9 >> 15) & 112) | 6));
                dm3VarRememberComposableLambda.invoke(boxScopeInstance4, composerStartRestartGroup, Integer.valueOf(((i9 >> 12) & 112) | 6));
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                pullToRefreshState2 = pullToRefreshState3;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                pullToRefreshState2 = pullToRefreshStateRememberPullToRefreshState;
            }
            alignment3 = alignment2;
            dm3Var3 = dm3VarRememberComposableLambda;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mt6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return PullToRefreshKt.PullToRefreshBox$lambda$1(z, ll3Var, modifier3, pullToRefreshState2, alignment3, dm3Var3, dm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        if ((i & 3072) == 0) {
            if ((i2 & 8) == 0) {
                pullToRefreshStateRememberPullToRefreshState = pullToRefreshState;
                if (composerStartRestartGroup.changed(pullToRefreshStateRememberPullToRefreshState)) {
                }
                i3 |= i11;
            } else {
                pullToRefreshStateRememberPullToRefreshState = pullToRefreshState;
            }
            i3 |= i11;
        } else {
            pullToRefreshStateRememberPullToRefreshState = pullToRefreshState;
        }
        i4 = i2 & 16;
        if (i4 != 0) {
            if ((i & 24576) == 0) {
                alignment2 = alignment;
                if (composerStartRestartGroup.changed(alignment2)) {
                    i5 = 16384;
                } else {
                    i5 = 8192;
                }
                i3 |= i5;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    dm3VarRememberComposableLambda = dm3Var;
                    if (composerStartRestartGroup.changedInstance(dm3VarRememberComposableLambda)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                if ((i2 & 64) != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i3 |= i8;
                }
                if ((599187 & i3) != 599186) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i10 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 8) != 0) {
                            pullToRefreshStateRememberPullToRefreshState = rememberPullToRefreshState(composerStartRestartGroup, 0);
                            i3 &= -7169;
                        }
                        if (i4 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                        } else {
                            topStart = alignment2;
                        }
                        if (i6 != 0) {
                            dm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1028036671, true, new dm3<BoxScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshKt.PullToRefreshBox.1
                                public final void invoke(BoxScope boxScope, Composer composer2, int i12) {
                                    int i13;
                                    if ((i12 & 6) == 0) {
                                        i13 = (composer2.changed(boxScope) ? 4 : 2) | i12;
                                    } else {
                                        i13 = i12;
                                    }
                                    if (!composer2.shouldExecute((i13 & 19) != 18, i13 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1028036671, i13, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox.<anonymous> (PullToRefresh.kt:126)");
                                    }
                                    PullToRefreshDefaults.INSTANCE.m4469Indicator2poqoh4(pullToRefreshStateRememberPullToRefreshState, z, boxScope.align(Modifier.Companion, Alignment.Companion.getTopCenter()), 0L, 0L, 0.0f, composer2, 1572864, 56);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(BoxScope boxScope, Composer composer2, Integer num) {
                                    invoke(boxScope, composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                        }
                        i9 = i3;
                        modifier4 = modifier2;
                        pullToRefreshState3 = pullToRefreshStateRememberPullToRefreshState;
                        alignment2 = topStart;
                    } else {
                        if (i10 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 8) != 0) {
                            pullToRefreshStateRememberPullToRefreshState = rememberPullToRefreshState(composerStartRestartGroup, 0);
                            i3 &= -7169;
                        }
                        if (i4 != 0) {
                            topStart = Alignment.Companion.getTopStart();
                        } else {
                            topStart = alignment2;
                        }
                        if (i6 != 0) {
                            dm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1028036671, true, new dm3<BoxScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshKt.PullToRefreshBox.1
                                public final void invoke(BoxScope boxScope, Composer composer2, int i12) {
                                    int i13;
                                    if ((i12 & 6) == 0) {
                                        i13 = (composer2.changed(boxScope) ? 4 : 2) | i12;
                                    } else {
                                        i13 = i12;
                                    }
                                    if (!composer2.shouldExecute((i13 & 19) != 18, i13 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1028036671, i13, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox.<anonymous> (PullToRefresh.kt:126)");
                                    }
                                    PullToRefreshDefaults.INSTANCE.m4469Indicator2poqoh4(pullToRefreshStateRememberPullToRefreshState, z, boxScope.align(Modifier.Companion, Alignment.Companion.getTopCenter()), 0L, 0L, 0.0f, composer2, 1572864, 56);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(BoxScope boxScope, Composer composer2, Integer num) {
                                    invoke(boxScope, composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54);
                        }
                        i9 = i3;
                        modifier4 = modifier2;
                        pullToRefreshState3 = pullToRefreshStateRememberPullToRefreshState;
                        alignment2 = topStart;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-532332839, i9, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox (PullToRefresh.kt:133)");
                    }
                    Modifier modifierM4481pullToRefreshZ4HSEVQ$default5 = m4481pullToRefreshZ4HSEVQ$default(modifier4, z, pullToRefreshState3, false, 0.0f, ll3Var2, 12, null);
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy5 = BoxKt.maybeCachedBoxMeasurePolicy(alignment2, false);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM4481pullToRefreshZ4HSEVQ$default5);
                    ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
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
                    bm3VarB = cc.b(companion5, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy5, composerM5355constructorimpl, currentCompositionLocalMap5);
                    if (composerM5355constructorimpl.getInserting()) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    } else {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier5, companion5.getSetModifier());
                    BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
                    dm3Var2.invoke(boxScopeInstance5, composerStartRestartGroup, Integer.valueOf(((i9 >> 15) & 112) | 6));
                    dm3VarRememberComposableLambda.invoke(boxScopeInstance5, composerStartRestartGroup, Integer.valueOf(((i9 >> 12) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier4;
                    pullToRefreshState2 = pullToRefreshState3;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    pullToRefreshState2 = pullToRefreshStateRememberPullToRefreshState;
                }
                alignment3 = alignment2;
                dm3Var3 = dm3VarRememberComposableLambda;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mt6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return PullToRefreshKt.PullToRefreshBox$lambda$1(z, ll3Var, modifier3, pullToRefreshState2, alignment3, dm3Var3, dm3Var2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            dm3VarRememberComposableLambda = dm3Var;
            if ((i2 & 64) != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i3 |= i8;
            }
            if ((599187 & i3) != 599186) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i10 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 8) != 0) {
                        pullToRefreshStateRememberPullToRefreshState = rememberPullToRefreshState(composerStartRestartGroup, 0);
                        i3 &= -7169;
                    }
                    if (i4 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                    } else {
                        topStart = alignment2;
                    }
                    if (i6 != 0) {
                        dm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1028036671, true, new dm3<BoxScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshKt.PullToRefreshBox.1
                            public final void invoke(BoxScope boxScope, Composer composer2, int i12) {
                                int i13;
                                if ((i12 & 6) == 0) {
                                    i13 = (composer2.changed(boxScope) ? 4 : 2) | i12;
                                } else {
                                    i13 = i12;
                                }
                                if (!composer2.shouldExecute((i13 & 19) != 18, i13 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1028036671, i13, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox.<anonymous> (PullToRefresh.kt:126)");
                                }
                                PullToRefreshDefaults.INSTANCE.m4469Indicator2poqoh4(pullToRefreshStateRememberPullToRefreshState, z, boxScope.align(Modifier.Companion, Alignment.Companion.getTopCenter()), 0L, 0L, 0.0f, composer2, 1572864, 56);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(BoxScope boxScope, Composer composer2, Integer num) {
                                invoke(boxScope, composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                    }
                    i9 = i3;
                    modifier4 = modifier2;
                    pullToRefreshState3 = pullToRefreshStateRememberPullToRefreshState;
                    alignment2 = topStart;
                } else {
                    if (i10 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 8) != 0) {
                        pullToRefreshStateRememberPullToRefreshState = rememberPullToRefreshState(composerStartRestartGroup, 0);
                        i3 &= -7169;
                    }
                    if (i4 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                    } else {
                        topStart = alignment2;
                    }
                    if (i6 != 0) {
                        dm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1028036671, true, new dm3<BoxScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshKt.PullToRefreshBox.1
                            public final void invoke(BoxScope boxScope, Composer composer2, int i12) {
                                int i13;
                                if ((i12 & 6) == 0) {
                                    i13 = (composer2.changed(boxScope) ? 4 : 2) | i12;
                                } else {
                                    i13 = i12;
                                }
                                if (!composer2.shouldExecute((i13 & 19) != 18, i13 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1028036671, i13, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox.<anonymous> (PullToRefresh.kt:126)");
                                }
                                PullToRefreshDefaults.INSTANCE.m4469Indicator2poqoh4(pullToRefreshStateRememberPullToRefreshState, z, boxScope.align(Modifier.Companion, Alignment.Companion.getTopCenter()), 0L, 0L, 0.0f, composer2, 1572864, 56);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(BoxScope boxScope, Composer composer2, Integer num) {
                                invoke(boxScope, composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                    }
                    i9 = i3;
                    modifier4 = modifier2;
                    pullToRefreshState3 = pullToRefreshStateRememberPullToRefreshState;
                    alignment2 = topStart;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-532332839, i9, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox (PullToRefresh.kt:133)");
                }
                Modifier modifierM4481pullToRefreshZ4HSEVQ$default6 = m4481pullToRefreshZ4HSEVQ$default(modifier4, z, pullToRefreshState3, false, 0.0f, ll3Var2, 12, null);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy6 = BoxKt.maybeCachedBoxMeasurePolicy(alignment2, false);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap6 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM4481pullToRefreshZ4HSEVQ$default6);
                ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                constructor = companion6.getConstructor();
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
                bm3VarB = cc.b(companion6, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy6, composerM5355constructorimpl, currentCompositionLocalMap6);
                if (composerM5355constructorimpl.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier6, companion6.getSetModifier());
                BoxScopeInstance boxScopeInstance6 = BoxScopeInstance.INSTANCE;
                dm3Var2.invoke(boxScopeInstance6, composerStartRestartGroup, Integer.valueOf(((i9 >> 15) & 112) | 6));
                dm3VarRememberComposableLambda.invoke(boxScopeInstance6, composerStartRestartGroup, Integer.valueOf(((i9 >> 12) & 112) | 6));
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                pullToRefreshState2 = pullToRefreshState3;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                pullToRefreshState2 = pullToRefreshStateRememberPullToRefreshState;
            }
            alignment3 = alignment2;
            dm3Var3 = dm3VarRememberComposableLambda;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mt6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return PullToRefreshKt.PullToRefreshBox$lambda$1(z, ll3Var, modifier3, pullToRefreshState2, alignment3, dm3Var3, dm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        alignment2 = alignment;
        i6 = i2 & 32;
        if (i6 != 0) {
            if ((196608 & i) == 0) {
                dm3VarRememberComposableLambda = dm3Var;
                if (composerStartRestartGroup.changedInstance(dm3VarRememberComposableLambda)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            if ((i2 & 64) != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i3 |= i8;
            }
            if ((599187 & i3) != 599186) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i10 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 8) != 0) {
                        pullToRefreshStateRememberPullToRefreshState = rememberPullToRefreshState(composerStartRestartGroup, 0);
                        i3 &= -7169;
                    }
                    if (i4 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                    } else {
                        topStart = alignment2;
                    }
                    if (i6 != 0) {
                        dm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1028036671, true, new dm3<BoxScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshKt.PullToRefreshBox.1
                            public final void invoke(BoxScope boxScope, Composer composer2, int i12) {
                                int i13;
                                if ((i12 & 6) == 0) {
                                    i13 = (composer2.changed(boxScope) ? 4 : 2) | i12;
                                } else {
                                    i13 = i12;
                                }
                                if (!composer2.shouldExecute((i13 & 19) != 18, i13 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1028036671, i13, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox.<anonymous> (PullToRefresh.kt:126)");
                                }
                                PullToRefreshDefaults.INSTANCE.m4469Indicator2poqoh4(pullToRefreshStateRememberPullToRefreshState, z, boxScope.align(Modifier.Companion, Alignment.Companion.getTopCenter()), 0L, 0L, 0.0f, composer2, 1572864, 56);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(BoxScope boxScope, Composer composer2, Integer num) {
                                invoke(boxScope, composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                    }
                    i9 = i3;
                    modifier4 = modifier2;
                    pullToRefreshState3 = pullToRefreshStateRememberPullToRefreshState;
                    alignment2 = topStart;
                } else {
                    if (i10 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 8) != 0) {
                        pullToRefreshStateRememberPullToRefreshState = rememberPullToRefreshState(composerStartRestartGroup, 0);
                        i3 &= -7169;
                    }
                    if (i4 != 0) {
                        topStart = Alignment.Companion.getTopStart();
                    } else {
                        topStart = alignment2;
                    }
                    if (i6 != 0) {
                        dm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1028036671, true, new dm3<BoxScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshKt.PullToRefreshBox.1
                            public final void invoke(BoxScope boxScope, Composer composer2, int i12) {
                                int i13;
                                if ((i12 & 6) == 0) {
                                    i13 = (composer2.changed(boxScope) ? 4 : 2) | i12;
                                } else {
                                    i13 = i12;
                                }
                                if (!composer2.shouldExecute((i13 & 19) != 18, i13 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1028036671, i13, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox.<anonymous> (PullToRefresh.kt:126)");
                                }
                                PullToRefreshDefaults.INSTANCE.m4469Indicator2poqoh4(pullToRefreshStateRememberPullToRefreshState, z, boxScope.align(Modifier.Companion, Alignment.Companion.getTopCenter()), 0L, 0L, 0.0f, composer2, 1572864, 56);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(BoxScope boxScope, Composer composer2, Integer num) {
                                invoke(boxScope, composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54);
                    }
                    i9 = i3;
                    modifier4 = modifier2;
                    pullToRefreshState3 = pullToRefreshStateRememberPullToRefreshState;
                    alignment2 = topStart;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-532332839, i9, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox (PullToRefresh.kt:133)");
                }
                Modifier modifierM4481pullToRefreshZ4HSEVQ$default7 = m4481pullToRefreshZ4HSEVQ$default(modifier4, z, pullToRefreshState3, false, 0.0f, ll3Var2, 12, null);
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy7 = BoxKt.maybeCachedBoxMeasurePolicy(alignment2, false);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap7 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier7 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM4481pullToRefreshZ4HSEVQ$default7);
                ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
                constructor = companion7.getConstructor();
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
                bm3VarB = cc.b(companion7, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy7, composerM5355constructorimpl, currentCompositionLocalMap7);
                if (composerM5355constructorimpl.getInserting()) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                } else {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier7, companion7.getSetModifier());
                BoxScopeInstance boxScopeInstance7 = BoxScopeInstance.INSTANCE;
                dm3Var2.invoke(boxScopeInstance7, composerStartRestartGroup, Integer.valueOf(((i9 >> 15) & 112) | 6));
                dm3VarRememberComposableLambda.invoke(boxScopeInstance7, composerStartRestartGroup, Integer.valueOf(((i9 >> 12) & 112) | 6));
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier4;
                pullToRefreshState2 = pullToRefreshState3;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                pullToRefreshState2 = pullToRefreshStateRememberPullToRefreshState;
            }
            alignment3 = alignment2;
            dm3Var3 = dm3VarRememberComposableLambda;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mt6
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return PullToRefreshKt.PullToRefreshBox$lambda$1(z, ll3Var, modifier3, pullToRefreshState2, alignment3, dm3Var3, dm3Var2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        dm3VarRememberComposableLambda = dm3Var;
        if ((i2 & 64) != 0) {
            i3 |= 1572864;
        } else if ((i & 1572864) == 0) {
            if (composerStartRestartGroup.changedInstance(dm3Var2)) {
                i8 = 1048576;
            } else {
                i8 = 524288;
            }
            i3 |= i8;
        }
        if ((599187 & i3) != 599186) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i10 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i2 & 8) != 0) {
                    pullToRefreshStateRememberPullToRefreshState = rememberPullToRefreshState(composerStartRestartGroup, 0);
                    i3 &= -7169;
                }
                if (i4 != 0) {
                    topStart = Alignment.Companion.getTopStart();
                } else {
                    topStart = alignment2;
                }
                if (i6 != 0) {
                    dm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1028036671, true, new dm3<BoxScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshKt.PullToRefreshBox.1
                        public final void invoke(BoxScope boxScope, Composer composer2, int i12) {
                            int i13;
                            if ((i12 & 6) == 0) {
                                i13 = (composer2.changed(boxScope) ? 4 : 2) | i12;
                            } else {
                                i13 = i12;
                            }
                            if (!composer2.shouldExecute((i13 & 19) != 18, i13 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1028036671, i13, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox.<anonymous> (PullToRefresh.kt:126)");
                            }
                            PullToRefreshDefaults.INSTANCE.m4469Indicator2poqoh4(pullToRefreshStateRememberPullToRefreshState, z, boxScope.align(Modifier.Companion, Alignment.Companion.getTopCenter()), 0L, 0L, 0.0f, composer2, 1572864, 56);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(BoxScope boxScope, Composer composer2, Integer num) {
                            invoke(boxScope, composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                }
                i9 = i3;
                modifier4 = modifier2;
                pullToRefreshState3 = pullToRefreshStateRememberPullToRefreshState;
                alignment2 = topStart;
            } else {
                if (i10 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i2 & 8) != 0) {
                    pullToRefreshStateRememberPullToRefreshState = rememberPullToRefreshState(composerStartRestartGroup, 0);
                    i3 &= -7169;
                }
                if (i4 != 0) {
                    topStart = Alignment.Companion.getTopStart();
                } else {
                    topStart = alignment2;
                }
                if (i6 != 0) {
                    dm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1028036671, true, new dm3<BoxScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshKt.PullToRefreshBox.1
                        public final void invoke(BoxScope boxScope, Composer composer2, int i12) {
                            int i13;
                            if ((i12 & 6) == 0) {
                                i13 = (composer2.changed(boxScope) ? 4 : 2) | i12;
                            } else {
                                i13 = i12;
                            }
                            if (!composer2.shouldExecute((i13 & 19) != 18, i13 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1028036671, i13, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox.<anonymous> (PullToRefresh.kt:126)");
                            }
                            PullToRefreshDefaults.INSTANCE.m4469Indicator2poqoh4(pullToRefreshStateRememberPullToRefreshState, z, boxScope.align(Modifier.Companion, Alignment.Companion.getTopCenter()), 0L, 0L, 0.0f, composer2, 1572864, 56);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(BoxScope boxScope, Composer composer2, Integer num) {
                            invoke(boxScope, composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54);
                }
                i9 = i3;
                modifier4 = modifier2;
                pullToRefreshState3 = pullToRefreshStateRememberPullToRefreshState;
                alignment2 = topStart;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-532332839, i9, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshBox (PullToRefresh.kt:133)");
            }
            Modifier modifierM4481pullToRefreshZ4HSEVQ$default8 = m4481pullToRefreshZ4HSEVQ$default(modifier4, z, pullToRefreshState3, false, 0.0f, ll3Var2, 12, null);
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy8 = BoxKt.maybeCachedBoxMeasurePolicy(alignment2, false);
            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap8 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier8 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM4481pullToRefreshZ4HSEVQ$default8);
            ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
            constructor = companion8.getConstructor();
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
            bm3VarB = cc.b(companion8, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy8, composerM5355constructorimpl, currentCompositionLocalMap8);
            if (composerM5355constructorimpl.getInserting()) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            } else {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier8, companion8.getSetModifier());
            BoxScopeInstance boxScopeInstance8 = BoxScopeInstance.INSTANCE;
            dm3Var2.invoke(boxScopeInstance8, composerStartRestartGroup, Integer.valueOf(((i9 >> 15) & 112) | 6));
            dm3VarRememberComposableLambda.invoke(boxScopeInstance8, composerStartRestartGroup, Integer.valueOf(((i9 >> 12) & 112) | 6));
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
            pullToRefreshState2 = pullToRefreshState3;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            pullToRefreshState2 = pullToRefreshStateRememberPullToRefreshState;
        }
        alignment3 = alignment2;
        dm3Var3 = dm3VarRememberComposableLambda;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: mt6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return PullToRefreshKt.PullToRefreshBox$lambda$1(z, ll3Var, modifier3, pullToRefreshState2, alignment3, dm3Var3, dm3Var2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 PullToRefreshBox$lambda$1(boolean z, ll3 ll3Var, Modifier modifier, PullToRefreshState pullToRefreshState, Alignment alignment, dm3 dm3Var, dm3 dm3Var2, int i, int i2, Composer composer, int i3) {
        PullToRefreshBox(z, ll3Var, modifier, pullToRefreshState, alignment, dm3Var, dm3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    public static final PullToRefreshState PullToRefreshState() {
        return new PullToRefreshStateImpl();
    }

    /* JADX INFO: renamed from: drawArrow-uDrxG_w, reason: not valid java name */
    private static final void m4478drawArrowuDrxG_w(DrawScope drawScope, Path path, Rect rect, long j, float f, ArrowValues arrowValues, float f2) {
        path.reset();
        path.moveTo(0.0f, 0.0f);
        float f3 = ArrowWidth;
        path.lineTo((drawScope.mo1434toPx0680j_4(f3) * arrowValues.getScale()) / 2.0f, drawScope.mo1434toPx0680j_4(ArrowHeight) * arrowValues.getScale());
        path.lineTo(drawScope.mo1434toPx0680j_4(f3) * arrowValues.getScale(), 0.0f);
        float fMin = Math.min(rect.getRight() - rect.getLeft(), rect.getBottom() - rect.getTop()) / 2.0f;
        float fIntBitsToFloat = (Float.intBitsToFloat((int) (rect.m6017getCenterF1C5BW0() >> 32)) + fMin) - ((drawScope.mo1434toPx0680j_4(f3) * arrowValues.getScale()) / 2.0f);
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (rect.m6017getCenterF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - drawScope.mo1434toPx0680j_4(f2);
        path.mo6124translatek4lQ0M(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        float endAngle = arrowValues.getEndAngle() - drawScope.mo1434toPx0680j_4(f2);
        long jMo6805getCenterF1C5BW0 = drawScope.mo6805getCenterF1C5BW0();
        DrawContext drawContext = drawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6733rotateUv8p0NA(endAngle, jMo6805getCenterF1C5BW0);
            DrawScope.m6796drawPathLG529CI$default(drawScope, path, j, f, new Stroke(drawScope.mo1434toPx0680j_4(f2), 0.0f, 0, 0, null, 30, null), null, 0, 48, null);
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    /* JADX INFO: renamed from: drawCircularIndicator-KzyDr3Q, reason: not valid java name */
    private static final void m4479drawCircularIndicatorKzyDr3Q(DrawScope drawScope, long j, float f, ArrowValues arrowValues, Rect rect, float f2) {
        DrawScope.m6785drawArcyD3GUKo$default(drawScope, j, arrowValues.getStartAngle(), arrowValues.getEndAngle() - arrowValues.getStartAngle(), false, rect.m6022getTopLeftF1C5BW0(), rect.m6020getSizeNHjbRc(), f, new Stroke(drawScope.mo1434toPx0680j_4(f2), 0.0f, StrokeCap.Companion.m6606getButtKaPHkGw(), 0, null, 26, null), null, 0, ViewUtils.EDGE_TO_EDGE_FLAGS, null);
    }

    public static final float getSpinnerContainerSize() {
        return SpinnerContainerSize;
    }

    public static final float getSpinnerSize() {
        return SpinnerSize;
    }

    /* JADX INFO: renamed from: pullToRefresh-Z4HSEVQ, reason: not valid java name */
    public static final Modifier m4480pullToRefreshZ4HSEVQ(Modifier modifier, boolean z, PullToRefreshState pullToRefreshState, boolean z2, float f, ll3<j59> ll3Var) {
        return modifier.then(new PullToRefreshElement(z, ll3Var, z2, pullToRefreshState, f, null));
    }

    /* JADX INFO: renamed from: pullToRefresh-Z4HSEVQ$default, reason: not valid java name */
    public static /* synthetic */ Modifier m4481pullToRefreshZ4HSEVQ$default(Modifier modifier, boolean z, PullToRefreshState pullToRefreshState, boolean z2, float f, ll3 ll3Var, int i, Object obj) {
        if ((i & 4) != 0) {
            z2 = true;
        }
        boolean z3 = z2;
        if ((i & 8) != 0) {
            f = PullToRefreshDefaults.INSTANCE.m4474getPositionalThresholdD9Ej5fM();
        }
        return m4480pullToRefreshZ4HSEVQ(modifier, z, pullToRefreshState, z3, f, ll3Var);
    }

    public static final PullToRefreshState rememberPullToRefreshState(Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(318623070, i, -1, "androidx.compose.material3.pulltorefresh.rememberPullToRefreshState (PullToRefresh.kt:585)");
        }
        int i2 = 0;
        Object[] objArr = new Object[0];
        Saver<PullToRefreshStateImpl, Float> saver = PullToRefreshStateImpl.Companion.getSaver();
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new nt6(i2);
            composer.updateRememberedValue(objRememberedValue);
        }
        PullToRefreshStateImpl pullToRefreshStateImpl = (PullToRefreshStateImpl) RememberSaveableKt.m5624rememberSaveable(objArr, (Saver) saver, (ll3) objRememberedValue, composer, RendererCapabilities.DECODER_SUPPORT_MASK);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return pullToRefreshStateImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PullToRefreshStateImpl rememberPullToRefreshState$lambda$3$lambda$2() {
        return new PullToRefreshStateImpl();
    }
}

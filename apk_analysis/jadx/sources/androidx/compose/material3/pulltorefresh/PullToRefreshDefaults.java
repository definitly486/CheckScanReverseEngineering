package androidx.compose.material3.pulltorefresh;

import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.MotionSchemeKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.pulltorefresh.PullToRefreshDefaults;
import androidx.compose.material3.tokens.ElevationTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.et3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.n1;
import defpackage.nl3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class PullToRefreshDefaults {
    public static final int $stable = 0;
    private static final float Elevation;
    private static final float IndicatorMaxDistance;
    private static final float LoadingIndicatorElevation;
    private static final float PositionalThreshold;
    public static final PullToRefreshDefaults INSTANCE = new PullToRefreshDefaults();
    private static final Shape shape = RoundedCornerShapeKt.getCircleShape();
    private static final Shape indicatorShape = RoundedCornerShapeKt.getCircleShape();

    static {
        float fM9042constructorimpl = Dp.m9042constructorimpl(80.0f);
        PositionalThreshold = fM9042constructorimpl;
        IndicatorMaxDistance = fM9042constructorimpl;
        ElevationTokens elevationTokens = ElevationTokens.INSTANCE;
        Elevation = elevationTokens.m4734getLevel2D9Ej5fM();
        LoadingIndicatorElevation = elevationTokens.m4732getLevel0D9Ej5fM();
    }

    private PullToRefreshDefaults() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 IndicatorBox_1CPYgEU$lambda$2$lambda$1(ContentDrawScope contentDrawScope) {
        int iM6221getIntersectrtfAjoo = ClipOp.Companion.m6221getIntersectrtfAjoo();
        DrawContext drawContext = contentDrawScope.getDrawContext();
        long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
        drawContext.getCanvas().save();
        try {
            drawContext.getTransform().mo6730clipRectN_I0leg(-3.4028235E38f, 0.0f, Float.MAX_VALUE, Float.MAX_VALUE, iM6221getIntersectrtfAjoo);
            contentDrawScope.drawContent();
            return j59.a;
        } finally {
            n1.a(drawContext, jMo6727getSizeNHjbRc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult IndicatorBox_1CPYgEU$lambda$6$lambda$5(final PullToRefreshState pullToRefreshState, final boolean z, final float f, final float f2, final Shape shape2, MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(constraints.m9001unboximpl());
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: jt6
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$6$lambda$5$lambda$4(placeableMo7702measureBRTryo0, pullToRefreshState, z, f, f2, shape2, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 IndicatorBox_1CPYgEU$lambda$6$lambda$5$lambda$4(Placeable placeable, final PullToRefreshState pullToRefreshState, final boolean z, final float f, final float f2, final Shape shape2, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeWithLayer$default(placementScope, placeable, 0, 0, 0.0f, new nl3() { // from class: gt6
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$6$lambda$5$lambda$4$lambda$3(pullToRefreshState, z, f, f2, shape2, (GraphicsLayerScope) obj);
            }
        }, 4, (Object) null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 IndicatorBox_1CPYgEU$lambda$6$lambda$5$lambda$4$lambda$3(PullToRefreshState pullToRefreshState, boolean z, float f, float f2, Shape shape2, GraphicsLayerScope graphicsLayerScope) {
        boolean z2 = pullToRefreshState.getDistanceFraction() > 0.0f || z;
        graphicsLayerScope.setTranslationY((pullToRefreshState.getDistanceFraction() * graphicsLayerScope.mo1428roundToPx0680j_4(f)) - Float.intBitsToFloat((int) (graphicsLayerScope.mo6426getSizeNHjbRc() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        graphicsLayerScope.setShadowElevation(z2 ? graphicsLayerScope.mo1434toPx0680j_4(f2) : 0.0f);
        graphicsLayerScope.setShape(shape2);
        graphicsLayerScope.setClip(true);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 IndicatorBox_1CPYgEU$lambda$7(PullToRefreshDefaults pullToRefreshDefaults, PullToRefreshState pullToRefreshState, boolean z, Modifier modifier, float f, Shape shape2, long j, float f2, dm3 dm3Var, int i, int i2, Composer composer, int i3) {
        pullToRefreshDefaults.m4470IndicatorBox1CPYgEU(pullToRefreshState, z, modifier, f, shape2, j, f2, dm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Indicator_2poqoh4$lambda$8(PullToRefreshDefaults pullToRefreshDefaults, PullToRefreshState pullToRefreshState, boolean z, Modifier modifier, long j, long j2, float f, int i, int i2, Composer composer, int i3) {
        pullToRefreshDefaults.m4469Indicator2poqoh4(pullToRefreshState, z, modifier, j, j2, f, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    @ul2
    public static /* synthetic */ void getContainerColor$annotations() {
    }

    @ul2
    public static /* synthetic */ void getShape$annotations() {
    }

    /* JADX WARN: Code duplicated, block: B:102:0x010f  */
    /* JADX WARN: Code duplicated, block: B:103:0x011a  */
    /* JADX WARN: Code duplicated, block: B:106:0x011f  */
    /* JADX WARN: Code duplicated, block: B:109:0x012d  */
    /* JADX WARN: Code duplicated, block: B:111:0x0135  */
    /* JADX WARN: Code duplicated, block: B:114:0x0141  */
    /* JADX WARN: Code duplicated, block: B:117:0x0181  */
    /* JADX WARN: Code duplicated, block: B:119:0x0189  */
    /* JADX WARN: Code duplicated, block: B:122:0x0195  */
    /* JADX WARN: Code duplicated, block: B:124:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x005e  */
    /* JADX WARN: Code duplicated, block: B:38:0x0062  */
    /* JADX WARN: Code duplicated, block: B:40:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x006d  */
    /* JADX WARN: Code duplicated, block: B:44:0x0073  */
    /* JADX WARN: Code duplicated, block: B:47:0x0079  */
    /* JADX WARN: Code duplicated, block: B:52:0x0088  */
    /* JADX WARN: Code duplicated, block: B:54:0x008c  */
    /* JADX WARN: Code duplicated, block: B:57:0x0093  */
    /* JADX WARN: Code duplicated, block: B:59:0x0097  */
    /* JADX WARN: Code duplicated, block: B:61:0x009f  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:65:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:71:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:73:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:74:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:78:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:79:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:82:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:97:0x0105 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:98:0x0107  */
    /* JADX WARN: Code duplicated, block: B:99:0x010a  */
    /* JADX INFO: renamed from: Indicator-2poqoh4, reason: not valid java name */
    public final void m4469Indicator2poqoh4(final PullToRefreshState pullToRefreshState, final boolean z, Modifier modifier, long j, long j2, float f, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        long j3;
        long indicatorColor;
        final float f2;
        int i4;
        boolean z2;
        final Modifier modifier3;
        final long j4;
        final long j5;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        long indicatorContainerColor;
        int i5;
        float f3;
        final long j6;
        int i6;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1076870256);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(pullToRefreshState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(z) ? 32 : 16;
        }
        int i7 = i2 & 4;
        if (i7 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 256 : 128;
            }
            if ((i & 3072) == 0) {
                if ((i2 & 8) == 0) {
                    j3 = j;
                    int i8 = composerStartRestartGroup.changed(j3) ? 2048 : 1024;
                    i3 |= i8;
                } else {
                    j3 = j;
                }
                i3 |= i8;
            } else {
                j3 = j;
            }
            if ((i & 24576) == 0) {
                indicatorColor = j2;
                if ((i2 & 16) == 0 || !composerStartRestartGroup.changed(indicatorColor)) {
                    i6 = 8192;
                } else {
                    i6 = 16384;
                }
                i3 |= i6;
            } else {
                indicatorColor = j2;
            }
            if ((196608 & i) == 0) {
                if ((i2 & 32) == 0) {
                    f2 = f;
                    int i9 = composerStartRestartGroup.changed(f2) ? 131072 : 65536;
                    i3 |= i9;
                } else {
                    f2 = f;
                }
                i3 |= i9;
            } else {
                f2 = f;
            }
            if ((i2 & 64) != 0) {
                i3 |= 1572864;
            } else if ((i & 1572864) == 0) {
                if (composerStartRestartGroup.changed(this)) {
                    i4 = 1048576;
                } else {
                    i4 = 524288;
                }
                i3 |= i4;
            }
            if ((599187 & i3) != 599186) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                    if (i7 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i2 & 8) != 0) {
                        indicatorContainerColor = getIndicatorContainerColor(composerStartRestartGroup, (i3 >> 18) & 14);
                        i3 &= -7169;
                    } else {
                        indicatorContainerColor = j3;
                    }
                    if ((i2 & 16) != 0) {
                        indicatorColor = getIndicatorColor(composerStartRestartGroup, (i3 >> 18) & 14);
                        i3 &= -57345;
                    }
                    if ((i2 & 32) != 0) {
                        i5 = i3 & (-458753);
                        f3 = IndicatorMaxDistance;
                    } else {
                        i5 = i3;
                        f3 = f2;
                    }
                    j6 = indicatorColor;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    if ((i2 & 8) != 0) {
                        i3 &= -7169;
                    }
                    if ((i2 & 16) != 0) {
                        i3 &= -57345;
                    }
                    if ((i2 & 32) != 0) {
                        i3 &= -458753;
                    }
                    modifier4 = modifier2;
                    indicatorContainerColor = j3;
                    j6 = indicatorColor;
                    i5 = i3;
                    f3 = f2;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1076870256, i5, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.Indicator (PullToRefresh.kt:515)");
                }
                int i10 = (i5 & 14) | 12582912 | (i5 & 112) | (i5 & 896) | ((i5 >> 6) & 7168);
                int i11 = i5 << 6;
                int i12 = i10 | (458752 & i11) | (i11 & 234881024);
                Modifier modifier5 = modifier4;
                m4470IndicatorBox1CPYgEU(pullToRefreshState, z, modifier5, f3, null, indicatorContainerColor, 0.0f, ComposableLambdaKt.rememberComposableLambda(298232649, true, new dm3<BoxScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$Indicator$1
                    public final void invoke(BoxScope boxScope, Composer composer2, int i13) {
                        if (!composer2.shouldExecute((i13 & 17) != 16, i13 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(298232649, i13, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.Indicator.<anonymous> (PullToRefresh.kt:524)");
                        }
                        CrossfadeKt.Crossfade(Boolean.valueOf(z), (Modifier) null, (FiniteAnimationSpec<Float>) MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composer2, 6), (String) null, ComposableLambdaKt.rememberComposableLambda(-2064098104, true, new AnonymousClass1(j6, pullToRefreshState), composer2, 54), composer2, 24576, 10);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.dm3
                    public /* bridge */ /* synthetic */ j59 invoke(BoxScope boxScope, Composer composer2, Integer num) {
                        invoke(boxScope, composer2, num.intValue());
                        return j59.a;
                    }

                    /* JADX INFO: renamed from: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$Indicator$1$1, reason: invalid class name */
                    public static final class AnonymousClass1 implements dm3<Boolean, Composer, Integer, j59> {
                        final /* synthetic */ long $color;
                        final /* synthetic */ PullToRefreshState $state;

                        public AnonymousClass1(long j, PullToRefreshState pullToRefreshState) {
                            this.$color = j;
                            this.$state = pullToRefreshState;
                        }

                        public final void invoke(boolean z, Composer composer, int i) {
                            if ((i & 6) == 0) {
                                i |= composer.changed(z) ? 4 : 2;
                            }
                            if (!composer.shouldExecute((i & 19) != 18, i & 1)) {
                                composer.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-2064098104, i, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.Indicator.<anonymous>.<anonymous> (PullToRefresh.kt:528)");
                            }
                            if (z) {
                                composer.startReplaceGroup(-499784343);
                                ProgressIndicatorKt.m3740CircularProgressIndicator4lLiAd8(SizeKt.m2099size3ABfNKs(Modifier.Companion, PullToRefreshKt.getSpinnerSize()), this.$color, PullToRefreshKt.StrokeWidth, 0L, 0, 0.0f, composer, 390, 56);
                                composer.endReplaceGroup();
                            } else {
                                composer.startReplaceGroup(-499540745);
                                boolean zChanged = composer.changed(this.$state);
                                final PullToRefreshState pullToRefreshState = this.$state;
                                Object objRememberedValue = composer.rememberedValue();
                                if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = 
                                    /*  JADX ERROR: Method code generation error
                                        jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0076: CONSTRUCTOR (r14v3 'objRememberedValue' java.lang.Object) = (r13v1 'pullToRefreshState' androidx.compose.material3.pulltorefresh.PullToRefreshState A[DONT_INLINE]) A[MD:(androidx.compose.material3.pulltorefresh.PullToRefreshState):void (m)] call: androidx.compose.material3.pulltorefresh.a.<init>(androidx.compose.material3.pulltorefresh.PullToRefreshState):void type: CONSTRUCTOR in method: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$Indicator$1.1.invoke(boolean, androidx.compose.runtime.Composer, int):void, file: classes2.dex
                                        	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                                        	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                                        	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                                        	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                        	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                        	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                        	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                                        	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                                        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                                        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                                        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                                        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                                        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                        Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: androidx.compose.material3.pulltorefresh.a, state: NOT_LOADED
                                        	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:306)
                                        	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
                                        	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                                        	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                                        	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                                        	... 31 more
                                        */
                                    /*
                                        this = this;
                                        r0 = r14 & 6
                                        if (r0 != 0) goto Le
                                        boolean r0 = r13.changed(r12)
                                        if (r0 == 0) goto Lc
                                        r0 = 4
                                        goto Ld
                                    Lc:
                                        r0 = 2
                                    Ld:
                                        r14 = r14 | r0
                                    Le:
                                        r0 = r14 & 19
                                        r1 = 18
                                        r2 = 0
                                        if (r0 == r1) goto L17
                                        r0 = 1
                                        goto L18
                                    L17:
                                        r0 = r2
                                    L18:
                                        r1 = r14 & 1
                                        boolean r0 = r13.shouldExecute(r0, r1)
                                        if (r0 == 0) goto L90
                                        boolean r0 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
                                        if (r0 == 0) goto L2f
                                        r0 = -1
                                        java.lang.String r1 = "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.Indicator.<anonymous>.<anonymous> (PullToRefresh.kt:528)"
                                        r3 = -2064098104(0xffffffff84f85cc8, float:-5.8389726E-36)
                                        androidx.compose.runtime.ComposerKt.traceEventStart(r3, r14, r0, r1)
                                    L2f:
                                        if (r12 == 0) goto L57
                                        r12 = -499784343(0xffffffffe235e569, float:-8.3884786E20)
                                        r13.startReplaceGroup(r12)
                                        float r3 = androidx.compose.material3.pulltorefresh.PullToRefreshKt.access$getStrokeWidth$p()
                                        androidx.compose.ui.Modifier$Companion r12 = androidx.compose.ui.Modifier.Companion
                                        float r14 = androidx.compose.material3.pulltorefresh.PullToRefreshKt.getSpinnerSize()
                                        androidx.compose.ui.Modifier r0 = androidx.compose.foundation.layout.SizeKt.m2099size3ABfNKs(r12, r14)
                                        long r1 = r11.$color
                                        r9 = 390(0x186, float:5.47E-43)
                                        r10 = 56
                                        r4 = 0
                                        r6 = 0
                                        r7 = 0
                                        r8 = r13
                                        androidx.compose.material3.ProgressIndicatorKt.m3740CircularProgressIndicator4lLiAd8(r0, r1, r3, r4, r6, r7, r8, r9, r10)
                                        r8.endReplaceGroup()
                                        goto L86
                                    L57:
                                        r8 = r13
                                        r12 = -499540745(0xffffffffe2399cf7, float:-8.5598954E20)
                                        r8.startReplaceGroup(r12)
                                        androidx.compose.material3.pulltorefresh.PullToRefreshState r12 = r11.$state
                                        boolean r12 = r8.changed(r12)
                                        androidx.compose.material3.pulltorefresh.PullToRefreshState r13 = r11.$state
                                        java.lang.Object r14 = r8.rememberedValue()
                                        if (r12 != 0) goto L74
                                        androidx.compose.runtime.Composer$Companion r12 = androidx.compose.runtime.Composer.Companion
                                        java.lang.Object r12 = r12.getEmpty()
                                        if (r14 != r12) goto L7c
                                    L74:
                                        androidx.compose.material3.pulltorefresh.a r14 = new androidx.compose.material3.pulltorefresh.a
                                        r14.<init>(r13)
                                        r8.updateRememberedValue(r14)
                                    L7c:
                                        androidx.compose.material3.internal.FloatProducer r14 = (androidx.compose.material3.internal.FloatProducer) r14
                                        long r11 = r11.$color
                                        androidx.compose.material3.pulltorefresh.PullToRefreshKt.m4477access$CircularArrowProgressIndicatorRPmYEkk(r14, r11, r8, r2)
                                        r8.endReplaceGroup()
                                    L86:
                                        boolean r11 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
                                        if (r11 == 0) goto L8f
                                        androidx.compose.runtime.ComposerKt.traceEventEnd()
                                    L8f:
                                        return
                                    L90:
                                        r8 = r13
                                        r8.skipToGroupEnd()
                                        return
                                    */
                                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$Indicator$1.AnonymousClass1.invoke(boolean, androidx.compose.runtime.Composer, int):void");
                                }

                                @Override // defpackage.dm3
                                public /* bridge */ /* synthetic */ j59 invoke(Boolean bool, Composer composer, Integer num) {
                                    invoke(bool.booleanValue(), composer, num.intValue());
                                    return j59.a;
                                }
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, i12, 80);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        f2 = f3;
                        j4 = indicatorContainerColor;
                        j5 = j6;
                        modifier3 = modifier5;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        j4 = j3;
                        j5 = indicatorColor;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft6
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return PullToRefreshDefaults.Indicator_2poqoh4$lambda$8(this.b, pullToRefreshState, z, modifier3, j4, j5, f2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
                modifier2 = modifier;
                if ((i & 3072) == 0) {
                    if ((i2 & 8) == 0) {
                        j3 = j;
                        if (composerStartRestartGroup.changed(j3)) {
                        }
                        i3 |= i8;
                    } else {
                        j3 = j;
                    }
                    i3 |= i8;
                } else {
                    j3 = j;
                }
                if ((i & 24576) == 0) {
                    indicatorColor = j2;
                    if ((i2 & 16) == 0) {
                        i6 = 8192;
                    } else {
                        i6 = 8192;
                    }
                    i3 |= i6;
                } else {
                    indicatorColor = j2;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        f2 = f;
                        if (composerStartRestartGroup.changed(f2)) {
                        }
                        i3 |= i9;
                    } else {
                        f2 = f;
                    }
                    i3 |= i9;
                } else {
                    f2 = f;
                }
                if ((i2 & 64) != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (composerStartRestartGroup.changed(this)) {
                        i4 = 1048576;
                    } else {
                        i4 = 524288;
                    }
                    i3 |= i4;
                }
                if ((599187 & i3) != 599186) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i7 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i2 & 8) != 0) {
                            indicatorContainerColor = getIndicatorContainerColor(composerStartRestartGroup, (i3 >> 18) & 14);
                            i3 &= -7169;
                        } else {
                            indicatorContainerColor = j3;
                        }
                        if ((i2 & 16) != 0) {
                            indicatorColor = getIndicatorColor(composerStartRestartGroup, (i3 >> 18) & 14);
                            i3 &= -57345;
                        }
                        if ((i2 & 32) != 0) {
                            i5 = i3 & (-458753);
                            f3 = IndicatorMaxDistance;
                        } else {
                            i5 = i3;
                            f3 = f2;
                        }
                        j6 = indicatorColor;
                    } else {
                        if (i7 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i2 & 8) != 0) {
                            indicatorContainerColor = getIndicatorContainerColor(composerStartRestartGroup, (i3 >> 18) & 14);
                            i3 &= -7169;
                        } else {
                            indicatorContainerColor = j3;
                        }
                        if ((i2 & 16) != 0) {
                            indicatorColor = getIndicatorColor(composerStartRestartGroup, (i3 >> 18) & 14);
                            i3 &= -57345;
                        }
                        if ((i2 & 32) != 0) {
                            i5 = i3 & (-458753);
                            f3 = IndicatorMaxDistance;
                        } else {
                            i5 = i3;
                            f3 = f2;
                        }
                        j6 = indicatorColor;
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1076870256, i5, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.Indicator (PullToRefresh.kt:515)");
                    }
                    int i13 = (i5 & 14) | 12582912 | (i5 & 112) | (i5 & 896) | ((i5 >> 6) & 7168);
                    int i14 = i5 << 6;
                    int i15 = i13 | (458752 & i14) | (i14 & 234881024);
                    Modifier modifier6 = modifier4;
                    m4470IndicatorBox1CPYgEU(pullToRefreshState, z, modifier6, f3, null, indicatorContainerColor, 0.0f, ComposableLambdaKt.rememberComposableLambda(298232649, true, new dm3<BoxScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$Indicator$1
                        public final void invoke(BoxScope boxScope, Composer composer2, int i16) {
                            if (!composer2.shouldExecute((i16 & 17) != 16, i16 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(298232649, i16, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.Indicator.<anonymous> (PullToRefresh.kt:524)");
                            }
                            CrossfadeKt.Crossfade(Boolean.valueOf(z), (Modifier) null, (FiniteAnimationSpec<Float>) MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composer2, 6), (String) null, ComposableLambdaKt.rememberComposableLambda(-2064098104, true, new AnonymousClass1(j6, pullToRefreshState), composer2, 54), composer2, 24576, 10);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(BoxScope boxScope, Composer composer2, Integer num) {
                            invoke(boxScope, composer2, num.intValue());
                            return j59.a;
                        }

                        /* JADX INFO: renamed from: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$Indicator$1$1, reason: invalid class name */
                        public static final class AnonymousClass1 implements dm3<Boolean, Composer, Integer, j59> {
                            final /* synthetic */ long $color;
                            final /* synthetic */ PullToRefreshState $state;

                            public AnonymousClass1(long j, PullToRefreshState pullToRefreshState) {
                                this.$color = j;
                                this.$state = pullToRefreshState;
                            }

                            /*  JADX ERROR: Method code generation error
                                jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0076: CONSTRUCTOR (r14v3 'objRememberedValue' java.lang.Object) = (r13v1 'pullToRefreshState' androidx.compose.material3.pulltorefresh.PullToRefreshState A[DONT_INLINE]) A[MD:(androidx.compose.material3.pulltorefresh.PullToRefreshState):void (m)] call: androidx.compose.material3.pulltorefresh.a.<init>(androidx.compose.material3.pulltorefresh.PullToRefreshState):void type: CONSTRUCTOR in method: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$Indicator$1.1.invoke(boolean, androidx.compose.runtime.Composer, int):void, file: classes2.dex
                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                                	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:140)
                                	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                                Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: androidx.compose.material3.pulltorefresh.a, state: NOT_LOADED
                                	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:306)
                                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
                                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                                	... 26 more
                                */
                            public final void invoke(boolean r12, androidx.compose.runtime.Composer r13, int r14) {
                                /*
                                    r11 = this;
                                    r0 = r14 & 6
                                    if (r0 != 0) goto Le
                                    boolean r0 = r13.changed(r12)
                                    if (r0 == 0) goto Lc
                                    r0 = 4
                                    goto Ld
                                Lc:
                                    r0 = 2
                                Ld:
                                    r14 = r14 | r0
                                Le:
                                    r0 = r14 & 19
                                    r1 = 18
                                    r2 = 0
                                    if (r0 == r1) goto L17
                                    r0 = 1
                                    goto L18
                                L17:
                                    r0 = r2
                                L18:
                                    r1 = r14 & 1
                                    boolean r0 = r13.shouldExecute(r0, r1)
                                    if (r0 == 0) goto L90
                                    boolean r0 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
                                    if (r0 == 0) goto L2f
                                    r0 = -1
                                    java.lang.String r1 = "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.Indicator.<anonymous>.<anonymous> (PullToRefresh.kt:528)"
                                    r3 = -2064098104(0xffffffff84f85cc8, float:-5.8389726E-36)
                                    androidx.compose.runtime.ComposerKt.traceEventStart(r3, r14, r0, r1)
                                L2f:
                                    if (r12 == 0) goto L57
                                    r12 = -499784343(0xffffffffe235e569, float:-8.3884786E20)
                                    r13.startReplaceGroup(r12)
                                    float r3 = androidx.compose.material3.pulltorefresh.PullToRefreshKt.access$getStrokeWidth$p()
                                    androidx.compose.ui.Modifier$Companion r12 = androidx.compose.ui.Modifier.Companion
                                    float r14 = androidx.compose.material3.pulltorefresh.PullToRefreshKt.getSpinnerSize()
                                    androidx.compose.ui.Modifier r0 = androidx.compose.foundation.layout.SizeKt.m2099size3ABfNKs(r12, r14)
                                    long r1 = r11.$color
                                    r9 = 390(0x186, float:5.47E-43)
                                    r10 = 56
                                    r4 = 0
                                    r6 = 0
                                    r7 = 0
                                    r8 = r13
                                    androidx.compose.material3.ProgressIndicatorKt.m3740CircularProgressIndicator4lLiAd8(r0, r1, r3, r4, r6, r7, r8, r9, r10)
                                    r8.endReplaceGroup()
                                    goto L86
                                L57:
                                    r8 = r13
                                    r12 = -499540745(0xffffffffe2399cf7, float:-8.5598954E20)
                                    r8.startReplaceGroup(r12)
                                    androidx.compose.material3.pulltorefresh.PullToRefreshState r12 = r11.$state
                                    boolean r12 = r8.changed(r12)
                                    androidx.compose.material3.pulltorefresh.PullToRefreshState r13 = r11.$state
                                    java.lang.Object r14 = r8.rememberedValue()
                                    if (r12 != 0) goto L74
                                    androidx.compose.runtime.Composer$Companion r12 = androidx.compose.runtime.Composer.Companion
                                    java.lang.Object r12 = r12.getEmpty()
                                    if (r14 != r12) goto L7c
                                L74:
                                    androidx.compose.material3.pulltorefresh.a r14 = new androidx.compose.material3.pulltorefresh.a
                                    r14.<init>(r13)
                                    r8.updateRememberedValue(r14)
                                L7c:
                                    androidx.compose.material3.internal.FloatProducer r14 = (androidx.compose.material3.internal.FloatProducer) r14
                                    long r11 = r11.$color
                                    androidx.compose.material3.pulltorefresh.PullToRefreshKt.m4477access$CircularArrowProgressIndicatorRPmYEkk(r14, r11, r8, r2)
                                    r8.endReplaceGroup()
                                L86:
                                    boolean r11 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
                                    if (r11 == 0) goto L8f
                                    androidx.compose.runtime.ComposerKt.traceEventEnd()
                                L8f:
                                    return
                                L90:
                                    r8 = r13
                                    r8.skipToGroupEnd()
                                    return
                                */
                                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.pulltorefresh.PullToRefreshDefaults$Indicator$1.AnonymousClass1.invoke(boolean, androidx.compose.runtime.Composer, int):void");
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(Boolean bool, Composer composer, Integer num) {
                                invoke(bool.booleanValue(), composer, num.intValue());
                                return j59.a;
                            }
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, i15, 80);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    f2 = f3;
                    j4 = indicatorContainerColor;
                    j5 = j6;
                    modifier3 = modifier6;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    j4 = j3;
                    j5 = indicatorColor;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ft6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return PullToRefreshDefaults.Indicator_2poqoh4$lambda$8(this.b, pullToRefreshState, z, modifier3, j4, j5, f2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }

            /* JADX WARN: Code duplicated, block: B:100:0x0115  */
            /* JADX WARN: Code duplicated, block: B:101:0x0117  */
            /* JADX WARN: Code duplicated, block: B:104:0x0120  */
            /* JADX WARN: Code duplicated, block: B:106:0x012d  */
            /* JADX WARN: Code duplicated, block: B:119:0x014b A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:120:0x014d  */
            /* JADX WARN: Code duplicated, block: B:123:0x0154  */
            /* JADX WARN: Code duplicated, block: B:126:0x015d  */
            /* JADX WARN: Code duplicated, block: B:127:0x0162  */
            /* JADX WARN: Code duplicated, block: B:129:0x0166  */
            /* JADX WARN: Code duplicated, block: B:132:0x0170  */
            /* JADX WARN: Code duplicated, block: B:135:0x017d  */
            /* JADX WARN: Code duplicated, block: B:138:0x019a  */
            /* JADX WARN: Code duplicated, block: B:139:0x01a4  */
            /* JADX WARN: Code duplicated, block: B:142:0x01b0  */
            /* JADX WARN: Code duplicated, block: B:143:0x01b2  */
            /* JADX WARN: Code duplicated, block: B:146:0x01bb  */
            /* JADX WARN: Code duplicated, block: B:147:0x01bd  */
            /* JADX WARN: Code duplicated, block: B:150:0x01ca  */
            /* JADX WARN: Code duplicated, block: B:152:0x01d0  */
            /* JADX WARN: Code duplicated, block: B:158:0x01e4  */
            /* JADX WARN: Code duplicated, block: B:160:0x01ea  */
            /* JADX WARN: Code duplicated, block: B:166:0x01ff  */
            /* JADX WARN: Code duplicated, block: B:168:0x0205  */
            /* JADX WARN: Code duplicated, block: B:174:0x0216  */
            /* JADX WARN: Code duplicated, block: B:176:0x021c  */
            /* JADX WARN: Code duplicated, block: B:179:0x0269  */
            /* JADX WARN: Code duplicated, block: B:182:0x0275  */
            /* JADX WARN: Code duplicated, block: B:183:0x0279  */
            /* JADX WARN: Code duplicated, block: B:186:0x028a  */
            /* JADX WARN: Code duplicated, block: B:189:0x029b  */
            /* JADX WARN: Code duplicated, block: B:193:0x02bf  */
            /* JADX WARN: Code duplicated, block: B:196:0x02c9  */
            /* JADX WARN: Code duplicated, block: B:199:0x02d5  */
            /* JADX WARN: Code duplicated, block: B:201:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:26:0x004c  */
            /* JADX WARN: Code duplicated, block: B:28:0x0051  */
            /* JADX WARN: Code duplicated, block: B:30:0x0055  */
            /* JADX WARN: Code duplicated, block: B:32:0x005d  */
            /* JADX WARN: Code duplicated, block: B:33:0x0060  */
            /* JADX WARN: Code duplicated, block: B:37:0x0067  */
            /* JADX WARN: Code duplicated, block: B:39:0x006b  */
            /* JADX WARN: Code duplicated, block: B:41:0x0073  */
            /* JADX WARN: Code duplicated, block: B:42:0x0076  */
            /* JADX WARN: Code duplicated, block: B:45:0x007c  */
            /* JADX WARN: Code duplicated, block: B:48:0x0082  */
            /* JADX WARN: Code duplicated, block: B:50:0x0086  */
            /* JADX WARN: Code duplicated, block: B:53:0x0091 A[ADDED_TO_REGION] */
            /* JADX WARN: Code duplicated, block: B:56:0x0098  */
            /* JADX WARN: Code duplicated, block: B:59:0x00a0  */
            /* JADX WARN: Code duplicated, block: B:60:0x00a5  */
            /* JADX WARN: Code duplicated, block: B:62:0x00ab  */
            /* JADX WARN: Code duplicated, block: B:64:0x00b1  */
            /* JADX WARN: Code duplicated, block: B:65:0x00b4  */
            /* JADX WARN: Code duplicated, block: B:69:0x00be  */
            /* JADX WARN: Code duplicated, block: B:71:0x00c4  */
            /* JADX WARN: Code duplicated, block: B:74:0x00cd  */
            /* JADX WARN: Code duplicated, block: B:76:0x00d2  */
            /* JADX WARN: Code duplicated, block: B:79:0x00da  */
            /* JADX WARN: Code duplicated, block: B:80:0x00dd  */
            /* JADX WARN: Code duplicated, block: B:82:0x00e1  */
            /* JADX WARN: Code duplicated, block: B:84:0x00e7  */
            /* JADX WARN: Code duplicated, block: B:85:0x00ea  */
            /* JADX WARN: Code duplicated, block: B:89:0x00f3  */
            /* JADX WARN: Code duplicated, block: B:91:0x00f8  */
            /* JADX WARN: Code duplicated, block: B:93:0x00fc  */
            /* JADX WARN: Code duplicated, block: B:95:0x0104  */
            /* JADX WARN: Code duplicated, block: B:96:0x0107  */
            /* JADX INFO: renamed from: IndicatorBox-1CPYgEU, reason: not valid java name */
            public final void m4470IndicatorBox1CPYgEU(final PullToRefreshState pullToRefreshState, final boolean z, Modifier modifier, float f, Shape shape2, long j, float f2, final dm3<? super BoxScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, final int i, final int i2) {
                int i3;
                int i4;
                Modifier modifier2;
                int i5;
                float f3;
                int i6;
                long jM6268getUnspecified0d7_KjU;
                int i7;
                float f4;
                int i8;
                int i9;
                boolean z2;
                final Shape shape3;
                final Modifier modifier3;
                final float f5;
                final long j2;
                final float f6;
                ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
                Shape shape4;
                Object objRememberedValue;
                Composer.Companion companion;
                boolean z3;
                boolean z4;
                boolean z5;
                Object objRememberedValue2;
                int currentCompositeKeyHash;
                ComposeUiNode.Companion companion2;
                ll3<ComposeUiNode> constructor;
                Composer composerM5355constructorimpl;
                ComposeUiNode.Companion companion3;
                int i10;
                Composer composerStartRestartGroup = composer.startRestartGroup(-1341144489);
                if ((i2 & 1) != 0) {
                    i3 = i | 6;
                } else if ((i & 6) == 0) {
                    i3 = (composerStartRestartGroup.changed(pullToRefreshState) ? 4 : 2) | i;
                } else {
                    i3 = i;
                }
                if ((i2 & 2) == 0) {
                    if ((i & 48) == 0) {
                        i3 |= composerStartRestartGroup.changed(z) ? 32 : 16;
                    }
                    i4 = i2 & 4;
                    if (i4 != 0) {
                        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                            modifier2 = modifier;
                            if (composerStartRestartGroup.changed(modifier2)) {
                                i5 = 256;
                            } else {
                                i5 = 128;
                            }
                            i3 |= i5;
                        }
                        if ((i & 3072) == 0) {
                            if ((i2 & 8) == 0) {
                                f3 = f;
                                int i11 = composerStartRestartGroup.changed(f3) ? 2048 : 1024;
                                i3 |= i11;
                            } else {
                                f3 = f;
                            }
                            i3 |= i11;
                        } else {
                            f3 = f;
                        }
                        if ((i & 24576) != 0) {
                            i3 |= ((i2 & 16) == 0 || !composerStartRestartGroup.changed(shape2)) ? 8192 : 16384;
                        }
                        i6 = i2 & 32;
                        if (i6 != 0) {
                            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                            jM6268getUnspecified0d7_KjU = j;
                        } else {
                            jM6268getUnspecified0d7_KjU = j;
                            if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                                if (composerStartRestartGroup.changed(jM6268getUnspecified0d7_KjU)) {
                                    i7 = 131072;
                                } else {
                                    i7 = 65536;
                                }
                                i3 |= i7;
                            }
                        }
                        if ((i & 1572864) == 0) {
                            f4 = f2;
                            if ((i2 & 64) == 0 || !composerStartRestartGroup.changed(f4)) {
                                i10 = 524288;
                            } else {
                                i10 = 1048576;
                            }
                            i3 |= i10;
                        } else {
                            f4 = f2;
                        }
                        if ((i2 & 128) != 0) {
                            i3 |= 12582912;
                        } else if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changedInstance(dm3Var)) {
                                i8 = 8388608;
                            } else {
                                i8 = 4194304;
                            }
                            i3 |= i8;
                        }
                        if ((i2 & 256) != 0) {
                            if ((i & 100663296) == 0) {
                                if (composerStartRestartGroup.changed(this)) {
                                    i9 = 67108864;
                                } else {
                                    i9 = GroupFlagsKt.HasAuxSlotFlag;
                                }
                                i3 |= i9;
                            }
                            if ((i3 & 38347923) != 38347922) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                                composerStartRestartGroup.startDefaults();
                                if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                    if (i4 != 0) {
                                        modifier2 = Modifier.Companion;
                                    }
                                    if ((i2 & 8) != 0) {
                                        i3 &= -7169;
                                        f3 = IndicatorMaxDistance;
                                    }
                                    if ((i2 & 16) != 0) {
                                        shape4 = indicatorShape;
                                        i3 &= -57345;
                                    } else {
                                        shape4 = shape2;
                                    }
                                    if (i6 != 0) {
                                        jM6268getUnspecified0d7_KjU = Color.Companion.m6268getUnspecified0d7_KjU();
                                    }
                                    if ((i2 & 64) != 0) {
                                        i3 &= -3670017;
                                        f4 = Elevation;
                                    }
                                } else {
                                    composerStartRestartGroup.skipToGroupEnd();
                                    if ((i2 & 8) != 0) {
                                        i3 &= -7169;
                                    }
                                    if ((i2 & 16) != 0) {
                                        i3 &= -57345;
                                    }
                                    if ((i2 & 64) != 0) {
                                        i3 &= -3670017;
                                    }
                                    shape4 = shape2;
                                }
                                composerStartRestartGroup.endDefaults();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1341144489, i3, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.IndicatorBox (PullToRefresh.kt:456)");
                                }
                                Modifier modifierM2099size3ABfNKs = SizeKt.m2099size3ABfNKs(modifier2, PullToRefreshKt.getSpinnerContainerSize());
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                companion = Composer.Companion;
                                if (objRememberedValue == companion.getEmpty()) {
                                    objRememberedValue = new et3(1);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                Modifier modifierDrawWithContent = DrawModifierKt.drawWithContent(modifierM2099size3ABfNKs, (nl3) objRememberedValue);
                                if ((i3 & 14) == 4) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                boolean z6 = z3;
                                if ((i3 & 112) == 32) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                z5 = z6 | z4 | ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(f3)) || (i3 & 3072) == 2048) | ((((3670016 & i3) ^ 1572864) <= 1048576 && composerStartRestartGroup.changed(f4)) || (i3 & 1572864) == 1048576) | ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(shape4)) || (i3 & 24576) == 16384);
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (z5 || objRememberedValue2 == companion.getEmpty()) {
                                    final Shape shape5 = shape4;
                                    final float f7 = f3;
                                    final float f8 = f4;
                                    objRememberedValue2 = new dm3() { // from class: ht6
                                        @Override // defpackage.dm3
                                        public final Object invoke(Object obj, Object obj2, Object obj3) {
                                            return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$6$lambda$5(pullToRefreshState, z, f7, f8, shape5, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                Modifier modifierM1288backgroundbw27NRU = BackgroundKt.m1288backgroundbw27NRU(LayoutModifierKt.layout(modifierDrawWithContent, (dm3) objRememberedValue2), jM6268getUnspecified0d7_KjU, shape4);
                                int i12 = ((i3 >> 12) & 7168) | 48;
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), false);
                                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                                CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1288backgroundbw27NRU);
                                Shape shape6 = shape4;
                                companion2 = ComposeUiNode.Companion;
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
                                bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                                if (composerM5355constructorimpl.getInserting()) {
                                    companion3 = companion2;
                                } else {
                                    companion3 = companion2;
                                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                    }
                                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion3.getSetModifier());
                                    dm3Var.invoke(BoxScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i12 >> 6) & 112) | 6));
                                    composerStartRestartGroup.endNode();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                    shape3 = shape6;
                                }
                                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion3.getSetModifier());
                                dm3Var.invoke(BoxScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i12 >> 6) & 112) | 6));
                                composerStartRestartGroup.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                shape3 = shape6;
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                shape3 = shape2;
                            }
                            modifier3 = modifier2;
                            f5 = f3;
                            j2 = jM6268getUnspecified0d7_KjU;
                            f6 = f4;
                            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                            if (scopeUpdateScopeEndRestartGroup != null) {
                                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: it6
                                    @Override // defpackage.bm3
                                    public final Object invoke(Object obj, Object obj2) {
                                        int iIntValue = ((Integer) obj2).intValue();
                                        return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$7(this.b, pullToRefreshState, z, modifier3, f5, shape3, j2, f6, dm3Var, i, i2, (Composer) obj, iIntValue);
                                    }
                                });
                            }
                        }
                        i3 |= 100663296;
                        if ((i3 & 38347923) != 38347922) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 8) != 0) {
                                    i3 &= -7169;
                                    f3 = IndicatorMaxDistance;
                                }
                                if ((i2 & 16) != 0) {
                                    shape4 = indicatorShape;
                                    i3 &= -57345;
                                } else {
                                    shape4 = shape2;
                                }
                                if (i6 != 0) {
                                    jM6268getUnspecified0d7_KjU = Color.Companion.m6268getUnspecified0d7_KjU();
                                }
                                if ((i2 & 64) != 0) {
                                    i3 &= -3670017;
                                    f4 = Elevation;
                                }
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 8) != 0) {
                                    i3 &= -7169;
                                    f3 = IndicatorMaxDistance;
                                }
                                if ((i2 & 16) != 0) {
                                    shape4 = indicatorShape;
                                    i3 &= -57345;
                                } else {
                                    shape4 = shape2;
                                }
                                if (i6 != 0) {
                                    jM6268getUnspecified0d7_KjU = Color.Companion.m6268getUnspecified0d7_KjU();
                                }
                                if ((i2 & 64) != 0) {
                                    i3 &= -3670017;
                                    f4 = Elevation;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1341144489, i3, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.IndicatorBox (PullToRefresh.kt:456)");
                            }
                            Modifier modifierM2099size3ABfNKs2 = SizeKt.m2099size3ABfNKs(modifier2, PullToRefreshKt.getSpinnerContainerSize());
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            companion = Composer.Companion;
                            if (objRememberedValue == companion.getEmpty()) {
                                objRememberedValue = new et3(1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            Modifier modifierDrawWithContent2 = DrawModifierKt.drawWithContent(modifierM2099size3ABfNKs2, (nl3) objRememberedValue);
                            if ((i3 & 14) == 4) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            boolean z7 = z3;
                            if ((i3 & 112) == 32) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            z5 = z7 | z4 | ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(f3)) || (i3 & 3072) == 2048) | ((((3670016 & i3) ^ 1572864) <= 1048576 && composerStartRestartGroup.changed(f4)) || (i3 & 1572864) == 1048576) | ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(shape4)) || (i3 & 24576) == 16384);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z5) {
                                final Shape shape7 = shape4;
                                final float f9 = f3;
                                final float f10 = f4;
                                objRememberedValue2 = new dm3() { // from class: ht6
                                    @Override // defpackage.dm3
                                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                                        return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$6$lambda$5(pullToRefreshState, z, f9, f10, shape7, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                final Shape shape8 = shape4;
                                final float f11 = f3;
                                final float f12 = f4;
                                objRememberedValue2 = new dm3() { // from class: ht6
                                    @Override // defpackage.dm3
                                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                                        return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$6$lambda$5(pullToRefreshState, z, f11, f12, shape8, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            Modifier modifierM1288backgroundbw27NRU2 = BackgroundKt.m1288backgroundbw27NRU(LayoutModifierKt.layout(modifierDrawWithContent2, (dm3) objRememberedValue2), jM6268getUnspecified0d7_KjU, shape4);
                            int i13 = ((i3 >> 12) & 7168) | 48;
                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), false);
                            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                            CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1288backgroundbw27NRU2);
                            Shape shape9 = shape4;
                            companion2 = ComposeUiNode.Companion;
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
                            bm3 bm3VarB2 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy2, composerM5355constructorimpl, currentCompositionLocalMap2);
                            if (composerM5355constructorimpl.getInserting()) {
                                companion3 = companion2;
                                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion3.getSetModifier());
                                dm3Var.invoke(BoxScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i13 >> 6) & 112) | 6));
                                composerStartRestartGroup.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                shape3 = shape9;
                            } else {
                                companion3 = companion2;
                            }
                            dc.b(bm3VarB2, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion3.getSetModifier());
                            dm3Var.invoke(BoxScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i13 >> 6) & 112) | 6));
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            shape3 = shape9;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            shape3 = shape2;
                        }
                        modifier3 = modifier2;
                        f5 = f3;
                        j2 = jM6268getUnspecified0d7_KjU;
                        f6 = f4;
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: it6
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$7(this.b, pullToRefreshState, z, modifier3, f5, shape3, j2, f6, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
                    modifier2 = modifier;
                    if ((i & 3072) == 0) {
                        if ((i2 & 8) == 0) {
                            f3 = f;
                            if (composerStartRestartGroup.changed(f3)) {
                            }
                            i3 |= i11;
                        } else {
                            f3 = f;
                        }
                        i3 |= i11;
                    } else {
                        f3 = f;
                    }
                    if ((i & 24576) != 0) {
                        i3 |= ((i2 & 16) == 0 || !composerStartRestartGroup.changed(shape2)) ? 8192 : 16384;
                    }
                    i6 = i2 & 32;
                    if (i6 != 0) {
                        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        jM6268getUnspecified0d7_KjU = j;
                    } else {
                        jM6268getUnspecified0d7_KjU = j;
                        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                            if (composerStartRestartGroup.changed(jM6268getUnspecified0d7_KjU)) {
                                i7 = 131072;
                            } else {
                                i7 = 65536;
                            }
                            i3 |= i7;
                        }
                    }
                    if ((i & 1572864) == 0) {
                        f4 = f2;
                        if ((i2 & 64) == 0) {
                            i10 = 524288;
                        } else {
                            i10 = 524288;
                        }
                        i3 |= i10;
                    } else {
                        f4 = f2;
                    }
                    if ((i2 & 128) != 0) {
                        i3 |= 12582912;
                    } else if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i8 = 8388608;
                        } else {
                            i8 = 4194304;
                        }
                        i3 |= i8;
                    }
                    if ((i2 & 256) != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(this)) {
                                i9 = 67108864;
                            } else {
                                i9 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i9;
                        }
                        if ((i3 & 38347923) != 38347922) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 8) != 0) {
                                    i3 &= -7169;
                                    f3 = IndicatorMaxDistance;
                                }
                                if ((i2 & 16) != 0) {
                                    shape4 = indicatorShape;
                                    i3 &= -57345;
                                } else {
                                    shape4 = shape2;
                                }
                                if (i6 != 0) {
                                    jM6268getUnspecified0d7_KjU = Color.Companion.m6268getUnspecified0d7_KjU();
                                }
                                if ((i2 & 64) != 0) {
                                    i3 &= -3670017;
                                    f4 = Elevation;
                                }
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 8) != 0) {
                                    i3 &= -7169;
                                    f3 = IndicatorMaxDistance;
                                }
                                if ((i2 & 16) != 0) {
                                    shape4 = indicatorShape;
                                    i3 &= -57345;
                                } else {
                                    shape4 = shape2;
                                }
                                if (i6 != 0) {
                                    jM6268getUnspecified0d7_KjU = Color.Companion.m6268getUnspecified0d7_KjU();
                                }
                                if ((i2 & 64) != 0) {
                                    i3 &= -3670017;
                                    f4 = Elevation;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1341144489, i3, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.IndicatorBox (PullToRefresh.kt:456)");
                            }
                            Modifier modifierM2099size3ABfNKs3 = SizeKt.m2099size3ABfNKs(modifier2, PullToRefreshKt.getSpinnerContainerSize());
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            companion = Composer.Companion;
                            if (objRememberedValue == companion.getEmpty()) {
                                objRememberedValue = new et3(1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            Modifier modifierDrawWithContent3 = DrawModifierKt.drawWithContent(modifierM2099size3ABfNKs3, (nl3) objRememberedValue);
                            if ((i3 & 14) == 4) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            boolean z8 = z3;
                            if ((i3 & 112) == 32) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            z5 = z8 | z4 | ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(f3)) || (i3 & 3072) == 2048) | ((((3670016 & i3) ^ 1572864) <= 1048576 && composerStartRestartGroup.changed(f4)) || (i3 & 1572864) == 1048576) | ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(shape4)) || (i3 & 24576) == 16384);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z5) {
                                final Shape shape10 = shape4;
                                final float f13 = f3;
                                final float f14 = f4;
                                objRememberedValue2 = new dm3() { // from class: ht6
                                    @Override // defpackage.dm3
                                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                                        return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$6$lambda$5(pullToRefreshState, z, f13, f14, shape10, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                final Shape shape11 = shape4;
                                final float f15 = f3;
                                final float f16 = f4;
                                objRememberedValue2 = new dm3() { // from class: ht6
                                    @Override // defpackage.dm3
                                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                                        return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$6$lambda$5(pullToRefreshState, z, f15, f16, shape11, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            Modifier modifierM1288backgroundbw27NRU3 = BackgroundKt.m1288backgroundbw27NRU(LayoutModifierKt.layout(modifierDrawWithContent3, (dm3) objRememberedValue2), jM6268getUnspecified0d7_KjU, shape4);
                            int i14 = ((i3 >> 12) & 7168) | 48;
                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), false);
                            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                            CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1288backgroundbw27NRU3);
                            Shape shape12 = shape4;
                            companion2 = ComposeUiNode.Companion;
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
                            bm3 bm3VarB3 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy3, composerM5355constructorimpl, currentCompositionLocalMap3);
                            if (composerM5355constructorimpl.getInserting()) {
                                companion3 = companion2;
                                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier3, companion3.getSetModifier());
                                dm3Var.invoke(BoxScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i14 >> 6) & 112) | 6));
                                composerStartRestartGroup.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                shape3 = shape12;
                            } else {
                                companion3 = companion2;
                            }
                            dc.b(bm3VarB3, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier3, companion3.getSetModifier());
                            dm3Var.invoke(BoxScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i14 >> 6) & 112) | 6));
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            shape3 = shape12;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            shape3 = shape2;
                        }
                        modifier3 = modifier2;
                        f5 = f3;
                        j2 = jM6268getUnspecified0d7_KjU;
                        f6 = f4;
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: it6
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$7(this.b, pullToRefreshState, z, modifier3, f5, shape3, j2, f6, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    if ((i3 & 38347923) != 38347922) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 8) != 0) {
                                i3 &= -7169;
                                f3 = IndicatorMaxDistance;
                            }
                            if ((i2 & 16) != 0) {
                                shape4 = indicatorShape;
                                i3 &= -57345;
                            } else {
                                shape4 = shape2;
                            }
                            if (i6 != 0) {
                                jM6268getUnspecified0d7_KjU = Color.Companion.m6268getUnspecified0d7_KjU();
                            }
                            if ((i2 & 64) != 0) {
                                i3 &= -3670017;
                                f4 = Elevation;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 8) != 0) {
                                i3 &= -7169;
                                f3 = IndicatorMaxDistance;
                            }
                            if ((i2 & 16) != 0) {
                                shape4 = indicatorShape;
                                i3 &= -57345;
                            } else {
                                shape4 = shape2;
                            }
                            if (i6 != 0) {
                                jM6268getUnspecified0d7_KjU = Color.Companion.m6268getUnspecified0d7_KjU();
                            }
                            if ((i2 & 64) != 0) {
                                i3 &= -3670017;
                                f4 = Elevation;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1341144489, i3, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.IndicatorBox (PullToRefresh.kt:456)");
                        }
                        Modifier modifierM2099size3ABfNKs4 = SizeKt.m2099size3ABfNKs(modifier2, PullToRefreshKt.getSpinnerContainerSize());
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = new et3(1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        Modifier modifierDrawWithContent4 = DrawModifierKt.drawWithContent(modifierM2099size3ABfNKs4, (nl3) objRememberedValue);
                        if ((i3 & 14) == 4) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        boolean z9 = z3;
                        if ((i3 & 112) == 32) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        z5 = z9 | z4 | ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(f3)) || (i3 & 3072) == 2048) | ((((3670016 & i3) ^ 1572864) <= 1048576 && composerStartRestartGroup.changed(f4)) || (i3 & 1572864) == 1048576) | ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(shape4)) || (i3 & 24576) == 16384);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            final Shape shape13 = shape4;
                            final float f17 = f3;
                            final float f18 = f4;
                            objRememberedValue2 = new dm3() { // from class: ht6
                                @Override // defpackage.dm3
                                public final Object invoke(Object obj, Object obj2, Object obj3) {
                                    return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$6$lambda$5(pullToRefreshState, z, f17, f18, shape13, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            final Shape shape14 = shape4;
                            final float f19 = f3;
                            final float f110 = f4;
                            objRememberedValue2 = new dm3() { // from class: ht6
                                @Override // defpackage.dm3
                                public final Object invoke(Object obj, Object obj2, Object obj3) {
                                    return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$6$lambda$5(pullToRefreshState, z, f19, f110, shape14, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierM1288backgroundbw27NRU4 = BackgroundKt.m1288backgroundbw27NRU(LayoutModifierKt.layout(modifierDrawWithContent4, (dm3) objRememberedValue2), jM6268getUnspecified0d7_KjU, shape4);
                        int i15 = ((i3 >> 12) & 7168) | 48;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), false);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap4 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1288backgroundbw27NRU4);
                        Shape shape15 = shape4;
                        companion2 = ComposeUiNode.Companion;
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
                        bm3 bm3VarB4 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy4, composerM5355constructorimpl, currentCompositionLocalMap4);
                        if (composerM5355constructorimpl.getInserting()) {
                            companion3 = companion2;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier4, companion3.getSetModifier());
                            dm3Var.invoke(BoxScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i15 >> 6) & 112) | 6));
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            shape3 = shape15;
                        } else {
                            companion3 = companion2;
                        }
                        dc.b(bm3VarB4, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier4, companion3.getSetModifier());
                        dm3Var.invoke(BoxScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i15 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        shape3 = shape15;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        shape3 = shape2;
                    }
                    modifier3 = modifier2;
                    f5 = f3;
                    j2 = jM6268getUnspecified0d7_KjU;
                    f6 = f4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: it6
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$7(this.b, pullToRefreshState, z, modifier3, f5, shape3, j2, f6, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 48;
                i4 = i2 & 4;
                if (i4 != 0) {
                    if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                        modifier2 = modifier;
                        if (composerStartRestartGroup.changed(modifier2)) {
                            i5 = 256;
                        } else {
                            i5 = 128;
                        }
                        i3 |= i5;
                    }
                    if ((i & 3072) == 0) {
                        if ((i2 & 8) == 0) {
                            f3 = f;
                            if (composerStartRestartGroup.changed(f3)) {
                            }
                            i3 |= i11;
                        } else {
                            f3 = f;
                        }
                        i3 |= i11;
                    } else {
                        f3 = f;
                    }
                    if ((i & 24576) != 0) {
                        i3 |= ((i2 & 16) == 0 || !composerStartRestartGroup.changed(shape2)) ? 8192 : 16384;
                    }
                    i6 = i2 & 32;
                    if (i6 != 0) {
                        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        jM6268getUnspecified0d7_KjU = j;
                    } else {
                        jM6268getUnspecified0d7_KjU = j;
                        if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                            if (composerStartRestartGroup.changed(jM6268getUnspecified0d7_KjU)) {
                                i7 = 131072;
                            } else {
                                i7 = 65536;
                            }
                            i3 |= i7;
                        }
                    }
                    if ((i & 1572864) == 0) {
                        f4 = f2;
                        if ((i2 & 64) == 0) {
                            i10 = 524288;
                        } else {
                            i10 = 524288;
                        }
                        i3 |= i10;
                    } else {
                        f4 = f2;
                    }
                    if ((i2 & 128) != 0) {
                        i3 |= 12582912;
                    } else if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changedInstance(dm3Var)) {
                            i8 = 8388608;
                        } else {
                            i8 = 4194304;
                        }
                        i3 |= i8;
                    }
                    if ((i2 & 256) != 0) {
                        if ((i & 100663296) == 0) {
                            if (composerStartRestartGroup.changed(this)) {
                                i9 = 67108864;
                            } else {
                                i9 = GroupFlagsKt.HasAuxSlotFlag;
                            }
                            i3 |= i9;
                        }
                        if ((i3 & 38347923) != 38347922) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0) {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 8) != 0) {
                                    i3 &= -7169;
                                    f3 = IndicatorMaxDistance;
                                }
                                if ((i2 & 16) != 0) {
                                    shape4 = indicatorShape;
                                    i3 &= -57345;
                                } else {
                                    shape4 = shape2;
                                }
                                if (i6 != 0) {
                                    jM6268getUnspecified0d7_KjU = Color.Companion.m6268getUnspecified0d7_KjU();
                                }
                                if ((i2 & 64) != 0) {
                                    i3 &= -3670017;
                                    f4 = Elevation;
                                }
                            } else {
                                if (i4 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 8) != 0) {
                                    i3 &= -7169;
                                    f3 = IndicatorMaxDistance;
                                }
                                if ((i2 & 16) != 0) {
                                    shape4 = indicatorShape;
                                    i3 &= -57345;
                                } else {
                                    shape4 = shape2;
                                }
                                if (i6 != 0) {
                                    jM6268getUnspecified0d7_KjU = Color.Companion.m6268getUnspecified0d7_KjU();
                                }
                                if ((i2 & 64) != 0) {
                                    i3 &= -3670017;
                                    f4 = Elevation;
                                }
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1341144489, i3, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.IndicatorBox (PullToRefresh.kt:456)");
                            }
                            Modifier modifierM2099size3ABfNKs5 = SizeKt.m2099size3ABfNKs(modifier2, PullToRefreshKt.getSpinnerContainerSize());
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            companion = Composer.Companion;
                            if (objRememberedValue == companion.getEmpty()) {
                                objRememberedValue = new et3(1);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            Modifier modifierDrawWithContent5 = DrawModifierKt.drawWithContent(modifierM2099size3ABfNKs5, (nl3) objRememberedValue);
                            if ((i3 & 14) == 4) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            boolean z10 = z3;
                            if ((i3 & 112) == 32) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            z5 = z10 | z4 | ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(f3)) || (i3 & 3072) == 2048) | ((((3670016 & i3) ^ 1572864) <= 1048576 && composerStartRestartGroup.changed(f4)) || (i3 & 1572864) == 1048576) | ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(shape4)) || (i3 & 24576) == 16384);
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (z5) {
                                final Shape shape16 = shape4;
                                final float f111 = f3;
                                final float f112 = f4;
                                objRememberedValue2 = new dm3() { // from class: ht6
                                    @Override // defpackage.dm3
                                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                                        return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$6$lambda$5(pullToRefreshState, z, f111, f112, shape16, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            } else {
                                final Shape shape17 = shape4;
                                final float f113 = f3;
                                final float f114 = f4;
                                objRememberedValue2 = new dm3() { // from class: ht6
                                    @Override // defpackage.dm3
                                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                                        return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$6$lambda$5(pullToRefreshState, z, f113, f114, shape17, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            Modifier modifierM1288backgroundbw27NRU5 = BackgroundKt.m1288backgroundbw27NRU(LayoutModifierKt.layout(modifierDrawWithContent5, (dm3) objRememberedValue2), jM6268getUnspecified0d7_KjU, shape4);
                            int i16 = ((i3 >> 12) & 7168) | 48;
                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy5 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), false);
                            currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                            CompositionLocalMap currentCompositionLocalMap5 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1288backgroundbw27NRU5);
                            Shape shape18 = shape4;
                            companion2 = ComposeUiNode.Companion;
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
                            bm3 bm3VarB5 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy5, composerM5355constructorimpl, currentCompositionLocalMap5);
                            if (composerM5355constructorimpl.getInserting()) {
                                companion3 = companion2;
                                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier5, companion3.getSetModifier());
                                dm3Var.invoke(BoxScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i16 >> 6) & 112) | 6));
                                composerStartRestartGroup.endNode();
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                                shape3 = shape18;
                            } else {
                                companion3 = companion2;
                            }
                            dc.b(bm3VarB5, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier5, companion3.getSetModifier());
                            dm3Var.invoke(BoxScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i16 >> 6) & 112) | 6));
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            shape3 = shape18;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            shape3 = shape2;
                        }
                        modifier3 = modifier2;
                        f5 = f3;
                        j2 = jM6268getUnspecified0d7_KjU;
                        f6 = f4;
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: it6
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$7(this.b, pullToRefreshState, z, modifier3, f5, shape3, j2, f6, dm3Var, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 100663296;
                    if ((i3 & 38347923) != 38347922) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 8) != 0) {
                                i3 &= -7169;
                                f3 = IndicatorMaxDistance;
                            }
                            if ((i2 & 16) != 0) {
                                shape4 = indicatorShape;
                                i3 &= -57345;
                            } else {
                                shape4 = shape2;
                            }
                            if (i6 != 0) {
                                jM6268getUnspecified0d7_KjU = Color.Companion.m6268getUnspecified0d7_KjU();
                            }
                            if ((i2 & 64) != 0) {
                                i3 &= -3670017;
                                f4 = Elevation;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 8) != 0) {
                                i3 &= -7169;
                                f3 = IndicatorMaxDistance;
                            }
                            if ((i2 & 16) != 0) {
                                shape4 = indicatorShape;
                                i3 &= -57345;
                            } else {
                                shape4 = shape2;
                            }
                            if (i6 != 0) {
                                jM6268getUnspecified0d7_KjU = Color.Companion.m6268getUnspecified0d7_KjU();
                            }
                            if ((i2 & 64) != 0) {
                                i3 &= -3670017;
                                f4 = Elevation;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1341144489, i3, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.IndicatorBox (PullToRefresh.kt:456)");
                        }
                        Modifier modifierM2099size3ABfNKs6 = SizeKt.m2099size3ABfNKs(modifier2, PullToRefreshKt.getSpinnerContainerSize());
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = new et3(1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        Modifier modifierDrawWithContent6 = DrawModifierKt.drawWithContent(modifierM2099size3ABfNKs6, (nl3) objRememberedValue);
                        if ((i3 & 14) == 4) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        boolean z11 = z3;
                        if ((i3 & 112) == 32) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        z5 = z11 | z4 | ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(f3)) || (i3 & 3072) == 2048) | ((((3670016 & i3) ^ 1572864) <= 1048576 && composerStartRestartGroup.changed(f4)) || (i3 & 1572864) == 1048576) | ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(shape4)) || (i3 & 24576) == 16384);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            final Shape shape19 = shape4;
                            final float f115 = f3;
                            final float f116 = f4;
                            objRememberedValue2 = new dm3() { // from class: ht6
                                @Override // defpackage.dm3
                                public final Object invoke(Object obj, Object obj2, Object obj3) {
                                    return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$6$lambda$5(pullToRefreshState, z, f115, f116, shape19, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            final Shape shape110 = shape4;
                            final float f117 = f3;
                            final float f118 = f4;
                            objRememberedValue2 = new dm3() { // from class: ht6
                                @Override // defpackage.dm3
                                public final Object invoke(Object obj, Object obj2, Object obj3) {
                                    return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$6$lambda$5(pullToRefreshState, z, f117, f118, shape110, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierM1288backgroundbw27NRU6 = BackgroundKt.m1288backgroundbw27NRU(LayoutModifierKt.layout(modifierDrawWithContent6, (dm3) objRememberedValue2), jM6268getUnspecified0d7_KjU, shape4);
                        int i17 = ((i3 >> 12) & 7168) | 48;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy6 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), false);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap6 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier6 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1288backgroundbw27NRU6);
                        Shape shape111 = shape4;
                        companion2 = ComposeUiNode.Companion;
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
                        bm3 bm3VarB6 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy6, composerM5355constructorimpl, currentCompositionLocalMap6);
                        if (composerM5355constructorimpl.getInserting()) {
                            companion3 = companion2;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier6, companion3.getSetModifier());
                            dm3Var.invoke(BoxScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i17 >> 6) & 112) | 6));
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            shape3 = shape111;
                        } else {
                            companion3 = companion2;
                        }
                        dc.b(bm3VarB6, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier6, companion3.getSetModifier());
                        dm3Var.invoke(BoxScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i17 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        shape3 = shape111;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        shape3 = shape2;
                    }
                    modifier3 = modifier2;
                    f5 = f3;
                    j2 = jM6268getUnspecified0d7_KjU;
                    f6 = f4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: it6
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$7(this.b, pullToRefreshState, z, modifier3, f5, shape3, j2, f6, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
                modifier2 = modifier;
                if ((i & 3072) == 0) {
                    if ((i2 & 8) == 0) {
                        f3 = f;
                        if (composerStartRestartGroup.changed(f3)) {
                        }
                        i3 |= i11;
                    } else {
                        f3 = f;
                    }
                    i3 |= i11;
                } else {
                    f3 = f;
                }
                if ((i & 24576) != 0) {
                    i3 |= ((i2 & 16) == 0 || !composerStartRestartGroup.changed(shape2)) ? 8192 : 16384;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    jM6268getUnspecified0d7_KjU = j;
                } else {
                    jM6268getUnspecified0d7_KjU = j;
                    if ((i & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
                        if (composerStartRestartGroup.changed(jM6268getUnspecified0d7_KjU)) {
                            i7 = 131072;
                        } else {
                            i7 = 65536;
                        }
                        i3 |= i7;
                    }
                }
                if ((i & 1572864) == 0) {
                    f4 = f2;
                    if ((i2 & 64) == 0) {
                        i10 = 524288;
                    } else {
                        i10 = 524288;
                    }
                    i3 |= i10;
                } else {
                    f4 = f2;
                }
                if ((i2 & 128) != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changedInstance(dm3Var)) {
                        i8 = 8388608;
                    } else {
                        i8 = 4194304;
                    }
                    i3 |= i8;
                }
                if ((i2 & 256) != 0) {
                    if ((i & 100663296) == 0) {
                        if (composerStartRestartGroup.changed(this)) {
                            i9 = 67108864;
                        } else {
                            i9 = GroupFlagsKt.HasAuxSlotFlag;
                        }
                        i3 |= i9;
                    }
                    if ((i3 & 38347923) != 38347922) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 8) != 0) {
                                i3 &= -7169;
                                f3 = IndicatorMaxDistance;
                            }
                            if ((i2 & 16) != 0) {
                                shape4 = indicatorShape;
                                i3 &= -57345;
                            } else {
                                shape4 = shape2;
                            }
                            if (i6 != 0) {
                                jM6268getUnspecified0d7_KjU = Color.Companion.m6268getUnspecified0d7_KjU();
                            }
                            if ((i2 & 64) != 0) {
                                i3 &= -3670017;
                                f4 = Elevation;
                            }
                        } else {
                            if (i4 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 8) != 0) {
                                i3 &= -7169;
                                f3 = IndicatorMaxDistance;
                            }
                            if ((i2 & 16) != 0) {
                                shape4 = indicatorShape;
                                i3 &= -57345;
                            } else {
                                shape4 = shape2;
                            }
                            if (i6 != 0) {
                                jM6268getUnspecified0d7_KjU = Color.Companion.m6268getUnspecified0d7_KjU();
                            }
                            if ((i2 & 64) != 0) {
                                i3 &= -3670017;
                                f4 = Elevation;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1341144489, i3, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.IndicatorBox (PullToRefresh.kt:456)");
                        }
                        Modifier modifierM2099size3ABfNKs7 = SizeKt.m2099size3ABfNKs(modifier2, PullToRefreshKt.getSpinnerContainerSize());
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        companion = Composer.Companion;
                        if (objRememberedValue == companion.getEmpty()) {
                            objRememberedValue = new et3(1);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        Modifier modifierDrawWithContent7 = DrawModifierKt.drawWithContent(modifierM2099size3ABfNKs7, (nl3) objRememberedValue);
                        if ((i3 & 14) == 4) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        boolean z12 = z3;
                        if ((i3 & 112) == 32) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        z5 = z12 | z4 | ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(f3)) || (i3 & 3072) == 2048) | ((((3670016 & i3) ^ 1572864) <= 1048576 && composerStartRestartGroup.changed(f4)) || (i3 & 1572864) == 1048576) | ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(shape4)) || (i3 & 24576) == 16384);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (z5) {
                            final Shape shape112 = shape4;
                            final float f119 = f3;
                            final float f1110 = f4;
                            objRememberedValue2 = new dm3() { // from class: ht6
                                @Override // defpackage.dm3
                                public final Object invoke(Object obj, Object obj2, Object obj3) {
                                    return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$6$lambda$5(pullToRefreshState, z, f119, f1110, shape112, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        } else {
                            final Shape shape113 = shape4;
                            final float f1111 = f3;
                            final float f1112 = f4;
                            objRememberedValue2 = new dm3() { // from class: ht6
                                @Override // defpackage.dm3
                                public final Object invoke(Object obj, Object obj2, Object obj3) {
                                    return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$6$lambda$5(pullToRefreshState, z, f1111, f1112, shape113, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        Modifier modifierM1288backgroundbw27NRU7 = BackgroundKt.m1288backgroundbw27NRU(LayoutModifierKt.layout(modifierDrawWithContent7, (dm3) objRememberedValue2), jM6268getUnspecified0d7_KjU, shape4);
                        int i18 = ((i3 >> 12) & 7168) | 48;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy7 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), false);
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap7 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier7 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1288backgroundbw27NRU7);
                        Shape shape114 = shape4;
                        companion2 = ComposeUiNode.Companion;
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
                        bm3 bm3VarB7 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy7, composerM5355constructorimpl, currentCompositionLocalMap7);
                        if (composerM5355constructorimpl.getInserting()) {
                            companion3 = companion2;
                            if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier7, companion3.getSetModifier());
                            dm3Var.invoke(BoxScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i18 >> 6) & 112) | 6));
                            composerStartRestartGroup.endNode();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            shape3 = shape114;
                        } else {
                            companion3 = companion2;
                        }
                        dc.b(bm3VarB7, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier7, companion3.getSetModifier());
                        dm3Var.invoke(BoxScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i18 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        shape3 = shape114;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        shape3 = shape2;
                    }
                    modifier3 = modifier2;
                    f5 = f3;
                    j2 = jM6268getUnspecified0d7_KjU;
                    f6 = f4;
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: it6
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$7(this.b, pullToRefreshState, z, modifier3, f5, shape3, j2, f6, dm3Var, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 100663296;
                if ((i3 & 38347923) != 38347922) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 8) != 0) {
                            i3 &= -7169;
                            f3 = IndicatorMaxDistance;
                        }
                        if ((i2 & 16) != 0) {
                            shape4 = indicatorShape;
                            i3 &= -57345;
                        } else {
                            shape4 = shape2;
                        }
                        if (i6 != 0) {
                            jM6268getUnspecified0d7_KjU = Color.Companion.m6268getUnspecified0d7_KjU();
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            f4 = Elevation;
                        }
                    } else {
                        if (i4 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 8) != 0) {
                            i3 &= -7169;
                            f3 = IndicatorMaxDistance;
                        }
                        if ((i2 & 16) != 0) {
                            shape4 = indicatorShape;
                            i3 &= -57345;
                        } else {
                            shape4 = shape2;
                        }
                        if (i6 != 0) {
                            jM6268getUnspecified0d7_KjU = Color.Companion.m6268getUnspecified0d7_KjU();
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            f4 = Elevation;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1341144489, i3, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.IndicatorBox (PullToRefresh.kt:456)");
                    }
                    Modifier modifierM2099size3ABfNKs8 = SizeKt.m2099size3ABfNKs(modifier2, PullToRefreshKt.getSpinnerContainerSize());
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    companion = Composer.Companion;
                    if (objRememberedValue == companion.getEmpty()) {
                        objRememberedValue = new et3(1);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    Modifier modifierDrawWithContent8 = DrawModifierKt.drawWithContent(modifierM2099size3ABfNKs8, (nl3) objRememberedValue);
                    if ((i3 & 14) == 4) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    boolean z13 = z3;
                    if ((i3 & 112) == 32) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    z5 = z13 | z4 | ((((i3 & 7168) ^ 3072) <= 2048 && composerStartRestartGroup.changed(f3)) || (i3 & 3072) == 2048) | ((((3670016 & i3) ^ 1572864) <= 1048576 && composerStartRestartGroup.changed(f4)) || (i3 & 1572864) == 1048576) | ((((57344 & i3) ^ 24576) <= 16384 && composerStartRestartGroup.changed(shape4)) || (i3 & 24576) == 16384);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (z5) {
                        final Shape shape115 = shape4;
                        final float f1113 = f3;
                        final float f1114 = f4;
                        objRememberedValue2 = new dm3() { // from class: ht6
                            @Override // defpackage.dm3
                            public final Object invoke(Object obj, Object obj2, Object obj3) {
                                return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$6$lambda$5(pullToRefreshState, z, f1113, f1114, shape115, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    } else {
                        final Shape shape116 = shape4;
                        final float f1115 = f3;
                        final float f1116 = f4;
                        objRememberedValue2 = new dm3() { // from class: ht6
                            @Override // defpackage.dm3
                            public final Object invoke(Object obj, Object obj2, Object obj3) {
                                return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$6$lambda$5(pullToRefreshState, z, f1115, f1116, shape116, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    Modifier modifierM1288backgroundbw27NRU8 = BackgroundKt.m1288backgroundbw27NRU(LayoutModifierKt.layout(modifierDrawWithContent8, (dm3) objRememberedValue2), jM6268getUnspecified0d7_KjU, shape4);
                    int i19 = ((i3 >> 12) & 7168) | 48;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy8 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), false);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap8 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier8 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1288backgroundbw27NRU8);
                    Shape shape117 = shape4;
                    companion2 = ComposeUiNode.Companion;
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
                    bm3 bm3VarB8 = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy8, composerM5355constructorimpl, currentCompositionLocalMap8);
                    if (composerM5355constructorimpl.getInserting()) {
                        companion3 = companion2;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier8, companion3.getSetModifier());
                        dm3Var.invoke(BoxScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i19 >> 6) & 112) | 6));
                        composerStartRestartGroup.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        shape3 = shape117;
                    } else {
                        companion3 = companion2;
                    }
                    dc.b(bm3VarB8, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier8, companion3.getSetModifier());
                    dm3Var.invoke(BoxScopeInstance.INSTANCE, composerStartRestartGroup, Integer.valueOf(((i19 >> 6) & 112) | 6));
                    composerStartRestartGroup.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    shape3 = shape117;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    shape3 = shape2;
                }
                modifier3 = modifier2;
                f5 = f3;
                j2 = jM6268getUnspecified0d7_KjU;
                f6 = f4;
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: it6
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return PullToRefreshDefaults.IndicatorBox_1CPYgEU$lambda$7(this.b, pullToRefreshState, z, modifier3, f5, shape3, j2, f6, dm3Var, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }

            public final long getContainerColor(Composer composer, int i) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1066257972, i, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.<get-containerColor> (PullToRefresh.kt:405)");
                }
                long jM3262getSurfaceContainerHigh0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composer, 6).m3262getSurfaceContainerHigh0d7_KjU();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                return jM3262getSurfaceContainerHigh0d7_KjU;
            }

            /* JADX INFO: renamed from: getElevation-D9Ej5fM, reason: not valid java name */
            public final float m4471getElevationD9Ej5fM() {
                return Elevation;
            }

            public final long getIndicatorColor(Composer composer, int i) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1441334156, i, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.<get-indicatorColor> (PullToRefresh.kt:413)");
                }
                long jM3243getOnSurfaceVariant0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composer, 6).m3243getOnSurfaceVariant0d7_KjU();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                return jM3243getOnSurfaceVariant0d7_KjU;
            }

            public final long getIndicatorContainerColor(Composer composer, int i) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-80510850, i, -1, "androidx.compose.material3.pulltorefresh.PullToRefreshDefaults.<get-indicatorContainerColor> (PullToRefresh.kt:409)");
                }
                long jM3262getSurfaceContainerHigh0d7_KjU = MaterialTheme.INSTANCE.getColorScheme(composer, 6).m3262getSurfaceContainerHigh0d7_KjU();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                return jM3262getSurfaceContainerHigh0d7_KjU;
            }

            /* JADX INFO: renamed from: getIndicatorMaxDistance-D9Ej5fM, reason: not valid java name */
            public final float m4472getIndicatorMaxDistanceD9Ej5fM() {
                return IndicatorMaxDistance;
            }

            public final Shape getIndicatorShape() {
                return indicatorShape;
            }

            /* JADX INFO: renamed from: getLoadingIndicatorElevation-D9Ej5fM, reason: not valid java name */
            public final float m4473getLoadingIndicatorElevationD9Ej5fM() {
                return LoadingIndicatorElevation;
            }

            /* JADX INFO: renamed from: getPositionalThreshold-D9Ej5fM, reason: not valid java name */
            public final float m4474getPositionalThresholdD9Ej5fM() {
                return PositionalThreshold;
            }

            public final Shape getShape() {
                return shape;
            }
        }

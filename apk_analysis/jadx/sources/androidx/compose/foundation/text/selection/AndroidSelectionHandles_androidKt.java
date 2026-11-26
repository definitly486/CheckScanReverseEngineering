package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupProperties;
import androidx.compose.ui.window.SecureFlagPolicy;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.dk;
import defpackage.dm3;
import defpackage.hm;
import defpackage.j59;
import defpackage.jg;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.n1;
import defpackage.nl3;
import defpackage.uj;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidSelectionHandles_androidKt {
    public static final void HandlePopup(final OffsetProvider offsetProvider, final Alignment alignment, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1090171650);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? composerStartRestartGroup.changed(offsetProvider) : composerStartRestartGroup.changedInstance(offsetProvider) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(alignment) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 256 : 128;
        }
        boolean z = false;
        if (composerStartRestartGroup.shouldExecute((i2 & 147) != 146, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1090171650, i2, -1, "androidx.compose.foundation.text.selection.HandlePopup (AndroidSelectionHandles.android.kt:219)");
            }
            boolean z2 = (i2 & 112) == 32;
            if ((i2 & 14) == 4 || ((i2 & 8) != 0 && composerStartRestartGroup.changed(offsetProvider))) {
                z = true;
            }
            boolean z3 = z2 | z;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z3 || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new HandlePositionProvider(alignment, offsetProvider);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            AndroidPopup_androidKt.Popup((HandlePositionProvider) objRememberedValue, null, new PopupProperties(false, false, false, (SecureFlagPolicy) null, true, false, 15, (jh2) null), bm3Var, composerStartRestartGroup, ((i2 << 3) & 7168) | RendererCapabilities.DECODER_SUPPORT_MASK, 2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: tj
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return AndroidSelectionHandles_androidKt.HandlePopup$lambda$1(offsetProvider, alignment, bm3Var, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 HandlePopup$lambda$1(OffsetProvider offsetProvider, Alignment alignment, bm3 bm3Var, int i, Composer composer, int i2) {
        HandlePopup(offsetProvider, alignment, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: renamed from: SelectionHandle-wLIcFTc, reason: not valid java name */
    public static final void m2960SelectionHandlewLIcFTc(final OffsetProvider offsetProvider, final boolean z, final ResolvedTextDirection resolvedTextDirection, final boolean z2, long j, final float f, final Modifier modifier, Composer composer, final int i, final int i2) {
        int i3;
        long jM9149getUnspecifiedMYxV2XQ;
        Composer composerStartRestartGroup = composer.startRestartGroup(-466280168);
        if ((i & 6) == 0) {
            i3 = ((i & 8) == 0 ? composerStartRestartGroup.changed(offsetProvider) : composerStartRestartGroup.changedInstance(offsetProvider) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changed(resolvedTextDirection.ordinal()) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= composerStartRestartGroup.changed(z2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            jM9149getUnspecifiedMYxV2XQ = j;
            i3 |= ((i2 & 16) == 0 && composerStartRestartGroup.changed(jM9149getUnspecifiedMYxV2XQ)) ? 16384 : 8192;
        } else {
            jM9149getUnspecifiedMYxV2XQ = j;
        }
        if ((1572864 & i) == 0) {
            i3 |= composerStartRestartGroup.changed(modifier) ? 1048576 : 524288;
        }
        if (composerStartRestartGroup.shouldExecute((533651 & i3) != 533650, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0 && !composerStartRestartGroup.getDefaultsInvalid()) {
                composerStartRestartGroup.skipToGroupEnd();
                if ((i2 & 16) != 0) {
                    i3 &= -57345;
                }
            } else if ((i2 & 16) != 0) {
                jM9149getUnspecifiedMYxV2XQ = DpSize.Companion.m9149getUnspecifiedMYxV2XQ();
                i3 &= -57345;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-466280168, i3, -1, "androidx.compose.foundation.text.selection.SelectionHandle (AndroidSelectionHandles.android.kt:65)");
            }
            final boolean zIsLeftSelectionHandle = SelectionHandlesKt.isLeftSelectionHandle(z, resolvedTextDirection, z2);
            AbsoluteAlignment absoluteAlignment = AbsoluteAlignment.INSTANCE;
            Alignment topRight = zIsLeftSelectionHandle ? absoluteAlignment.getTopRight() : absoluteAlignment.getTopLeft();
            int i4 = i3 & 14;
            boolean zChanged = ((i3 & 112) == 32) | (i4 == 4 || ((i3 & 8) != 0 && composerStartRestartGroup.changedInstance(offsetProvider))) | composerStartRestartGroup.changed(zIsLeftSelectionHandle);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new nl3() { // from class: vj
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return AndroidSelectionHandles_androidKt.SelectionHandle_wLIcFTc$lambda$0$0(offsetProvider, z, zIsLeftSelectionHandle, (SemanticsPropertyReceiver) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            final Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(modifier, false, (nl3) objRememberedValue, 1, null);
            final ViewConfiguration viewConfiguration = (ViewConfiguration) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalViewConfiguration());
            final long j2 = jM9149getUnspecifiedMYxV2XQ;
            HandlePopup(offsetProvider, topRight, ComposableLambdaKt.rememberComposableLambda(1365123137, true, new bm3() { // from class: wj
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return AndroidSelectionHandles_androidKt.SelectionHandle_wLIcFTc$lambda$1(viewConfiguration, j2, zIsLeftSelectionHandle, modifierSemantics$default, offsetProvider, (Composer) obj, iIntValue);
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, i4 | RendererCapabilities.DECODER_SUPPORT_MASK);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            jM9149getUnspecifiedMYxV2XQ = j2;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final long j3 = jM9149getUnspecifiedMYxV2XQ;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: xj
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return AndroidSelectionHandles_androidKt.SelectionHandle_wLIcFTc$lambda$2(offsetProvider, z, resolvedTextDirection, z2, j3, f, modifier, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    public static final void SelectionHandleIcon(final Modifier modifier, final ll3<Boolean> ll3Var, final boolean z, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(2111672474);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(ll3Var) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 147) != 146, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2111672474, i2, -1, "androidx.compose.foundation.text.selection.SelectionHandleIcon (AndroidSelectionHandles.android.kt:123)");
            }
            SpacerKt.Spacer(drawSelectionHandle(SizeKt.m2101sizeVpY3zN4(modifier, SelectionHandlesKt.getHandleWidth(), SelectionHandlesKt.getHandleHeight()), ll3Var, z), composerStartRestartGroup, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: zj
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return AndroidSelectionHandles_androidKt.SelectionHandleIcon$lambda$0(modifier, ll3Var, z, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SelectionHandleIcon$lambda$0(Modifier modifier, ll3 ll3Var, boolean z, int i, Composer composer, int i2) {
        SelectionHandleIcon(modifier, ll3Var, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SelectionHandle_wLIcFTc$lambda$0$0(OffsetProvider offsetProvider, boolean z, boolean z2, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        long jMo2453provideF1C5BW0 = offsetProvider.mo2453provideF1C5BW0();
        semanticsPropertyReceiver.set(SelectionHandlesKt.getSelectionHandleInfoKey(), new SelectionHandleInfo(z ? Handle.SelectionStart : Handle.SelectionEnd, jMo2453provideF1C5BW0, z2 ? SelectionHandleAnchor.Left : SelectionHandleAnchor.Right, (9223372034707292159L & jMo2453provideF1C5BW0) != InlineClassHelperKt.UnspecifiedPackedFloats, null));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SelectionHandle_wLIcFTc$lambda$1(ViewConfiguration viewConfiguration, final long j, final boolean z, final Modifier modifier, final OffsetProvider offsetProvider, Composer composer, int i) {
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1365123137, i, -1, "androidx.compose.foundation.text.selection.SelectionHandle.<anonymous> (AndroidSelectionHandles.android.kt:85)");
            }
            CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalViewConfiguration().provides(viewConfiguration), ComposableLambdaKt.rememberComposableLambda(1260045569, true, new bm3() { // from class: yj
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return AndroidSelectionHandles_androidKt.SelectionHandle_wLIcFTc$lambda$1$0(j, z, modifier, offsetProvider, (Composer) obj, iIntValue);
                }
            }, composer, 54), composer, ProvidedValue.$stable | 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SelectionHandle_wLIcFTc$lambda$1$0(long j, boolean z, Modifier modifier, OffsetProvider offsetProvider, Composer composer, int i) {
        int i2 = 0;
        if (composer.shouldExecute((i & 3) != 2, i & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1260045569, i, -1, "androidx.compose.foundation.text.selection.SelectionHandle.<anonymous>.<anonymous> (AndroidSelectionHandles.android.kt:86)");
            }
            if (j != InlineClassHelperKt.UnspecifiedPackedFloats) {
                composer.startReplaceGroup(3458246);
                Arrangement.Horizontal right = z ? Arrangement.Absolute.INSTANCE.getRight() : Arrangement.Absolute.INSTANCE.getLeft();
                Modifier modifierM2095requiredSizeInqDBjuR0$default = SizeKt.m2095requiredSizeInqDBjuR0$default(modifier, DpSize.m9140getWidthD9Ej5fM(j), DpSize.m9138getHeightD9Ej5fM(j), 0.0f, 0.0f, 12, null);
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(right, Alignment.Companion.getTop(), composer, 0);
                int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
                CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierM2095requiredSizeInqDBjuR0$default);
                ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                ll3<ComposeUiNode> constructor = companion.getConstructor();
                if (composer.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor);
                } else {
                    composer.useNode();
                }
                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer);
                jg.d(companion, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                Modifier.Companion companion2 = Modifier.Companion;
                boolean zChangedInstance = composer.changedInstance(offsetProvider);
                Object objRememberedValue = composer.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new dk(offsetProvider, i2);
                    composer.updateRememberedValue(objRememberedValue);
                }
                SelectionHandleIcon(companion2, (ll3) objRememberedValue, z, composer, 6);
                composer.endNode();
                composer.endReplaceGroup();
            } else {
                composer.startReplaceGroup(4389176);
                boolean zChangedInstance2 = composer.changedInstance(offsetProvider);
                Object objRememberedValue2 = composer.rememberedValue();
                if (zChangedInstance2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                    objRememberedValue2 = new uj(offsetProvider, i2);
                    composer.updateRememberedValue(objRememberedValue2);
                }
                SelectionHandleIcon(modifier, (ll3) objRememberedValue2, z, composer, 0);
                composer.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean SelectionHandle_wLIcFTc$lambda$1$0$0$0$0(OffsetProvider offsetProvider) {
        return (offsetProvider.mo2453provideF1C5BW0() & 9223372034707292159L) != InlineClassHelperKt.UnspecifiedPackedFloats;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean SelectionHandle_wLIcFTc$lambda$1$0$1$0(OffsetProvider offsetProvider) {
        return (offsetProvider.mo2453provideF1C5BW0() & 9223372034707292159L) != InlineClassHelperKt.UnspecifiedPackedFloats;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SelectionHandle_wLIcFTc$lambda$2(OffsetProvider offsetProvider, boolean z, ResolvedTextDirection resolvedTextDirection, boolean z2, long j, float f, Modifier modifier, int i, int i2, Composer composer, int i3) {
        m2960SelectionHandlewLIcFTc(offsetProvider, z, resolvedTextDirection, z2, j, f, modifier, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    public static final ImageBitmap createHandleImage(CacheDrawScope cacheDrawScope, float f) {
        int iCeil = ((int) Math.ceil(f)) * 2;
        HandleImageCache handleImageCache = HandleImageCache.INSTANCE;
        ImageBitmap imageBitmap = handleImageCache.getImageBitmap();
        Canvas canvas = handleImageCache.getCanvas();
        CanvasDrawScope canvasDrawScope = handleImageCache.getCanvasDrawScope();
        if (imageBitmap == null || canvas == null || iCeil > imageBitmap.getWidth() || iCeil > imageBitmap.getHeight()) {
            imageBitmap = ImageBitmapKt.m6468ImageBitmapx__hDU$default(iCeil, iCeil, ImageBitmapConfig.Companion.m6462getAlpha8_sVssgQ(), false, null, 24, null);
            handleImageCache.setImageBitmap(imageBitmap);
            canvas = CanvasKt.Canvas(imageBitmap);
            handleImageCache.setCanvas(canvas);
        }
        ImageBitmap imageBitmap2 = imageBitmap;
        Canvas canvas2 = canvas;
        if (canvasDrawScope == null) {
            canvasDrawScope = new CanvasDrawScope();
            handleImageCache.setCanvasDrawScope(canvasDrawScope);
        }
        CanvasDrawScope canvasDrawScope2 = canvasDrawScope;
        LayoutDirection layoutDirection = cacheDrawScope.getLayoutDirection();
        float width = imageBitmap2.getWidth();
        long jM6047constructorimpl = Size.m6047constructorimpl((((long) Float.floatToRawIntBits(imageBitmap2.getHeight())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(width) << 32));
        CanvasDrawScope.DrawParams drawParams = canvasDrawScope2.getDrawParams();
        Density densityComponent1 = drawParams.component1();
        LayoutDirection layoutDirectionComponent2 = drawParams.component2();
        Canvas canvasComponent3 = drawParams.component3();
        long jM6723component4NHjbRc = drawParams.m6723component4NHjbRc();
        CanvasDrawScope.DrawParams drawParams2 = canvasDrawScope2.getDrawParams();
        drawParams2.setDensity(cacheDrawScope);
        drawParams2.setLayoutDirection(layoutDirection);
        drawParams2.setCanvas(canvas2);
        drawParams2.m6726setSizeuvyYCjk(jM6047constructorimpl);
        canvas2.save();
        DrawScope.m6800drawRectnJ9OG0$default(canvasDrawScope2, Color.Companion.m6258getBlack0d7_KjU(), 0L, canvasDrawScope2.mo6806getSizeNHjbRc(), 0.0f, null, null, BlendMode.Companion.m6145getClear0nO6VwU(), 58, null);
        DrawScope.m6800drawRectnJ9OG0$default(canvasDrawScope2, ColorKt.Color(4278190080L), Offset.Companion.m6003getZeroF1C5BW0(), Size.m6047constructorimpl((((long) Float.floatToRawIntBits(f)) << 32) | (((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), 0.0f, null, null, 0, 120, null);
        DrawScope.m6787drawCircleVaOC9Bg$default(canvasDrawScope2, ColorKt.Color(4278190080L), f, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32)), 0.0f, null, null, 0, 120, null);
        canvas2.restore();
        CanvasDrawScope.DrawParams drawParams3 = canvasDrawScope2.getDrawParams();
        drawParams3.setDensity(densityComponent1);
        drawParams3.setLayoutDirection(layoutDirectionComponent2);
        drawParams3.setCanvas(canvasComponent3);
        drawParams3.m6726setSizeuvyYCjk(jM6723component4NHjbRc);
        return imageBitmap2;
    }

    public static final Modifier drawSelectionHandle(Modifier modifier, final ll3<Boolean> ll3Var, final boolean z) {
        return ComposedModifierKt.composed$default(modifier, null, new dm3() { // from class: ak
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj3).intValue();
                return AndroidSelectionHandles_androidKt.drawSelectionHandle$lambda$0(ll3Var, z, (Modifier) obj, (Composer) obj2, iIntValue);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier drawSelectionHandle$lambda$0(final ll3 ll3Var, final boolean z, Modifier modifier, Composer composer, int i) {
        composer.startReplaceGroup(-196777734);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-196777734, i, -1, "androidx.compose.foundation.text.selection.drawSelectionHandle.<anonymous> (AndroidSelectionHandles.android.kt:129)");
        }
        final long jM3049getHandleColor0d7_KjU = ((TextSelectionColors) composer.consume(TextSelectionColorsKt.getLocalTextSelectionColors())).m3049getHandleColor0d7_KjU();
        boolean zChanged = composer.changed(jM3049getHandleColor0d7_KjU) | composer.changed(ll3Var) | composer.changed(z);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new nl3() { // from class: bk
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return AndroidSelectionHandles_androidKt.drawSelectionHandle$lambda$0$0$0(jM3049getHandleColor0d7_KjU, ll3Var, z, (CacheDrawScope) obj);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        Modifier modifierDrawWithCache = DrawModifierKt.drawWithCache(modifier, (nl3) objRememberedValue);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceGroup();
        return modifierDrawWithCache;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DrawResult drawSelectionHandle$lambda$0$0$0(long j, final ll3 ll3Var, final boolean z, CacheDrawScope cacheDrawScope) {
        final ImageBitmap imageBitmapCreateHandleImage = createHandleImage(cacheDrawScope, Float.intBitsToFloat((int) (cacheDrawScope.m5767getSizeNHjbRc() >> 32)) / 2.0f);
        final ColorFilter colorFilterM6273tintxETnrds$default = ColorFilter.Companion.m6273tintxETnrds$default(ColorFilter.Companion, j, 0, 2, null);
        return cacheDrawScope.onDrawWithContent(new nl3() { // from class: ck
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return AndroidSelectionHandles_androidKt.drawSelectionHandle$lambda$0$0$0$0(ll3Var, z, imageBitmapCreateHandleImage, colorFilterM6273tintxETnrds$default, (ContentDrawScope) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 drawSelectionHandle$lambda$0$0$0$0(ll3 ll3Var, boolean z, ImageBitmap imageBitmap, ColorFilter colorFilter, ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        if (!((Boolean) ll3Var.invoke()).booleanValue()) {
            return j59.a;
        }
        if (z) {
            long jMo6805getCenterF1C5BW0 = contentDrawScope.mo6805getCenterF1C5BW0();
            DrawContext drawContext = contentDrawScope.getDrawContext();
            long jMo6727getSizeNHjbRc = drawContext.mo6727getSizeNHjbRc();
            drawContext.getCanvas().save();
            try {
                drawContext.getTransform().mo6734scale0AR0LA0(-1.0f, 1.0f, jMo6805getCenterF1C5BW0);
                DrawScope.m6790drawImagegbVJVH8$default(contentDrawScope, imageBitmap, 0L, 0.0f, null, colorFilter, 0, 46, null);
            } finally {
                n1.a(drawContext, jMo6727getSizeNHjbRc);
            }
        } else {
            DrawScope.m6790drawImagegbVJVH8$default(contentDrawScope, imageBitmap, 0L, 0.0f, null, colorFilter, 0, 46, null);
        }
        return j59.a;
    }
}

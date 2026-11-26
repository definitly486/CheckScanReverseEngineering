package androidx.compose.material3;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.foundation.selection.ToggleableKt;
import androidx.compose.material3.internal.ChildParentSemanticsKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.CompositingStrategy;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScopeKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.ru2;

/* JADX INFO: loaded from: classes2.dex */
public final class SurfaceKt {
    private static final ProvidableCompositionLocal<Dp> LocalAbsoluteTonalElevation = CompositionLocalKt.compositionLocalOf$default(null, new ru2(5), 1, null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final Dp LocalAbsoluteTonalElevation$lambda$3() {
        return Dp.m9040boximpl(Dp.m9042constructorimpl(0.0f));
    }

    /* JADX INFO: renamed from: Surface-T9BRK9s, reason: not valid java name */
    public static final void m3942SurfaceT9BRK9s(Modifier modifier, Shape shape, long j, long j2, float f, float f2, BorderStroke borderStroke, bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i, int i2) {
        if ((i2 & 1) != 0) {
            modifier = Modifier.Companion;
        }
        if ((i2 & 2) != 0) {
            shape = RectangleShapeKt.getRectangleShape();
        }
        if ((i2 & 4) != 0) {
            j = MaterialTheme.INSTANCE.getColorScheme(composer, 6).m3259getSurface0d7_KjU();
        }
        if ((i2 & 8) != 0) {
            j2 = ColorSchemeKt.m3275contentColorForek8zF_U(j, composer, (i >> 6) & 14);
        }
        if ((i2 & 16) != 0) {
            f = Dp.m9042constructorimpl(0.0f);
        }
        if ((i2 & 32) != 0) {
            f2 = Dp.m9042constructorimpl(0.0f);
        }
        if ((i2 & 64) != 0) {
            borderStroke = null;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1093433818, i, -1, "androidx.compose.material3.Surface (Surface.kt:104)");
        }
        ProvidableCompositionLocal<Dp> providableCompositionLocal = LocalAbsoluteTonalElevation;
        float fM9042constructorimpl = Dp.m9042constructorimpl(((Dp) composer.consume(providableCompositionLocal)).m9056unboximpl() + f);
        Modifier modifier2 = modifier;
        CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(j2)), providableCompositionLocal.provides(Dp.m9040boximpl(fM9042constructorimpl))}, ComposableLambdaKt.rememberComposableLambda(421772006, true, new SurfaceKt$Surface$1(modifier2, shape, j, fM9042constructorimpl, borderStroke, f2, bm3Var), composer, 54), composer, ProvidedValue.$stable | 48);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    /* JADX INFO: renamed from: Surface-d85dljk, reason: not valid java name */
    public static final void m3943Surfaced85dljk(final boolean z, final ll3<j59> ll3Var, Modifier modifier, boolean z2, Shape shape, long j, long j2, float f, float f2, BorderStroke borderStroke, MutableInteractionSource mutableInteractionSource, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i, int i2, int i3) {
        final Modifier modifier2 = (i3 & 4) != 0 ? Modifier.Companion : modifier;
        final boolean z3 = (i3 & 8) != 0 ? true : z2;
        final Shape rectangleShape = (i3 & 16) != 0 ? RectangleShapeKt.getRectangleShape() : shape;
        final long jM3259getSurface0d7_KjU = (i3 & 32) != 0 ? MaterialTheme.INSTANCE.getColorScheme(composer, 6).m3259getSurface0d7_KjU() : j;
        long jM3275contentColorForek8zF_U = (i3 & 64) != 0 ? ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composer, (i >> 15) & 14) : j2;
        float fM9042constructorimpl = (i3 & 128) != 0 ? Dp.m9042constructorimpl(0.0f) : f;
        final float fM9042constructorimpl2 = (i3 & 256) != 0 ? Dp.m9042constructorimpl(0.0f) : f2;
        BorderStroke borderStroke2 = (i3 & 512) != 0 ? null : borderStroke;
        final MutableInteractionSource mutableInteractionSource2 = (i3 & 1024) == 0 ? mutableInteractionSource : null;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1416521139, i, i2, "androidx.compose.material3.Surface (Surface.kt:313)");
        }
        if (mutableInteractionSource2 == null) {
            composer.startReplaceGroup(1528143336);
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                composer.updateRememberedValue(objRememberedValue);
            }
            mutableInteractionSource2 = (MutableInteractionSource) objRememberedValue;
        } else {
            composer.startReplaceGroup(-227800369);
        }
        composer.endReplaceGroup();
        ProvidableCompositionLocal<Dp> providableCompositionLocal = LocalAbsoluteTonalElevation;
        final float fM9042constructorimpl3 = Dp.m9042constructorimpl(((Dp) composer.consume(providableCompositionLocal)).m9056unboximpl() + fM9042constructorimpl);
        final BorderStroke borderStroke3 = borderStroke2;
        CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U)), providableCompositionLocal.provides(Dp.m9040boximpl(fM9042constructorimpl3))}, ComposableLambdaKt.rememberComposableLambda(1508735219, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.SurfaceKt$Surface$3
            public final void invoke(Composer composer2, int i4) {
                if (!composer2.shouldExecute((i4 & 3) != 2, i4 & 1)) {
                    composer2.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1508735219, i4, -1, "androidx.compose.material3.Surface.<anonymous> (Surface.kt:321)");
                }
                Modifier modifierChildSemantics$default = ChildParentSemanticsKt.childSemantics$default(SelectableKt.m2313selectableO2vRcR0$default(SurfaceKt.m3948surfaceXOJAsU(InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifier2), rectangleShape, SurfaceKt.m3949surfaceColorAtElevationCLU3JFs(jM3259getSurface0d7_KjU, fM9042constructorimpl3, composer2, 0), borderStroke3, ((Density) composer2.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(fM9042constructorimpl2)), z, mutableInteractionSource2, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null), z3, null, ll3Var, 16, null), null, 1, null);
                bm3<Composer, Integer, j59> bm3Var2 = bm3Var;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), true);
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierChildSemantics$default);
                ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                ll3<ComposeUiNode> constructor = companion.getConstructor();
                if (composer2.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composer2.startReusableNode();
                if (composer2.getInserting()) {
                    composer2.createNode(constructor);
                } else {
                    composer2.useNode();
                }
                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                if (cc.f(bm3Var2, composer2, 0)) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // defpackage.bm3
            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return j59.a;
            }
        }, composer, 54), composer, ProvidedValue.$stable | 48);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    /* JADX INFO: renamed from: Surface-o_FOJdg, reason: not valid java name */
    public static final void m3945Surfaceo_FOJdg(final ll3<j59> ll3Var, Modifier modifier, boolean z, Shape shape, long j, long j2, float f, float f2, BorderStroke borderStroke, MutableInteractionSource mutableInteractionSource, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i, int i2, int i3) {
        final Modifier modifier2 = (i3 & 2) != 0 ? Modifier.Companion : modifier;
        final boolean z2 = (i3 & 4) != 0 ? true : z;
        final Shape rectangleShape = (i3 & 8) != 0 ? RectangleShapeKt.getRectangleShape() : shape;
        final long jM3259getSurface0d7_KjU = (i3 & 16) != 0 ? MaterialTheme.INSTANCE.getColorScheme(composer, 6).m3259getSurface0d7_KjU() : j;
        long jM3275contentColorForek8zF_U = (i3 & 32) != 0 ? ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composer, (i >> 12) & 14) : j2;
        float fM9042constructorimpl = (i3 & 64) != 0 ? Dp.m9042constructorimpl(0.0f) : f;
        final float fM9042constructorimpl2 = (i3 & 128) != 0 ? Dp.m9042constructorimpl(0.0f) : f2;
        BorderStroke borderStroke2 = (i3 & 256) != 0 ? null : borderStroke;
        MutableInteractionSource mutableInteractionSource2 = (i3 & 512) == 0 ? mutableInteractionSource : null;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1472753265, i, i2, "androidx.compose.material3.Surface (Surface.kt:207)");
        }
        if (mutableInteractionSource2 == null) {
            composer.startReplaceGroup(-1701037204);
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                composer.updateRememberedValue(objRememberedValue);
            }
            mutableInteractionSource2 = (MutableInteractionSource) objRememberedValue;
        } else {
            composer.startReplaceGroup(2023337163);
        }
        composer.endReplaceGroup();
        ProvidableCompositionLocal<Dp> providableCompositionLocal = LocalAbsoluteTonalElevation;
        final float fM9042constructorimpl3 = Dp.m9042constructorimpl(((Dp) composer.consume(providableCompositionLocal)).m9056unboximpl() + fM9042constructorimpl);
        final BorderStroke borderStroke3 = borderStroke2;
        final MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource2;
        CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U)), providableCompositionLocal.provides(Dp.m9040boximpl(fM9042constructorimpl3))}, ComposableLambdaKt.rememberComposableLambda(849208527, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.SurfaceKt$Surface$2
            public final void invoke(Composer composer2, int i4) {
                if (!composer2.shouldExecute((i4 & 3) != 2, i4 & 1)) {
                    composer2.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(849208527, i4, -1, "androidx.compose.material3.Surface.<anonymous> (Surface.kt:215)");
                }
                Modifier modifierChildSemantics$default = ChildParentSemanticsKt.childSemantics$default(ClickableKt.m1320clickableO2vRcR0$default(SurfaceKt.m3948surfaceXOJAsU(InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifier2), rectangleShape, SurfaceKt.m3949surfaceColorAtElevationCLU3JFs(jM3259getSurface0d7_KjU, fM9042constructorimpl3, composer2, 0), borderStroke3, ((Density) composer2.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(fM9042constructorimpl2)), mutableInteractionSource3, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null), z2, null, null, ll3Var, 24, null), null, 1, null);
                bm3<Composer, Integer, j59> bm3Var2 = bm3Var;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), true);
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierChildSemantics$default);
                ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                ll3<ComposeUiNode> constructor = companion.getConstructor();
                if (composer2.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composer2.startReusableNode();
                if (composer2.getInserting()) {
                    composer2.createNode(constructor);
                } else {
                    composer2.useNode();
                }
                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                if (cc.f(bm3Var2, composer2, 0)) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // defpackage.bm3
            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return j59.a;
            }
        }, composer, 54), composer, ProvidedValue.$stable | 48);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    public static final ProvidableCompositionLocal<Dp> getLocalAbsoluteTonalElevation() {
        return LocalAbsoluteTonalElevation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: surface-XO-JAsU, reason: not valid java name */
    public static final Modifier m3948surfaceXOJAsU(Modifier modifier, Shape shape, long j, BorderStroke borderStroke, float f) {
        Shape shape2;
        Modifier modifierBorder;
        Modifier modifierM6394graphicsLayerAp8cVGQ;
        if (f > 0.0f) {
            modifierBorder = Modifier.Companion;
            shape2 = shape;
            modifierM6394graphicsLayerAp8cVGQ = GraphicsLayerModifierKt.m6394graphicsLayerAp8cVGQ(modifierBorder, (131064 & 1) != 0 ? 1.0f : 0.0f, (131064 & 2) != 0 ? 1.0f : 0.0f, (131064 & 4) == 0 ? 0.0f : 1.0f, (131064 & 8) != 0 ? 0.0f : 0.0f, (131064 & 16) != 0 ? 0.0f : 0.0f, (131064 & 32) != 0 ? 0.0f : f, (131064 & 64) != 0 ? 0.0f : 0.0f, (131064 & 128) != 0 ? 0.0f : 0.0f, (131064 & 256) == 0 ? 0.0f : 0.0f, (131064 & 512) != 0 ? 8.0f : 0.0f, (131064 & 1024) != 0 ? TransformOrigin.Companion.m6645getCenterSzJe1aQ() : 0L, (131064 & 2048) != 0 ? RectangleShapeKt.getRectangleShape() : shape2, (131064 & 4096) != 0 ? false : false, (131064 & 8192) != 0 ? null : null, (131064 & 16384) != 0 ? GraphicsLayerScopeKt.getDefaultShadowColor() : 0L, (32768 & 131064) != 0 ? GraphicsLayerScopeKt.getDefaultShadowColor() : 0L, (131064 & 65536) != 0 ? CompositingStrategy.Companion.m6321getAutoNrFUSI() : 0);
        } else {
            shape2 = shape;
            modifierBorder = Modifier.Companion;
            modifierM6394graphicsLayerAp8cVGQ = modifierBorder;
        }
        Modifier modifierThen = modifier.then(modifierM6394graphicsLayerAp8cVGQ);
        if (borderStroke != null) {
            modifierBorder = BorderKt.border(modifierBorder, borderStroke, shape2);
        }
        return ClipKt.clip(BackgroundKt.m1288backgroundbw27NRU(modifierThen.then(modifierBorder), j, shape2), shape2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: surfaceColorAtElevation-CLU3JFs, reason: not valid java name */
    public static final long m3949surfaceColorAtElevationCLU3JFs(long j, float f, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2079918090, i, -1, "androidx.compose.material3.surfaceColorAtElevation (Surface.kt:478)");
        }
        long jM3273applyTonalElevationRFCenO8 = ColorSchemeKt.m3273applyTonalElevationRFCenO8(MaterialTheme.INSTANCE.getColorScheme(composer, 6), j, f, composer, (i << 3) & 1008);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return jM3273applyTonalElevationRFCenO8;
    }

    /* JADX INFO: renamed from: Surface-d85dljk, reason: not valid java name */
    public static final void m3944Surfaced85dljk(final boolean z, final nl3<? super Boolean, j59> nl3Var, Modifier modifier, boolean z2, Shape shape, long j, long j2, float f, float f2, BorderStroke borderStroke, MutableInteractionSource mutableInteractionSource, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, int i, int i2, int i3) {
        final Modifier modifier2 = (i3 & 4) != 0 ? Modifier.Companion : modifier;
        final boolean z3 = (i3 & 8) != 0 ? true : z2;
        final Shape rectangleShape = (i3 & 16) != 0 ? RectangleShapeKt.getRectangleShape() : shape;
        final long jM3259getSurface0d7_KjU = (i3 & 32) != 0 ? MaterialTheme.INSTANCE.getColorScheme(composer, 6).m3259getSurface0d7_KjU() : j;
        long jM3275contentColorForek8zF_U = (i3 & 64) != 0 ? ColorSchemeKt.m3275contentColorForek8zF_U(jM3259getSurface0d7_KjU, composer, (i >> 15) & 14) : j2;
        float fM9042constructorimpl = (i3 & 128) != 0 ? Dp.m9042constructorimpl(0.0f) : f;
        final float fM9042constructorimpl2 = (i3 & 256) != 0 ? Dp.m9042constructorimpl(0.0f) : f2;
        BorderStroke borderStroke2 = (i3 & 512) != 0 ? null : borderStroke;
        final MutableInteractionSource mutableInteractionSource2 = (i3 & 1024) == 0 ? mutableInteractionSource : null;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1931279214, i, i2, "androidx.compose.material3.Surface (Surface.kt:420)");
        }
        if (mutableInteractionSource2 == null) {
            composer.startReplaceGroup(643421417);
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = InteractionSourceKt.MutableInteractionSource();
                composer.updateRememberedValue(objRememberedValue);
            }
            mutableInteractionSource2 = (MutableInteractionSource) objRememberedValue;
        } else {
            composer.startReplaceGroup(-533434450);
        }
        composer.endReplaceGroup();
        ProvidableCompositionLocal<Dp> providableCompositionLocal = LocalAbsoluteTonalElevation;
        final float fM9042constructorimpl3 = Dp.m9042constructorimpl(((Dp) composer.consume(providableCompositionLocal)).m9056unboximpl() + fM9042constructorimpl);
        final BorderStroke borderStroke3 = borderStroke2;
        CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(jM3275contentColorForek8zF_U)), providableCompositionLocal.provides(Dp.m9040boximpl(fM9042constructorimpl3))}, ComposableLambdaKt.rememberComposableLambda(-1839065134, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.SurfaceKt$Surface$4
            public final void invoke(Composer composer2, int i4) {
                if (!composer2.shouldExecute((i4 & 3) != 2, i4 & 1)) {
                    composer2.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1839065134, i4, -1, "androidx.compose.material3.Surface.<anonymous> (Surface.kt:428)");
                }
                Modifier modifierChildSemantics$default = ChildParentSemanticsKt.childSemantics$default(ToggleableKt.m2320toggleableO2vRcR0$default(SurfaceKt.m3948surfaceXOJAsU(InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifier2), rectangleShape, SurfaceKt.m3949surfaceColorAtElevationCLU3JFs(jM3259getSurface0d7_KjU, fM9042constructorimpl3, composer2, 0), borderStroke3, ((Density) composer2.consume(CompositionLocalsKt.getLocalDensity())).mo1434toPx0680j_4(fM9042constructorimpl2)), z, mutableInteractionSource2, RippleKt.m3775rippleH2RKhps$default(false, 0.0f, 0L, 7, null), z3, null, nl3Var, 16, null), null, 1, null);
                bm3<Composer, Integer, j59> bm3Var2 = bm3Var;
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), true);
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                CompositionLocalMap currentCompositionLocalMap = composer2.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifierChildSemantics$default);
                ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                ll3<ComposeUiNode> constructor = companion.getConstructor();
                if (composer2.getApplier() == null) {
                    ComposablesKt.invalidApplier();
                }
                composer2.startReusableNode();
                if (composer2.getInserting()) {
                    composer2.createNode(constructor);
                } else {
                    composer2.useNode();
                }
                Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer2);
                bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                if (cc.f(bm3Var2, composer2, 0)) {
                    ComposerKt.traceEventEnd();
                }
            }

            @Override // defpackage.bm3
            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return j59.a;
            }
        }, composer, 54), composer, ProvidedValue.$stable | 48);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }
}

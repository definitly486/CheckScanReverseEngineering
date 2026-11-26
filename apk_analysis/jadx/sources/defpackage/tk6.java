package defpackage;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.ColorResources_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import coil3.request.NullRequestDataException;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes2.dex */
public final class tk6 {
    public static final float a = Dp.m9042constructorimpl(40.0f);
    public static final float b = Dp.m9042constructorimpl(40.0f);
    public static final float c = Dp.m9042constructorimpl(32.0f);
    public static final float d = Dp.m9042constructorimpl(2.0f);
    public static final float e = Dp.m9042constructorimpl(32.0f);
    public static final float f = Dp.m9042constructorimpl(12.0f);
    public static final float g = Dp.m9042constructorimpl(8.0f);
    public static final float h = Dp.m9042constructorimpl(4.0f);
    public static final float i = Dp.m9042constructorimpl(2.0f);
    public static final float j = Dp.m9042constructorimpl(12.0f);
    public static final float k = Dp.m9042constructorimpl(24.0f);
    public static final float l = Dp.m9042constructorimpl(12.0f);
    public static final TextStyle m = new TextStyle(0, TextUnitKt.getSp(16), FontWeight.Companion.getMedium(), (FontStyle) null, (FontSynthesis) null, gd1.a, (String) null, 0, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777177, (jh2) null);

    public static final void a(final Modifier modifier, Composer composer, final int i2) {
        int i3;
        Composer composerStartRestartGroup = composer.startRestartGroup(1549117685);
        if ((i2 & 6) == 0) {
            i3 = (composerStartRestartGroup.changed((Object) null) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(modifier) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 19) != 18, i3 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1549117685, i3, -1, "com.warefly.checkscan.design.compose.toolbars.profilebadge.Avatar (ProfileBadge.kt:170)");
            }
            Painter painterPainterResource = PainterResources_androidKt.painterResource(R.drawable.ic_default_subscription_avatar, composerStartRestartGroup, 0);
            composerStartRestartGroup.startReplaceGroup(341549277);
            ImageKt.Image(painterPainterResource, (String) null, ClipKt.clip(modifier, RoundedCornerShapeKt.getCircleShape()), (Alignment) null, (ContentScale) null, 0.0f, (ColorFilter) null, composerStartRestartGroup, Painter.$stable | 48, 120);
            composerStartRestartGroup.endReplaceGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: rk6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iUpdateChangedFlags = RecomposeScopeImplKt.updateChangedFlags(i2 | 1);
                    tk6.a(modifier, (Composer) obj, iUpdateChangedFlags);
                    return j59.a;
                }
            });
        }
    }

    public static final void b(final String str, final long j2, Composer composer, final int i2) {
        int i3;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1798838883);
        if ((i2 & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(j2) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changed(false) ? 256 : 128;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 147) != 146, i3 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1798838883, i3, -1, "com.warefly.checkscan.design.compose.toolbars.profilebadge.BadgeTitle (ProfileBadge.kt:158)");
            }
            composer2 = composerStartRestartGroup;
            TextKt.m4085TextNvy7gAk(str.length() > 10 ? ua8.l0(10, str).concat("...") : str, null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 1, 0, null, TextStyle.m8504copyp1EtxEg$default(m, j2, 0L, null, null, null, null, null, 0L, null, null, null, 0L, TextDecoration.Companion.getNone(), null, null, 0, 0, 0L, null, null, null, 0, 0, null, 16773118, null), composer2, 0, 24576, 114686);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sk6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iUpdateChangedFlags = RecomposeScopeImplKt.updateChangedFlags(i2 | 1);
                    tk6.b(str, j2, (Composer) obj, iUpdateChangedFlags);
                    return j59.a;
                }
            });
        }
    }

    public static final void c(final uk6 uk6Var, Modifier modifier, Composer composer, final int i2) {
        int i3;
        final Modifier modifier2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1156278746);
        if ((i2 & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(uk6Var) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        int i4 = i3 | 48;
        if (composerStartRestartGroup.shouldExecute((i4 & 19) != 18, i4 & 1)) {
            modifier2 = Modifier.Companion;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1156278746, i4, -1, "com.warefly.checkscan.design.compose.toolbars.profilebadge.ProfileBadge (ProfileBadge.kt:93)");
            }
            boolean z = uk6Var instanceof uk6.d;
            float f2 = b;
            if (z) {
                composerStartRestartGroup.startReplaceGroup(-1212649714);
                a(SizeKt.m2099size3ABfNKs(modifier2, f2), composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
            } else if (uk6Var.equals(uk6.c.a)) {
                composerStartRestartGroup.startReplaceGroup(-1212644705);
                BoxKt.Box(BackgroundKt.m1288backgroundbw27NRU(SizeKt.m2099size3ABfNKs(modifier2, f2), ColorResources_androidKt.colorResource(R.color.almostThereMoon, composerStartRestartGroup, 0), RoundedCornerShapeKt.getCircleShape()), composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                boolean z2 = uk6Var instanceof uk6.a;
                float f3 = a;
                final long j2 = 0;
                if (z2) {
                    composerStartRestartGroup.startReplaceGroup(-1212637936);
                    Modifier modifierM2037paddingqDBjuR0$default = PaddingKt.m2037paddingqDBjuR0$default(DrawModifierKt.drawBehind(SizeKt.m2085height3ABfNKs(modifier2, f3), new nl3() { // from class: qk6
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            DrawScope drawScope = (DrawScope) obj;
                            drawScope.getClass();
                            Brush brushM6179horizontalGradient8A3gB4$default = Brush.Companion.m6179horizontalGradient8A3gB4$default(Brush.Companion, u96.i(Color.m6222boximpl(j2), Color.m6222boximpl(j2)), 0.0f, Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32)) / 2.0f, 0, 8, (Object) null);
                            float fMo1434toPx0680j_4 = drawScope.mo1434toPx0680j_4(tk6.e);
                            DrawScope.m6801drawRoundRectZuiqVtQ$default(drawScope, brushM6179horizontalGradient8A3gB4$default, 0L, 0L, CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(fMo1434toPx0680j_4)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fMo1434toPx0680j_4) << 32)), 0.0f, null, null, 0, 246, null);
                            return j59.a;
                        }
                    }), f, 0.0f, j, 0.0f, 10, null);
                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getCenterVertically(), composerStartRestartGroup, 48);
                    int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                    CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2037paddingqDBjuR0$default);
                    ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                    ll3<ComposeUiNode> constructor = companion.getConstructor();
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
                    jg.d(companion, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
                    RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                    b(null, 0L, composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
                    composerStartRestartGroup.endNode();
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    boolean z3 = uk6Var instanceof uk6.e;
                    float f4 = c;
                    float f5 = g;
                    if (z3) {
                        composerStartRestartGroup.startReplaceGroup(-1212623040);
                        Modifier modifierM2085height3ABfNKs = SizeKt.m2085height3ABfNKs(modifier2, f3);
                        uk6.e eVar = (uk6.e) uk6Var;
                        Color color = eVar.d;
                        final long j3 = eVar.b;
                        final long j4 = eVar.c;
                        Modifier modifierM2037paddingqDBjuR0$default2 = PaddingKt.m2037paddingqDBjuR0$default(DrawModifierKt.drawBehind(modifierM2085height3ABfNKs, new nl3() { // from class: qk6
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                DrawScope drawScope = (DrawScope) obj;
                                drawScope.getClass();
                                Brush brushM6179horizontalGradient8A3gB4$default = Brush.Companion.m6179horizontalGradient8A3gB4$default(Brush.Companion, u96.i(Color.m6222boximpl(j3), Color.m6222boximpl(j4)), 0.0f, Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32)) / 2.0f, 0, 8, (Object) null);
                                float fMo1434toPx0680j_4 = drawScope.mo1434toPx0680j_4(tk6.e);
                                DrawScope.m6801drawRoundRectZuiqVtQ$default(drawScope, brushM6179horizontalGradient8A3gB4$default, 0L, 0L, CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(fMo1434toPx0680j_4)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fMo1434toPx0680j_4) << 32)), 0.0f, null, null, 0, 246, null);
                                return j59.a;
                            }
                        }), f, 0.0f, color != null ? h : i, 0.0f, 10, null);
                        MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getCenterVertically(), composerStartRestartGroup, 48);
                        int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2037paddingqDBjuR0$default2);
                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                        ll3<ComposeUiNode> constructor2 = companion2.getConstructor();
                        if (composerStartRestartGroup.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor2);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composerStartRestartGroup);
                        jg.d(companion2, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy2, composerM5355constructorimpl2, currentCompositionLocalMap2);
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, (bm3<? super T, ? super Modifier, j59>) hm.b(companion2, composerM5355constructorimpl2, Integer.valueOf(iHashCode2), composerM5355constructorimpl2));
                        RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                        b("Pro", eVar.a, composerStartRestartGroup, 0);
                        SpacerKt.Spacer(SizeKt.m2104width3ABfNKs(modifier2, f5), composerStartRestartGroup, 6);
                        Modifier modifierM2099size3ABfNKs = SizeKt.m2099size3ABfNKs(modifier2, f4);
                        if (color != null) {
                            modifierM2099size3ABfNKs = DrawModifierKt.drawBehind(modifierM2099size3ABfNKs, new a02(color, 2));
                        }
                        a(modifierM2099size3ABfNKs, composerStartRestartGroup, 0);
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        if (!(uk6Var instanceof uk6.b)) {
                            composerStartRestartGroup.startReplaceGroup(-1212649253);
                            composerStartRestartGroup.endReplaceGroup();
                            me0.e();
                            return;
                        }
                        composerStartRestartGroup.startReplaceGroup(-1212595567);
                        Modifier modifierM2037paddingqDBjuR0$default3 = PaddingKt.m2037paddingqDBjuR0$default(DrawModifierKt.drawBehind(SizeKt.m2085height3ABfNKs(modifier2, f3), new nl3() { // from class: qk6
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                DrawScope drawScope = (DrawScope) obj;
                                drawScope.getClass();
                                Brush brushM6179horizontalGradient8A3gB4$default = Brush.Companion.m6179horizontalGradient8A3gB4$default(Brush.Companion, u96.i(Color.m6222boximpl(j2), Color.m6222boximpl(j2)), 0.0f, Float.intBitsToFloat((int) (drawScope.mo6806getSizeNHjbRc() >> 32)) / 2.0f, 0, 8, (Object) null);
                                float fMo1434toPx0680j_4 = drawScope.mo1434toPx0680j_4(tk6.e);
                                DrawScope.m6801drawRoundRectZuiqVtQ$default(drawScope, brushM6179horizontalGradient8A3gB4$default, 0L, 0L, CornerRadius.m5941constructorimpl((((long) Float.floatToRawIntBits(fMo1434toPx0680j_4)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fMo1434toPx0680j_4) << 32)), 0.0f, null, null, 0, 246, null);
                                return j59.a;
                            }
                        }), l, 0.0f, h, 0.0f, 10, null);
                        MeasurePolicy measurePolicyRowMeasurePolicy3 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getCenterVertically(), composerStartRestartGroup, 48);
                        int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composerStartRestartGroup, 0));
                        CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2037paddingqDBjuR0$default3);
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
                        jg.d(companion3, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy3, composerM5355constructorimpl3, currentCompositionLocalMap3);
                        Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, (bm3<? super T, ? super Modifier, j59>) hm.b(companion3, composerM5355constructorimpl3, Integer.valueOf(iHashCode3), composerM5355constructorimpl3));
                        RowScopeInstance rowScopeInstance3 = RowScopeInstance.INSTANCE;
                        final Painter painterPainterResource = PainterResources_androidKt.painterResource(R.drawable.ic_triangle_warning, composerStartRestartGroup, 0);
                        Modifier modifierM2099size3ABfNKs2 = SizeKt.m2099size3ABfNKs(modifier2, k);
                        int i5 = Painter.$stable;
                        int i6 = (i5 << 12) | (i5 << 9) | 432;
                        final Painter painter = (32736 & 8) != 0 ? null : painterPainterResource;
                        Alignment center = Alignment.Companion.getCenter();
                        ContentScale fit = (32736 & 1024) != 0 ? ContentScale.Companion.getFit() : null;
                        int iM6809getDefaultFilterQualityfv9h1I = DrawScope.Companion.m6809getDefaultFilterQualityfv9h1I();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-846727149, i6, 0, "coil3.compose.AsyncImage (SingletonAsyncImage.kt:61)");
                        }
                        r14 r14VarA = o18.a((Context) composerStartRestartGroup.consume(AndroidCompositionLocals_androidKt.getLocalContext()));
                        int i7 = i6 << 3;
                        int i8 = (i6 & 126) | (i7 & 7168) | (57344 & i7) | (i7 & 458752) | (i7 & 3670016) | (i7 & 29360128) | (i7 & 234881024) | (i7 & 1879048192);
                        int i9 = ((i6 >> 27) & 14) | ((0 << 3) & 112);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1128374444, i8, i9, "coil3.compose.AsyncImage (AsyncImage.kt:72)");
                        }
                        int i10 = i8 >> 3;
                        ts tsVar = new ts(null, (ns) composerStartRestartGroup.consume(zs4.a), r14VarA);
                        int i11 = nb9.b;
                        nl3 nl3Var = (painter == null && painterPainterResource == null && painterPainterResource == null) ? ps.s : new nl3() { // from class: mb9
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                ps.b bVar = (ps.b) obj;
                                if (bVar instanceof ps.b.c) {
                                    Painter painter2 = painter;
                                    return painter2 != null ? new ps.b.c(painter2) : (ps.b.c) bVar;
                                }
                                if (!(bVar instanceof ps.b.C0316b)) {
                                    return bVar;
                                }
                                ps.b.C0316b c0316b = (ps.b.C0316b) bVar;
                                u03 u03Var = c0316b.b;
                                if (u03Var.c instanceof NullRequestDataException) {
                                    Painter painter3 = painterPainterResource;
                                    return painter3 != null ? new ps.b.C0316b(painter3, u03Var) : c0316b;
                                }
                                Painter painter4 = painterPainterResource;
                                return painter4 != null ? new ps.b.C0316b(painter4, u03Var) : c0316b;
                            }
                        };
                        int i12 = i9 << 15;
                        ms.a(tsVar, modifierM2099size3ABfNKs2, nl3Var, null, center, fit, iM6809getDefaultFilterQualityfv9h1I, composerStartRestartGroup, (i8 & 112) | (i10 & 896) | (i12 & 458752) | (i12 & 3670016), 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        SpacerKt.Spacer(SizeKt.m2104width3ABfNKs(modifier2, f5), composerStartRestartGroup, 6);
                        a(SizeKt.m2099size3ABfNKs(modifier2, f4), composerStartRestartGroup, 48);
                        composerStartRestartGroup.endNode();
                        composerStartRestartGroup.endReplaceGroup();
                    }
                }
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier2 = modifier;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: pk6
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iUpdateChangedFlags = RecomposeScopeImplKt.updateChangedFlags(i2 | 1);
                    tk6.c(uk6Var, modifier2, (Composer) obj, iUpdateChangedFlags);
                    return j59.a;
                }
            });
        }
    }
}

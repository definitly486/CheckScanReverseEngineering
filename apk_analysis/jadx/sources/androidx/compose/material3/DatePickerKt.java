package androidx.compose.material3;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.lazy.grid.GridCells;
import androidx.compose.foundation.lazy.grid.LazyGridDslKt;
import androidx.compose.foundation.lazy.grid.LazyGridScope;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.grid.LazyGridStateKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.internal.CalendarDate;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.material3.internal.CalendarModelKt;
import androidx.compose.material3.internal.CalendarModel_androidKt;
import androidx.compose.material3.internal.CalendarMonth;
import androidx.compose.material3.internal.Icons;
import androidx.compose.material3.internal.ProvideContentColorTextStyleKt;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.DatePickerModalTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.RotateKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.a32;
import defpackage.aa4;
import defpackage.av0;
import defpackage.b11;
import defpackage.b36;
import defpackage.bm3;
import defpackage.c80;
import defpackage.ca2;
import defpackage.cc;
import defpackage.cf;
import defpackage.co;
import defpackage.dc;
import defpackage.dm3;
import defpackage.e02;
import defpackage.fm3;
import defpackage.gx2;
import defpackage.ha2;
import defpackage.hj;
import defpackage.ia2;
import defpackage.id3;
import defpackage.j59;
import defpackage.k51;
import defpackage.ll3;
import defpackage.me0;
import defpackage.nl3;
import defpackage.oa2;
import defpackage.u96;
import defpackage.we;
import defpackage.x12;
import defpackage.y22;
import defpackage.y74;
import defpackage.yx;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class DatePickerKt {
    private static final int MaxCalendarRows = 6;
    private static final int YearsInRow = 3;
    private static final float RecommendedSizeForAccessibility = Dp.m9042constructorimpl(48.0f);
    private static final float MonthYearHeight = Dp.m9042constructorimpl(56.0f);
    private static final float DatePickerHorizontalPadding = Dp.m9042constructorimpl(12.0f);
    private static final PaddingValues DatePickerModeTogglePadding = PaddingKt.m2030PaddingValuesa9UjIt4$default(0.0f, 0.0f, Dp.m9042constructorimpl(12.0f), Dp.m9042constructorimpl(12.0f), 3, null);
    private static final PaddingValues DatePickerTitlePadding = PaddingKt.m2030PaddingValuesa9UjIt4$default(Dp.m9042constructorimpl(24.0f), Dp.m9042constructorimpl(16.0f), Dp.m9042constructorimpl(12.0f), 0.0f, 8, null);
    private static final PaddingValues DatePickerHeadlinePadding = PaddingKt.m2030PaddingValuesa9UjIt4$default(Dp.m9042constructorimpl(24.0f), 0.0f, Dp.m9042constructorimpl(12.0f), Dp.m9042constructorimpl(12.0f), 2, null);
    private static final float YearsVerticalPadding = Dp.m9042constructorimpl(16.0f);

    /* JADX INFO: renamed from: DateEntryContainer-au3_HiA, reason: not valid java name */
    public static final void m3360DateEntryContainerau3_HiA(final Modifier modifier, final bm3<? super Composer, ? super Integer, j59> bm3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var2, final bm3<? super Composer, ? super Integer, j59> bm3Var3, final DatePickerColors datePickerColors, final TextStyle textStyle, final float f, final bm3<? super Composer, ? super Integer, j59> bm3Var4, Composer composer, final int i) {
        int i2;
        bm3<? super Composer, ? super Integer, j59> bm3Var5;
        bm3<? super Composer, ? super Integer, j59> bm3Var6;
        bm3<? super Composer, ? super Integer, j59> bm3Var7;
        DatePickerColors datePickerColors2;
        TextStyle textStyle2;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(1539132883);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            bm3Var5 = bm3Var;
            i2 |= composerStartRestartGroup.changedInstance(bm3Var5) ? 32 : 16;
        } else {
            bm3Var5 = bm3Var;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            bm3Var6 = bm3Var2;
            i2 |= composerStartRestartGroup.changedInstance(bm3Var6) ? 256 : 128;
        } else {
            bm3Var6 = bm3Var2;
        }
        if ((i & 3072) == 0) {
            bm3Var7 = bm3Var3;
            i2 |= composerStartRestartGroup.changedInstance(bm3Var7) ? 2048 : 1024;
        } else {
            bm3Var7 = bm3Var3;
        }
        if ((i & 24576) == 0) {
            datePickerColors2 = datePickerColors;
            i2 |= composerStartRestartGroup.changed(datePickerColors2) ? 16384 : 8192;
        } else {
            datePickerColors2 = datePickerColors;
        }
        if ((196608 & i) == 0) {
            textStyle2 = textStyle;
            i2 |= composerStartRestartGroup.changed(textStyle2) ? 131072 : 65536;
        } else {
            textStyle2 = textStyle;
        }
        if ((1572864 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(f) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var4) ? 8388608 : 4194304;
        }
        int i3 = 1;
        if (composerStartRestartGroup.shouldExecute((4793491 & i2) != 4793490, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1539132883, i2, -1, "androidx.compose.material3.DateEntryContainer (DatePicker.kt:1351)");
            }
            Modifier modifierM2103sizeInqDBjuR0$default = SizeKt.m2103sizeInqDBjuR0$default(modifier, DatePickerModalTokens.INSTANCE.m4687getContainerWidthD9Ej5fM(), 0.0f, 0.0f, 0.0f, 14, null);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new co(i3);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierM1289backgroundbw27NRU$default = BackgroundKt.m1289backgroundbw27NRU$default(SemanticsModifierKt.semantics$default(modifierM2103sizeInqDBjuR0$default, false, (nl3) objRememberedValue, 1, null), datePickerColors2.m3331getContainerColor0d7_KjU(), null, 2, null);
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composerStartRestartGroup, 0);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM1289backgroundbw27NRU$default);
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
            bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            final bm3<? super Composer, ? super Integer, j59> bm3Var8 = bm3Var5;
            final bm3<? super Composer, ? super Integer, j59> bm3Var9 = bm3Var6;
            final bm3<? super Composer, ? super Integer, j59> bm3Var10 = bm3Var7;
            final DatePickerColors datePickerColors3 = datePickerColors2;
            final TextStyle textStyle3 = textStyle2;
            m3361DatePickerHeaderpc5RIQQ(Modifier.Companion, bm3Var, datePickerColors2.m3350getTitleContentColor0d7_KjU(), datePickerColors2.m3343getHeadlineContentColor0d7_KjU(), f, ComposableLambdaKt.rememberComposableLambda(-1658370654, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt$DateEntryContainer$2$1
                public final void invoke(Composer composer3, int i4) {
                    Arrangement.Horizontal start;
                    if (!composer3.shouldExecute((i4 & 3) != 2, i4 & 1)) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1658370654, i4, -1, "androidx.compose.material3.DateEntryContainer.<anonymous>.<anonymous> (DatePicker.kt:1371)");
                    }
                    Modifier.Companion companion2 = Modifier.Companion;
                    Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion2, 0.0f, 1, null);
                    final bm3<Composer, Integer, j59> bm3Var11 = bm3Var9;
                    bm3<Composer, Integer, j59> bm3Var12 = bm3Var10;
                    bm3<Composer, Integer, j59> bm3Var13 = bm3Var8;
                    DatePickerColors datePickerColors4 = datePickerColors3;
                    TextStyle textStyle4 = textStyle3;
                    Arrangement arrangement = Arrangement.INSTANCE;
                    Arrangement.Vertical top = arrangement.getTop();
                    Alignment.Companion companion3 = Alignment.Companion;
                    MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(top, companion3.getStart(), composer3, 0);
                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                    CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierFillMaxWidth$default);
                    ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                    ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
                    if (composer3.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composer3.startReusableNode();
                    if (composer3.getInserting()) {
                        composer3.createNode(constructor2);
                    } else {
                        composer3.useNode();
                    }
                    Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer3);
                    bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyColumnMeasurePolicy2, composerM5355constructorimpl2, currentCompositionLocalMap2);
                    if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                        dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
                    ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                    if (bm3Var11 == null || bm3Var12 == null) {
                        start = bm3Var11 != null ? arrangement.getStart() : arrangement.getEnd();
                    } else {
                        start = arrangement.getSpaceBetween();
                    }
                    Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(companion2, 0.0f, 1, null);
                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(start, companion3.getCenterVertically(), composer3, 48);
                    int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                    CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierFillMaxWidth$default2);
                    ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
                    if (composer3.getApplier() == null) {
                        ComposablesKt.invalidApplier();
                    }
                    composer3.startReusableNode();
                    if (composer3.getInserting()) {
                        composer3.createNode(constructor3);
                    } else {
                        composer3.useNode();
                    }
                    Composer composerM5355constructorimpl3 = Updater.m5355constructorimpl(composer3);
                    bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyRowMeasurePolicy, composerM5355constructorimpl3, currentCompositionLocalMap3);
                    if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                        dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
                    final RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                    if (bm3Var11 != null) {
                        composer3.startReplaceGroup(-516028300);
                        TextKt.ProvideTextStyle(textStyle4, ComposableLambdaKt.rememberComposableLambda(-738208900, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt$DateEntryContainer$2$1$1$1$1
                            public final void invoke(Composer composer4, int i5) {
                                if (!composer4.shouldExecute((i5 & 3) != 2, i5 & 1)) {
                                    composer4.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-738208900, i5, -1, "androidx.compose.material3.DateEntryContainer.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1385)");
                                }
                                Modifier modifierWeight$default = RowScope.weight$default(rowScopeInstance, Modifier.Companion, 1.0f, false, 2, null);
                                bm3<Composer, Integer, j59> bm3Var14 = bm3Var11;
                                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                                int currentCompositeKeyHash4 = ComposablesKt.getCurrentCompositeKeyHash(composer4, 0);
                                CompositionLocalMap currentCompositionLocalMap4 = composer4.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composer4, modifierWeight$default);
                                ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                                ll3<ComposeUiNode> constructor4 = companion5.getConstructor();
                                if (composer4.getApplier() == null) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer4.startReusableNode();
                                if (composer4.getInserting()) {
                                    composer4.createNode(constructor4);
                                } else {
                                    composer4.useNode();
                                }
                                Composer composerM5355constructorimpl4 = Updater.m5355constructorimpl(composer4);
                                bm3 bm3VarB4 = cc.b(companion5, composerM5355constructorimpl4, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl4, currentCompositionLocalMap4);
                                if (composerM5355constructorimpl4.getInserting() || !aa4.e(composerM5355constructorimpl4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash4))) {
                                    dc.b(bm3VarB4, currentCompositeKeyHash4, composerM5355constructorimpl4, currentCompositeKeyHash4);
                                }
                                Updater.m5363setimpl(composerM5355constructorimpl4, modifierMaterializeModifier4, companion5.getSetModifier());
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                if (cc.f(bm3Var14, composer4, 0)) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer4, Integer num) {
                                invoke(composer4, num.intValue());
                                return j59.a;
                            }
                        }, composer3, 54), composer3, 48);
                        composer3.endReplaceGroup();
                    } else {
                        composer3.startReplaceGroup(-515838022);
                        composer3.endReplaceGroup();
                    }
                    if (bm3Var12 == null) {
                        composer3.startReplaceGroup(-515799087);
                    } else {
                        composer3.startReplaceGroup(260455984);
                        bm3Var12.invoke(composer3, 0);
                    }
                    composer3.endReplaceGroup();
                    composer3.endNode();
                    if (bm3Var13 == null && bm3Var11 == null && bm3Var12 == null) {
                        composer3.startReplaceGroup(-250277930);
                        composer3.endReplaceGroup();
                    } else {
                        composer3.startReplaceGroup(-250360576);
                        DividerKt.m3412HorizontalDivider9IZ8Weo(null, 0.0f, datePickerColors4.m3342getDividerColor0d7_KjU(), composer3, 0, 3);
                        composer3.endReplaceGroup();
                    }
                    composer3.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i2 & 112) | 196614 | (57344 & (i2 >> 6)));
            composer2 = composerStartRestartGroup;
            if (cc.f(bm3Var4, composer2, (i2 >> 21) & 14)) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ua2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DatePickerKt.DateEntryContainer_au3_HiA$lambda$10(modifier, bm3Var, bm3Var2, bm3Var3, datePickerColors, textStyle, f, bm3Var4, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DateEntryContainer_au3_HiA$lambda$10(Modifier modifier, bm3 bm3Var, bm3 bm3Var2, bm3 bm3Var3, DatePickerColors datePickerColors, TextStyle textStyle, float f, bm3 bm3Var4, int i, Composer composer, int i2) {
        m3360DateEntryContainerau3_HiA(modifier, bm3Var, bm3Var2, bm3Var3, datePickerColors, textStyle, f, bm3Var4, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DateEntryContainer_au3_HiA$lambda$8$lambda$7(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setContainer(semanticsPropertyReceiver, true);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:108:0x012d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:109:0x012f  */
    /* JADX WARN: Code duplicated, block: B:112:0x0136  */
    /* JADX WARN: Code duplicated, block: B:114:0x0142  */
    /* JADX WARN: Code duplicated, block: B:116:0x015a  */
    /* JADX WARN: Code duplicated, block: B:119:0x0160  */
    /* JADX WARN: Code duplicated, block: B:120:0x0169  */
    /* JADX WARN: Code duplicated, block: B:122:0x016c  */
    /* JADX WARN: Code duplicated, block: B:123:0x0181  */
    /* JADX WARN: Code duplicated, block: B:125:0x0186  */
    /* JADX WARN: Code duplicated, block: B:126:0x0193  */
    /* JADX WARN: Code duplicated, block: B:128:0x0196  */
    /* JADX WARN: Code duplicated, block: B:130:0x0199  */
    /* JADX WARN: Code duplicated, block: B:132:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:134:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:137:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:140:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:142:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:144:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:146:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:150:0x0205  */
    /* JADX WARN: Code duplicated, block: B:152:0x0221  */
    /* JADX WARN: Code duplicated, block: B:155:0x027e  */
    /* JADX WARN: Code duplicated, block: B:158:0x0289  */
    /* JADX WARN: Code duplicated, block: B:161:0x029d  */
    /* JADX WARN: Code duplicated, block: B:163:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0047  */
    /* JADX WARN: Code duplicated, block: B:28:0x004b  */
    /* JADX WARN: Code duplicated, block: B:30:0x004f  */
    /* JADX WARN: Code duplicated, block: B:31:0x0054  */
    /* JADX WARN: Code duplicated, block: B:33:0x005a  */
    /* JADX WARN: Code duplicated, block: B:34:0x005d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0064  */
    /* JADX WARN: Code duplicated, block: B:40:0x0068  */
    /* JADX WARN: Code duplicated, block: B:42:0x0070  */
    /* JADX WARN: Code duplicated, block: B:43:0x0073  */
    /* JADX WARN: Code duplicated, block: B:46:0x0079  */
    /* JADX WARN: Code duplicated, block: B:49:0x007f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0084  */
    /* JADX WARN: Code duplicated, block: B:53:0x0088  */
    /* JADX WARN: Code duplicated, block: B:55:0x0090  */
    /* JADX WARN: Code duplicated, block: B:56:0x0093  */
    /* JADX WARN: Code duplicated, block: B:60:0x009c  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:71:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:73:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:75:0x00be  */
    /* JADX WARN: Code duplicated, block: B:77:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:78:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:82:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:83:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:85:0x00de  */
    /* JADX WARN: Code duplicated, block: B:87:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:88:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:92:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:93:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:96:0x0104  */
    /* JADX WARN: Code duplicated, block: B:98:0x010c  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void DatePicker(final DatePickerState datePickerState, Modifier modifier, DatePickerFormatter datePickerFormatter, DatePickerColors datePickerColors, bm3<? super Composer, ? super Integer, j59> bm3Var, bm3<? super Composer, ? super Integer, j59> bm3Var2, boolean z, FocusRequester focusRequester, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        DatePickerColors datePickerColors2;
        int i4;
        bm3<? super Composer, ? super Integer, j59> bm3VarRememberComposableLambda;
        int i5;
        int i6;
        bm3<? super Composer, ? super Integer, j59> bm3Var3;
        int i7;
        int i8;
        boolean z2;
        int i9;
        int i10;
        int i11;
        boolean z3;
        Composer composer2;
        final DatePickerFormatter datePickerFormatter2;
        final FocusRequester focusRequester2;
        final Modifier modifier3;
        final DatePickerColors datePickerColors3;
        final bm3<? super Composer, ? super Integer, j59> bm3Var4;
        final boolean z4;
        final bm3<? super Composer, ? super Integer, j59> bm3Var5;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        final DatePickerFormatter datePickerFormatter3;
        final DatePickerColors datePickerColorsColors;
        boolean z5;
        int i12;
        bm3<? super Composer, ? super Integer, j59> bm3VarRememberComposableLambda2;
        bm3<? super Composer, ? super Integer, j59> bm3Var6;
        boolean z6;
        DatePickerColors datePickerColors4;
        Modifier modifier4;
        int i13;
        FocusRequester focusRequester3;
        Object objRememberedValue;
        Object objRememberedValue2;
        boolean zChanged;
        Object objRememberedValue3;
        CalendarModel calendarModelCreateCalendarModel;
        ComposableLambda composableLambdaRememberComposableLambda;
        int i14;
        boolean zChangedInstance;
        Composer composerStartRestartGroup = composer.startRestartGroup(1105472031);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(datePickerState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i15 = i2 & 2;
        if (i15 == 0) {
            if ((i & 48) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i2 & 4) != 0) {
                    i14 = 128;
                } else {
                    if ((i & 512) == 0) {
                        zChangedInstance = composerStartRestartGroup.changed(datePickerFormatter);
                    } else {
                        zChangedInstance = composerStartRestartGroup.changedInstance(datePickerFormatter);
                    }
                    if (zChangedInstance) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                }
                i3 |= i14;
            }
            if ((i & 3072) == 0) {
                if ((i2 & 8) == 0) {
                    datePickerColors2 = datePickerColors;
                    int i16 = composerStartRestartGroup.changed(datePickerColors2) ? 2048 : 1024;
                    i3 |= i16;
                } else {
                    datePickerColors2 = datePickerColors;
                }
                i3 |= i16;
            } else {
                datePickerColors2 = datePickerColors;
            }
            i4 = i2 & 16;
            if (i4 != 0) {
                if ((i & 24576) == 0) {
                    bm3VarRememberComposableLambda = bm3Var;
                    if (composerStartRestartGroup.changedInstance(bm3VarRememberComposableLambda)) {
                        i5 = 16384;
                    } else {
                        i5 = 8192;
                    }
                    i3 |= i5;
                }
                i6 = i2 & 32;
                if (i6 != 0) {
                    if ((196608 & i) == 0) {
                        bm3Var3 = bm3Var2;
                        if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                            i7 = 131072;
                        } else {
                            i7 = 65536;
                        }
                        i3 |= i7;
                    }
                    i8 = i2 & 64;
                    if (i8 != 0) {
                        if ((1572864 & i) == 0) {
                            z2 = z;
                            if (composerStartRestartGroup.changed(z2)) {
                                i9 = 1048576;
                            } else {
                                i9 = 524288;
                            }
                            i3 |= i9;
                        }
                        i10 = i2 & 128;
                        if (i10 != 0) {
                            i3 |= 12582912;
                        } else if ((i & 12582912) == 0) {
                            if (composerStartRestartGroup.changed(focusRequester)) {
                                i11 = 8388608;
                            } else {
                                i11 = 4194304;
                            }
                            i3 |= i11;
                        }
                        if ((i3 & 4793491) != 4793490) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i15 != 0) {
                                    modifier2 = Modifier.Companion;
                                }
                                if ((i2 & 4) != 0) {
                                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                    if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                        objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                    }
                                    datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                                    i3 &= -897;
                                } else {
                                    datePickerFormatter3 = datePickerFormatter;
                                }
                                if ((i2 & 8) != 0) {
                                    datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                    i3 &= -7169;
                                } else {
                                    datePickerColorsColors = datePickerColors2;
                                }
                                if (i4 != 0) {
                                    z5 = true;
                                    bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                        public final void invoke(Composer composer3, int i17) {
                                            if (!composer3.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                                composer3.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1655706771, i17, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                            }
                                            DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                    i12 = 54;
                                } else {
                                    z5 = true;
                                    i12 = 54;
                                }
                                if (i6 != 0) {
                                    bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                        public final void invoke(Composer composer3, int i17) {
                                            if (!composer3.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                                composer3.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1439279037, i17, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                            }
                                            DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }

                                        @Override // defpackage.bm3
                                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                            invoke(composer3, num.intValue());
                                            return j59.a;
                                        }
                                    }, composerStartRestartGroup, i12);
                                } else {
                                    bm3VarRememberComposableLambda2 = bm3Var3;
                                }
                                if (i8 != 0) {
                                    z2 = true;
                                }
                                if (i10 != 0) {
                                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                                        objRememberedValue = new FocusRequester();
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                    }
                                    int i17 = i3;
                                    focusRequester3 = (FocusRequester) objRememberedValue;
                                    z6 = z2;
                                    datePickerColors4 = datePickerColorsColors;
                                    i13 = i17;
                                    bm3Var3 = bm3VarRememberComposableLambda2;
                                    bm3Var6 = bm3VarRememberComposableLambda;
                                    modifier4 = modifier2;
                                } else {
                                    bm3Var3 = bm3VarRememberComposableLambda2;
                                    bm3Var6 = bm3VarRememberComposableLambda;
                                    z6 = z2;
                                    datePickerColors4 = datePickerColorsColors;
                                    modifier4 = modifier2;
                                    i13 = i3;
                                    focusRequester3 = focusRequester;
                                }
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i2 & 4) != 0) {
                                    i3 &= -897;
                                }
                                if ((i2 & 8) != 0) {
                                    i3 &= -7169;
                                }
                                datePickerFormatter3 = datePickerFormatter;
                                i13 = i3;
                                bm3Var6 = bm3VarRememberComposableLambda;
                                z6 = z2;
                                focusRequester3 = focusRequester;
                                modifier4 = modifier2;
                                datePickerColors4 = datePickerColors2;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1105472031, i13, -1, "androidx.compose.material3.DatePicker (DatePicker.kt:190)");
                            }
                            zChanged = composerStartRestartGroup.changed(datePickerState.getLocale());
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged || objRememberedValue3 == Composer.Companion.getEmpty()) {
                                if (datePickerState instanceof BaseDatePickerStateImpl) {
                                    calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                                } else {
                                    calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                                }
                                objRememberedValue3 = calendarModelCreateCalendarModel;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            CalendarModel calendarModel = (CalendarModel) objRememberedValue3;
                            if (z6) {
                                composerStartRestartGroup.startReplaceGroup(-690551113);
                                composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1483431603, true, new AnonymousClass5(datePickerState, datePickerColors4), composerStartRestartGroup, 54);
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-690163489);
                                composerStartRestartGroup.endReplaceGroup();
                                composableLambdaRememberComposableLambda = null;
                            }
                            ComposableLambda composableLambda = composableLambdaRememberComposableLambda;
                            DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                            TextStyle value = TypographyKt.getValue(datePickerModalTokens.getHeaderHeadlineFont(), composerStartRestartGroup, 6);
                            float fM4693getHeaderContainerHeightD9Ej5fM = datePickerModalTokens.m4693getHeaderContainerHeightD9Ej5fM();
                            FocusRequester focusRequester4 = focusRequester3;
                            AnonymousClass6 anonymousClass6 = new AnonymousClass6(datePickerState, calendarModel, datePickerFormatter3, datePickerColors4, focusRequester4);
                            DatePickerFormatter datePickerFormatter4 = datePickerFormatter3;
                            int i18 = i13 >> 9;
                            composer2 = composerStartRestartGroup;
                            m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda, datePickerColors4, value, fM4693getHeaderContainerHeightD9Ej5fM, ComposableLambdaKt.rememberComposableLambda(-1346903698, true, anonymousClass6, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i18 & 112) | (i18 & 896) | ((i13 << 3) & 57344));
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            datePickerFormatter2 = datePickerFormatter4;
                            focusRequester2 = focusRequester4;
                            z4 = z6;
                            modifier3 = modifier4;
                            bm3Var4 = bm3Var6;
                            datePickerColors3 = datePickerColors4;
                        } else {
                            composer2 = composerStartRestartGroup;
                            composer2.skipToGroupEnd();
                            datePickerFormatter2 = datePickerFormatter;
                            focusRequester2 = focusRequester;
                            modifier3 = modifier2;
                            datePickerColors3 = datePickerColors2;
                            bm3Var4 = bm3VarRememberComposableLambda;
                            z4 = z2;
                        }
                        bm3Var5 = bm3Var3;
                        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: y92
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return DatePickerKt.DatePicker$lambda$3(datePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i3 |= 1572864;
                    z2 = z;
                    i10 = i2 & 128;
                    if (i10 != 0) {
                        i3 |= 12582912;
                    } else if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(focusRequester)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 4793491) != 4793490) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i15 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                                i3 &= -897;
                            } else {
                                datePickerFormatter3 = datePickerFormatter;
                            }
                            if ((i2 & 8) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i3 &= -7169;
                            } else {
                                datePickerColorsColors = datePickerColors2;
                            }
                            if (i4 != 0) {
                                z5 = true;
                                bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                    public final void invoke(Composer composer3, int i19) {
                                        if (!composer3.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1655706771, i19, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                        }
                                        DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                i12 = 54;
                            } else {
                                z5 = true;
                                i12 = 54;
                            }
                            if (i6 != 0) {
                                bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                    public final void invoke(Composer composer3, int i19) {
                                        if (!composer3.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1439279037, i19, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                        }
                                        DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, i12);
                            } else {
                                bm3VarRememberComposableLambda2 = bm3Var3;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if (i10 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new FocusRequester();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                int i19 = i3;
                                focusRequester3 = (FocusRequester) objRememberedValue;
                                z6 = z2;
                                datePickerColors4 = datePickerColorsColors;
                                i13 = i19;
                                bm3Var3 = bm3VarRememberComposableLambda2;
                                bm3Var6 = bm3VarRememberComposableLambda;
                                modifier4 = modifier2;
                            } else {
                                bm3Var3 = bm3VarRememberComposableLambda2;
                                bm3Var6 = bm3VarRememberComposableLambda;
                                z6 = z2;
                                datePickerColors4 = datePickerColorsColors;
                                modifier4 = modifier2;
                                i13 = i3;
                                focusRequester3 = focusRequester;
                            }
                        } else {
                            if (i15 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                                i3 &= -897;
                            } else {
                                datePickerFormatter3 = datePickerFormatter;
                            }
                            if ((i2 & 8) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i3 &= -7169;
                            } else {
                                datePickerColorsColors = datePickerColors2;
                            }
                            if (i4 != 0) {
                                z5 = true;
                                bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                    public final void invoke(Composer composer3, int i110) {
                                        if (!composer3.shouldExecute((i110 & 3) != 2, i110 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1655706771, i110, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                        }
                                        DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                i12 = 54;
                            } else {
                                z5 = true;
                                i12 = 54;
                            }
                            if (i6 != 0) {
                                bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                    public final void invoke(Composer composer3, int i110) {
                                        if (!composer3.shouldExecute((i110 & 3) != 2, i110 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1439279037, i110, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                        }
                                        DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, i12);
                            } else {
                                bm3VarRememberComposableLambda2 = bm3Var3;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if (i10 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new FocusRequester();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                int i110 = i3;
                                focusRequester3 = (FocusRequester) objRememberedValue;
                                z6 = z2;
                                datePickerColors4 = datePickerColorsColors;
                                i13 = i110;
                                bm3Var3 = bm3VarRememberComposableLambda2;
                                bm3Var6 = bm3VarRememberComposableLambda;
                                modifier4 = modifier2;
                            } else {
                                bm3Var3 = bm3VarRememberComposableLambda2;
                                bm3Var6 = bm3VarRememberComposableLambda;
                                z6 = z2;
                                datePickerColors4 = datePickerColorsColors;
                                modifier4 = modifier2;
                                i13 = i3;
                                focusRequester3 = focusRequester;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1105472031, i13, -1, "androidx.compose.material3.DatePicker (DatePicker.kt:190)");
                        }
                        zChanged = composerStartRestartGroup.changed(datePickerState.getLocale());
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            if (datePickerState instanceof BaseDatePickerStateImpl) {
                                calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                            } else {
                                calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                            }
                            objRememberedValue3 = calendarModelCreateCalendarModel;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            if (datePickerState instanceof BaseDatePickerStateImpl) {
                                calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                            } else {
                                calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                            }
                            objRememberedValue3 = calendarModelCreateCalendarModel;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        CalendarModel calendarModel2 = (CalendarModel) objRememberedValue3;
                        if (z6) {
                            composerStartRestartGroup.startReplaceGroup(-690551113);
                            composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1483431603, true, new AnonymousClass5(datePickerState, datePickerColors4), composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-690163489);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambdaRememberComposableLambda = null;
                        }
                        ComposableLambda composableLambda2 = composableLambdaRememberComposableLambda;
                        DatePickerModalTokens datePickerModalTokens2 = DatePickerModalTokens.INSTANCE;
                        TextStyle value2 = TypographyKt.getValue(datePickerModalTokens2.getHeaderHeadlineFont(), composerStartRestartGroup, 6);
                        float fM4693getHeaderContainerHeightD9Ej5fM2 = datePickerModalTokens2.m4693getHeaderContainerHeightD9Ej5fM();
                        FocusRequester focusRequester5 = focusRequester3;
                        AnonymousClass6 anonymousClass7 = new AnonymousClass6(datePickerState, calendarModel2, datePickerFormatter3, datePickerColors4, focusRequester5);
                        DatePickerFormatter datePickerFormatter5 = datePickerFormatter3;
                        int i111 = i13 >> 9;
                        composer2 = composerStartRestartGroup;
                        m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda2, datePickerColors4, value2, fM4693getHeaderContainerHeightD9Ej5fM2, ComposableLambdaKt.rememberComposableLambda(-1346903698, true, anonymousClass7, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i111 & 112) | (i111 & 896) | ((i13 << 3) & 57344));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        datePickerFormatter2 = datePickerFormatter5;
                        focusRequester2 = focusRequester5;
                        z4 = z6;
                        modifier3 = modifier4;
                        bm3Var4 = bm3Var6;
                        datePickerColors3 = datePickerColors4;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        datePickerFormatter2 = datePickerFormatter;
                        focusRequester2 = focusRequester;
                        modifier3 = modifier2;
                        datePickerColors3 = datePickerColors2;
                        bm3Var4 = bm3VarRememberComposableLambda;
                        z4 = z2;
                    }
                    bm3Var5 = bm3Var3;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: y92
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DatePickerKt.DatePicker$lambda$3(datePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                bm3Var3 = bm3Var2;
                i8 = i2 & 64;
                if (i8 != 0) {
                    if ((1572864 & i) == 0) {
                        z2 = z;
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                    i10 = i2 & 128;
                    if (i10 != 0) {
                        i3 |= 12582912;
                    } else if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(focusRequester)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 4793491) != 4793490) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i15 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                                i3 &= -897;
                            } else {
                                datePickerFormatter3 = datePickerFormatter;
                            }
                            if ((i2 & 8) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i3 &= -7169;
                            } else {
                                datePickerColorsColors = datePickerColors2;
                            }
                            if (i4 != 0) {
                                z5 = true;
                                bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                    public final void invoke(Composer composer3, int i112) {
                                        if (!composer3.shouldExecute((i112 & 3) != 2, i112 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1655706771, i112, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                        }
                                        DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                i12 = 54;
                            } else {
                                z5 = true;
                                i12 = 54;
                            }
                            if (i6 != 0) {
                                bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                    public final void invoke(Composer composer3, int i112) {
                                        if (!composer3.shouldExecute((i112 & 3) != 2, i112 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1439279037, i112, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                        }
                                        DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, i12);
                            } else {
                                bm3VarRememberComposableLambda2 = bm3Var3;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if (i10 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new FocusRequester();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                int i112 = i3;
                                focusRequester3 = (FocusRequester) objRememberedValue;
                                z6 = z2;
                                datePickerColors4 = datePickerColorsColors;
                                i13 = i112;
                                bm3Var3 = bm3VarRememberComposableLambda2;
                                bm3Var6 = bm3VarRememberComposableLambda;
                                modifier4 = modifier2;
                            } else {
                                bm3Var3 = bm3VarRememberComposableLambda2;
                                bm3Var6 = bm3VarRememberComposableLambda;
                                z6 = z2;
                                datePickerColors4 = datePickerColorsColors;
                                modifier4 = modifier2;
                                i13 = i3;
                                focusRequester3 = focusRequester;
                            }
                        } else {
                            if (i15 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                                i3 &= -897;
                            } else {
                                datePickerFormatter3 = datePickerFormatter;
                            }
                            if ((i2 & 8) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i3 &= -7169;
                            } else {
                                datePickerColorsColors = datePickerColors2;
                            }
                            if (i4 != 0) {
                                z5 = true;
                                bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                    public final void invoke(Composer composer3, int i113) {
                                        if (!composer3.shouldExecute((i113 & 3) != 2, i113 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1655706771, i113, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                        }
                                        DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                i12 = 54;
                            } else {
                                z5 = true;
                                i12 = 54;
                            }
                            if (i6 != 0) {
                                bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                    public final void invoke(Composer composer3, int i113) {
                                        if (!composer3.shouldExecute((i113 & 3) != 2, i113 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1439279037, i113, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                        }
                                        DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, i12);
                            } else {
                                bm3VarRememberComposableLambda2 = bm3Var3;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if (i10 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new FocusRequester();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                int i113 = i3;
                                focusRequester3 = (FocusRequester) objRememberedValue;
                                z6 = z2;
                                datePickerColors4 = datePickerColorsColors;
                                i13 = i113;
                                bm3Var3 = bm3VarRememberComposableLambda2;
                                bm3Var6 = bm3VarRememberComposableLambda;
                                modifier4 = modifier2;
                            } else {
                                bm3Var3 = bm3VarRememberComposableLambda2;
                                bm3Var6 = bm3VarRememberComposableLambda;
                                z6 = z2;
                                datePickerColors4 = datePickerColorsColors;
                                modifier4 = modifier2;
                                i13 = i3;
                                focusRequester3 = focusRequester;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1105472031, i13, -1, "androidx.compose.material3.DatePicker (DatePicker.kt:190)");
                        }
                        zChanged = composerStartRestartGroup.changed(datePickerState.getLocale());
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            if (datePickerState instanceof BaseDatePickerStateImpl) {
                                calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                            } else {
                                calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                            }
                            objRememberedValue3 = calendarModelCreateCalendarModel;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            if (datePickerState instanceof BaseDatePickerStateImpl) {
                                calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                            } else {
                                calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                            }
                            objRememberedValue3 = calendarModelCreateCalendarModel;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        CalendarModel calendarModel3 = (CalendarModel) objRememberedValue3;
                        if (z6) {
                            composerStartRestartGroup.startReplaceGroup(-690551113);
                            composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1483431603, true, new AnonymousClass5(datePickerState, datePickerColors4), composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-690163489);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambdaRememberComposableLambda = null;
                        }
                        ComposableLambda composableLambda3 = composableLambdaRememberComposableLambda;
                        DatePickerModalTokens datePickerModalTokens3 = DatePickerModalTokens.INSTANCE;
                        TextStyle value3 = TypographyKt.getValue(datePickerModalTokens3.getHeaderHeadlineFont(), composerStartRestartGroup, 6);
                        float fM4693getHeaderContainerHeightD9Ej5fM3 = datePickerModalTokens3.m4693getHeaderContainerHeightD9Ej5fM();
                        FocusRequester focusRequester6 = focusRequester3;
                        AnonymousClass6 anonymousClass8 = new AnonymousClass6(datePickerState, calendarModel3, datePickerFormatter3, datePickerColors4, focusRequester6);
                        DatePickerFormatter datePickerFormatter6 = datePickerFormatter3;
                        int i114 = i13 >> 9;
                        composer2 = composerStartRestartGroup;
                        m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda3, datePickerColors4, value3, fM4693getHeaderContainerHeightD9Ej5fM3, ComposableLambdaKt.rememberComposableLambda(-1346903698, true, anonymousClass8, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i114 & 112) | (i114 & 896) | ((i13 << 3) & 57344));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        datePickerFormatter2 = datePickerFormatter6;
                        focusRequester2 = focusRequester6;
                        z4 = z6;
                        modifier3 = modifier4;
                        bm3Var4 = bm3Var6;
                        datePickerColors3 = datePickerColors4;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        datePickerFormatter2 = datePickerFormatter;
                        focusRequester2 = focusRequester;
                        modifier3 = modifier2;
                        datePickerColors3 = datePickerColors2;
                        bm3Var4 = bm3VarRememberComposableLambda;
                        z4 = z2;
                    }
                    bm3Var5 = bm3Var3;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: y92
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DatePickerKt.DatePicker$lambda$3(datePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                z2 = z;
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(focusRequester)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                if ((i3 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                            i3 &= -897;
                        } else {
                            datePickerFormatter3 = datePickerFormatter;
                        }
                        if ((i2 & 8) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i3 &= -7169;
                        } else {
                            datePickerColorsColors = datePickerColors2;
                        }
                        if (i4 != 0) {
                            z5 = true;
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                public final void invoke(Composer composer3, int i115) {
                                    if (!composer3.shouldExecute((i115 & 3) != 2, i115 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1655706771, i115, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            i12 = 54;
                        } else {
                            z5 = true;
                            i12 = 54;
                        }
                        if (i6 != 0) {
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                public final void invoke(Composer composer3, int i115) {
                                    if (!composer3.shouldExecute((i115 & 3) != 2, i115 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1439279037, i115, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, i12);
                        } else {
                            bm3VarRememberComposableLambda2 = bm3Var3;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if (i10 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new FocusRequester();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            int i115 = i3;
                            focusRequester3 = (FocusRequester) objRememberedValue;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            i13 = i115;
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            modifier4 = modifier2;
                        } else {
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            modifier4 = modifier2;
                            i13 = i3;
                            focusRequester3 = focusRequester;
                        }
                    } else {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                            i3 &= -897;
                        } else {
                            datePickerFormatter3 = datePickerFormatter;
                        }
                        if ((i2 & 8) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i3 &= -7169;
                        } else {
                            datePickerColorsColors = datePickerColors2;
                        }
                        if (i4 != 0) {
                            z5 = true;
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                public final void invoke(Composer composer3, int i116) {
                                    if (!composer3.shouldExecute((i116 & 3) != 2, i116 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1655706771, i116, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            i12 = 54;
                        } else {
                            z5 = true;
                            i12 = 54;
                        }
                        if (i6 != 0) {
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                public final void invoke(Composer composer3, int i116) {
                                    if (!composer3.shouldExecute((i116 & 3) != 2, i116 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1439279037, i116, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, i12);
                        } else {
                            bm3VarRememberComposableLambda2 = bm3Var3;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if (i10 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new FocusRequester();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            int i116 = i3;
                            focusRequester3 = (FocusRequester) objRememberedValue;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            i13 = i116;
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            modifier4 = modifier2;
                        } else {
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            modifier4 = modifier2;
                            i13 = i3;
                            focusRequester3 = focusRequester;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1105472031, i13, -1, "androidx.compose.material3.DatePicker (DatePicker.kt:190)");
                    }
                    zChanged = composerStartRestartGroup.changed(datePickerState.getLocale());
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        if (datePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        if (datePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    CalendarModel calendarModel4 = (CalendarModel) objRememberedValue3;
                    if (z6) {
                        composerStartRestartGroup.startReplaceGroup(-690551113);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1483431603, true, new AnonymousClass5(datePickerState, datePickerColors4), composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-690163489);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambdaRememberComposableLambda = null;
                    }
                    ComposableLambda composableLambda4 = composableLambdaRememberComposableLambda;
                    DatePickerModalTokens datePickerModalTokens4 = DatePickerModalTokens.INSTANCE;
                    TextStyle value4 = TypographyKt.getValue(datePickerModalTokens4.getHeaderHeadlineFont(), composerStartRestartGroup, 6);
                    float fM4693getHeaderContainerHeightD9Ej5fM4 = datePickerModalTokens4.m4693getHeaderContainerHeightD9Ej5fM();
                    FocusRequester focusRequester7 = focusRequester3;
                    AnonymousClass6 anonymousClass9 = new AnonymousClass6(datePickerState, calendarModel4, datePickerFormatter3, datePickerColors4, focusRequester7);
                    DatePickerFormatter datePickerFormatter7 = datePickerFormatter3;
                    int i117 = i13 >> 9;
                    composer2 = composerStartRestartGroup;
                    m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda4, datePickerColors4, value4, fM4693getHeaderContainerHeightD9Ej5fM4, ComposableLambdaKt.rememberComposableLambda(-1346903698, true, anonymousClass9, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i117 & 112) | (i117 & 896) | ((i13 << 3) & 57344));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    datePickerFormatter2 = datePickerFormatter7;
                    focusRequester2 = focusRequester7;
                    z4 = z6;
                    modifier3 = modifier4;
                    bm3Var4 = bm3Var6;
                    datePickerColors3 = datePickerColors4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    datePickerFormatter2 = datePickerFormatter;
                    focusRequester2 = focusRequester;
                    modifier3 = modifier2;
                    datePickerColors3 = datePickerColors2;
                    bm3Var4 = bm3VarRememberComposableLambda;
                    z4 = z2;
                }
                bm3Var5 = bm3Var3;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: y92
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerKt.DatePicker$lambda$3(datePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            bm3VarRememberComposableLambda = bm3Var;
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    bm3Var3 = bm3Var2;
                    if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    if ((1572864 & i) == 0) {
                        z2 = z;
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                    i10 = i2 & 128;
                    if (i10 != 0) {
                        i3 |= 12582912;
                    } else if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(focusRequester)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 4793491) != 4793490) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i15 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                                i3 &= -897;
                            } else {
                                datePickerFormatter3 = datePickerFormatter;
                            }
                            if ((i2 & 8) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i3 &= -7169;
                            } else {
                                datePickerColorsColors = datePickerColors2;
                            }
                            if (i4 != 0) {
                                z5 = true;
                                bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                    public final void invoke(Composer composer3, int i118) {
                                        if (!composer3.shouldExecute((i118 & 3) != 2, i118 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1655706771, i118, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                        }
                                        DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                i12 = 54;
                            } else {
                                z5 = true;
                                i12 = 54;
                            }
                            if (i6 != 0) {
                                bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                    public final void invoke(Composer composer3, int i118) {
                                        if (!composer3.shouldExecute((i118 & 3) != 2, i118 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1439279037, i118, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                        }
                                        DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, i12);
                            } else {
                                bm3VarRememberComposableLambda2 = bm3Var3;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if (i10 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new FocusRequester();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                int i118 = i3;
                                focusRequester3 = (FocusRequester) objRememberedValue;
                                z6 = z2;
                                datePickerColors4 = datePickerColorsColors;
                                i13 = i118;
                                bm3Var3 = bm3VarRememberComposableLambda2;
                                bm3Var6 = bm3VarRememberComposableLambda;
                                modifier4 = modifier2;
                            } else {
                                bm3Var3 = bm3VarRememberComposableLambda2;
                                bm3Var6 = bm3VarRememberComposableLambda;
                                z6 = z2;
                                datePickerColors4 = datePickerColorsColors;
                                modifier4 = modifier2;
                                i13 = i3;
                                focusRequester3 = focusRequester;
                            }
                        } else {
                            if (i15 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                                i3 &= -897;
                            } else {
                                datePickerFormatter3 = datePickerFormatter;
                            }
                            if ((i2 & 8) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i3 &= -7169;
                            } else {
                                datePickerColorsColors = datePickerColors2;
                            }
                            if (i4 != 0) {
                                z5 = true;
                                bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                    public final void invoke(Composer composer3, int i119) {
                                        if (!composer3.shouldExecute((i119 & 3) != 2, i119 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1655706771, i119, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                        }
                                        DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                i12 = 54;
                            } else {
                                z5 = true;
                                i12 = 54;
                            }
                            if (i6 != 0) {
                                bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                    public final void invoke(Composer composer3, int i119) {
                                        if (!composer3.shouldExecute((i119 & 3) != 2, i119 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1439279037, i119, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                        }
                                        DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, i12);
                            } else {
                                bm3VarRememberComposableLambda2 = bm3Var3;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if (i10 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new FocusRequester();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                int i119 = i3;
                                focusRequester3 = (FocusRequester) objRememberedValue;
                                z6 = z2;
                                datePickerColors4 = datePickerColorsColors;
                                i13 = i119;
                                bm3Var3 = bm3VarRememberComposableLambda2;
                                bm3Var6 = bm3VarRememberComposableLambda;
                                modifier4 = modifier2;
                            } else {
                                bm3Var3 = bm3VarRememberComposableLambda2;
                                bm3Var6 = bm3VarRememberComposableLambda;
                                z6 = z2;
                                datePickerColors4 = datePickerColorsColors;
                                modifier4 = modifier2;
                                i13 = i3;
                                focusRequester3 = focusRequester;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1105472031, i13, -1, "androidx.compose.material3.DatePicker (DatePicker.kt:190)");
                        }
                        zChanged = composerStartRestartGroup.changed(datePickerState.getLocale());
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            if (datePickerState instanceof BaseDatePickerStateImpl) {
                                calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                            } else {
                                calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                            }
                            objRememberedValue3 = calendarModelCreateCalendarModel;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            if (datePickerState instanceof BaseDatePickerStateImpl) {
                                calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                            } else {
                                calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                            }
                            objRememberedValue3 = calendarModelCreateCalendarModel;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        CalendarModel calendarModel5 = (CalendarModel) objRememberedValue3;
                        if (z6) {
                            composerStartRestartGroup.startReplaceGroup(-690551113);
                            composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1483431603, true, new AnonymousClass5(datePickerState, datePickerColors4), composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-690163489);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambdaRememberComposableLambda = null;
                        }
                        ComposableLambda composableLambda5 = composableLambdaRememberComposableLambda;
                        DatePickerModalTokens datePickerModalTokens5 = DatePickerModalTokens.INSTANCE;
                        TextStyle value5 = TypographyKt.getValue(datePickerModalTokens5.getHeaderHeadlineFont(), composerStartRestartGroup, 6);
                        float fM4693getHeaderContainerHeightD9Ej5fM5 = datePickerModalTokens5.m4693getHeaderContainerHeightD9Ej5fM();
                        FocusRequester focusRequester8 = focusRequester3;
                        AnonymousClass6 anonymousClass10 = new AnonymousClass6(datePickerState, calendarModel5, datePickerFormatter3, datePickerColors4, focusRequester8);
                        DatePickerFormatter datePickerFormatter8 = datePickerFormatter3;
                        int i1110 = i13 >> 9;
                        composer2 = composerStartRestartGroup;
                        m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda5, datePickerColors4, value5, fM4693getHeaderContainerHeightD9Ej5fM5, ComposableLambdaKt.rememberComposableLambda(-1346903698, true, anonymousClass10, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i1110 & 112) | (i1110 & 896) | ((i13 << 3) & 57344));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        datePickerFormatter2 = datePickerFormatter8;
                        focusRequester2 = focusRequester8;
                        z4 = z6;
                        modifier3 = modifier4;
                        bm3Var4 = bm3Var6;
                        datePickerColors3 = datePickerColors4;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        datePickerFormatter2 = datePickerFormatter;
                        focusRequester2 = focusRequester;
                        modifier3 = modifier2;
                        datePickerColors3 = datePickerColors2;
                        bm3Var4 = bm3VarRememberComposableLambda;
                        z4 = z2;
                    }
                    bm3Var5 = bm3Var3;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: y92
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DatePickerKt.DatePicker$lambda$3(datePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                z2 = z;
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(focusRequester)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                if ((i3 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                            i3 &= -897;
                        } else {
                            datePickerFormatter3 = datePickerFormatter;
                        }
                        if ((i2 & 8) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i3 &= -7169;
                        } else {
                            datePickerColorsColors = datePickerColors2;
                        }
                        if (i4 != 0) {
                            z5 = true;
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                public final void invoke(Composer composer3, int i1111) {
                                    if (!composer3.shouldExecute((i1111 & 3) != 2, i1111 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1655706771, i1111, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            i12 = 54;
                        } else {
                            z5 = true;
                            i12 = 54;
                        }
                        if (i6 != 0) {
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                public final void invoke(Composer composer3, int i1111) {
                                    if (!composer3.shouldExecute((i1111 & 3) != 2, i1111 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1439279037, i1111, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, i12);
                        } else {
                            bm3VarRememberComposableLambda2 = bm3Var3;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if (i10 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new FocusRequester();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            int i1111 = i3;
                            focusRequester3 = (FocusRequester) objRememberedValue;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            i13 = i1111;
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            modifier4 = modifier2;
                        } else {
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            modifier4 = modifier2;
                            i13 = i3;
                            focusRequester3 = focusRequester;
                        }
                    } else {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                            i3 &= -897;
                        } else {
                            datePickerFormatter3 = datePickerFormatter;
                        }
                        if ((i2 & 8) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i3 &= -7169;
                        } else {
                            datePickerColorsColors = datePickerColors2;
                        }
                        if (i4 != 0) {
                            z5 = true;
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                public final void invoke(Composer composer3, int i1112) {
                                    if (!composer3.shouldExecute((i1112 & 3) != 2, i1112 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1655706771, i1112, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            i12 = 54;
                        } else {
                            z5 = true;
                            i12 = 54;
                        }
                        if (i6 != 0) {
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                public final void invoke(Composer composer3, int i1112) {
                                    if (!composer3.shouldExecute((i1112 & 3) != 2, i1112 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1439279037, i1112, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, i12);
                        } else {
                            bm3VarRememberComposableLambda2 = bm3Var3;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if (i10 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new FocusRequester();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            int i1112 = i3;
                            focusRequester3 = (FocusRequester) objRememberedValue;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            i13 = i1112;
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            modifier4 = modifier2;
                        } else {
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            modifier4 = modifier2;
                            i13 = i3;
                            focusRequester3 = focusRequester;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1105472031, i13, -1, "androidx.compose.material3.DatePicker (DatePicker.kt:190)");
                    }
                    zChanged = composerStartRestartGroup.changed(datePickerState.getLocale());
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        if (datePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        if (datePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    CalendarModel calendarModel6 = (CalendarModel) objRememberedValue3;
                    if (z6) {
                        composerStartRestartGroup.startReplaceGroup(-690551113);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1483431603, true, new AnonymousClass5(datePickerState, datePickerColors4), composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-690163489);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambdaRememberComposableLambda = null;
                    }
                    ComposableLambda composableLambda6 = composableLambdaRememberComposableLambda;
                    DatePickerModalTokens datePickerModalTokens6 = DatePickerModalTokens.INSTANCE;
                    TextStyle value6 = TypographyKt.getValue(datePickerModalTokens6.getHeaderHeadlineFont(), composerStartRestartGroup, 6);
                    float fM4693getHeaderContainerHeightD9Ej5fM6 = datePickerModalTokens6.m4693getHeaderContainerHeightD9Ej5fM();
                    FocusRequester focusRequester9 = focusRequester3;
                    AnonymousClass6 anonymousClass11 = new AnonymousClass6(datePickerState, calendarModel6, datePickerFormatter3, datePickerColors4, focusRequester9);
                    DatePickerFormatter datePickerFormatter9 = datePickerFormatter3;
                    int i1113 = i13 >> 9;
                    composer2 = composerStartRestartGroup;
                    m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda6, datePickerColors4, value6, fM4693getHeaderContainerHeightD9Ej5fM6, ComposableLambdaKt.rememberComposableLambda(-1346903698, true, anonymousClass11, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i1113 & 112) | (i1113 & 896) | ((i13 << 3) & 57344));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    datePickerFormatter2 = datePickerFormatter9;
                    focusRequester2 = focusRequester9;
                    z4 = z6;
                    modifier3 = modifier4;
                    bm3Var4 = bm3Var6;
                    datePickerColors3 = datePickerColors4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    datePickerFormatter2 = datePickerFormatter;
                    focusRequester2 = focusRequester;
                    modifier3 = modifier2;
                    datePickerColors3 = datePickerColors2;
                    bm3Var4 = bm3VarRememberComposableLambda;
                    z4 = z2;
                }
                bm3Var5 = bm3Var3;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: y92
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerKt.DatePicker$lambda$3(datePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            bm3Var3 = bm3Var2;
            i8 = i2 & 64;
            if (i8 != 0) {
                if ((1572864 & i) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(focusRequester)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                if ((i3 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                            i3 &= -897;
                        } else {
                            datePickerFormatter3 = datePickerFormatter;
                        }
                        if ((i2 & 8) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i3 &= -7169;
                        } else {
                            datePickerColorsColors = datePickerColors2;
                        }
                        if (i4 != 0) {
                            z5 = true;
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                public final void invoke(Composer composer3, int i1114) {
                                    if (!composer3.shouldExecute((i1114 & 3) != 2, i1114 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1655706771, i1114, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            i12 = 54;
                        } else {
                            z5 = true;
                            i12 = 54;
                        }
                        if (i6 != 0) {
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                public final void invoke(Composer composer3, int i1114) {
                                    if (!composer3.shouldExecute((i1114 & 3) != 2, i1114 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1439279037, i1114, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, i12);
                        } else {
                            bm3VarRememberComposableLambda2 = bm3Var3;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if (i10 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new FocusRequester();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            int i1114 = i3;
                            focusRequester3 = (FocusRequester) objRememberedValue;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            i13 = i1114;
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            modifier4 = modifier2;
                        } else {
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            modifier4 = modifier2;
                            i13 = i3;
                            focusRequester3 = focusRequester;
                        }
                    } else {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                            i3 &= -897;
                        } else {
                            datePickerFormatter3 = datePickerFormatter;
                        }
                        if ((i2 & 8) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i3 &= -7169;
                        } else {
                            datePickerColorsColors = datePickerColors2;
                        }
                        if (i4 != 0) {
                            z5 = true;
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                public final void invoke(Composer composer3, int i1115) {
                                    if (!composer3.shouldExecute((i1115 & 3) != 2, i1115 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1655706771, i1115, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            i12 = 54;
                        } else {
                            z5 = true;
                            i12 = 54;
                        }
                        if (i6 != 0) {
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                public final void invoke(Composer composer3, int i1115) {
                                    if (!composer3.shouldExecute((i1115 & 3) != 2, i1115 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1439279037, i1115, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, i12);
                        } else {
                            bm3VarRememberComposableLambda2 = bm3Var3;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if (i10 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new FocusRequester();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            int i1115 = i3;
                            focusRequester3 = (FocusRequester) objRememberedValue;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            i13 = i1115;
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            modifier4 = modifier2;
                        } else {
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            modifier4 = modifier2;
                            i13 = i3;
                            focusRequester3 = focusRequester;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1105472031, i13, -1, "androidx.compose.material3.DatePicker (DatePicker.kt:190)");
                    }
                    zChanged = composerStartRestartGroup.changed(datePickerState.getLocale());
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        if (datePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        if (datePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    CalendarModel calendarModel7 = (CalendarModel) objRememberedValue3;
                    if (z6) {
                        composerStartRestartGroup.startReplaceGroup(-690551113);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1483431603, true, new AnonymousClass5(datePickerState, datePickerColors4), composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-690163489);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambdaRememberComposableLambda = null;
                    }
                    ComposableLambda composableLambda7 = composableLambdaRememberComposableLambda;
                    DatePickerModalTokens datePickerModalTokens7 = DatePickerModalTokens.INSTANCE;
                    TextStyle value7 = TypographyKt.getValue(datePickerModalTokens7.getHeaderHeadlineFont(), composerStartRestartGroup, 6);
                    float fM4693getHeaderContainerHeightD9Ej5fM7 = datePickerModalTokens7.m4693getHeaderContainerHeightD9Ej5fM();
                    FocusRequester focusRequester10 = focusRequester3;
                    AnonymousClass6 anonymousClass12 = new AnonymousClass6(datePickerState, calendarModel7, datePickerFormatter3, datePickerColors4, focusRequester10);
                    DatePickerFormatter datePickerFormatter10 = datePickerFormatter3;
                    int i1116 = i13 >> 9;
                    composer2 = composerStartRestartGroup;
                    m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda7, datePickerColors4, value7, fM4693getHeaderContainerHeightD9Ej5fM7, ComposableLambdaKt.rememberComposableLambda(-1346903698, true, anonymousClass12, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i1116 & 112) | (i1116 & 896) | ((i13 << 3) & 57344));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    datePickerFormatter2 = datePickerFormatter10;
                    focusRequester2 = focusRequester10;
                    z4 = z6;
                    modifier3 = modifier4;
                    bm3Var4 = bm3Var6;
                    datePickerColors3 = datePickerColors4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    datePickerFormatter2 = datePickerFormatter;
                    focusRequester2 = focusRequester;
                    modifier3 = modifier2;
                    datePickerColors3 = datePickerColors2;
                    bm3Var4 = bm3VarRememberComposableLambda;
                    z4 = z2;
                }
                bm3Var5 = bm3Var3;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: y92
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerKt.DatePicker$lambda$3(datePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            z2 = z;
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(focusRequester)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
            if ((i3 & 4793491) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                        i3 &= -897;
                    } else {
                        datePickerFormatter3 = datePickerFormatter;
                    }
                    if ((i2 & 8) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i3 &= -7169;
                    } else {
                        datePickerColorsColors = datePickerColors2;
                    }
                    if (i4 != 0) {
                        z5 = true;
                        bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                            public final void invoke(Composer composer3, int i1117) {
                                if (!composer3.shouldExecute((i1117 & 3) != 2, i1117 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1655706771, i1117, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                }
                                DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                        i12 = 54;
                    } else {
                        z5 = true;
                        i12 = 54;
                    }
                    if (i6 != 0) {
                        bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                            public final void invoke(Composer composer3, int i1117) {
                                if (!composer3.shouldExecute((i1117 & 3) != 2, i1117 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1439279037, i1117, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                }
                                DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, i12);
                    } else {
                        bm3VarRememberComposableLambda2 = bm3Var3;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if (i10 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new FocusRequester();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        int i1117 = i3;
                        focusRequester3 = (FocusRequester) objRememberedValue;
                        z6 = z2;
                        datePickerColors4 = datePickerColorsColors;
                        i13 = i1117;
                        bm3Var3 = bm3VarRememberComposableLambda2;
                        bm3Var6 = bm3VarRememberComposableLambda;
                        modifier4 = modifier2;
                    } else {
                        bm3Var3 = bm3VarRememberComposableLambda2;
                        bm3Var6 = bm3VarRememberComposableLambda;
                        z6 = z2;
                        datePickerColors4 = datePickerColorsColors;
                        modifier4 = modifier2;
                        i13 = i3;
                        focusRequester3 = focusRequester;
                    }
                } else {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                        i3 &= -897;
                    } else {
                        datePickerFormatter3 = datePickerFormatter;
                    }
                    if ((i2 & 8) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i3 &= -7169;
                    } else {
                        datePickerColorsColors = datePickerColors2;
                    }
                    if (i4 != 0) {
                        z5 = true;
                        bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                            public final void invoke(Composer composer3, int i1118) {
                                if (!composer3.shouldExecute((i1118 & 3) != 2, i1118 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1655706771, i1118, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                }
                                DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                        i12 = 54;
                    } else {
                        z5 = true;
                        i12 = 54;
                    }
                    if (i6 != 0) {
                        bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                            public final void invoke(Composer composer3, int i1118) {
                                if (!composer3.shouldExecute((i1118 & 3) != 2, i1118 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1439279037, i1118, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                }
                                DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, i12);
                    } else {
                        bm3VarRememberComposableLambda2 = bm3Var3;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if (i10 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new FocusRequester();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        int i1118 = i3;
                        focusRequester3 = (FocusRequester) objRememberedValue;
                        z6 = z2;
                        datePickerColors4 = datePickerColorsColors;
                        i13 = i1118;
                        bm3Var3 = bm3VarRememberComposableLambda2;
                        bm3Var6 = bm3VarRememberComposableLambda;
                        modifier4 = modifier2;
                    } else {
                        bm3Var3 = bm3VarRememberComposableLambda2;
                        bm3Var6 = bm3VarRememberComposableLambda;
                        z6 = z2;
                        datePickerColors4 = datePickerColorsColors;
                        modifier4 = modifier2;
                        i13 = i3;
                        focusRequester3 = focusRequester;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1105472031, i13, -1, "androidx.compose.material3.DatePicker (DatePicker.kt:190)");
                }
                zChanged = composerStartRestartGroup.changed(datePickerState.getLocale());
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    if (datePickerState instanceof BaseDatePickerStateImpl) {
                        calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                    } else {
                        calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                    }
                    objRememberedValue3 = calendarModelCreateCalendarModel;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    if (datePickerState instanceof BaseDatePickerStateImpl) {
                        calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                    } else {
                        calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                    }
                    objRememberedValue3 = calendarModelCreateCalendarModel;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                CalendarModel calendarModel8 = (CalendarModel) objRememberedValue3;
                if (z6) {
                    composerStartRestartGroup.startReplaceGroup(-690551113);
                    composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1483431603, true, new AnonymousClass5(datePickerState, datePickerColors4), composerStartRestartGroup, 54);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-690163489);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambdaRememberComposableLambda = null;
                }
                ComposableLambda composableLambda8 = composableLambdaRememberComposableLambda;
                DatePickerModalTokens datePickerModalTokens8 = DatePickerModalTokens.INSTANCE;
                TextStyle value8 = TypographyKt.getValue(datePickerModalTokens8.getHeaderHeadlineFont(), composerStartRestartGroup, 6);
                float fM4693getHeaderContainerHeightD9Ej5fM8 = datePickerModalTokens8.m4693getHeaderContainerHeightD9Ej5fM();
                FocusRequester focusRequester11 = focusRequester3;
                AnonymousClass6 anonymousClass13 = new AnonymousClass6(datePickerState, calendarModel8, datePickerFormatter3, datePickerColors4, focusRequester11);
                DatePickerFormatter datePickerFormatter11 = datePickerFormatter3;
                int i1119 = i13 >> 9;
                composer2 = composerStartRestartGroup;
                m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda8, datePickerColors4, value8, fM4693getHeaderContainerHeightD9Ej5fM8, ComposableLambdaKt.rememberComposableLambda(-1346903698, true, anonymousClass13, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i1119 & 112) | (i1119 & 896) | ((i13 << 3) & 57344));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                datePickerFormatter2 = datePickerFormatter11;
                focusRequester2 = focusRequester11;
                z4 = z6;
                modifier3 = modifier4;
                bm3Var4 = bm3Var6;
                datePickerColors3 = datePickerColors4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                datePickerFormatter2 = datePickerFormatter;
                focusRequester2 = focusRequester;
                modifier3 = modifier2;
                datePickerColors3 = datePickerColors2;
                bm3Var4 = bm3VarRememberComposableLambda;
                z4 = z2;
            }
            bm3Var5 = bm3Var3;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: y92
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DatePickerKt.DatePicker$lambda$3(datePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        modifier2 = modifier;
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i2 & 4) != 0) {
                i14 = 128;
            } else {
                if ((i & 512) == 0) {
                    zChangedInstance = composerStartRestartGroup.changed(datePickerFormatter);
                } else {
                    zChangedInstance = composerStartRestartGroup.changedInstance(datePickerFormatter);
                }
                if (zChangedInstance) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
            }
            i3 |= i14;
        }
        if ((i & 3072) == 0) {
            if ((i2 & 8) == 0) {
                datePickerColors2 = datePickerColors;
                if (composerStartRestartGroup.changed(datePickerColors2)) {
                }
                i3 |= i16;
            } else {
                datePickerColors2 = datePickerColors;
            }
            i3 |= i16;
        } else {
            datePickerColors2 = datePickerColors;
        }
        i4 = i2 & 16;
        if (i4 != 0) {
            if ((i & 24576) == 0) {
                bm3VarRememberComposableLambda = bm3Var;
                if (composerStartRestartGroup.changedInstance(bm3VarRememberComposableLambda)) {
                    i5 = 16384;
                } else {
                    i5 = 8192;
                }
                i3 |= i5;
            }
            i6 = i2 & 32;
            if (i6 != 0) {
                if ((196608 & i) == 0) {
                    bm3Var3 = bm3Var2;
                    if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                        i7 = 131072;
                    } else {
                        i7 = 65536;
                    }
                    i3 |= i7;
                }
                i8 = i2 & 64;
                if (i8 != 0) {
                    if ((1572864 & i) == 0) {
                        z2 = z;
                        if (composerStartRestartGroup.changed(z2)) {
                            i9 = 1048576;
                        } else {
                            i9 = 524288;
                        }
                        i3 |= i9;
                    }
                    i10 = i2 & 128;
                    if (i10 != 0) {
                        i3 |= 12582912;
                    } else if ((i & 12582912) == 0) {
                        if (composerStartRestartGroup.changed(focusRequester)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i3 |= i11;
                    }
                    if ((i3 & 4793491) != 4793490) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i & 1) != 0) {
                            if (i15 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                                i3 &= -897;
                            } else {
                                datePickerFormatter3 = datePickerFormatter;
                            }
                            if ((i2 & 8) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i3 &= -7169;
                            } else {
                                datePickerColorsColors = datePickerColors2;
                            }
                            if (i4 != 0) {
                                z5 = true;
                                bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                    public final void invoke(Composer composer3, int i11110) {
                                        if (!composer3.shouldExecute((i11110 & 3) != 2, i11110 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1655706771, i11110, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                        }
                                        DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                i12 = 54;
                            } else {
                                z5 = true;
                                i12 = 54;
                            }
                            if (i6 != 0) {
                                bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                    public final void invoke(Composer composer3, int i11110) {
                                        if (!composer3.shouldExecute((i11110 & 3) != 2, i11110 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1439279037, i11110, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                        }
                                        DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, i12);
                            } else {
                                bm3VarRememberComposableLambda2 = bm3Var3;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if (i10 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new FocusRequester();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                int i11110 = i3;
                                focusRequester3 = (FocusRequester) objRememberedValue;
                                z6 = z2;
                                datePickerColors4 = datePickerColorsColors;
                                i13 = i11110;
                                bm3Var3 = bm3VarRememberComposableLambda2;
                                bm3Var6 = bm3VarRememberComposableLambda;
                                modifier4 = modifier2;
                            } else {
                                bm3Var3 = bm3VarRememberComposableLambda2;
                                bm3Var6 = bm3VarRememberComposableLambda;
                                z6 = z2;
                                datePickerColors4 = datePickerColorsColors;
                                modifier4 = modifier2;
                                i13 = i3;
                                focusRequester3 = focusRequester;
                            }
                        } else {
                            if (i15 != 0) {
                                modifier2 = Modifier.Companion;
                            }
                            if ((i2 & 4) != 0) {
                                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                    objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                                }
                                datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                                i3 &= -897;
                            } else {
                                datePickerFormatter3 = datePickerFormatter;
                            }
                            if ((i2 & 8) != 0) {
                                datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                                i3 &= -7169;
                            } else {
                                datePickerColorsColors = datePickerColors2;
                            }
                            if (i4 != 0) {
                                z5 = true;
                                bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                    public final void invoke(Composer composer3, int i11111) {
                                        if (!composer3.shouldExecute((i11111 & 3) != 2, i11111 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1655706771, i11111, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                        }
                                        DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                i12 = 54;
                            } else {
                                z5 = true;
                                i12 = 54;
                            }
                            if (i6 != 0) {
                                bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                    public final void invoke(Composer composer3, int i11111) {
                                        if (!composer3.shouldExecute((i11111 & 3) != 2, i11111 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1439279037, i11111, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                        }
                                        DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composerStartRestartGroup, i12);
                            } else {
                                bm3VarRememberComposableLambda2 = bm3Var3;
                            }
                            if (i8 != 0) {
                                z2 = true;
                            }
                            if (i10 != 0) {
                                objRememberedValue = composerStartRestartGroup.rememberedValue();
                                if (objRememberedValue == Composer.Companion.getEmpty()) {
                                    objRememberedValue = new FocusRequester();
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                                }
                                int i11111 = i3;
                                focusRequester3 = (FocusRequester) objRememberedValue;
                                z6 = z2;
                                datePickerColors4 = datePickerColorsColors;
                                i13 = i11111;
                                bm3Var3 = bm3VarRememberComposableLambda2;
                                bm3Var6 = bm3VarRememberComposableLambda;
                                modifier4 = modifier2;
                            } else {
                                bm3Var3 = bm3VarRememberComposableLambda2;
                                bm3Var6 = bm3VarRememberComposableLambda;
                                z6 = z2;
                                datePickerColors4 = datePickerColorsColors;
                                modifier4 = modifier2;
                                i13 = i3;
                                focusRequester3 = focusRequester;
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1105472031, i13, -1, "androidx.compose.material3.DatePicker (DatePicker.kt:190)");
                        }
                        zChanged = composerStartRestartGroup.changed(datePickerState.getLocale());
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            if (datePickerState instanceof BaseDatePickerStateImpl) {
                                calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                            } else {
                                calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                            }
                            objRememberedValue3 = calendarModelCreateCalendarModel;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            if (datePickerState instanceof BaseDatePickerStateImpl) {
                                calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                            } else {
                                calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                            }
                            objRememberedValue3 = calendarModelCreateCalendarModel;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        CalendarModel calendarModel9 = (CalendarModel) objRememberedValue3;
                        if (z6) {
                            composerStartRestartGroup.startReplaceGroup(-690551113);
                            composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1483431603, true, new AnonymousClass5(datePickerState, datePickerColors4), composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-690163489);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambdaRememberComposableLambda = null;
                        }
                        ComposableLambda composableLambda9 = composableLambdaRememberComposableLambda;
                        DatePickerModalTokens datePickerModalTokens9 = DatePickerModalTokens.INSTANCE;
                        TextStyle value9 = TypographyKt.getValue(datePickerModalTokens9.getHeaderHeadlineFont(), composerStartRestartGroup, 6);
                        float fM4693getHeaderContainerHeightD9Ej5fM9 = datePickerModalTokens9.m4693getHeaderContainerHeightD9Ej5fM();
                        FocusRequester focusRequester12 = focusRequester3;
                        AnonymousClass6 anonymousClass14 = new AnonymousClass6(datePickerState, calendarModel9, datePickerFormatter3, datePickerColors4, focusRequester12);
                        DatePickerFormatter datePickerFormatter12 = datePickerFormatter3;
                        int i11112 = i13 >> 9;
                        composer2 = composerStartRestartGroup;
                        m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda9, datePickerColors4, value9, fM4693getHeaderContainerHeightD9Ej5fM9, ComposableLambdaKt.rememberComposableLambda(-1346903698, true, anonymousClass14, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i11112 & 112) | (i11112 & 896) | ((i13 << 3) & 57344));
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        datePickerFormatter2 = datePickerFormatter12;
                        focusRequester2 = focusRequester12;
                        z4 = z6;
                        modifier3 = modifier4;
                        bm3Var4 = bm3Var6;
                        datePickerColors3 = datePickerColors4;
                    } else {
                        composer2 = composerStartRestartGroup;
                        composer2.skipToGroupEnd();
                        datePickerFormatter2 = datePickerFormatter;
                        focusRequester2 = focusRequester;
                        modifier3 = modifier2;
                        datePickerColors3 = datePickerColors2;
                        bm3Var4 = bm3VarRememberComposableLambda;
                        z4 = z2;
                    }
                    bm3Var5 = bm3Var3;
                    scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: y92
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DatePickerKt.DatePicker$lambda$3(datePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 1572864;
                z2 = z;
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(focusRequester)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                if ((i3 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                            i3 &= -897;
                        } else {
                            datePickerFormatter3 = datePickerFormatter;
                        }
                        if ((i2 & 8) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i3 &= -7169;
                        } else {
                            datePickerColorsColors = datePickerColors2;
                        }
                        if (i4 != 0) {
                            z5 = true;
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                public final void invoke(Composer composer3, int i11113) {
                                    if (!composer3.shouldExecute((i11113 & 3) != 2, i11113 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1655706771, i11113, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            i12 = 54;
                        } else {
                            z5 = true;
                            i12 = 54;
                        }
                        if (i6 != 0) {
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                public final void invoke(Composer composer3, int i11113) {
                                    if (!composer3.shouldExecute((i11113 & 3) != 2, i11113 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1439279037, i11113, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, i12);
                        } else {
                            bm3VarRememberComposableLambda2 = bm3Var3;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if (i10 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new FocusRequester();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            int i11113 = i3;
                            focusRequester3 = (FocusRequester) objRememberedValue;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            i13 = i11113;
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            modifier4 = modifier2;
                        } else {
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            modifier4 = modifier2;
                            i13 = i3;
                            focusRequester3 = focusRequester;
                        }
                    } else {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                            i3 &= -897;
                        } else {
                            datePickerFormatter3 = datePickerFormatter;
                        }
                        if ((i2 & 8) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i3 &= -7169;
                        } else {
                            datePickerColorsColors = datePickerColors2;
                        }
                        if (i4 != 0) {
                            z5 = true;
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                public final void invoke(Composer composer3, int i11114) {
                                    if (!composer3.shouldExecute((i11114 & 3) != 2, i11114 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1655706771, i11114, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            i12 = 54;
                        } else {
                            z5 = true;
                            i12 = 54;
                        }
                        if (i6 != 0) {
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                public final void invoke(Composer composer3, int i11114) {
                                    if (!composer3.shouldExecute((i11114 & 3) != 2, i11114 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1439279037, i11114, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, i12);
                        } else {
                            bm3VarRememberComposableLambda2 = bm3Var3;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if (i10 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new FocusRequester();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            int i11114 = i3;
                            focusRequester3 = (FocusRequester) objRememberedValue;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            i13 = i11114;
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            modifier4 = modifier2;
                        } else {
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            modifier4 = modifier2;
                            i13 = i3;
                            focusRequester3 = focusRequester;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1105472031, i13, -1, "androidx.compose.material3.DatePicker (DatePicker.kt:190)");
                    }
                    zChanged = composerStartRestartGroup.changed(datePickerState.getLocale());
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        if (datePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        if (datePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    CalendarModel calendarModel10 = (CalendarModel) objRememberedValue3;
                    if (z6) {
                        composerStartRestartGroup.startReplaceGroup(-690551113);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1483431603, true, new AnonymousClass5(datePickerState, datePickerColors4), composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-690163489);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambdaRememberComposableLambda = null;
                    }
                    ComposableLambda composableLambda10 = composableLambdaRememberComposableLambda;
                    DatePickerModalTokens datePickerModalTokens10 = DatePickerModalTokens.INSTANCE;
                    TextStyle value10 = TypographyKt.getValue(datePickerModalTokens10.getHeaderHeadlineFont(), composerStartRestartGroup, 6);
                    float fM4693getHeaderContainerHeightD9Ej5fM10 = datePickerModalTokens10.m4693getHeaderContainerHeightD9Ej5fM();
                    FocusRequester focusRequester13 = focusRequester3;
                    AnonymousClass6 anonymousClass15 = new AnonymousClass6(datePickerState, calendarModel10, datePickerFormatter3, datePickerColors4, focusRequester13);
                    DatePickerFormatter datePickerFormatter13 = datePickerFormatter3;
                    int i11115 = i13 >> 9;
                    composer2 = composerStartRestartGroup;
                    m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda10, datePickerColors4, value10, fM4693getHeaderContainerHeightD9Ej5fM10, ComposableLambdaKt.rememberComposableLambda(-1346903698, true, anonymousClass15, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i11115 & 112) | (i11115 & 896) | ((i13 << 3) & 57344));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    datePickerFormatter2 = datePickerFormatter13;
                    focusRequester2 = focusRequester13;
                    z4 = z6;
                    modifier3 = modifier4;
                    bm3Var4 = bm3Var6;
                    datePickerColors3 = datePickerColors4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    datePickerFormatter2 = datePickerFormatter;
                    focusRequester2 = focusRequester;
                    modifier3 = modifier2;
                    datePickerColors3 = datePickerColors2;
                    bm3Var4 = bm3VarRememberComposableLambda;
                    z4 = z2;
                }
                bm3Var5 = bm3Var3;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: y92
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerKt.DatePicker$lambda$3(datePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            bm3Var3 = bm3Var2;
            i8 = i2 & 64;
            if (i8 != 0) {
                if ((1572864 & i) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(focusRequester)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                if ((i3 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                            i3 &= -897;
                        } else {
                            datePickerFormatter3 = datePickerFormatter;
                        }
                        if ((i2 & 8) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i3 &= -7169;
                        } else {
                            datePickerColorsColors = datePickerColors2;
                        }
                        if (i4 != 0) {
                            z5 = true;
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                public final void invoke(Composer composer3, int i11116) {
                                    if (!composer3.shouldExecute((i11116 & 3) != 2, i11116 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1655706771, i11116, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            i12 = 54;
                        } else {
                            z5 = true;
                            i12 = 54;
                        }
                        if (i6 != 0) {
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                public final void invoke(Composer composer3, int i11116) {
                                    if (!composer3.shouldExecute((i11116 & 3) != 2, i11116 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1439279037, i11116, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, i12);
                        } else {
                            bm3VarRememberComposableLambda2 = bm3Var3;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if (i10 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new FocusRequester();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            int i11116 = i3;
                            focusRequester3 = (FocusRequester) objRememberedValue;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            i13 = i11116;
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            modifier4 = modifier2;
                        } else {
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            modifier4 = modifier2;
                            i13 = i3;
                            focusRequester3 = focusRequester;
                        }
                    } else {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                            i3 &= -897;
                        } else {
                            datePickerFormatter3 = datePickerFormatter;
                        }
                        if ((i2 & 8) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i3 &= -7169;
                        } else {
                            datePickerColorsColors = datePickerColors2;
                        }
                        if (i4 != 0) {
                            z5 = true;
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                public final void invoke(Composer composer3, int i11117) {
                                    if (!composer3.shouldExecute((i11117 & 3) != 2, i11117 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1655706771, i11117, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            i12 = 54;
                        } else {
                            z5 = true;
                            i12 = 54;
                        }
                        if (i6 != 0) {
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                public final void invoke(Composer composer3, int i11117) {
                                    if (!composer3.shouldExecute((i11117 & 3) != 2, i11117 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1439279037, i11117, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, i12);
                        } else {
                            bm3VarRememberComposableLambda2 = bm3Var3;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if (i10 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new FocusRequester();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            int i11117 = i3;
                            focusRequester3 = (FocusRequester) objRememberedValue;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            i13 = i11117;
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            modifier4 = modifier2;
                        } else {
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            modifier4 = modifier2;
                            i13 = i3;
                            focusRequester3 = focusRequester;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1105472031, i13, -1, "androidx.compose.material3.DatePicker (DatePicker.kt:190)");
                    }
                    zChanged = composerStartRestartGroup.changed(datePickerState.getLocale());
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        if (datePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        if (datePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    CalendarModel calendarModel11 = (CalendarModel) objRememberedValue3;
                    if (z6) {
                        composerStartRestartGroup.startReplaceGroup(-690551113);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1483431603, true, new AnonymousClass5(datePickerState, datePickerColors4), composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-690163489);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambdaRememberComposableLambda = null;
                    }
                    ComposableLambda composableLambda11 = composableLambdaRememberComposableLambda;
                    DatePickerModalTokens datePickerModalTokens11 = DatePickerModalTokens.INSTANCE;
                    TextStyle value11 = TypographyKt.getValue(datePickerModalTokens11.getHeaderHeadlineFont(), composerStartRestartGroup, 6);
                    float fM4693getHeaderContainerHeightD9Ej5fM11 = datePickerModalTokens11.m4693getHeaderContainerHeightD9Ej5fM();
                    FocusRequester focusRequester14 = focusRequester3;
                    AnonymousClass6 anonymousClass16 = new AnonymousClass6(datePickerState, calendarModel11, datePickerFormatter3, datePickerColors4, focusRequester14);
                    DatePickerFormatter datePickerFormatter14 = datePickerFormatter3;
                    int i11118 = i13 >> 9;
                    composer2 = composerStartRestartGroup;
                    m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda11, datePickerColors4, value11, fM4693getHeaderContainerHeightD9Ej5fM11, ComposableLambdaKt.rememberComposableLambda(-1346903698, true, anonymousClass16, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i11118 & 112) | (i11118 & 896) | ((i13 << 3) & 57344));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    datePickerFormatter2 = datePickerFormatter14;
                    focusRequester2 = focusRequester14;
                    z4 = z6;
                    modifier3 = modifier4;
                    bm3Var4 = bm3Var6;
                    datePickerColors3 = datePickerColors4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    datePickerFormatter2 = datePickerFormatter;
                    focusRequester2 = focusRequester;
                    modifier3 = modifier2;
                    datePickerColors3 = datePickerColors2;
                    bm3Var4 = bm3VarRememberComposableLambda;
                    z4 = z2;
                }
                bm3Var5 = bm3Var3;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: y92
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerKt.DatePicker$lambda$3(datePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            z2 = z;
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(focusRequester)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
            if ((i3 & 4793491) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                        i3 &= -897;
                    } else {
                        datePickerFormatter3 = datePickerFormatter;
                    }
                    if ((i2 & 8) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i3 &= -7169;
                    } else {
                        datePickerColorsColors = datePickerColors2;
                    }
                    if (i4 != 0) {
                        z5 = true;
                        bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                            public final void invoke(Composer composer3, int i11119) {
                                if (!composer3.shouldExecute((i11119 & 3) != 2, i11119 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1655706771, i11119, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                }
                                DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                        i12 = 54;
                    } else {
                        z5 = true;
                        i12 = 54;
                    }
                    if (i6 != 0) {
                        bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                            public final void invoke(Composer composer3, int i11119) {
                                if (!composer3.shouldExecute((i11119 & 3) != 2, i11119 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1439279037, i11119, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                }
                                DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, i12);
                    } else {
                        bm3VarRememberComposableLambda2 = bm3Var3;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if (i10 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new FocusRequester();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        int i11119 = i3;
                        focusRequester3 = (FocusRequester) objRememberedValue;
                        z6 = z2;
                        datePickerColors4 = datePickerColorsColors;
                        i13 = i11119;
                        bm3Var3 = bm3VarRememberComposableLambda2;
                        bm3Var6 = bm3VarRememberComposableLambda;
                        modifier4 = modifier2;
                    } else {
                        bm3Var3 = bm3VarRememberComposableLambda2;
                        bm3Var6 = bm3VarRememberComposableLambda;
                        z6 = z2;
                        datePickerColors4 = datePickerColorsColors;
                        modifier4 = modifier2;
                        i13 = i3;
                        focusRequester3 = focusRequester;
                    }
                } else {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                        i3 &= -897;
                    } else {
                        datePickerFormatter3 = datePickerFormatter;
                    }
                    if ((i2 & 8) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i3 &= -7169;
                    } else {
                        datePickerColorsColors = datePickerColors2;
                    }
                    if (i4 != 0) {
                        z5 = true;
                        bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                            public final void invoke(Composer composer3, int i111110) {
                                if (!composer3.shouldExecute((i111110 & 3) != 2, i111110 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1655706771, i111110, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                }
                                DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                        i12 = 54;
                    } else {
                        z5 = true;
                        i12 = 54;
                    }
                    if (i6 != 0) {
                        bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                            public final void invoke(Composer composer3, int i111110) {
                                if (!composer3.shouldExecute((i111110 & 3) != 2, i111110 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1439279037, i111110, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                }
                                DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, i12);
                    } else {
                        bm3VarRememberComposableLambda2 = bm3Var3;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if (i10 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new FocusRequester();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        int i111110 = i3;
                        focusRequester3 = (FocusRequester) objRememberedValue;
                        z6 = z2;
                        datePickerColors4 = datePickerColorsColors;
                        i13 = i111110;
                        bm3Var3 = bm3VarRememberComposableLambda2;
                        bm3Var6 = bm3VarRememberComposableLambda;
                        modifier4 = modifier2;
                    } else {
                        bm3Var3 = bm3VarRememberComposableLambda2;
                        bm3Var6 = bm3VarRememberComposableLambda;
                        z6 = z2;
                        datePickerColors4 = datePickerColorsColors;
                        modifier4 = modifier2;
                        i13 = i3;
                        focusRequester3 = focusRequester;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1105472031, i13, -1, "androidx.compose.material3.DatePicker (DatePicker.kt:190)");
                }
                zChanged = composerStartRestartGroup.changed(datePickerState.getLocale());
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    if (datePickerState instanceof BaseDatePickerStateImpl) {
                        calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                    } else {
                        calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                    }
                    objRememberedValue3 = calendarModelCreateCalendarModel;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    if (datePickerState instanceof BaseDatePickerStateImpl) {
                        calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                    } else {
                        calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                    }
                    objRememberedValue3 = calendarModelCreateCalendarModel;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                CalendarModel calendarModel12 = (CalendarModel) objRememberedValue3;
                if (z6) {
                    composerStartRestartGroup.startReplaceGroup(-690551113);
                    composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1483431603, true, new AnonymousClass5(datePickerState, datePickerColors4), composerStartRestartGroup, 54);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-690163489);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambdaRememberComposableLambda = null;
                }
                ComposableLambda composableLambda12 = composableLambdaRememberComposableLambda;
                DatePickerModalTokens datePickerModalTokens12 = DatePickerModalTokens.INSTANCE;
                TextStyle value12 = TypographyKt.getValue(datePickerModalTokens12.getHeaderHeadlineFont(), composerStartRestartGroup, 6);
                float fM4693getHeaderContainerHeightD9Ej5fM12 = datePickerModalTokens12.m4693getHeaderContainerHeightD9Ej5fM();
                FocusRequester focusRequester15 = focusRequester3;
                AnonymousClass6 anonymousClass17 = new AnonymousClass6(datePickerState, calendarModel12, datePickerFormatter3, datePickerColors4, focusRequester15);
                DatePickerFormatter datePickerFormatter15 = datePickerFormatter3;
                int i111111 = i13 >> 9;
                composer2 = composerStartRestartGroup;
                m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda12, datePickerColors4, value12, fM4693getHeaderContainerHeightD9Ej5fM12, ComposableLambdaKt.rememberComposableLambda(-1346903698, true, anonymousClass17, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i111111 & 112) | (i111111 & 896) | ((i13 << 3) & 57344));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                datePickerFormatter2 = datePickerFormatter15;
                focusRequester2 = focusRequester15;
                z4 = z6;
                modifier3 = modifier4;
                bm3Var4 = bm3Var6;
                datePickerColors3 = datePickerColors4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                datePickerFormatter2 = datePickerFormatter;
                focusRequester2 = focusRequester;
                modifier3 = modifier2;
                datePickerColors3 = datePickerColors2;
                bm3Var4 = bm3VarRememberComposableLambda;
                z4 = z2;
            }
            bm3Var5 = bm3Var3;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: y92
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DatePickerKt.DatePicker$lambda$3(datePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        bm3VarRememberComposableLambda = bm3Var;
        i6 = i2 & 32;
        if (i6 != 0) {
            if ((196608 & i) == 0) {
                bm3Var3 = bm3Var2;
                if (composerStartRestartGroup.changedInstance(bm3Var3)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
            }
            i8 = i2 & 64;
            if (i8 != 0) {
                if ((1572864 & i) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i3 |= i9;
                }
                i10 = i2 & 128;
                if (i10 != 0) {
                    i3 |= 12582912;
                } else if ((i & 12582912) == 0) {
                    if (composerStartRestartGroup.changed(focusRequester)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i3 |= i11;
                }
                if ((i3 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) != 0) {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                            i3 &= -897;
                        } else {
                            datePickerFormatter3 = datePickerFormatter;
                        }
                        if ((i2 & 8) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i3 &= -7169;
                        } else {
                            datePickerColorsColors = datePickerColors2;
                        }
                        if (i4 != 0) {
                            z5 = true;
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                public final void invoke(Composer composer3, int i111112) {
                                    if (!composer3.shouldExecute((i111112 & 3) != 2, i111112 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1655706771, i111112, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            i12 = 54;
                        } else {
                            z5 = true;
                            i12 = 54;
                        }
                        if (i6 != 0) {
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                public final void invoke(Composer composer3, int i111112) {
                                    if (!composer3.shouldExecute((i111112 & 3) != 2, i111112 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1439279037, i111112, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, i12);
                        } else {
                            bm3VarRememberComposableLambda2 = bm3Var3;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if (i10 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new FocusRequester();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            int i111112 = i3;
                            focusRequester3 = (FocusRequester) objRememberedValue;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            i13 = i111112;
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            modifier4 = modifier2;
                        } else {
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            modifier4 = modifier2;
                            i13 = i3;
                            focusRequester3 = focusRequester;
                        }
                    } else {
                        if (i15 != 0) {
                            modifier2 = Modifier.Companion;
                        }
                        if ((i2 & 4) != 0) {
                            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                                objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                            }
                            datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                            i3 &= -897;
                        } else {
                            datePickerFormatter3 = datePickerFormatter;
                        }
                        if ((i2 & 8) != 0) {
                            datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                            i3 &= -7169;
                        } else {
                            datePickerColorsColors = datePickerColors2;
                        }
                        if (i4 != 0) {
                            z5 = true;
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                                public final void invoke(Composer composer3, int i111113) {
                                    if (!composer3.shouldExecute((i111113 & 3) != 2, i111113 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1655706771, i111113, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            i12 = 54;
                        } else {
                            z5 = true;
                            i12 = 54;
                        }
                        if (i6 != 0) {
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                                public final void invoke(Composer composer3, int i111113) {
                                    if (!composer3.shouldExecute((i111113 & 3) != 2, i111113 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1439279037, i111113, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                    }
                                    DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, i12);
                        } else {
                            bm3VarRememberComposableLambda2 = bm3Var3;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if (i10 != 0) {
                            objRememberedValue = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = new FocusRequester();
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                            }
                            int i111113 = i3;
                            focusRequester3 = (FocusRequester) objRememberedValue;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            i13 = i111113;
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            modifier4 = modifier2;
                        } else {
                            bm3Var3 = bm3VarRememberComposableLambda2;
                            bm3Var6 = bm3VarRememberComposableLambda;
                            z6 = z2;
                            datePickerColors4 = datePickerColorsColors;
                            modifier4 = modifier2;
                            i13 = i3;
                            focusRequester3 = focusRequester;
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1105472031, i13, -1, "androidx.compose.material3.DatePicker (DatePicker.kt:190)");
                    }
                    zChanged = composerStartRestartGroup.changed(datePickerState.getLocale());
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        if (datePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        if (datePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    CalendarModel calendarModel13 = (CalendarModel) objRememberedValue3;
                    if (z6) {
                        composerStartRestartGroup.startReplaceGroup(-690551113);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1483431603, true, new AnonymousClass5(datePickerState, datePickerColors4), composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-690163489);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambdaRememberComposableLambda = null;
                    }
                    ComposableLambda composableLambda13 = composableLambdaRememberComposableLambda;
                    DatePickerModalTokens datePickerModalTokens13 = DatePickerModalTokens.INSTANCE;
                    TextStyle value13 = TypographyKt.getValue(datePickerModalTokens13.getHeaderHeadlineFont(), composerStartRestartGroup, 6);
                    float fM4693getHeaderContainerHeightD9Ej5fM13 = datePickerModalTokens13.m4693getHeaderContainerHeightD9Ej5fM();
                    FocusRequester focusRequester16 = focusRequester3;
                    AnonymousClass6 anonymousClass18 = new AnonymousClass6(datePickerState, calendarModel13, datePickerFormatter3, datePickerColors4, focusRequester16);
                    DatePickerFormatter datePickerFormatter16 = datePickerFormatter3;
                    int i111114 = i13 >> 9;
                    composer2 = composerStartRestartGroup;
                    m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda13, datePickerColors4, value13, fM4693getHeaderContainerHeightD9Ej5fM13, ComposableLambdaKt.rememberComposableLambda(-1346903698, true, anonymousClass18, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i111114 & 112) | (i111114 & 896) | ((i13 << 3) & 57344));
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    datePickerFormatter2 = datePickerFormatter16;
                    focusRequester2 = focusRequester16;
                    z4 = z6;
                    modifier3 = modifier4;
                    bm3Var4 = bm3Var6;
                    datePickerColors3 = datePickerColors4;
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.skipToGroupEnd();
                    datePickerFormatter2 = datePickerFormatter;
                    focusRequester2 = focusRequester;
                    modifier3 = modifier2;
                    datePickerColors3 = datePickerColors2;
                    bm3Var4 = bm3VarRememberComposableLambda;
                    z4 = z2;
                }
                bm3Var5 = bm3Var3;
                scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: y92
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerKt.DatePicker$lambda$3(datePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 1572864;
            z2 = z;
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(focusRequester)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
            if ((i3 & 4793491) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                        i3 &= -897;
                    } else {
                        datePickerFormatter3 = datePickerFormatter;
                    }
                    if ((i2 & 8) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i3 &= -7169;
                    } else {
                        datePickerColorsColors = datePickerColors2;
                    }
                    if (i4 != 0) {
                        z5 = true;
                        bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                            public final void invoke(Composer composer3, int i111115) {
                                if (!composer3.shouldExecute((i111115 & 3) != 2, i111115 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1655706771, i111115, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                }
                                DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                        i12 = 54;
                    } else {
                        z5 = true;
                        i12 = 54;
                    }
                    if (i6 != 0) {
                        bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                            public final void invoke(Composer composer3, int i111115) {
                                if (!composer3.shouldExecute((i111115 & 3) != 2, i111115 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1439279037, i111115, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                }
                                DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, i12);
                    } else {
                        bm3VarRememberComposableLambda2 = bm3Var3;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if (i10 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new FocusRequester();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        int i111115 = i3;
                        focusRequester3 = (FocusRequester) objRememberedValue;
                        z6 = z2;
                        datePickerColors4 = datePickerColorsColors;
                        i13 = i111115;
                        bm3Var3 = bm3VarRememberComposableLambda2;
                        bm3Var6 = bm3VarRememberComposableLambda;
                        modifier4 = modifier2;
                    } else {
                        bm3Var3 = bm3VarRememberComposableLambda2;
                        bm3Var6 = bm3VarRememberComposableLambda;
                        z6 = z2;
                        datePickerColors4 = datePickerColorsColors;
                        modifier4 = modifier2;
                        i13 = i3;
                        focusRequester3 = focusRequester;
                    }
                } else {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                        i3 &= -897;
                    } else {
                        datePickerFormatter3 = datePickerFormatter;
                    }
                    if ((i2 & 8) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i3 &= -7169;
                    } else {
                        datePickerColorsColors = datePickerColors2;
                    }
                    if (i4 != 0) {
                        z5 = true;
                        bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                            public final void invoke(Composer composer3, int i111116) {
                                if (!composer3.shouldExecute((i111116 & 3) != 2, i111116 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1655706771, i111116, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                }
                                DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                        i12 = 54;
                    } else {
                        z5 = true;
                        i12 = 54;
                    }
                    if (i6 != 0) {
                        bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                            public final void invoke(Composer composer3, int i111116) {
                                if (!composer3.shouldExecute((i111116 & 3) != 2, i111116 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1439279037, i111116, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                }
                                DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, i12);
                    } else {
                        bm3VarRememberComposableLambda2 = bm3Var3;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if (i10 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new FocusRequester();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        int i111116 = i3;
                        focusRequester3 = (FocusRequester) objRememberedValue;
                        z6 = z2;
                        datePickerColors4 = datePickerColorsColors;
                        i13 = i111116;
                        bm3Var3 = bm3VarRememberComposableLambda2;
                        bm3Var6 = bm3VarRememberComposableLambda;
                        modifier4 = modifier2;
                    } else {
                        bm3Var3 = bm3VarRememberComposableLambda2;
                        bm3Var6 = bm3VarRememberComposableLambda;
                        z6 = z2;
                        datePickerColors4 = datePickerColorsColors;
                        modifier4 = modifier2;
                        i13 = i3;
                        focusRequester3 = focusRequester;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1105472031, i13, -1, "androidx.compose.material3.DatePicker (DatePicker.kt:190)");
                }
                zChanged = composerStartRestartGroup.changed(datePickerState.getLocale());
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    if (datePickerState instanceof BaseDatePickerStateImpl) {
                        calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                    } else {
                        calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                    }
                    objRememberedValue3 = calendarModelCreateCalendarModel;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    if (datePickerState instanceof BaseDatePickerStateImpl) {
                        calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                    } else {
                        calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                    }
                    objRememberedValue3 = calendarModelCreateCalendarModel;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                CalendarModel calendarModel14 = (CalendarModel) objRememberedValue3;
                if (z6) {
                    composerStartRestartGroup.startReplaceGroup(-690551113);
                    composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1483431603, true, new AnonymousClass5(datePickerState, datePickerColors4), composerStartRestartGroup, 54);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-690163489);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambdaRememberComposableLambda = null;
                }
                ComposableLambda composableLambda14 = composableLambdaRememberComposableLambda;
                DatePickerModalTokens datePickerModalTokens14 = DatePickerModalTokens.INSTANCE;
                TextStyle value14 = TypographyKt.getValue(datePickerModalTokens14.getHeaderHeadlineFont(), composerStartRestartGroup, 6);
                float fM4693getHeaderContainerHeightD9Ej5fM14 = datePickerModalTokens14.m4693getHeaderContainerHeightD9Ej5fM();
                FocusRequester focusRequester17 = focusRequester3;
                AnonymousClass6 anonymousClass19 = new AnonymousClass6(datePickerState, calendarModel14, datePickerFormatter3, datePickerColors4, focusRequester17);
                DatePickerFormatter datePickerFormatter17 = datePickerFormatter3;
                int i111117 = i13 >> 9;
                composer2 = composerStartRestartGroup;
                m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda14, datePickerColors4, value14, fM4693getHeaderContainerHeightD9Ej5fM14, ComposableLambdaKt.rememberComposableLambda(-1346903698, true, anonymousClass19, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i111117 & 112) | (i111117 & 896) | ((i13 << 3) & 57344));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                datePickerFormatter2 = datePickerFormatter17;
                focusRequester2 = focusRequester17;
                z4 = z6;
                modifier3 = modifier4;
                bm3Var4 = bm3Var6;
                datePickerColors3 = datePickerColors4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                datePickerFormatter2 = datePickerFormatter;
                focusRequester2 = focusRequester;
                modifier3 = modifier2;
                datePickerColors3 = datePickerColors2;
                bm3Var4 = bm3VarRememberComposableLambda;
                z4 = z2;
            }
            bm3Var5 = bm3Var3;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: y92
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DatePickerKt.DatePicker$lambda$3(datePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        bm3Var3 = bm3Var2;
        i8 = i2 & 64;
        if (i8 != 0) {
            if ((1572864 & i) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i3 |= i9;
            }
            i10 = i2 & 128;
            if (i10 != 0) {
                i3 |= 12582912;
            } else if ((i & 12582912) == 0) {
                if (composerStartRestartGroup.changed(focusRequester)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i3 |= i11;
            }
            if ((i3 & 4793491) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) != 0) {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                        i3 &= -897;
                    } else {
                        datePickerFormatter3 = datePickerFormatter;
                    }
                    if ((i2 & 8) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i3 &= -7169;
                    } else {
                        datePickerColorsColors = datePickerColors2;
                    }
                    if (i4 != 0) {
                        z5 = true;
                        bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                            public final void invoke(Composer composer3, int i111118) {
                                if (!composer3.shouldExecute((i111118 & 3) != 2, i111118 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1655706771, i111118, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                }
                                DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                        i12 = 54;
                    } else {
                        z5 = true;
                        i12 = 54;
                    }
                    if (i6 != 0) {
                        bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                            public final void invoke(Composer composer3, int i111118) {
                                if (!composer3.shouldExecute((i111118 & 3) != 2, i111118 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1439279037, i111118, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                }
                                DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, i12);
                    } else {
                        bm3VarRememberComposableLambda2 = bm3Var3;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if (i10 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new FocusRequester();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        int i111118 = i3;
                        focusRequester3 = (FocusRequester) objRememberedValue;
                        z6 = z2;
                        datePickerColors4 = datePickerColorsColors;
                        i13 = i111118;
                        bm3Var3 = bm3VarRememberComposableLambda2;
                        bm3Var6 = bm3VarRememberComposableLambda;
                        modifier4 = modifier2;
                    } else {
                        bm3Var3 = bm3VarRememberComposableLambda2;
                        bm3Var6 = bm3VarRememberComposableLambda;
                        z6 = z2;
                        datePickerColors4 = datePickerColorsColors;
                        modifier4 = modifier2;
                        i13 = i3;
                        focusRequester3 = focusRequester;
                    }
                } else {
                    if (i15 != 0) {
                        modifier2 = Modifier.Companion;
                    }
                    if ((i2 & 4) != 0) {
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                            objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                        i3 &= -897;
                    } else {
                        datePickerFormatter3 = datePickerFormatter;
                    }
                    if ((i2 & 8) != 0) {
                        datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        i3 &= -7169;
                    } else {
                        datePickerColorsColors = datePickerColors2;
                    }
                    if (i4 != 0) {
                        z5 = true;
                        bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                            public final void invoke(Composer composer3, int i111119) {
                                if (!composer3.shouldExecute((i111119 & 3) != 2, i111119 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1655706771, i111119, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                }
                                DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                        i12 = 54;
                    } else {
                        z5 = true;
                        i12 = 54;
                    }
                    if (i6 != 0) {
                        bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                            public final void invoke(Composer composer3, int i111119) {
                                if (!composer3.shouldExecute((i111119 & 3) != 2, i111119 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1439279037, i111119, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                                }
                                DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, i12);
                    } else {
                        bm3VarRememberComposableLambda2 = bm3Var3;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if (i10 != 0) {
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = new FocusRequester();
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        int i111119 = i3;
                        focusRequester3 = (FocusRequester) objRememberedValue;
                        z6 = z2;
                        datePickerColors4 = datePickerColorsColors;
                        i13 = i111119;
                        bm3Var3 = bm3VarRememberComposableLambda2;
                        bm3Var6 = bm3VarRememberComposableLambda;
                        modifier4 = modifier2;
                    } else {
                        bm3Var3 = bm3VarRememberComposableLambda2;
                        bm3Var6 = bm3VarRememberComposableLambda;
                        z6 = z2;
                        datePickerColors4 = datePickerColorsColors;
                        modifier4 = modifier2;
                        i13 = i3;
                        focusRequester3 = focusRequester;
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1105472031, i13, -1, "androidx.compose.material3.DatePicker (DatePicker.kt:190)");
                }
                zChanged = composerStartRestartGroup.changed(datePickerState.getLocale());
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    if (datePickerState instanceof BaseDatePickerStateImpl) {
                        calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                    } else {
                        calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                    }
                    objRememberedValue3 = calendarModelCreateCalendarModel;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    if (datePickerState instanceof BaseDatePickerStateImpl) {
                        calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                    } else {
                        calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                    }
                    objRememberedValue3 = calendarModelCreateCalendarModel;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                CalendarModel calendarModel15 = (CalendarModel) objRememberedValue3;
                if (z6) {
                    composerStartRestartGroup.startReplaceGroup(-690551113);
                    composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1483431603, true, new AnonymousClass5(datePickerState, datePickerColors4), composerStartRestartGroup, 54);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-690163489);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambdaRememberComposableLambda = null;
                }
                ComposableLambda composableLambda15 = composableLambdaRememberComposableLambda;
                DatePickerModalTokens datePickerModalTokens15 = DatePickerModalTokens.INSTANCE;
                TextStyle value15 = TypographyKt.getValue(datePickerModalTokens15.getHeaderHeadlineFont(), composerStartRestartGroup, 6);
                float fM4693getHeaderContainerHeightD9Ej5fM15 = datePickerModalTokens15.m4693getHeaderContainerHeightD9Ej5fM();
                FocusRequester focusRequester18 = focusRequester3;
                AnonymousClass6 anonymousClass110 = new AnonymousClass6(datePickerState, calendarModel15, datePickerFormatter3, datePickerColors4, focusRequester18);
                DatePickerFormatter datePickerFormatter18 = datePickerFormatter3;
                int i1111110 = i13 >> 9;
                composer2 = composerStartRestartGroup;
                m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda15, datePickerColors4, value15, fM4693getHeaderContainerHeightD9Ej5fM15, ComposableLambdaKt.rememberComposableLambda(-1346903698, true, anonymousClass110, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i1111110 & 112) | (i1111110 & 896) | ((i13 << 3) & 57344));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                datePickerFormatter2 = datePickerFormatter18;
                focusRequester2 = focusRequester18;
                z4 = z6;
                modifier3 = modifier4;
                bm3Var4 = bm3Var6;
                datePickerColors3 = datePickerColors4;
            } else {
                composer2 = composerStartRestartGroup;
                composer2.skipToGroupEnd();
                datePickerFormatter2 = datePickerFormatter;
                focusRequester2 = focusRequester;
                modifier3 = modifier2;
                datePickerColors3 = datePickerColors2;
                bm3Var4 = bm3VarRememberComposableLambda;
                z4 = z2;
            }
            bm3Var5 = bm3Var3;
            scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: y92
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DatePickerKt.DatePicker$lambda$3(datePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 1572864;
        z2 = z;
        i10 = i2 & 128;
        if (i10 != 0) {
            i3 |= 12582912;
        } else if ((i & 12582912) == 0) {
            if (composerStartRestartGroup.changed(focusRequester)) {
                i11 = 8388608;
            } else {
                i11 = 4194304;
            }
            i3 |= i11;
        }
        if ((i3 & 4793491) != 4793490) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i & 1) != 0) {
                if (i15 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i2 & 4) != 0) {
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                        objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                    i3 &= -897;
                } else {
                    datePickerFormatter3 = datePickerFormatter;
                }
                if ((i2 & 8) != 0) {
                    datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    i3 &= -7169;
                } else {
                    datePickerColorsColors = datePickerColors2;
                }
                if (i4 != 0) {
                    z5 = true;
                    bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                        public final void invoke(Composer composer3, int i1111111) {
                            if (!composer3.shouldExecute((i1111111 & 3) != 2, i1111111 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1655706771, i1111111, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                            }
                            DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                    i12 = 54;
                } else {
                    z5 = true;
                    i12 = 54;
                }
                if (i6 != 0) {
                    bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                        public final void invoke(Composer composer3, int i1111111) {
                            if (!composer3.shouldExecute((i1111111 & 3) != 2, i1111111 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1439279037, i1111111, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                            }
                            DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, i12);
                } else {
                    bm3VarRememberComposableLambda2 = bm3Var3;
                }
                if (i8 != 0) {
                    z2 = true;
                }
                if (i10 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new FocusRequester();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    int i1111111 = i3;
                    focusRequester3 = (FocusRequester) objRememberedValue;
                    z6 = z2;
                    datePickerColors4 = datePickerColorsColors;
                    i13 = i1111111;
                    bm3Var3 = bm3VarRememberComposableLambda2;
                    bm3Var6 = bm3VarRememberComposableLambda;
                    modifier4 = modifier2;
                } else {
                    bm3Var3 = bm3VarRememberComposableLambda2;
                    bm3Var6 = bm3VarRememberComposableLambda;
                    z6 = z2;
                    datePickerColors4 = datePickerColorsColors;
                    modifier4 = modifier2;
                    i13 = i3;
                    focusRequester3 = focusRequester;
                }
            } else {
                if (i15 != 0) {
                    modifier2 = Modifier.Companion;
                }
                if ((i2 & 4) != 0) {
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                        objRememberedValue2 = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    datePickerFormatter3 = (DatePickerFormatter) objRememberedValue2;
                    i3 &= -897;
                } else {
                    datePickerFormatter3 = datePickerFormatter;
                }
                if ((i2 & 8) != 0) {
                    datePickerColorsColors = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                    i3 &= -7169;
                } else {
                    datePickerColorsColors = datePickerColors2;
                }
                if (i4 != 0) {
                    z5 = true;
                    bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1655706771, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                        public final void invoke(Composer composer3, int i1111112) {
                            if (!composer3.shouldExecute((i1111112 & 3) != 2, i1111112 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1655706771, i1111112, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                            }
                            DatePickerDefaults.INSTANCE.m3356DatePickerTitleFNtVw6o(datePickerState.mo3369getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                    i12 = 54;
                } else {
                    z5 = true;
                    i12 = 54;
                }
                if (i6 != 0) {
                    bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1439279037, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
                        public final void invoke(Composer composer3, int i1111112) {
                            if (!composer3.shouldExecute((i1111112 & 3) != 2, i1111112 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1439279037, i1111112, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:180)");
                            }
                            DatePickerDefaults.INSTANCE.m3355DatePickerHeadlineISIPfiY(datePickerState.getSelectedDateMillis(), datePickerState.mo3369getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DatePickerKt.DatePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 199680, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, i12);
                } else {
                    bm3VarRememberComposableLambda2 = bm3Var3;
                }
                if (i8 != 0) {
                    z2 = true;
                }
                if (i10 != 0) {
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = new FocusRequester();
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                    }
                    int i1111112 = i3;
                    focusRequester3 = (FocusRequester) objRememberedValue;
                    z6 = z2;
                    datePickerColors4 = datePickerColorsColors;
                    i13 = i1111112;
                    bm3Var3 = bm3VarRememberComposableLambda2;
                    bm3Var6 = bm3VarRememberComposableLambda;
                    modifier4 = modifier2;
                } else {
                    bm3Var3 = bm3VarRememberComposableLambda2;
                    bm3Var6 = bm3VarRememberComposableLambda;
                    z6 = z2;
                    datePickerColors4 = datePickerColorsColors;
                    modifier4 = modifier2;
                    i13 = i3;
                    focusRequester3 = focusRequester;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1105472031, i13, -1, "androidx.compose.material3.DatePicker (DatePicker.kt:190)");
            }
            zChanged = composerStartRestartGroup.changed(datePickerState.getLocale());
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                if (datePickerState instanceof BaseDatePickerStateImpl) {
                    calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                } else {
                    calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                }
                objRememberedValue3 = calendarModelCreateCalendarModel;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                if (datePickerState instanceof BaseDatePickerStateImpl) {
                    calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) datePickerState).getCalendarModel();
                } else {
                    calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(datePickerState.getLocale());
                }
                objRememberedValue3 = calendarModelCreateCalendarModel;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            CalendarModel calendarModel16 = (CalendarModel) objRememberedValue3;
            if (z6) {
                composerStartRestartGroup.startReplaceGroup(-690551113);
                composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1483431603, true, new AnonymousClass5(datePickerState, datePickerColors4), composerStartRestartGroup, 54);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-690163489);
                composerStartRestartGroup.endReplaceGroup();
                composableLambdaRememberComposableLambda = null;
            }
            ComposableLambda composableLambda16 = composableLambdaRememberComposableLambda;
            DatePickerModalTokens datePickerModalTokens16 = DatePickerModalTokens.INSTANCE;
            TextStyle value16 = TypographyKt.getValue(datePickerModalTokens16.getHeaderHeadlineFont(), composerStartRestartGroup, 6);
            float fM4693getHeaderContainerHeightD9Ej5fM16 = datePickerModalTokens16.m4693getHeaderContainerHeightD9Ej5fM();
            FocusRequester focusRequester19 = focusRequester3;
            AnonymousClass6 anonymousClass111 = new AnonymousClass6(datePickerState, calendarModel16, datePickerFormatter3, datePickerColors4, focusRequester19);
            DatePickerFormatter datePickerFormatter19 = datePickerFormatter3;
            int i1111113 = i13 >> 9;
            composer2 = composerStartRestartGroup;
            m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda16, datePickerColors4, value16, fM4693getHeaderContainerHeightD9Ej5fM16, ComposableLambdaKt.rememberComposableLambda(-1346903698, true, anonymousClass111, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i1111113 & 112) | (i1111113 & 896) | ((i13 << 3) & 57344));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            datePickerFormatter2 = datePickerFormatter19;
            focusRequester2 = focusRequester19;
            z4 = z6;
            modifier3 = modifier4;
            bm3Var4 = bm3Var6;
            datePickerColors3 = datePickerColors4;
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
            datePickerFormatter2 = datePickerFormatter;
            focusRequester2 = focusRequester;
            modifier3 = modifier2;
            datePickerColors3 = datePickerColors2;
            bm3Var4 = bm3VarRememberComposableLambda;
            z4 = z2;
        }
        bm3Var5 = bm3Var3;
        scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: y92
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DatePickerKt.DatePicker$lambda$3(datePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DatePicker$lambda$3(DatePickerState datePickerState, Modifier modifier, DatePickerFormatter datePickerFormatter, DatePickerColors datePickerColors, bm3 bm3Var, bm3 bm3Var2, boolean z, FocusRequester focusRequester, int i, int i2, Composer composer, int i3) {
        DatePicker(datePickerState, modifier, datePickerFormatter, datePickerColors, bm3Var, bm3Var2, z, focusRequester, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void DatePickerContent(final Long l, final long j, final nl3<? super Long, j59> nl3Var, final nl3<? super Long, j59> nl3Var2, final CalendarModel calendarModel, final y74 y74Var, final DatePickerFormatter datePickerFormatter, final SelectableDates selectableDates, final DatePickerColors datePickerColors, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-434467002);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(l) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(j) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(nl3Var) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(nl3Var2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(calendarModel) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(y74Var) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= (2097152 & i) == 0 ? composerStartRestartGroup.changed(datePickerFormatter) : composerStartRestartGroup.changedInstance(datePickerFormatter) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(selectableDates) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(datePickerColors) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if (composerStartRestartGroup.shouldExecute((38347923 & i2) != 38347922, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-434467002, i2, -1, "androidx.compose.material3.DatePickerContent (DatePicker.kt:1537)");
            }
            CalendarMonth month = calendarModel.getMonth(j);
            int iIndexIn = month.indexIn(y74Var);
            if (iIndexIn < 0) {
                iIndexIn = 0;
            }
            final LazyListState lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(iIndexIn, 0, composerStartRestartGroup, 0, 2);
            Integer numValueOf = Integer.valueOf(iIndexIn);
            boolean zChanged = composerStartRestartGroup.changed(lazyListStateRememberLazyListState) | composerStartRestartGroup.changed(iIndexIn);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new DatePickerKt$DatePickerContent$1$1(lazyListStateRememberLazyListState, iIndexIn, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            EffectsKt.LaunchedEffect(numValueOf, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue, composerStartRestartGroup, 0);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(gx2.b, composerStartRestartGroup);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            final y22 y22Var = (y22) objRememberedValue2;
            Object[] objArr = new Object[0];
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue3 == companion.getEmpty()) {
                objRememberedValue3 = new c80(1);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            MutableState mutableState = (MutableState) RememberSaveableKt.rememberSaveable(objArr, (ll3) objRememberedValue3, composerStartRestartGroup, 48);
            Modifier.Companion companion2 = Modifier.Companion;
            Arrangement arrangement = Arrangement.INSTANCE;
            Arrangement.Vertical top = arrangement.getTop();
            Alignment.Companion companion3 = Alignment.Companion;
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(top, companion3.getStart(), composerStartRestartGroup, 0);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion2);
            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
            int i3 = i2;
            ll3<ComposeUiNode> constructor = companion4.getConstructor();
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
            bm3 bm3VarB = cc.b(companion4, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion4.getSetModifier());
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            float f = DatePickerHorizontalPadding;
            Modifier modifierM2035paddingVpY3zN4$default = PaddingKt.m2035paddingVpY3zN4$default(companion2, f, 0.0f, 2, null);
            boolean canScrollForward = lazyListStateRememberLazyListState.getCanScrollForward();
            boolean canScrollBackward = lazyListStateRememberLazyListState.getCanScrollBackward();
            boolean zDatePickerContent$lambda$26 = DatePickerContent$lambda$26(mutableState);
            String monthYear = datePickerFormatter.formatMonthYear(Long.valueOf(j), calendarModel.getLocale());
            if (monthYear == null) {
                monthYear = "-";
            }
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changed(lazyListStateRememberLazyListState);
            String str = monthYear;
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue4 == companion.getEmpty()) {
                objRememberedValue4 = new oa2(0, y22Var, lazyListStateRememberLazyListState);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            }
            ll3 ll3Var = (ll3) objRememberedValue4;
            boolean zChangedInstance2 = composerStartRestartGroup.changedInstance(y22Var) | composerStartRestartGroup.changed(lazyListStateRememberLazyListState);
            Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance2 || objRememberedValue5 == companion.getEmpty()) {
                objRememberedValue5 = new ll3() { // from class: qa2
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return DatePickerKt.DatePickerContent$lambda$36$lambda$31$lambda$30(y22Var, lazyListStateRememberLazyListState);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
            }
            ll3 ll3Var2 = (ll3) objRememberedValue5;
            boolean zChanged2 = composerStartRestartGroup.changed(mutableState);
            Object objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (zChanged2 || objRememberedValue6 == companion.getEmpty()) {
                objRememberedValue6 = new b11(mutableState, 2);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue6);
            }
            ll3 ll3Var3 = (ll3) objRememberedValue6;
            int i4 = i3 & 234881024;
            MonthsNavigation(modifierM2035paddingVpY3zN4$default, canScrollForward, canScrollBackward, zDatePickerContent$lambda$26, str, ll3Var, ll3Var2, ll3Var3, datePickerColors, composerStartRestartGroup, i4 | 6);
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, companion2);
            ll3<ComposeUiNode> constructor2 = companion4.getConstructor();
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
            bm3 bm3VarB2 = cc.b(companion4, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
            if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
            }
            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion4.getSetModifier());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            Modifier modifierM2035paddingVpY3zN4$default2 = PaddingKt.m2035paddingVpY3zN4$default(companion2, f, 0.0f, 2, null);
            MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement.getTop(), companion3.getStart(), composerStartRestartGroup, 0);
            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2035paddingVpY3zN4$default2);
            ll3<ComposeUiNode> constructor3 = companion4.getConstructor();
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
            bm3 bm3VarB3 = cc.b(companion4, composerM5355constructorimpl3, measurePolicyColumnMeasurePolicy2, composerM5355constructorimpl3, currentCompositionLocalMap3);
            if (composerM5355constructorimpl3.getInserting() || !aa4.e(composerM5355constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                dc.b(bm3VarB3, currentCompositeKeyHash3, composerM5355constructorimpl3, currentCompositeKeyHash3);
            }
            Updater.m5363setimpl(composerM5355constructorimpl3, modifierMaterializeModifier3, companion4.getSetModifier());
            WeekDays(datePickerColors, calendarModel, composerStartRestartGroup, ((i3 >> 24) & 14) | ((i3 >> 9) & 112));
            HorizontalMonthsList(lazyListStateRememberLazyListState, l, nl3Var, nl3Var2, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, composerStartRestartGroup, ((i3 << 3) & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | (458752 & i3) | (3670016 & i3) | (i3 & 29360128) | i4);
            composerStartRestartGroup.endNode();
            MotionSchemeKeyTokens motionSchemeKeyTokens = MotionSchemeKeyTokens.DefaultEffects;
            FiniteAnimationSpec finiteAnimationSpecValue = MotionSchemeKt.value(motionSchemeKeyTokens, composerStartRestartGroup, 6);
            FiniteAnimationSpec finiteAnimationSpecValue2 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
            FiniteAnimationSpec finiteAnimationSpecValue3 = MotionSchemeKt.value(motionSchemeKeyTokens, composerStartRestartGroup, 6);
            AnimatedVisibilityKt.AnimatedVisibility(DatePickerContent$lambda$26(mutableState), ClipKt.clipToBounds(companion2), EnterExitTransitionKt.expandVertically$default(finiteAnimationSpecValue3, null, false, null, 14, null).plus(EnterExitTransitionKt.fadeIn(finiteAnimationSpecValue, 0.6f)), EnterExitTransitionKt.shrinkVertically$default(finiteAnimationSpecValue3, null, false, null, 14, null).plus(EnterExitTransitionKt.fadeOut$default(finiteAnimationSpecValue2, 0.0f, 2, null)), (String) null, ComposableLambdaKt.rememberComposableLambda(1193716082, true, new DatePickerKt$DatePickerContent$2$4$2(j, mutableState, y22Var, lazyListStateRememberLazyListState, y74Var, month, selectableDates, calendarModel, datePickerColors), composerStartRestartGroup, 54), composerStartRestartGroup, 196656, 16);
            composerStartRestartGroup = composerStartRestartGroup;
            composerStartRestartGroup.endNode();
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ra2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DatePickerKt.DatePickerContent$lambda$37(l, j, nl3Var, nl3Var2, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableState DatePickerContent$lambda$25$lambda$24() {
        return SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean DatePickerContent$lambda$26(MutableState<Boolean> mutableState) {
        return mutableState.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void DatePickerContent$lambda$27(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DatePickerContent$lambda$36$lambda$29$lambda$28(y22 y22Var, LazyListState lazyListState) {
        av0.c(y22Var, null, null, new DatePickerKt$DatePickerContent$2$1$1$1(lazyListState, null), 3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DatePickerContent$lambda$36$lambda$31$lambda$30(y22 y22Var, LazyListState lazyListState) {
        av0.c(y22Var, null, null, new DatePickerKt$DatePickerContent$2$2$1$1(lazyListState, null), 3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DatePickerContent$lambda$36$lambda$33$lambda$32(MutableState mutableState) {
        DatePickerContent$lambda$27(mutableState, !DatePickerContent$lambda$26(mutableState));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DatePickerContent$lambda$37(Long l, long j, nl3 nl3Var, nl3 nl3Var2, CalendarModel calendarModel, y74 y74Var, DatePickerFormatter datePickerFormatter, SelectableDates selectableDates, DatePickerColors datePickerColors, int i, Composer composer, int i2) {
        DatePickerContent(l, j, nl3Var, nl3Var2, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:74:0x011a  */
    /* JADX WARN: Code duplicated, block: B:75:0x0147  */
    /* JADX WARN: Code duplicated, block: B:78:0x016f  */
    /* JADX INFO: renamed from: DatePickerHeader-pc5RIQQ, reason: not valid java name */
    public static final void m3361DatePickerHeaderpc5RIQQ(final Modifier modifier, final bm3<? super Composer, ? super Integer, j59> bm3Var, final long j, final long j2, final float f, final bm3<? super Composer, ? super Integer, j59> bm3Var2, Composer composer, final int i) {
        int i2;
        int i3;
        Composer composerStartRestartGroup = composer.startRestartGroup(2020490761);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(j) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(j2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changed(f) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var2) ? 131072 : 65536;
        }
        if (composerStartRestartGroup.shouldExecute((74899 & i2) != 74898, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2020490761, i2, -1, "androidx.compose.material3.DatePickerHeader (DatePicker.kt:1677)");
            }
            Modifier modifierThen = SizeKt.fillMaxWidth$default(modifier, 0.0f, 1, null).then(bm3Var != null ? SizeKt.m2084defaultMinSizeVpY3zN4$default(Modifier.Companion, 0.0f, f, 1, null) : Modifier.Companion);
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getSpaceBetween(), Alignment.Companion.getStart(), composerStartRestartGroup, 6);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen);
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
            bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting()) {
                i3 = i2;
            } else {
                i3 = i2;
                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                if (bm3Var != null) {
                    composerStartRestartGroup.startReplaceGroup(396894187);
                    ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(j, TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getHeaderSupportingTextFont(), composerStartRestartGroup, 6), ComposableLambdaKt.rememberComposableLambda(1344395458, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerHeader$1$1
                        public final void invoke(Composer composer2, int i4) {
                            if (!composer2.shouldExecute((i4 & 3) != 2, i4 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1344395458, i4, -1, "androidx.compose.material3.DatePickerHeader.<anonymous>.<anonymous> (DatePicker.kt:1692)");
                            }
                            Alignment bottomStart = Alignment.Companion.getBottomStart();
                            bm3<Composer, Integer, j59> bm3Var3 = bm3Var;
                            Modifier.Companion companion2 = Modifier.Companion;
                            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(bottomStart, false);
                            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                            CompositionLocalMap currentCompositionLocalMap2 = composer2.getCurrentCompositionLocalMap();
                            Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer2, companion2);
                            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                            ll3<ComposeUiNode> constructor2 = companion3.getConstructor();
                            if (composer2.getApplier() == null) {
                                ComposablesKt.invalidApplier();
                            }
                            composer2.startReusableNode();
                            if (composer2.getInserting()) {
                                composer2.createNode(constructor2);
                            } else {
                                composer2.useNode();
                            }
                            Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer2);
                            bm3 bm3VarB2 = cc.b(companion3, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                            if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                            }
                            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion3.getSetModifier());
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                            if (cc.f(bm3Var3, composer2, 0)) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i3 >> 6) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(397163267);
                    composerStartRestartGroup.endReplaceGroup();
                }
                CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(j2)), bm3Var2, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
            ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
            if (bm3Var != null) {
                composerStartRestartGroup.startReplaceGroup(396894187);
                ProvideContentColorTextStyleKt.m4380ProvideContentColorTextStyle3JVO9M(j, TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getHeaderSupportingTextFont(), composerStartRestartGroup, 6), ComposableLambdaKt.rememberComposableLambda(1344395458, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerHeader$1$1
                    public final void invoke(Composer composer2, int i4) {
                        if (!composer2.shouldExecute((i4 & 3) != 2, i4 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1344395458, i4, -1, "androidx.compose.material3.DatePickerHeader.<anonymous>.<anonymous> (DatePicker.kt:1692)");
                        }
                        Alignment bottomStart = Alignment.Companion.getBottomStart();
                        bm3<Composer, Integer, j59> bm3Var3 = bm3Var;
                        Modifier.Companion companion2 = Modifier.Companion;
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(bottomStart, false);
                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap2 = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer2, companion2);
                        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                        ll3<ComposeUiNode> constructor2 = companion3.getConstructor();
                        if (composer2.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composer2.startReusableNode();
                        if (composer2.getInserting()) {
                            composer2.createNode(constructor2);
                        } else {
                            composer2.useNode();
                        }
                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer2);
                        bm3 bm3VarB2 = cc.b(companion3, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                        if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion3.getSetModifier());
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        if (cc.f(bm3Var3, composer2, 0)) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, ((i3 >> 6) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(397163267);
                composerStartRestartGroup.endReplaceGroup();
            }
            CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(j2)), bm3Var2, composerStartRestartGroup, ProvidedValue.$stable | ((i3 >> 12) & 112));
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: aa2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DatePickerKt.DatePickerHeader_pc5RIQQ$lambda$39(modifier, bm3Var, j, j2, f, bm3Var2, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DatePickerHeader_pc5RIQQ$lambda$39(Modifier modifier, bm3 bm3Var, long j, long j2, float f, bm3 bm3Var2, int i, Composer composer, int i2) {
        m3361DatePickerHeaderpc5RIQQ(modifier, bm3Var, j, j2, f, bm3Var2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: renamed from: DatePickerState-sHin3Bw, reason: not valid java name */
    public static final DatePickerState m3362DatePickerStatesHin3Bw(Locale locale, Long l, Long l2, y74 y74Var, int i, SelectableDates selectableDates) {
        return new DatePickerStateImpl(l, l2, y74Var, i, selectableDates, locale, null);
    }

    /* JADX INFO: renamed from: DatePickerState-sHin3Bw$default, reason: not valid java name */
    public static /* synthetic */ DatePickerState m3363DatePickerStatesHin3Bw$default(Locale locale, Long l, Long l2, y74 y74Var, int i, SelectableDates selectableDates, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            l = null;
        }
        if ((i2 & 4) != 0) {
            l2 = l;
        }
        if ((i2 & 8) != 0) {
            y74Var = DatePickerDefaults.INSTANCE.getYearRange();
        }
        if ((i2 & 16) != 0) {
            i = DisplayMode.Companion.m3409getPickerjFl4v0();
        }
        if ((i2 & 32) != 0) {
            selectableDates = DatePickerDefaults.INSTANCE.getAllDates();
        }
        SelectableDates selectableDates2 = selectableDates;
        y74 y74Var2 = y74Var;
        return m3362DatePickerStatesHin3Bw(locale, l, l2, y74Var2, i, selectableDates2);
    }

    private static final void Day(final String str, final Modifier modifier, final boolean z, final ll3<j59> ll3Var, final boolean z2, final boolean z3, final boolean z4, final boolean z5, final String str2, final DatePickerColors datePickerColors, Composer composer, final int i) {
        int i2;
        boolean z6;
        boolean z7;
        boolean z8;
        DatePickerColors datePickerColors2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-945355136);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(modifier) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(ll3Var) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            z6 = z2;
            i2 |= composerStartRestartGroup.changed(z6) ? 16384 : 8192;
        } else {
            z6 = z2;
        }
        if ((196608 & i) == 0) {
            z7 = z3;
            i2 |= composerStartRestartGroup.changed(z7) ? 131072 : 65536;
        } else {
            z7 = z3;
        }
        if ((1572864 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(z4) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            z8 = z5;
            i2 |= composerStartRestartGroup.changed(z8) ? 8388608 : 4194304;
        } else {
            z8 = z5;
        }
        if ((100663296 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(str2) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if ((805306368 & i) == 0) {
            datePickerColors2 = datePickerColors;
            i2 |= composerStartRestartGroup.changed(datePickerColors2) ? 536870912 : 268435456;
        } else {
            datePickerColors2 = datePickerColors;
        }
        if (composerStartRestartGroup.shouldExecute((306783379 & i2) != 306783378, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-945355136, i2, -1, "androidx.compose.material3.Day (DatePicker.kt:2003)");
            }
            boolean z9 = (234881024 & i2) == 67108864;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z9 || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new ca2(str2, 0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierSemantics = SemanticsModifierKt.semantics(modifier, true, (nl3) objRememberedValue);
            DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
            int i3 = i2 >> 6;
            SurfaceKt.m3943Surfaced85dljk(z, ll3Var, modifierSemantics, z3, ShapesKt.getValue(datePickerModalTokens.getDateContainerShape(), composerStartRestartGroup, 6), datePickerColors2.dayContainerColor$material3(z, z7, z6, composerStartRestartGroup, (i3 & 14) | ((i2 >> 12) & 112) | (i3 & 896) | ((i2 >> 18) & 7168)).getValue().m6242unboximpl(), 0L, 0.0f, 0.0f, (!z4 || z) ? null : BorderStrokeKt.m1315BorderStrokecXLIe8U(datePickerModalTokens.m4692getDateTodayContainerOutlineWidthD9Ej5fM(), datePickerColors.m3352getTodayDateBorderColor0d7_KjU()), (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(1126347158, true, new C05822(str, datePickerColors, z4, z, z8, z3), composerStartRestartGroup, 54), composerStartRestartGroup, i3 & 7294, 48, 1472);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: da2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DatePickerKt.Day$lambda$62(str, modifier, z, ll3Var, z2, z3, z4, z5, str2, datePickerColors, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 Day$lambda$61$lambda$60(String str, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setText(semanticsPropertyReceiver, new AnnotatedString(str, null, 2, 0 == true ? 1 : 0));
        SemanticsPropertiesKt.m8280setRolekuIjeqM(semanticsPropertyReceiver, Role.Companion.m8261getButtono7Vup1c());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Day$lambda$62(String str, Modifier modifier, boolean z, ll3 ll3Var, boolean z2, boolean z3, boolean z4, boolean z5, String str2, DatePickerColors datePickerColors, int i, Composer composer, int i2) {
        Day(str, modifier, z, ll3Var, z2, z3, z4, z5, str2, datePickerColors, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: renamed from: DisplayModeToggleButton-iUJLfQg, reason: not valid java name */
    public static final void m3364DisplayModeToggleButtoniUJLfQg(final Modifier modifier, final int i, final nl3<? super DisplayMode, j59> nl3Var, final DatePickerColors datePickerColors, Composer composer, final int i2) {
        int i3;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1461252485);
        if ((i2 & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(i) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(nl3Var) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= composerStartRestartGroup.changed(datePickerColors) ? 2048 : 1024;
        }
        if (composerStartRestartGroup.shouldExecute((i3 & 1171) != 1170, i3 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1461252485, i3, -1, "androidx.compose.material3.DisplayModeToggleButton (DatePicker.kt:1406)");
            }
            CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(datePickerColors.m3343getHeadlineContentColor0d7_KjU())), ComposableLambdaKt.rememberComposableLambda(-1734512197, true, new DatePickerKt$DisplayModeToggleButton$1(i, nl3Var, modifier), composerStartRestartGroup, 54), composerStartRestartGroup, ProvidedValue.$stable | 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: na2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DatePickerKt.DisplayModeToggleButton_iUJLfQg$lambda$11(modifier, i, nl3Var, datePickerColors, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DisplayModeToggleButton_iUJLfQg$lambda$11(Modifier modifier, int i, nl3 nl3Var, DatePickerColors datePickerColors, int i2, Composer composer, int i3) {
        m3364DisplayModeToggleButtoniUJLfQg(modifier, i, nl3Var, datePickerColors, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1));
        return j59.a;
    }

    private static final void HorizontalMonthsList(LazyListState lazyListState, final Long l, final nl3<? super Long, j59> nl3Var, final nl3<? super Long, j59> nl3Var2, final CalendarModel calendarModel, final y74 y74Var, final DatePickerFormatter datePickerFormatter, final SelectableDates selectableDates, final DatePickerColors datePickerColors, Composer composer, final int i) {
        int i2;
        Long l2;
        nl3<? super Long, j59> nl3Var3;
        SelectableDates selectableDates2;
        DatePickerColors datePickerColors2;
        Object datePickerKt$HorizontalMonthsList$2$1;
        final LazyListState lazyListState2 = lazyListState;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1994757941);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(lazyListState2) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            l2 = l;
            i2 |= composerStartRestartGroup.changed(l2) ? 32 : 16;
        } else {
            l2 = l;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            nl3Var3 = nl3Var;
            i2 |= composerStartRestartGroup.changedInstance(nl3Var3) ? 256 : 128;
        } else {
            nl3Var3 = nl3Var;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(nl3Var2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(calendarModel) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(y74Var) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= (2097152 & i) == 0 ? composerStartRestartGroup.changed(datePickerFormatter) : composerStartRestartGroup.changedInstance(datePickerFormatter) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            selectableDates2 = selectableDates;
            i2 |= composerStartRestartGroup.changed(selectableDates2) ? 8388608 : 4194304;
        } else {
            selectableDates2 = selectableDates;
        }
        if ((100663296 & i) == 0) {
            datePickerColors2 = datePickerColors;
            i2 |= composerStartRestartGroup.changed(datePickerColors2) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        } else {
            datePickerColors2 = datePickerColors;
        }
        if (composerStartRestartGroup.shouldExecute((38347923 & i2) != 38347922, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1994757941, i2, -1, "androidx.compose.material3.HorizontalMonthsList (DatePicker.kt:1711)");
            }
            CalendarDate today = calendarModel.getToday();
            boolean zChanged = composerStartRestartGroup.changed(y74Var);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = calendarModel.getMonth(y74Var.b, 1);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            int i3 = i2;
            TextKt.ProvideTextStyle(TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getDateLabelTextFont(), composerStartRestartGroup, 6), ComposableLambdaKt.rememberComposableLambda(1504086906, true, new AnonymousClass1(lazyListState2, y74Var, calendarModel, (CalendarMonth) objRememberedValue, nl3Var3, today, l2, datePickerFormatter, selectableDates2, datePickerColors2), composerStartRestartGroup, 54), composerStartRestartGroup, 48);
            int i4 = i3 & 14;
            boolean zChangedInstance = (i4 == 4) | ((i3 & 7168) == 2048) | composerStartRestartGroup.changedInstance(calendarModel) | composerStartRestartGroup.changedInstance(y74Var);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue2 == Composer.Companion.getEmpty()) {
                lazyListState2 = lazyListState;
                datePickerKt$HorizontalMonthsList$2$1 = new DatePickerKt$HorizontalMonthsList$2$1(lazyListState2, nl3Var2, calendarModel, y74Var, null);
                composerStartRestartGroup.updateRememberedValue(datePickerKt$HorizontalMonthsList$2$1);
            } else {
                datePickerKt$HorizontalMonthsList$2$1 = objRememberedValue2;
                lazyListState2 = lazyListState;
            }
            EffectsKt.LaunchedEffect(lazyListState2, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) datePickerKt$HorizontalMonthsList$2$1, composerStartRestartGroup, i4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: la2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DatePickerKt.HorizontalMonthsList$lambda$42(lazyListState2, l, nl3Var, nl3Var2, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 HorizontalMonthsList$lambda$42(LazyListState lazyListState, Long l, nl3 nl3Var, nl3 nl3Var2, CalendarModel calendarModel, y74 y74Var, DatePickerFormatter datePickerFormatter, SelectableDates selectableDates, DatePickerColors datePickerColors, int i, Composer composer, int i2) {
        HorizontalMonthsList(lazyListState, l, nl3Var, nl3Var2, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:26:0x004a  */
    /* JADX WARN: Code duplicated, block: B:27:0x004d  */
    /* JADX WARN: Code duplicated, block: B:29:0x0051  */
    /* JADX WARN: Code duplicated, block: B:31:0x0057  */
    /* JADX WARN: Code duplicated, block: B:32:0x005a  */
    /* JADX WARN: Code duplicated, block: B:36:0x0061  */
    /* JADX WARN: Code duplicated, block: B:38:0x0066  */
    /* JADX WARN: Code duplicated, block: B:40:0x006a  */
    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:43:0x0075  */
    /* JADX WARN: Code duplicated, block: B:47:0x007c  */
    /* JADX WARN: Code duplicated, block: B:49:0x0081  */
    /* JADX WARN: Code duplicated, block: B:51:0x0085  */
    /* JADX WARN: Code duplicated, block: B:53:0x008d  */
    /* JADX WARN: Code duplicated, block: B:54:0x0090  */
    /* JADX WARN: Code duplicated, block: B:58:0x009a  */
    /* JADX WARN: Code duplicated, block: B:59:0x009c  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:63:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:67:0x00af  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:73:0x0110  */
    /* JADX WARN: Code duplicated, block: B:75:0x0116  */
    /* JADX WARN: Code duplicated, block: B:78:0x0121  */
    /* JADX WARN: Code duplicated, block: B:80:? A[RETURN, SYNTHETIC] */
    public static final void IconButtonWithTooltip(final ll3<j59> ll3Var, final ImageVector imageVector, final String str, Modifier modifier, boolean z, Composer composer, final int i, final int i2) {
        final ll3<j59> ll3Var2;
        int i3;
        final ImageVector imageVector2;
        int i4;
        int i5;
        Modifier modifier2;
        int i6;
        int i7;
        boolean z2;
        int i8;
        boolean z3;
        final Modifier modifier3;
        final boolean z4;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        boolean z5;
        Composer composerStartRestartGroup = composer.startRestartGroup(-368059805);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
            ll3Var2 = ll3Var;
        } else if ((i & 6) == 0) {
            ll3Var2 = ll3Var;
            i3 = (composerStartRestartGroup.changedInstance(ll3Var2) ? 4 : 2) | i;
        } else {
            ll3Var2 = ll3Var;
            i3 = i;
        }
        if ((i2 & 2) == 0) {
            if ((i & 48) == 0) {
                imageVector2 = imageVector;
                i3 |= composerStartRestartGroup.changed(imageVector2) ? 32 : 16;
            }
            if ((i2 & 4) != 0) {
                i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            } else if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if (composerStartRestartGroup.changed(str)) {
                    i4 = 256;
                } else {
                    i4 = 128;
                }
                i3 |= i4;
            }
            i5 = i2 & 8;
            if (i5 != 0) {
                if ((i & 3072) == 0) {
                    modifier2 = modifier;
                    if (composerStartRestartGroup.changed(modifier2)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i3 |= i6;
                }
                i7 = i2 & 16;
                if (i7 != 0) {
                    if ((i & 24576) == 0) {
                        z2 = z;
                        if (composerStartRestartGroup.changed(z2)) {
                            i8 = 16384;
                        } else {
                            i8 = 8192;
                        }
                        i3 |= i8;
                    }
                    if ((i3 & 9363) != 9362) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                        if (i5 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i7 != 0) {
                            z5 = true;
                        } else {
                            z5 = z2;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-368059805, i3, -1, "androidx.compose.material3.IconButtonWithTooltip (DatePicker.kt:2279)");
                        }
                        final Modifier modifier5 = modifier4;
                        final boolean z6 = z5;
                        TooltipKt.TooltipBox(TooltipDefaults.INSTANCE.m4264rememberTooltipPositionProviderHu5FAss(TooltipAnchorPosition.Companion.m4251getAbovelOKsHw4(), 0.0f, composerStartRestartGroup, 390, 2), ComposableLambdaKt.rememberComposableLambda(-456272562, true, new dm3<TooltipScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.1
                            public final void invoke(TooltipScope tooltipScope, Composer composer2, int i9) {
                                int i10;
                                if ((i9 & 6) == 0) {
                                    i10 = i9 | ((i9 & 8) == 0 ? composer2.changed(tooltipScope) : composer2.changedInstance(tooltipScope) ? 4 : 2);
                                } else {
                                    i10 = i9;
                                }
                                if (!composer2.shouldExecute((i10 & 19) != 18, i10 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-456272562, i10, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous> (DatePicker.kt:2283)");
                                }
                                final String str2 = str;
                                TooltipKt.m4267PlainTooltipgv3ox5I(tooltipScope, null, null, 0.0f, null, 0L, 0L, 0.0f, 0.0f, ComposableLambdaKt.rememberComposableLambda(1905952188, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.1.1
                                    public final void invoke(Composer composer3, int i11) {
                                        if (!composer3.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(1905952188, i11, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous>.<anonymous> (DatePicker.kt:2283)");
                                        }
                                        TextKt.m4085TextNvy7gAk(str2, null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer3, 0, 0, 262142);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composer2, 54), composer2, (i10 & 14) | 805306368, 255);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.dm3
                            public /* bridge */ /* synthetic */ j59 invoke(TooltipScope tooltipScope, Composer composer2, Integer num) {
                                invoke(tooltipScope, composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), TooltipKt.rememberTooltipState(false, false, null, composerStartRestartGroup, 0, 7), null, null, false, false, false, ComposableLambdaKt.rememberComposableLambda(-1124908186, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.2
                            public final void invoke(Composer composer2, int i9) {
                                if (!composer2.shouldExecute((i9 & 3) != 2, i9 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1124908186, i9, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous> (DatePicker.kt:2286)");
                                }
                                ll3<j59> ll3Var3 = ll3Var2;
                                Modifier modifier6 = modifier5;
                                boolean z7 = z6;
                                final ImageVector imageVector3 = imageVector2;
                                final String str2 = str;
                                IconButtonKt.IconButton(ll3Var3, modifier6, z7, null, null, null, ComposableLambdaKt.rememberComposableLambda(-1301085432, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.2.1
                                    public final void invoke(Composer composer3, int i10) {
                                        if (!composer3.shouldExecute((i10 & 3) != 2, i10 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-1301085432, i10, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous>.<anonymous> (DatePicker.kt:2287)");
                                        }
                                        IconKt.m3533Iconww6aTOc(imageVector3, str2, (Modifier) null, 0L, composer3, 0, 12);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                        }
                                    }

                                    @Override // defpackage.bm3
                                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                        invoke(composer3, num.intValue());
                                        return j59.a;
                                    }
                                }, composer2, 54), composer2, 1572864, 56);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), composerStartRestartGroup, 100663344, 248);
                        composerStartRestartGroup = composerStartRestartGroup;
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier5;
                        z4 = z6;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        z4 = z2;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ta2
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DatePickerKt.IconButtonWithTooltip$lambda$71(ll3Var, imageVector, str, modifier3, z4, i, i2, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i3 |= 24576;
                z2 = z;
                if ((i3 & 9363) != 9362) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i7 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-368059805, i3, -1, "androidx.compose.material3.IconButtonWithTooltip (DatePicker.kt:2279)");
                    }
                    final Modifier modifier6 = modifier4;
                    final boolean z7 = z5;
                    TooltipKt.TooltipBox(TooltipDefaults.INSTANCE.m4264rememberTooltipPositionProviderHu5FAss(TooltipAnchorPosition.Companion.m4251getAbovelOKsHw4(), 0.0f, composerStartRestartGroup, 390, 2), ComposableLambdaKt.rememberComposableLambda(-456272562, true, new dm3<TooltipScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.1
                        public final void invoke(TooltipScope tooltipScope, Composer composer2, int i9) {
                            int i10;
                            if ((i9 & 6) == 0) {
                                i10 = i9 | ((i9 & 8) == 0 ? composer2.changed(tooltipScope) : composer2.changedInstance(tooltipScope) ? 4 : 2);
                            } else {
                                i10 = i9;
                            }
                            if (!composer2.shouldExecute((i10 & 19) != 18, i10 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-456272562, i10, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous> (DatePicker.kt:2283)");
                            }
                            final String str2 = str;
                            TooltipKt.m4267PlainTooltipgv3ox5I(tooltipScope, null, null, 0.0f, null, 0L, 0L, 0.0f, 0.0f, ComposableLambdaKt.rememberComposableLambda(1905952188, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.1.1
                                public final void invoke(Composer composer3, int i11) {
                                    if (!composer3.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1905952188, i11, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous>.<anonymous> (DatePicker.kt:2283)");
                                    }
                                    TextKt.m4085TextNvy7gAk(str2, null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer3, 0, 0, 262142);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composer2, 54), composer2, (i10 & 14) | 805306368, 255);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(TooltipScope tooltipScope, Composer composer2, Integer num) {
                            invoke(tooltipScope, composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), TooltipKt.rememberTooltipState(false, false, null, composerStartRestartGroup, 0, 7), null, null, false, false, false, ComposableLambdaKt.rememberComposableLambda(-1124908186, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.2
                        public final void invoke(Composer composer2, int i9) {
                            if (!composer2.shouldExecute((i9 & 3) != 2, i9 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1124908186, i9, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous> (DatePicker.kt:2286)");
                            }
                            ll3<j59> ll3Var3 = ll3Var2;
                            Modifier modifier7 = modifier6;
                            boolean z8 = z7;
                            final ImageVector imageVector3 = imageVector2;
                            final String str2 = str;
                            IconButtonKt.IconButton(ll3Var3, modifier7, z8, null, null, null, ComposableLambdaKt.rememberComposableLambda(-1301085432, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.2.1
                                public final void invoke(Composer composer3, int i10) {
                                    if (!composer3.shouldExecute((i10 & 3) != 2, i10 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1301085432, i10, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous>.<anonymous> (DatePicker.kt:2287)");
                                    }
                                    IconKt.m3533Iconww6aTOc(imageVector3, str2, (Modifier) null, 0L, composer3, 0, 12);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composer2, 54), composer2, 1572864, 56);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, 100663344, 248);
                    composerStartRestartGroup = composerStartRestartGroup;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier6;
                    z4 = z7;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z4 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ta2
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerKt.IconButtonWithTooltip$lambda$71(ll3Var, imageVector, str, modifier3, z4, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 3072;
            modifier2 = modifier;
            i7 = i2 & 16;
            if (i7 != 0) {
                if ((i & 24576) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i3 |= i8;
                }
                if ((i3 & 9363) != 9362) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i7 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-368059805, i3, -1, "androidx.compose.material3.IconButtonWithTooltip (DatePicker.kt:2279)");
                    }
                    final Modifier modifier7 = modifier4;
                    final boolean z8 = z5;
                    TooltipKt.TooltipBox(TooltipDefaults.INSTANCE.m4264rememberTooltipPositionProviderHu5FAss(TooltipAnchorPosition.Companion.m4251getAbovelOKsHw4(), 0.0f, composerStartRestartGroup, 390, 2), ComposableLambdaKt.rememberComposableLambda(-456272562, true, new dm3<TooltipScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.1
                        public final void invoke(TooltipScope tooltipScope, Composer composer2, int i9) {
                            int i10;
                            if ((i9 & 6) == 0) {
                                i10 = i9 | ((i9 & 8) == 0 ? composer2.changed(tooltipScope) : composer2.changedInstance(tooltipScope) ? 4 : 2);
                            } else {
                                i10 = i9;
                            }
                            if (!composer2.shouldExecute((i10 & 19) != 18, i10 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-456272562, i10, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous> (DatePicker.kt:2283)");
                            }
                            final String str2 = str;
                            TooltipKt.m4267PlainTooltipgv3ox5I(tooltipScope, null, null, 0.0f, null, 0L, 0L, 0.0f, 0.0f, ComposableLambdaKt.rememberComposableLambda(1905952188, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.1.1
                                public final void invoke(Composer composer3, int i11) {
                                    if (!composer3.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1905952188, i11, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous>.<anonymous> (DatePicker.kt:2283)");
                                    }
                                    TextKt.m4085TextNvy7gAk(str2, null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer3, 0, 0, 262142);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composer2, 54), composer2, (i10 & 14) | 805306368, 255);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(TooltipScope tooltipScope, Composer composer2, Integer num) {
                            invoke(tooltipScope, composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), TooltipKt.rememberTooltipState(false, false, null, composerStartRestartGroup, 0, 7), null, null, false, false, false, ComposableLambdaKt.rememberComposableLambda(-1124908186, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.2
                        public final void invoke(Composer composer2, int i9) {
                            if (!composer2.shouldExecute((i9 & 3) != 2, i9 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1124908186, i9, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous> (DatePicker.kt:2286)");
                            }
                            ll3<j59> ll3Var3 = ll3Var2;
                            Modifier modifier8 = modifier7;
                            boolean z9 = z8;
                            final ImageVector imageVector3 = imageVector2;
                            final String str2 = str;
                            IconButtonKt.IconButton(ll3Var3, modifier8, z9, null, null, null, ComposableLambdaKt.rememberComposableLambda(-1301085432, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.2.1
                                public final void invoke(Composer composer3, int i10) {
                                    if (!composer3.shouldExecute((i10 & 3) != 2, i10 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1301085432, i10, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous>.<anonymous> (DatePicker.kt:2287)");
                                    }
                                    IconKt.m3533Iconww6aTOc(imageVector3, str2, (Modifier) null, 0L, composer3, 0, 12);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composer2, 54), composer2, 1572864, 56);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, 100663344, 248);
                    composerStartRestartGroup = composerStartRestartGroup;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier7;
                    z4 = z8;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z4 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ta2
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerKt.IconButtonWithTooltip$lambda$71(ll3Var, imageVector, str, modifier3, z4, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            z2 = z;
            if ((i3 & 9363) != 9362) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i7 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-368059805, i3, -1, "androidx.compose.material3.IconButtonWithTooltip (DatePicker.kt:2279)");
                }
                final Modifier modifier8 = modifier4;
                final boolean z9 = z5;
                TooltipKt.TooltipBox(TooltipDefaults.INSTANCE.m4264rememberTooltipPositionProviderHu5FAss(TooltipAnchorPosition.Companion.m4251getAbovelOKsHw4(), 0.0f, composerStartRestartGroup, 390, 2), ComposableLambdaKt.rememberComposableLambda(-456272562, true, new dm3<TooltipScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.1
                    public final void invoke(TooltipScope tooltipScope, Composer composer2, int i9) {
                        int i10;
                        if ((i9 & 6) == 0) {
                            i10 = i9 | ((i9 & 8) == 0 ? composer2.changed(tooltipScope) : composer2.changedInstance(tooltipScope) ? 4 : 2);
                        } else {
                            i10 = i9;
                        }
                        if (!composer2.shouldExecute((i10 & 19) != 18, i10 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-456272562, i10, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous> (DatePicker.kt:2283)");
                        }
                        final String str2 = str;
                        TooltipKt.m4267PlainTooltipgv3ox5I(tooltipScope, null, null, 0.0f, null, 0L, 0L, 0.0f, 0.0f, ComposableLambdaKt.rememberComposableLambda(1905952188, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.1.1
                            public final void invoke(Composer composer3, int i11) {
                                if (!composer3.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1905952188, i11, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous>.<anonymous> (DatePicker.kt:2283)");
                                }
                                TextKt.m4085TextNvy7gAk(str2, null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer3, 0, 0, 262142);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composer2, 54), composer2, (i10 & 14) | 805306368, 255);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.dm3
                    public /* bridge */ /* synthetic */ j59 invoke(TooltipScope tooltipScope, Composer composer2, Integer num) {
                        invoke(tooltipScope, composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), TooltipKt.rememberTooltipState(false, false, null, composerStartRestartGroup, 0, 7), null, null, false, false, false, ComposableLambdaKt.rememberComposableLambda(-1124908186, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.2
                    public final void invoke(Composer composer2, int i9) {
                        if (!composer2.shouldExecute((i9 & 3) != 2, i9 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1124908186, i9, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous> (DatePicker.kt:2286)");
                        }
                        ll3<j59> ll3Var3 = ll3Var2;
                        Modifier modifier9 = modifier8;
                        boolean z10 = z9;
                        final ImageVector imageVector3 = imageVector2;
                        final String str2 = str;
                        IconButtonKt.IconButton(ll3Var3, modifier9, z10, null, null, null, ComposableLambdaKt.rememberComposableLambda(-1301085432, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.2.1
                            public final void invoke(Composer composer3, int i10) {
                                if (!composer3.shouldExecute((i10 & 3) != 2, i10 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1301085432, i10, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous>.<anonymous> (DatePicker.kt:2287)");
                                }
                                IconKt.m3533Iconww6aTOc(imageVector3, str2, (Modifier) null, 0L, composer3, 0, 12);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composer2, 54), composer2, 1572864, 56);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, 100663344, 248);
                composerStartRestartGroup = composerStartRestartGroup;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier8;
                z4 = z9;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z4 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ta2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DatePickerKt.IconButtonWithTooltip$lambda$71(ll3Var, imageVector, str, modifier3, z4, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 48;
        imageVector2 = imageVector;
        if ((i2 & 4) != 0) {
            i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if (composerStartRestartGroup.changed(str)) {
                i4 = 256;
            } else {
                i4 = 128;
            }
            i3 |= i4;
        }
        i5 = i2 & 8;
        if (i5 != 0) {
            if ((i & 3072) == 0) {
                modifier2 = modifier;
                if (composerStartRestartGroup.changed(modifier2)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i3 |= i6;
            }
            i7 = i2 & 16;
            if (i7 != 0) {
                if ((i & 24576) == 0) {
                    z2 = z;
                    if (composerStartRestartGroup.changed(z2)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i3 |= i8;
                }
                if ((i3 & 9363) != 9362) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i7 != 0) {
                        z5 = true;
                    } else {
                        z5 = z2;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-368059805, i3, -1, "androidx.compose.material3.IconButtonWithTooltip (DatePicker.kt:2279)");
                    }
                    final Modifier modifier9 = modifier4;
                    final boolean z10 = z5;
                    TooltipKt.TooltipBox(TooltipDefaults.INSTANCE.m4264rememberTooltipPositionProviderHu5FAss(TooltipAnchorPosition.Companion.m4251getAbovelOKsHw4(), 0.0f, composerStartRestartGroup, 390, 2), ComposableLambdaKt.rememberComposableLambda(-456272562, true, new dm3<TooltipScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.1
                        public final void invoke(TooltipScope tooltipScope, Composer composer2, int i9) {
                            int i10;
                            if ((i9 & 6) == 0) {
                                i10 = i9 | ((i9 & 8) == 0 ? composer2.changed(tooltipScope) : composer2.changedInstance(tooltipScope) ? 4 : 2);
                            } else {
                                i10 = i9;
                            }
                            if (!composer2.shouldExecute((i10 & 19) != 18, i10 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-456272562, i10, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous> (DatePicker.kt:2283)");
                            }
                            final String str2 = str;
                            TooltipKt.m4267PlainTooltipgv3ox5I(tooltipScope, null, null, 0.0f, null, 0L, 0L, 0.0f, 0.0f, ComposableLambdaKt.rememberComposableLambda(1905952188, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.1.1
                                public final void invoke(Composer composer3, int i11) {
                                    if (!composer3.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1905952188, i11, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous>.<anonymous> (DatePicker.kt:2283)");
                                    }
                                    TextKt.m4085TextNvy7gAk(str2, null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer3, 0, 0, 262142);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composer2, 54), composer2, (i10 & 14) | 805306368, 255);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.dm3
                        public /* bridge */ /* synthetic */ j59 invoke(TooltipScope tooltipScope, Composer composer2, Integer num) {
                            invoke(tooltipScope, composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), TooltipKt.rememberTooltipState(false, false, null, composerStartRestartGroup, 0, 7), null, null, false, false, false, ComposableLambdaKt.rememberComposableLambda(-1124908186, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.2
                        public final void invoke(Composer composer2, int i9) {
                            if (!composer2.shouldExecute((i9 & 3) != 2, i9 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1124908186, i9, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous> (DatePicker.kt:2286)");
                            }
                            ll3<j59> ll3Var3 = ll3Var2;
                            Modifier modifier10 = modifier9;
                            boolean z11 = z10;
                            final ImageVector imageVector3 = imageVector2;
                            final String str2 = str;
                            IconButtonKt.IconButton(ll3Var3, modifier10, z11, null, null, null, ComposableLambdaKt.rememberComposableLambda(-1301085432, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.2.1
                                public final void invoke(Composer composer3, int i10) {
                                    if (!composer3.shouldExecute((i10 & 3) != 2, i10 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1301085432, i10, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous>.<anonymous> (DatePicker.kt:2287)");
                                    }
                                    IconKt.m3533Iconww6aTOc(imageVector3, str2, (Modifier) null, 0L, composer3, 0, 12);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                    invoke(composer3, num.intValue());
                                    return j59.a;
                                }
                            }, composer2, 54), composer2, 1572864, 56);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), composerStartRestartGroup, 100663344, 248);
                    composerStartRestartGroup = composerStartRestartGroup;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    modifier3 = modifier9;
                    z4 = z10;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    z4 = z2;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ta2
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DatePickerKt.IconButtonWithTooltip$lambda$71(ll3Var, imageVector, str, modifier3, z4, i, i2, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i3 |= 24576;
            z2 = z;
            if ((i3 & 9363) != 9362) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i7 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-368059805, i3, -1, "androidx.compose.material3.IconButtonWithTooltip (DatePicker.kt:2279)");
                }
                final Modifier modifier10 = modifier4;
                final boolean z11 = z5;
                TooltipKt.TooltipBox(TooltipDefaults.INSTANCE.m4264rememberTooltipPositionProviderHu5FAss(TooltipAnchorPosition.Companion.m4251getAbovelOKsHw4(), 0.0f, composerStartRestartGroup, 390, 2), ComposableLambdaKt.rememberComposableLambda(-456272562, true, new dm3<TooltipScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.1
                    public final void invoke(TooltipScope tooltipScope, Composer composer2, int i9) {
                        int i10;
                        if ((i9 & 6) == 0) {
                            i10 = i9 | ((i9 & 8) == 0 ? composer2.changed(tooltipScope) : composer2.changedInstance(tooltipScope) ? 4 : 2);
                        } else {
                            i10 = i9;
                        }
                        if (!composer2.shouldExecute((i10 & 19) != 18, i10 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-456272562, i10, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous> (DatePicker.kt:2283)");
                        }
                        final String str2 = str;
                        TooltipKt.m4267PlainTooltipgv3ox5I(tooltipScope, null, null, 0.0f, null, 0L, 0L, 0.0f, 0.0f, ComposableLambdaKt.rememberComposableLambda(1905952188, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.1.1
                            public final void invoke(Composer composer3, int i11) {
                                if (!composer3.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1905952188, i11, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous>.<anonymous> (DatePicker.kt:2283)");
                                }
                                TextKt.m4085TextNvy7gAk(str2, null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer3, 0, 0, 262142);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composer2, 54), composer2, (i10 & 14) | 805306368, 255);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.dm3
                    public /* bridge */ /* synthetic */ j59 invoke(TooltipScope tooltipScope, Composer composer2, Integer num) {
                        invoke(tooltipScope, composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), TooltipKt.rememberTooltipState(false, false, null, composerStartRestartGroup, 0, 7), null, null, false, false, false, ComposableLambdaKt.rememberComposableLambda(-1124908186, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.2
                    public final void invoke(Composer composer2, int i9) {
                        if (!composer2.shouldExecute((i9 & 3) != 2, i9 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1124908186, i9, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous> (DatePicker.kt:2286)");
                        }
                        ll3<j59> ll3Var3 = ll3Var2;
                        Modifier modifier11 = modifier10;
                        boolean z12 = z11;
                        final ImageVector imageVector3 = imageVector2;
                        final String str2 = str;
                        IconButtonKt.IconButton(ll3Var3, modifier11, z12, null, null, null, ComposableLambdaKt.rememberComposableLambda(-1301085432, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.2.1
                            public final void invoke(Composer composer3, int i10) {
                                if (!composer3.shouldExecute((i10 & 3) != 2, i10 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1301085432, i10, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous>.<anonymous> (DatePicker.kt:2287)");
                                }
                                IconKt.m3533Iconww6aTOc(imageVector3, str2, (Modifier) null, 0L, composer3, 0, 12);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composer2, 54), composer2, 1572864, 56);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, 100663344, 248);
                composerStartRestartGroup = composerStartRestartGroup;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier10;
                z4 = z11;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z4 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ta2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DatePickerKt.IconButtonWithTooltip$lambda$71(ll3Var, imageVector, str, modifier3, z4, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 3072;
        modifier2 = modifier;
        i7 = i2 & 16;
        if (i7 != 0) {
            if ((i & 24576) == 0) {
                z2 = z;
                if (composerStartRestartGroup.changed(z2)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i3 |= i8;
            }
            if ((i3 & 9363) != 9362) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (i7 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-368059805, i3, -1, "androidx.compose.material3.IconButtonWithTooltip (DatePicker.kt:2279)");
                }
                final Modifier modifier11 = modifier4;
                final boolean z12 = z5;
                TooltipKt.TooltipBox(TooltipDefaults.INSTANCE.m4264rememberTooltipPositionProviderHu5FAss(TooltipAnchorPosition.Companion.m4251getAbovelOKsHw4(), 0.0f, composerStartRestartGroup, 390, 2), ComposableLambdaKt.rememberComposableLambda(-456272562, true, new dm3<TooltipScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.1
                    public final void invoke(TooltipScope tooltipScope, Composer composer2, int i9) {
                        int i10;
                        if ((i9 & 6) == 0) {
                            i10 = i9 | ((i9 & 8) == 0 ? composer2.changed(tooltipScope) : composer2.changedInstance(tooltipScope) ? 4 : 2);
                        } else {
                            i10 = i9;
                        }
                        if (!composer2.shouldExecute((i10 & 19) != 18, i10 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-456272562, i10, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous> (DatePicker.kt:2283)");
                        }
                        final String str2 = str;
                        TooltipKt.m4267PlainTooltipgv3ox5I(tooltipScope, null, null, 0.0f, null, 0L, 0L, 0.0f, 0.0f, ComposableLambdaKt.rememberComposableLambda(1905952188, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.1.1
                            public final void invoke(Composer composer3, int i11) {
                                if (!composer3.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1905952188, i11, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous>.<anonymous> (DatePicker.kt:2283)");
                                }
                                TextKt.m4085TextNvy7gAk(str2, null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer3, 0, 0, 262142);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composer2, 54), composer2, (i10 & 14) | 805306368, 255);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.dm3
                    public /* bridge */ /* synthetic */ j59 invoke(TooltipScope tooltipScope, Composer composer2, Integer num) {
                        invoke(tooltipScope, composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), TooltipKt.rememberTooltipState(false, false, null, composerStartRestartGroup, 0, 7), null, null, false, false, false, ComposableLambdaKt.rememberComposableLambda(-1124908186, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.2
                    public final void invoke(Composer composer2, int i9) {
                        if (!composer2.shouldExecute((i9 & 3) != 2, i9 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1124908186, i9, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous> (DatePicker.kt:2286)");
                        }
                        ll3<j59> ll3Var3 = ll3Var2;
                        Modifier modifier12 = modifier11;
                        boolean z13 = z12;
                        final ImageVector imageVector3 = imageVector2;
                        final String str2 = str;
                        IconButtonKt.IconButton(ll3Var3, modifier12, z13, null, null, null, ComposableLambdaKt.rememberComposableLambda(-1301085432, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.2.1
                            public final void invoke(Composer composer3, int i10) {
                                if (!composer3.shouldExecute((i10 & 3) != 2, i10 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1301085432, i10, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous>.<anonymous> (DatePicker.kt:2287)");
                                }
                                IconKt.m3533Iconww6aTOc(imageVector3, str2, (Modifier) null, 0L, composer3, 0, 12);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                                invoke(composer3, num.intValue());
                                return j59.a;
                            }
                        }, composer2, 54), composer2, 1572864, 56);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, 100663344, 248);
                composerStartRestartGroup = composerStartRestartGroup;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier11;
                z4 = z12;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                z4 = z2;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ta2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DatePickerKt.IconButtonWithTooltip$lambda$71(ll3Var, imageVector, str, modifier3, z4, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= 24576;
        z2 = z;
        if ((i3 & 9363) != 9362) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z3, i3 & 1)) {
            if (i5 != 0) {
                modifier4 = Modifier.Companion;
            } else {
                modifier4 = modifier2;
            }
            if (i7 != 0) {
                z5 = true;
            } else {
                z5 = z2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-368059805, i3, -1, "androidx.compose.material3.IconButtonWithTooltip (DatePicker.kt:2279)");
            }
            final Modifier modifier12 = modifier4;
            final boolean z13 = z5;
            TooltipKt.TooltipBox(TooltipDefaults.INSTANCE.m4264rememberTooltipPositionProviderHu5FAss(TooltipAnchorPosition.Companion.m4251getAbovelOKsHw4(), 0.0f, composerStartRestartGroup, 390, 2), ComposableLambdaKt.rememberComposableLambda(-456272562, true, new dm3<TooltipScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.1
                public final void invoke(TooltipScope tooltipScope, Composer composer2, int i9) {
                    int i10;
                    if ((i9 & 6) == 0) {
                        i10 = i9 | ((i9 & 8) == 0 ? composer2.changed(tooltipScope) : composer2.changedInstance(tooltipScope) ? 4 : 2);
                    } else {
                        i10 = i9;
                    }
                    if (!composer2.shouldExecute((i10 & 19) != 18, i10 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-456272562, i10, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous> (DatePicker.kt:2283)");
                    }
                    final String str2 = str;
                    TooltipKt.m4267PlainTooltipgv3ox5I(tooltipScope, null, null, 0.0f, null, 0L, 0L, 0.0f, 0.0f, ComposableLambdaKt.rememberComposableLambda(1905952188, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.1.1
                        public final void invoke(Composer composer3, int i11) {
                            if (!composer3.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1905952188, i11, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous>.<anonymous> (DatePicker.kt:2283)");
                            }
                            TextKt.m4085TextNvy7gAk(str2, null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer3, 0, 0, 262142);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composer2, 54), composer2, (i10 & 14) | 805306368, 255);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ j59 invoke(TooltipScope tooltipScope, Composer composer2, Integer num) {
                    invoke(tooltipScope, composer2, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), TooltipKt.rememberTooltipState(false, false, null, composerStartRestartGroup, 0, 7), null, null, false, false, false, ComposableLambdaKt.rememberComposableLambda(-1124908186, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.2
                public final void invoke(Composer composer2, int i9) {
                    if (!composer2.shouldExecute((i9 & 3) != 2, i9 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1124908186, i9, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous> (DatePicker.kt:2286)");
                    }
                    ll3<j59> ll3Var3 = ll3Var2;
                    Modifier modifier13 = modifier12;
                    boolean z14 = z13;
                    final ImageVector imageVector3 = imageVector2;
                    final String str2 = str;
                    IconButtonKt.IconButton(ll3Var3, modifier13, z14, null, null, null, ComposableLambdaKt.rememberComposableLambda(-1301085432, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.IconButtonWithTooltip.2.1
                        public final void invoke(Composer composer3, int i10) {
                            if (!composer3.shouldExecute((i10 & 3) != 2, i10 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1301085432, i10, -1, "androidx.compose.material3.IconButtonWithTooltip.<anonymous>.<anonymous> (DatePicker.kt:2287)");
                            }
                            IconKt.m3533Iconww6aTOc(imageVector3, str2, (Modifier) null, 0L, composer3, 0, 12);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                            invoke(composer3, num.intValue());
                            return j59.a;
                        }
                    }, composer2, 54), composer2, 1572864, 56);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, 100663344, 248);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier12;
            z4 = z13;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            z4 = z2;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ta2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DatePickerKt.IconButtonWithTooltip$lambda$71(ll3Var, imageVector, str, modifier3, z4, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 IconButtonWithTooltip$lambda$71(ll3 ll3Var, ImageVector imageVector, String str, Modifier modifier, boolean z, int i, int i2, Composer composer, int i3) {
        IconButtonWithTooltip(ll3Var, imageVector, str, modifier, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:119:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:121:0x0208  */
    /* JADX WARN: Code duplicated, block: B:124:0x0214  */
    /* JADX WARN: Code duplicated, block: B:125:0x0218  */
    /* JADX WARN: Code duplicated, block: B:128:0x0229  */
    /* JADX WARN: Code duplicated, block: B:131:0x023a  */
    /* JADX WARN: Code duplicated, block: B:136:0x0254  */
    /* JADX WARN: Code duplicated, block: B:138:0x025a  */
    /* JADX WARN: Code duplicated, block: B:140:0x0265  */
    /* JADX WARN: Code duplicated, block: B:141:0x0273  */
    /* JADX WARN: Code duplicated, block: B:143:0x0292  */
    /* JADX WARN: Code duplicated, block: B:144:0x0294  */
    /* JADX WARN: Code duplicated, block: B:147:0x0298  */
    /* JADX WARN: Code duplicated, block: B:150:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:153:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:156:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:158:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:160:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:161:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:164:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:168:0x02e2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:169:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:170:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:173:0x02f2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:174:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:175:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:178:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:179:0x0301  */
    /* JADX WARN: Code duplicated, block: B:182:0x0323  */
    /* JADX WARN: Code duplicated, block: B:185:0x0338  */
    /* JADX WARN: Code duplicated, block: B:186:0x033a  */
    /* JADX WARN: Code duplicated, block: B:189:0x035e  */
    /* JADX WARN: Code duplicated, block: B:192:0x0383 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:195:0x0388  */
    /* JADX WARN: Code duplicated, block: B:198:0x038e  */
    /* JADX WARN: Code duplicated, block: B:200:0x0393  */
    /* JADX WARN: Code duplicated, block: B:203:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:205:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:208:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:209:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:212:0x03ca  */
    /* JADX WARN: Code duplicated, block: B:214:0x03d2  */
    /* JADX WARN: Code duplicated, block: B:216:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:219:0x03e5  */
    /* JADX WARN: Code duplicated, block: B:223:0x03f7  */
    /* JADX WARN: Code duplicated, block: B:230:0x049b  */
    public static final void Month(final CalendarMonth calendarMonth, final nl3<? super Long, j59> nl3Var, final long j, final Long l, final Long l2, final SelectedRangeInfo selectedRangeInfo, final DatePickerFormatter datePickerFormatter, final SelectableDates selectableDates, final DatePickerColors datePickerColors, final Locale locale, Composer composer, final int i) {
        CalendarMonth calendarMonth2;
        int i2;
        Composer composer2;
        Modifier.Companion companion;
        Modifier modifierDrawWithContent;
        ComposeUiNode.Companion companion2;
        int i3;
        int i4;
        int currentCompositeKeyHash;
        ComposeUiNode.Companion companion3;
        ll3<ComposeUiNode> constructor;
        Composer composerM5355constructorimpl;
        ComposeUiNode.Companion companion4;
        int i5;
        int i6;
        Composer composer3;
        final long startUtcTimeMillis;
        boolean z;
        boolean z2;
        boolean z3;
        Object obj;
        boolean z4;
        Composer composer4;
        boolean z5;
        String strDayContentDescription;
        boolean z6;
        String date;
        String strC;
        boolean z7;
        boolean z8;
        boolean zChanged;
        Object objRememberedValue;
        boolean z9;
        boolean z10;
        Object objRememberedValue2;
        boolean z11;
        boolean z12;
        boolean zChanged2;
        Object objRememberedValue3;
        long jLongValue;
        boolean z13;
        long jLongValue2;
        final nl3<? super Long, j59> nl3Var2 = nl3Var;
        Locale locale2 = locale;
        Composer composerStartRestartGroup = composer.startRestartGroup(-333300603);
        if ((i & 6) == 0) {
            calendarMonth2 = calendarMonth;
            i2 = (composerStartRestartGroup.changed(calendarMonth2) ? 4 : 2) | i;
        } else {
            calendarMonth2 = calendarMonth;
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(nl3Var2) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(j) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(l) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changed(l2) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(selectedRangeInfo) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= (2097152 & i) == 0 ? composerStartRestartGroup.changed(datePickerFormatter) : composerStartRestartGroup.changedInstance(datePickerFormatter) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(selectableDates) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(datePickerColors) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if ((805306368 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(locale2) ? 536870912 : 268435456;
        }
        int i7 = i2;
        if (composerStartRestartGroup.shouldExecute((306783379 & i7) != 306783378, i7 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-333300603, i7, -1, "androidx.compose.material3.Month (DatePicker.kt:1844)");
            }
            if (selectedRangeInfo != null) {
                composerStartRestartGroup.startReplaceGroup(606579709);
                companion = Modifier.Companion;
                boolean z14 = ((i7 & 458752) == 131072) | ((234881024 & i7) == 67108864);
                Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (z14 || objRememberedValue4 == Composer.Companion.getEmpty()) {
                    objRememberedValue4 = new ia2(0, selectedRangeInfo, datePickerColors);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                modifierDrawWithContent = DrawModifierKt.drawWithContent(companion, (nl3) objRememberedValue4);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(606771165);
                composerStartRestartGroup.endReplaceGroup();
                companion = Modifier.Companion;
                modifierDrawWithContent = companion;
            }
            Modifier modifierThen = SizeKt.m2088requiredHeight3ABfNKs(companion, Dp.m9042constructorimpl(RecommendedSizeForAccessibility * 6.0f)).then(modifierDrawWithContent);
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getSpaceEvenly(), Alignment.Companion.getStart(), composerStartRestartGroup, 6);
            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierThen);
            ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor2 = companion5.getConstructor();
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
            bm3 bm3VarB = cc.b(companion5, composerM5355constructorimpl2, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap);
            if (composerM5355constructorimpl2.getInserting()) {
                companion2 = companion5;
            } else {
                companion2 = companion5;
                if (!aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                }
                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier, companion2.getSetModifier());
                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                composerStartRestartGroup.startReplaceGroup(-680088486);
                i3 = 0;
                i4 = 0;
                while (i3 < 6) {
                    Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, null);
                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getSpaceEvenly(), Alignment.Companion.getCenterVertically(), composerStartRestartGroup, 54);
                    currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                    CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierFillMaxWidth$default);
                    int i8 = i3;
                    companion3 = ComposeUiNode.Companion;
                    int i9 = i4;
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
                    bm3 bm3VarB2 = cc.b(companion3, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap2);
                    if (composerM5355constructorimpl.getInserting()) {
                        companion4 = companion3;
                    } else {
                        companion4 = companion3;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion4.getSetModifier());
                        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                        composerStartRestartGroup.startReplaceGroup(1542622325);
                        i4 = i9;
                        i5 = 0;
                        while (i5 < 7) {
                            if (i4 >= calendarMonth2.getDaysFromStartOfWeekToFirstOfMonth()) {
                                if (i4 >= calendarMonth2.getNumberOfDays() + calendarMonth2.getDaysFromStartOfWeekToFirstOfMonth()) {
                                    i6 = i7;
                                    composer3 = composerStartRestartGroup;
                                    composer3.startReplaceGroup(576825328);
                                    Modifier.Companion companion6 = Modifier.Companion;
                                    DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                                    SpacerKt.Spacer(SizeKt.m2101sizeVpY3zN4(SizeKt.m2103sizeInqDBjuR0$default(companion6, datePickerModalTokens.m4689getDateContainerWidthD9Ej5fM(), datePickerModalTokens.m4688getDateContainerHeightD9Ej5fM(), 0.0f, 0.0f, 12, null), ((Dp) composer3.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl(), ((Dp) composer3.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl()), composer3, 0);
                                    composer3.endReplaceGroup();
                                } else {
                                    composerStartRestartGroup.startReplaceGroup(577914947);
                                    int daysFromStartOfWeekToFirstOfMonth = i4 - calendarMonth2.getDaysFromStartOfWeekToFirstOfMonth();
                                    startUtcTimeMillis = (((long) daysFromStartOfWeekToFirstOfMonth) * CalendarModelKt.MillisecondsIn24Hours) + calendarMonth2.getStartUtcTimeMillis();
                                    if (startUtcTimeMillis == j) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    if (l == null && startUtcTimeMillis == l.longValue()) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    if (l2 == null && startUtcTimeMillis == l2.longValue()) {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                    if (selectedRangeInfo != null) {
                                        composerStartRestartGroup.startReplaceGroup(578361347);
                                        if ((i7 & 458752) == 131072) {
                                            z12 = true;
                                        } else {
                                            z12 = false;
                                        }
                                        zChanged2 = z12 | composerStartRestartGroup.changed(startUtcTimeMillis);
                                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                                        if (!zChanged2 || objRememberedValue3 == Composer.Companion.getEmpty()) {
                                            if (l != null) {
                                                jLongValue = l.longValue();
                                            } else {
                                                jLongValue = Long.MAX_VALUE;
                                            }
                                            if (startUtcTimeMillis < jLongValue) {
                                                z13 = false;
                                            } else {
                                                if (l2 != null) {
                                                    jLongValue2 = l2.longValue();
                                                } else {
                                                    jLongValue2 = Long.MIN_VALUE;
                                                }
                                                if (startUtcTimeMillis <= jLongValue2) {
                                                    z13 = true;
                                                } else {
                                                    z13 = false;
                                                }
                                            }
                                            obj = null;
                                            objRememberedValue3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z13), null, 2, null);
                                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                        } else {
                                            obj = null;
                                        }
                                        boolean zBooleanValue = ((Boolean) ((MutableState) objRememberedValue3).getValue()).booleanValue();
                                        composerStartRestartGroup.endReplaceGroup();
                                        z4 = zBooleanValue;
                                    } else {
                                        i7 = i7;
                                        obj = null;
                                        composerStartRestartGroup.startReplaceGroup(578890300);
                                        composerStartRestartGroup.endReplaceGroup();
                                        z4 = false;
                                    }
                                    composer4 = composerStartRestartGroup;
                                    if (selectedRangeInfo != null) {
                                        z5 = true;
                                    } else {
                                        z5 = false;
                                    }
                                    boolean z15 = z4;
                                    i6 = i7;
                                    strDayContentDescription = dayContentDescription(z5, z, z2, z3, z15, composer4, 0);
                                    boolean z16 = z;
                                    z6 = z2;
                                    boolean z17 = z3;
                                    date = datePickerFormatter.formatDate(Long.valueOf(startUtcTimeMillis), locale2, true);
                                    if (date == null) {
                                        date = "";
                                    }
                                    strC = date;
                                    String localString$default = CalendarLocale_jvmKt.toLocalString$default(daysFromStartOfWeekToFirstOfMonth + 1, 0, 0, false, locale2, 7, null);
                                    Modifier.Companion companion7 = Modifier.Companion;
                                    if (!z6 || z17) {
                                        z7 = true;
                                    } else {
                                        z7 = false;
                                    }
                                    if ((i6 & 112) == 32) {
                                        z8 = true;
                                    } else {
                                        z8 = false;
                                    }
                                    zChanged = z8 | composer4.changed(startUtcTimeMillis);
                                    objRememberedValue = composer4.rememberedValue();
                                    if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                                        objRememberedValue = new ll3() { // from class: pa2
                                            @Override // defpackage.ll3
                                            public final Object invoke() {
                                                return DatePickerKt.Month$lambda$58$lambda$57$lambda$54$lambda$53(nl3Var2, startUtcTimeMillis);
                                            }
                                        };
                                        composer4.updateRememberedValue(objRememberedValue);
                                    }
                                    ll3 ll3Var = (ll3) objRememberedValue;
                                    boolean zChanged3 = composer4.changed(startUtcTimeMillis);
                                    if ((i6 & 29360128) == 8388608) {
                                        z9 = true;
                                    } else {
                                        z9 = false;
                                    }
                                    z10 = z9 | zChanged3;
                                    objRememberedValue2 = composer4.rememberedValue();
                                    if (z10 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                                        if (selectableDates.isSelectableYear(calendarMonth.getYear()) || !selectableDates.isSelectableDate(startUtcTimeMillis)) {
                                            z11 = false;
                                        } else {
                                            z11 = true;
                                        }
                                        objRememberedValue2 = Boolean.valueOf(z11);
                                        composer4.updateRememberedValue(objRememberedValue2);
                                    }
                                    boolean zBooleanValue2 = ((Boolean) objRememberedValue2).booleanValue();
                                    if (strDayContentDescription != null) {
                                        strC = me0.c(strDayContentDescription, ", ", strC);
                                    }
                                    Day(localString$default, companion7, z7, ll3Var, z6, zBooleanValue2, z16, z15, strC, datePickerColors, composer4, ((i6 << 3) & 1879048192) | 48);
                                    composer3 = composer4;
                                    composer3.endReplaceGroup();
                                }
                            } else {
                                i6 = i7;
                                composer3 = composerStartRestartGroup;
                                composer3.startReplaceGroup(576825328);
                                Modifier.Companion companion8 = Modifier.Companion;
                                DatePickerModalTokens datePickerModalTokens2 = DatePickerModalTokens.INSTANCE;
                                SpacerKt.Spacer(SizeKt.m2101sizeVpY3zN4(SizeKt.m2103sizeInqDBjuR0$default(companion8, datePickerModalTokens2.m4689getDateContainerWidthD9Ej5fM(), datePickerModalTokens2.m4688getDateContainerHeightD9Ej5fM(), 0.0f, 0.0f, 12, null), ((Dp) composer3.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl(), ((Dp) composer3.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl()), composer3, 0);
                                composer3.endReplaceGroup();
                            }
                            i4++;
                            i5++;
                            calendarMonth2 = calendarMonth;
                            nl3Var2 = nl3Var;
                            locale2 = locale;
                            composerStartRestartGroup = composer3;
                            i7 = i6;
                        }
                        int i10 = i7;
                        Composer composer5 = composerStartRestartGroup;
                        composer5.endReplaceGroup();
                        composer5.endNode();
                        i3 = i8 + 1;
                        calendarMonth2 = calendarMonth;
                        nl3Var2 = nl3Var;
                        locale2 = locale;
                        i7 = i10;
                    }
                    dc.b(bm3VarB2, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier2, companion4.getSetModifier());
                    RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                    composerStartRestartGroup.startReplaceGroup(1542622325);
                    i4 = i9;
                    i5 = 0;
                    while (i5 < 7) {
                        if (i4 >= calendarMonth2.getDaysFromStartOfWeekToFirstOfMonth()) {
                            if (i4 >= calendarMonth2.getNumberOfDays() + calendarMonth2.getDaysFromStartOfWeekToFirstOfMonth()) {
                                i6 = i7;
                                composer3 = composerStartRestartGroup;
                                composer3.startReplaceGroup(576825328);
                                Modifier.Companion companion9 = Modifier.Companion;
                                DatePickerModalTokens datePickerModalTokens3 = DatePickerModalTokens.INSTANCE;
                                SpacerKt.Spacer(SizeKt.m2101sizeVpY3zN4(SizeKt.m2103sizeInqDBjuR0$default(companion9, datePickerModalTokens3.m4689getDateContainerWidthD9Ej5fM(), datePickerModalTokens3.m4688getDateContainerHeightD9Ej5fM(), 0.0f, 0.0f, 12, null), ((Dp) composer3.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl(), ((Dp) composer3.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl()), composer3, 0);
                                composer3.endReplaceGroup();
                            } else {
                                composerStartRestartGroup.startReplaceGroup(577914947);
                                int daysFromStartOfWeekToFirstOfMonth2 = i4 - calendarMonth2.getDaysFromStartOfWeekToFirstOfMonth();
                                startUtcTimeMillis = (((long) daysFromStartOfWeekToFirstOfMonth2) * CalendarModelKt.MillisecondsIn24Hours) + calendarMonth2.getStartUtcTimeMillis();
                                if (startUtcTimeMillis == j) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (l == null) {
                                    z2 = false;
                                } else {
                                    z2 = true;
                                }
                                if (l2 == null) {
                                    z3 = false;
                                } else {
                                    z3 = true;
                                }
                                if (selectedRangeInfo != null) {
                                    composerStartRestartGroup.startReplaceGroup(578361347);
                                    if ((i7 & 458752) == 131072) {
                                        z12 = true;
                                    } else {
                                        z12 = false;
                                    }
                                    zChanged2 = z12 | composerStartRestartGroup.changed(startUtcTimeMillis);
                                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                                    if (zChanged2) {
                                        if (l != null) {
                                            jLongValue = l.longValue();
                                        } else {
                                            jLongValue = Long.MAX_VALUE;
                                        }
                                        if (startUtcTimeMillis < jLongValue) {
                                            z13 = false;
                                        } else {
                                            if (l2 != null) {
                                                jLongValue2 = l2.longValue();
                                            } else {
                                                jLongValue2 = Long.MIN_VALUE;
                                            }
                                            if (startUtcTimeMillis <= jLongValue2) {
                                                z13 = true;
                                            } else {
                                                z13 = false;
                                            }
                                        }
                                        obj = null;
                                        objRememberedValue3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z13), null, 2, null);
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                    } else {
                                        if (l != null) {
                                            jLongValue = l.longValue();
                                        } else {
                                            jLongValue = Long.MAX_VALUE;
                                        }
                                        if (startUtcTimeMillis < jLongValue) {
                                            z13 = false;
                                        } else {
                                            if (l2 != null) {
                                                jLongValue2 = l2.longValue();
                                            } else {
                                                jLongValue2 = Long.MIN_VALUE;
                                            }
                                            if (startUtcTimeMillis <= jLongValue2) {
                                                z13 = true;
                                            } else {
                                                z13 = false;
                                            }
                                        }
                                        obj = null;
                                        objRememberedValue3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z13), null, 2, null);
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                    }
                                    boolean zBooleanValue3 = ((Boolean) ((MutableState) objRememberedValue3).getValue()).booleanValue();
                                    composerStartRestartGroup.endReplaceGroup();
                                    z4 = zBooleanValue3;
                                } else {
                                    i7 = i7;
                                    obj = null;
                                    composerStartRestartGroup.startReplaceGroup(578890300);
                                    composerStartRestartGroup.endReplaceGroup();
                                    z4 = false;
                                }
                                composer4 = composerStartRestartGroup;
                                if (selectedRangeInfo != null) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                boolean z18 = z4;
                                i6 = i7;
                                strDayContentDescription = dayContentDescription(z5, z, z2, z3, z18, composer4, 0);
                                boolean z19 = z;
                                z6 = z2;
                                boolean z110 = z3;
                                date = datePickerFormatter.formatDate(Long.valueOf(startUtcTimeMillis), locale2, true);
                                if (date == null) {
                                    date = "";
                                }
                                strC = date;
                                String localString$default2 = CalendarLocale_jvmKt.toLocalString$default(daysFromStartOfWeekToFirstOfMonth2 + 1, 0, 0, false, locale2, 7, null);
                                Modifier.Companion companion10 = Modifier.Companion;
                                if (z6) {
                                    z7 = true;
                                } else {
                                    z7 = true;
                                }
                                if ((i6 & 112) == 32) {
                                    z8 = true;
                                } else {
                                    z8 = false;
                                }
                                zChanged = z8 | composer4.changed(startUtcTimeMillis);
                                objRememberedValue = composer4.rememberedValue();
                                if (zChanged) {
                                    objRememberedValue = new ll3() { // from class: pa2
                                        @Override // defpackage.ll3
                                        public final Object invoke() {
                                            return DatePickerKt.Month$lambda$58$lambda$57$lambda$54$lambda$53(nl3Var2, startUtcTimeMillis);
                                        }
                                    };
                                    composer4.updateRememberedValue(objRememberedValue);
                                } else {
                                    objRememberedValue = new ll3() { // from class: pa2
                                        @Override // defpackage.ll3
                                        public final Object invoke() {
                                            return DatePickerKt.Month$lambda$58$lambda$57$lambda$54$lambda$53(nl3Var2, startUtcTimeMillis);
                                        }
                                    };
                                    composer4.updateRememberedValue(objRememberedValue);
                                }
                                ll3 ll3Var2 = (ll3) objRememberedValue;
                                boolean zChanged4 = composer4.changed(startUtcTimeMillis);
                                if ((i6 & 29360128) == 8388608) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                z10 = z9 | zChanged4;
                                objRememberedValue2 = composer4.rememberedValue();
                                if (z10) {
                                    if (selectableDates.isSelectableYear(calendarMonth.getYear())) {
                                        z11 = false;
                                    } else {
                                        z11 = false;
                                    }
                                    objRememberedValue2 = Boolean.valueOf(z11);
                                    composer4.updateRememberedValue(objRememberedValue2);
                                } else {
                                    if (selectableDates.isSelectableYear(calendarMonth.getYear())) {
                                        z11 = false;
                                    } else {
                                        z11 = false;
                                    }
                                    objRememberedValue2 = Boolean.valueOf(z11);
                                    composer4.updateRememberedValue(objRememberedValue2);
                                }
                                boolean zBooleanValue4 = ((Boolean) objRememberedValue2).booleanValue();
                                if (strDayContentDescription != null) {
                                    strC = me0.c(strDayContentDescription, ", ", strC);
                                }
                                Day(localString$default2, companion10, z7, ll3Var2, z6, zBooleanValue4, z19, z18, strC, datePickerColors, composer4, ((i6 << 3) & 1879048192) | 48);
                                composer3 = composer4;
                                composer3.endReplaceGroup();
                            }
                        } else {
                            i6 = i7;
                            composer3 = composerStartRestartGroup;
                            composer3.startReplaceGroup(576825328);
                            Modifier.Companion companion11 = Modifier.Companion;
                            DatePickerModalTokens datePickerModalTokens4 = DatePickerModalTokens.INSTANCE;
                            SpacerKt.Spacer(SizeKt.m2101sizeVpY3zN4(SizeKt.m2103sizeInqDBjuR0$default(companion11, datePickerModalTokens4.m4689getDateContainerWidthD9Ej5fM(), datePickerModalTokens4.m4688getDateContainerHeightD9Ej5fM(), 0.0f, 0.0f, 12, null), ((Dp) composer3.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl(), ((Dp) composer3.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl()), composer3, 0);
                            composer3.endReplaceGroup();
                        }
                        i4++;
                        i5++;
                        calendarMonth2 = calendarMonth;
                        nl3Var2 = nl3Var;
                        locale2 = locale;
                        composerStartRestartGroup = composer3;
                        i7 = i6;
                    }
                    int i11 = i7;
                    Composer composer6 = composerStartRestartGroup;
                    composer6.endReplaceGroup();
                    composer6.endNode();
                    i3 = i8 + 1;
                    calendarMonth2 = calendarMonth;
                    nl3Var2 = nl3Var;
                    locale2 = locale;
                    i7 = i11;
                }
                composer2 = composerStartRestartGroup;
                composer2.endReplaceGroup();
                composer2.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            dc.b(bm3VarB, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
            Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier, companion2.getSetModifier());
            ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
            composerStartRestartGroup.startReplaceGroup(-680088486);
            i3 = 0;
            i4 = 0;
            while (i3 < 6) {
                Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, null);
                MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getSpaceEvenly(), Alignment.Companion.getCenterVertically(), composerStartRestartGroup, 54);
                currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                CompositionLocalMap currentCompositionLocalMap3 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierFillMaxWidth$default2);
                int i12 = i3;
                companion3 = ComposeUiNode.Companion;
                int i13 = i4;
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
                bm3 bm3VarB3 = cc.b(companion3, composerM5355constructorimpl, measurePolicyRowMeasurePolicy2, composerM5355constructorimpl, currentCompositionLocalMap3);
                if (composerM5355constructorimpl.getInserting()) {
                    companion4 = companion3;
                    if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier3, companion4.getSetModifier());
                    RowScopeInstance rowScopeInstance3 = RowScopeInstance.INSTANCE;
                    composerStartRestartGroup.startReplaceGroup(1542622325);
                    i4 = i13;
                    i5 = 0;
                    while (i5 < 7) {
                        if (i4 >= calendarMonth2.getDaysFromStartOfWeekToFirstOfMonth()) {
                            if (i4 >= calendarMonth2.getNumberOfDays() + calendarMonth2.getDaysFromStartOfWeekToFirstOfMonth()) {
                                i6 = i7;
                                composer3 = composerStartRestartGroup;
                                composer3.startReplaceGroup(576825328);
                                Modifier.Companion companion12 = Modifier.Companion;
                                DatePickerModalTokens datePickerModalTokens5 = DatePickerModalTokens.INSTANCE;
                                SpacerKt.Spacer(SizeKt.m2101sizeVpY3zN4(SizeKt.m2103sizeInqDBjuR0$default(companion12, datePickerModalTokens5.m4689getDateContainerWidthD9Ej5fM(), datePickerModalTokens5.m4688getDateContainerHeightD9Ej5fM(), 0.0f, 0.0f, 12, null), ((Dp) composer3.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl(), ((Dp) composer3.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl()), composer3, 0);
                                composer3.endReplaceGroup();
                            } else {
                                composerStartRestartGroup.startReplaceGroup(577914947);
                                int daysFromStartOfWeekToFirstOfMonth3 = i4 - calendarMonth2.getDaysFromStartOfWeekToFirstOfMonth();
                                startUtcTimeMillis = (((long) daysFromStartOfWeekToFirstOfMonth3) * CalendarModelKt.MillisecondsIn24Hours) + calendarMonth2.getStartUtcTimeMillis();
                                if (startUtcTimeMillis == j) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (l == null) {
                                    z2 = false;
                                } else {
                                    z2 = true;
                                }
                                if (l2 == null) {
                                    z3 = false;
                                } else {
                                    z3 = true;
                                }
                                if (selectedRangeInfo != null) {
                                    composerStartRestartGroup.startReplaceGroup(578361347);
                                    if ((i7 & 458752) == 131072) {
                                        z12 = true;
                                    } else {
                                        z12 = false;
                                    }
                                    zChanged2 = z12 | composerStartRestartGroup.changed(startUtcTimeMillis);
                                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                                    if (zChanged2) {
                                        if (l != null) {
                                            jLongValue = l.longValue();
                                        } else {
                                            jLongValue = Long.MAX_VALUE;
                                        }
                                        if (startUtcTimeMillis < jLongValue) {
                                            z13 = false;
                                        } else {
                                            if (l2 != null) {
                                                jLongValue2 = l2.longValue();
                                            } else {
                                                jLongValue2 = Long.MIN_VALUE;
                                            }
                                            if (startUtcTimeMillis <= jLongValue2) {
                                                z13 = true;
                                            } else {
                                                z13 = false;
                                            }
                                        }
                                        obj = null;
                                        objRememberedValue3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z13), null, 2, null);
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                    } else {
                                        if (l != null) {
                                            jLongValue = l.longValue();
                                        } else {
                                            jLongValue = Long.MAX_VALUE;
                                        }
                                        if (startUtcTimeMillis < jLongValue) {
                                            z13 = false;
                                        } else {
                                            if (l2 != null) {
                                                jLongValue2 = l2.longValue();
                                            } else {
                                                jLongValue2 = Long.MIN_VALUE;
                                            }
                                            if (startUtcTimeMillis <= jLongValue2) {
                                                z13 = true;
                                            } else {
                                                z13 = false;
                                            }
                                        }
                                        obj = null;
                                        objRememberedValue3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z13), null, 2, null);
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                    }
                                    boolean zBooleanValue5 = ((Boolean) ((MutableState) objRememberedValue3).getValue()).booleanValue();
                                    composerStartRestartGroup.endReplaceGroup();
                                    z4 = zBooleanValue5;
                                } else {
                                    i7 = i7;
                                    obj = null;
                                    composerStartRestartGroup.startReplaceGroup(578890300);
                                    composerStartRestartGroup.endReplaceGroup();
                                    z4 = false;
                                }
                                composer4 = composerStartRestartGroup;
                                if (selectedRangeInfo != null) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                boolean z111 = z4;
                                i6 = i7;
                                strDayContentDescription = dayContentDescription(z5, z, z2, z3, z111, composer4, 0);
                                boolean z112 = z;
                                z6 = z2;
                                boolean z113 = z3;
                                date = datePickerFormatter.formatDate(Long.valueOf(startUtcTimeMillis), locale2, true);
                                if (date == null) {
                                    date = "";
                                }
                                strC = date;
                                String localString$default3 = CalendarLocale_jvmKt.toLocalString$default(daysFromStartOfWeekToFirstOfMonth3 + 1, 0, 0, false, locale2, 7, null);
                                Modifier.Companion companion13 = Modifier.Companion;
                                if (z6) {
                                    z7 = true;
                                } else {
                                    z7 = true;
                                }
                                if ((i6 & 112) == 32) {
                                    z8 = true;
                                } else {
                                    z8 = false;
                                }
                                zChanged = z8 | composer4.changed(startUtcTimeMillis);
                                objRememberedValue = composer4.rememberedValue();
                                if (zChanged) {
                                    objRememberedValue = new ll3() { // from class: pa2
                                        @Override // defpackage.ll3
                                        public final Object invoke() {
                                            return DatePickerKt.Month$lambda$58$lambda$57$lambda$54$lambda$53(nl3Var2, startUtcTimeMillis);
                                        }
                                    };
                                    composer4.updateRememberedValue(objRememberedValue);
                                } else {
                                    objRememberedValue = new ll3() { // from class: pa2
                                        @Override // defpackage.ll3
                                        public final Object invoke() {
                                            return DatePickerKt.Month$lambda$58$lambda$57$lambda$54$lambda$53(nl3Var2, startUtcTimeMillis);
                                        }
                                    };
                                    composer4.updateRememberedValue(objRememberedValue);
                                }
                                ll3 ll3Var3 = (ll3) objRememberedValue;
                                boolean zChanged5 = composer4.changed(startUtcTimeMillis);
                                if ((i6 & 29360128) == 8388608) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                z10 = z9 | zChanged5;
                                objRememberedValue2 = composer4.rememberedValue();
                                if (z10) {
                                    if (selectableDates.isSelectableYear(calendarMonth.getYear())) {
                                        z11 = false;
                                    } else {
                                        z11 = false;
                                    }
                                    objRememberedValue2 = Boolean.valueOf(z11);
                                    composer4.updateRememberedValue(objRememberedValue2);
                                } else {
                                    if (selectableDates.isSelectableYear(calendarMonth.getYear())) {
                                        z11 = false;
                                    } else {
                                        z11 = false;
                                    }
                                    objRememberedValue2 = Boolean.valueOf(z11);
                                    composer4.updateRememberedValue(objRememberedValue2);
                                }
                                boolean zBooleanValue6 = ((Boolean) objRememberedValue2).booleanValue();
                                if (strDayContentDescription != null) {
                                    strC = me0.c(strDayContentDescription, ", ", strC);
                                }
                                Day(localString$default3, companion13, z7, ll3Var3, z6, zBooleanValue6, z112, z111, strC, datePickerColors, composer4, ((i6 << 3) & 1879048192) | 48);
                                composer3 = composer4;
                                composer3.endReplaceGroup();
                            }
                        } else {
                            i6 = i7;
                            composer3 = composerStartRestartGroup;
                            composer3.startReplaceGroup(576825328);
                            Modifier.Companion companion14 = Modifier.Companion;
                            DatePickerModalTokens datePickerModalTokens6 = DatePickerModalTokens.INSTANCE;
                            SpacerKt.Spacer(SizeKt.m2101sizeVpY3zN4(SizeKt.m2103sizeInqDBjuR0$default(companion14, datePickerModalTokens6.m4689getDateContainerWidthD9Ej5fM(), datePickerModalTokens6.m4688getDateContainerHeightD9Ej5fM(), 0.0f, 0.0f, 12, null), ((Dp) composer3.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl(), ((Dp) composer3.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl()), composer3, 0);
                            composer3.endReplaceGroup();
                        }
                        i4++;
                        i5++;
                        calendarMonth2 = calendarMonth;
                        nl3Var2 = nl3Var;
                        locale2 = locale;
                        composerStartRestartGroup = composer3;
                        i7 = i6;
                    }
                    int i14 = i7;
                    Composer composer7 = composerStartRestartGroup;
                    composer7.endReplaceGroup();
                    composer7.endNode();
                    i3 = i12 + 1;
                    calendarMonth2 = calendarMonth;
                    nl3Var2 = nl3Var;
                    locale2 = locale;
                    i7 = i14;
                } else {
                    companion4 = companion3;
                }
                dc.b(bm3VarB3, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier3, companion4.getSetModifier());
                RowScopeInstance rowScopeInstance4 = RowScopeInstance.INSTANCE;
                composerStartRestartGroup.startReplaceGroup(1542622325);
                i4 = i13;
                i5 = 0;
                while (i5 < 7) {
                    if (i4 >= calendarMonth2.getDaysFromStartOfWeekToFirstOfMonth()) {
                        if (i4 >= calendarMonth2.getNumberOfDays() + calendarMonth2.getDaysFromStartOfWeekToFirstOfMonth()) {
                            i6 = i7;
                            composer3 = composerStartRestartGroup;
                            composer3.startReplaceGroup(576825328);
                            Modifier.Companion companion15 = Modifier.Companion;
                            DatePickerModalTokens datePickerModalTokens7 = DatePickerModalTokens.INSTANCE;
                            SpacerKt.Spacer(SizeKt.m2101sizeVpY3zN4(SizeKt.m2103sizeInqDBjuR0$default(companion15, datePickerModalTokens7.m4689getDateContainerWidthD9Ej5fM(), datePickerModalTokens7.m4688getDateContainerHeightD9Ej5fM(), 0.0f, 0.0f, 12, null), ((Dp) composer3.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl(), ((Dp) composer3.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl()), composer3, 0);
                            composer3.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(577914947);
                            int daysFromStartOfWeekToFirstOfMonth4 = i4 - calendarMonth2.getDaysFromStartOfWeekToFirstOfMonth();
                            startUtcTimeMillis = (((long) daysFromStartOfWeekToFirstOfMonth4) * CalendarModelKt.MillisecondsIn24Hours) + calendarMonth2.getStartUtcTimeMillis();
                            if (startUtcTimeMillis == j) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (l == null) {
                                z2 = false;
                            } else {
                                z2 = true;
                            }
                            if (l2 == null) {
                                z3 = false;
                            } else {
                                z3 = true;
                            }
                            if (selectedRangeInfo != null) {
                                composerStartRestartGroup.startReplaceGroup(578361347);
                                if ((i7 & 458752) == 131072) {
                                    z12 = true;
                                } else {
                                    z12 = false;
                                }
                                zChanged2 = z12 | composerStartRestartGroup.changed(startUtcTimeMillis);
                                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                                if (zChanged2) {
                                    if (l != null) {
                                        jLongValue = l.longValue();
                                    } else {
                                        jLongValue = Long.MAX_VALUE;
                                    }
                                    if (startUtcTimeMillis < jLongValue) {
                                        z13 = false;
                                    } else {
                                        if (l2 != null) {
                                            jLongValue2 = l2.longValue();
                                        } else {
                                            jLongValue2 = Long.MIN_VALUE;
                                        }
                                        if (startUtcTimeMillis <= jLongValue2) {
                                            z13 = true;
                                        } else {
                                            z13 = false;
                                        }
                                    }
                                    obj = null;
                                    objRememberedValue3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z13), null, 2, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                } else {
                                    if (l != null) {
                                        jLongValue = l.longValue();
                                    } else {
                                        jLongValue = Long.MAX_VALUE;
                                    }
                                    if (startUtcTimeMillis < jLongValue) {
                                        z13 = false;
                                    } else {
                                        if (l2 != null) {
                                            jLongValue2 = l2.longValue();
                                        } else {
                                            jLongValue2 = Long.MIN_VALUE;
                                        }
                                        if (startUtcTimeMillis <= jLongValue2) {
                                            z13 = true;
                                        } else {
                                            z13 = false;
                                        }
                                    }
                                    obj = null;
                                    objRememberedValue3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z13), null, 2, null);
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                                }
                                boolean zBooleanValue7 = ((Boolean) ((MutableState) objRememberedValue3).getValue()).booleanValue();
                                composerStartRestartGroup.endReplaceGroup();
                                z4 = zBooleanValue7;
                            } else {
                                i7 = i7;
                                obj = null;
                                composerStartRestartGroup.startReplaceGroup(578890300);
                                composerStartRestartGroup.endReplaceGroup();
                                z4 = false;
                            }
                            composer4 = composerStartRestartGroup;
                            if (selectedRangeInfo != null) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            boolean z114 = z4;
                            i6 = i7;
                            strDayContentDescription = dayContentDescription(z5, z, z2, z3, z114, composer4, 0);
                            boolean z115 = z;
                            z6 = z2;
                            boolean z116 = z3;
                            date = datePickerFormatter.formatDate(Long.valueOf(startUtcTimeMillis), locale2, true);
                            if (date == null) {
                                date = "";
                            }
                            strC = date;
                            String localString$default4 = CalendarLocale_jvmKt.toLocalString$default(daysFromStartOfWeekToFirstOfMonth4 + 1, 0, 0, false, locale2, 7, null);
                            Modifier.Companion companion16 = Modifier.Companion;
                            if (z6) {
                                z7 = true;
                            } else {
                                z7 = true;
                            }
                            if ((i6 & 112) == 32) {
                                z8 = true;
                            } else {
                                z8 = false;
                            }
                            zChanged = z8 | composer4.changed(startUtcTimeMillis);
                            objRememberedValue = composer4.rememberedValue();
                            if (zChanged) {
                                objRememberedValue = new ll3() { // from class: pa2
                                    @Override // defpackage.ll3
                                    public final Object invoke() {
                                        return DatePickerKt.Month$lambda$58$lambda$57$lambda$54$lambda$53(nl3Var2, startUtcTimeMillis);
                                    }
                                };
                                composer4.updateRememberedValue(objRememberedValue);
                            } else {
                                objRememberedValue = new ll3() { // from class: pa2
                                    @Override // defpackage.ll3
                                    public final Object invoke() {
                                        return DatePickerKt.Month$lambda$58$lambda$57$lambda$54$lambda$53(nl3Var2, startUtcTimeMillis);
                                    }
                                };
                                composer4.updateRememberedValue(objRememberedValue);
                            }
                            ll3 ll3Var4 = (ll3) objRememberedValue;
                            boolean zChanged6 = composer4.changed(startUtcTimeMillis);
                            if ((i6 & 29360128) == 8388608) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            z10 = z9 | zChanged6;
                            objRememberedValue2 = composer4.rememberedValue();
                            if (z10) {
                                if (selectableDates.isSelectableYear(calendarMonth.getYear())) {
                                    z11 = false;
                                } else {
                                    z11 = false;
                                }
                                objRememberedValue2 = Boolean.valueOf(z11);
                                composer4.updateRememberedValue(objRememberedValue2);
                            } else {
                                if (selectableDates.isSelectableYear(calendarMonth.getYear())) {
                                    z11 = false;
                                } else {
                                    z11 = false;
                                }
                                objRememberedValue2 = Boolean.valueOf(z11);
                                composer4.updateRememberedValue(objRememberedValue2);
                            }
                            boolean zBooleanValue8 = ((Boolean) objRememberedValue2).booleanValue();
                            if (strDayContentDescription != null) {
                                strC = me0.c(strDayContentDescription, ", ", strC);
                            }
                            Day(localString$default4, companion16, z7, ll3Var4, z6, zBooleanValue8, z115, z114, strC, datePickerColors, composer4, ((i6 << 3) & 1879048192) | 48);
                            composer3 = composer4;
                            composer3.endReplaceGroup();
                        }
                    } else {
                        i6 = i7;
                        composer3 = composerStartRestartGroup;
                        composer3.startReplaceGroup(576825328);
                        Modifier.Companion companion17 = Modifier.Companion;
                        DatePickerModalTokens datePickerModalTokens8 = DatePickerModalTokens.INSTANCE;
                        SpacerKt.Spacer(SizeKt.m2101sizeVpY3zN4(SizeKt.m2103sizeInqDBjuR0$default(companion17, datePickerModalTokens8.m4689getDateContainerWidthD9Ej5fM(), datePickerModalTokens8.m4688getDateContainerHeightD9Ej5fM(), 0.0f, 0.0f, 12, null), ((Dp) composer3.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl(), ((Dp) composer3.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl()), composer3, 0);
                        composer3.endReplaceGroup();
                    }
                    i4++;
                    i5++;
                    calendarMonth2 = calendarMonth;
                    nl3Var2 = nl3Var;
                    locale2 = locale;
                    composerStartRestartGroup = composer3;
                    i7 = i6;
                }
                int i15 = i7;
                Composer composer8 = composerStartRestartGroup;
                composer8.endReplaceGroup();
                composer8.endNode();
                i3 = i12 + 1;
                calendarMonth2 = calendarMonth;
                nl3Var2 = nl3Var;
                locale2 = locale;
                i7 = i15;
            }
            composer2 = composerStartRestartGroup;
            composer2.endReplaceGroup();
            composer2.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: sa2
                @Override // defpackage.bm3
                public final Object invoke(Object obj2, Object obj3) {
                    int iIntValue = ((Integer) obj3).intValue();
                    return DatePickerKt.Month$lambda$59(calendarMonth, nl3Var, j, l, l2, selectedRangeInfo, datePickerFormatter, selectableDates, datePickerColors, locale, i, (Composer) obj2, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Month$lambda$51$lambda$50(SelectedRangeInfo selectedRangeInfo, DatePickerColors datePickerColors, ContentDrawScope contentDrawScope) {
        DateRangePickerKt.m3384drawRangeBackgroundmxwnekA(contentDrawScope, selectedRangeInfo, datePickerColors.m3334getDayInSelectionRangeContainerColor0d7_KjU());
        contentDrawScope.drawContent();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Month$lambda$58$lambda$57$lambda$54$lambda$53(nl3 nl3Var, long j) {
        nl3Var.invoke(Long.valueOf(j));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Month$lambda$59(CalendarMonth calendarMonth, nl3 nl3Var, long j, Long l, Long l2, SelectedRangeInfo selectedRangeInfo, DatePickerFormatter datePickerFormatter, SelectableDates selectableDates, DatePickerColors datePickerColors, Locale locale, int i, Composer composer, int i2) {
        Month(calendarMonth, nl3Var, j, l, l2, selectedRangeInfo, datePickerFormatter, selectableDates, datePickerColors, locale, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    private static final void MonthsNavigation(final Modifier modifier, final boolean z, final boolean z2, final boolean z3, final String str, final ll3<j59> ll3Var, final ll3<j59> ll3Var2, final ll3<j59> ll3Var3, final DatePickerColors datePickerColors, Composer composer, final int i) {
        int i2;
        ll3<j59> ll3Var4;
        Composer composerStartRestartGroup = composer.startRestartGroup(-773929258);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(z2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(z3) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changed(str) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(ll3Var) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(ll3Var2) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            ll3Var4 = ll3Var3;
            i2 |= composerStartRestartGroup.changedInstance(ll3Var4) ? 8388608 : 4194304;
        } else {
            ll3Var4 = ll3Var3;
        }
        if ((100663296 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(datePickerColors) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if (composerStartRestartGroup.shouldExecute((38347923 & i2) != 38347922, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-773929258, i2, -1, "androidx.compose.material3.MonthsNavigation (DatePicker.kt:2191)");
            }
            Modifier modifierM2088requiredHeight3ABfNKs = SizeKt.m2088requiredHeight3ABfNKs(SizeKt.fillMaxWidth$default(modifier, 0.0f, 1, null), MonthYearHeight);
            int i3 = i2;
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(z3 ? Arrangement.INSTANCE.getStart() : Arrangement.INSTANCE.getSpaceBetween(), Alignment.Companion.getCenterVertically(), composerStartRestartGroup, 48);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2088requiredHeight3ABfNKs);
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
            bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            YearPickerMenuButton(ll3Var4, z3, null, ComposableLambdaKt.rememberComposableLambda(619076006, true, new DatePickerKt$MonthsNavigation$1$1(str, datePickerColors), composerStartRestartGroup, 54), composerStartRestartGroup, ((i3 >> 21) & 14) | 3072 | ((i3 >> 6) & 112), 4);
            if (z3) {
                composerStartRestartGroup.startReplaceGroup(282432080);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(281624840);
                CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m6222boximpl(datePickerColors.m3344getNavigationContentColor0d7_KjU())), ComposableLambdaKt.rememberComposableLambda(-128317193, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt$MonthsNavigation$1$2
                    public final void invoke(Composer composer2, int i4) {
                        if (!composer2.shouldExecute((i4 & 3) != 2, i4 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-128317193, i4, -1, "androidx.compose.material3.MonthsNavigation.<anonymous>.<anonymous> (DatePicker.kt:2220)");
                        }
                        ll3<j59> ll3Var5 = ll3Var2;
                        boolean z4 = z2;
                        ll3<j59> ll3Var6 = ll3Var;
                        boolean z5 = z;
                        Modifier.Companion companion2 = Modifier.Companion;
                        MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer2, 0);
                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                        CompositionLocalMap currentCompositionLocalMap2 = composer2.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer2, companion2);
                        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                        ll3<ComposeUiNode> constructor2 = companion3.getConstructor();
                        if (composer2.getApplier() == null) {
                            ComposablesKt.invalidApplier();
                        }
                        composer2.startReusableNode();
                        if (composer2.getInserting()) {
                            composer2.createNode(constructor2);
                        } else {
                            composer2.useNode();
                        }
                        Composer composerM5355constructorimpl2 = Updater.m5355constructorimpl(composer2);
                        bm3 bm3VarB2 = cc.b(companion3, composerM5355constructorimpl2, measurePolicyRowMeasurePolicy2, composerM5355constructorimpl2, currentCompositionLocalMap2);
                        if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion3.getSetModifier());
                        RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                        Icons.AutoMirrored.Filled filled = Icons.AutoMirrored.Filled.INSTANCE;
                        ImageVector keyboardArrowLeft$material3 = filled.getKeyboardArrowLeft$material3();
                        Strings.Companion companion4 = Strings.Companion;
                        DatePickerKt.IconButtonWithTooltip(ll3Var5, keyboardArrowLeft$material3, Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_switch_to_previous_month), composer2, 0), null, z4, composer2, 0, 8);
                        DatePickerKt.IconButtonWithTooltip(ll3Var6, filled.getKeyboardArrowRight$material3(), Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_switch_to_next_month), composer2, 0), null, z5, composer2, 0, 8);
                        composer2.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, 48 | ProvidedValue.$stable);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ea2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DatePickerKt.MonthsNavigation$lambda$69(modifier, z, z2, z3, str, ll3Var, ll3Var2, ll3Var3, datePickerColors, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 MonthsNavigation$lambda$69(Modifier modifier, boolean z, boolean z2, boolean z3, String str, ll3 ll3Var, ll3 ll3Var2, ll3 ll3Var3, DatePickerColors datePickerColors, int i, Composer composer, int i2) {
        MonthsNavigation(modifier, z, z2, z3, str, ll3Var, ll3Var2, ll3Var3, datePickerColors, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: SwitchableDateEntryContent-KaiTk9E, reason: not valid java name */
    public static final void m3365SwitchableDateEntryContentKaiTk9E(final Long l, final long j, final int i, final nl3<? super Long, j59> nl3Var, final nl3<? super Long, j59> nl3Var2, final CalendarModel calendarModel, final y74 y74Var, final DatePickerFormatter datePickerFormatter, final SelectableDates selectableDates, final DatePickerColors datePickerColors, final FocusRequester focusRequester, Composer composer, final int i2, final int i3) {
        int i4;
        CalendarModel calendarModel2;
        y74 y74Var2;
        SelectableDates selectableDates2;
        int i5;
        Composer composer2;
        int i6;
        Composer composerStartRestartGroup = composer.startRestartGroup(-2053685029);
        if ((i2 & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(l) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= composerStartRestartGroup.changed(j) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i4 |= composerStartRestartGroup.changed(i) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(nl3Var) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(nl3Var2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            calendarModel2 = calendarModel;
            i4 |= composerStartRestartGroup.changedInstance(calendarModel2) ? 131072 : 65536;
        } else {
            calendarModel2 = calendarModel;
        }
        if ((1572864 & i2) == 0) {
            y74Var2 = y74Var;
            i4 |= composerStartRestartGroup.changedInstance(y74Var2) ? 1048576 : 524288;
        } else {
            y74Var2 = y74Var;
        }
        if ((12582912 & i2) == 0) {
            i4 |= (16777216 & i2) == 0 ? composerStartRestartGroup.changed(datePickerFormatter) : composerStartRestartGroup.changedInstance(datePickerFormatter) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            selectableDates2 = selectableDates;
            i4 |= composerStartRestartGroup.changed(selectableDates2) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        } else {
            selectableDates2 = selectableDates;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= composerStartRestartGroup.changed(datePickerColors) ? 536870912 : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (composerStartRestartGroup.changed(focusRequester) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if (composerStartRestartGroup.shouldExecute(((i4 & 306783379) == 306783378 && (i5 & 3) == 2) ? false : true, i4 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-2053685029, i4, i5, "androidx.compose.material3.SwitchableDateEntryContent (DatePicker.kt:1443)");
            }
            final int i7 = -((Density) composerStartRestartGroup.consume(CompositionLocalsKt.getLocalDensity())).mo1428roundToPx0680j_4(Dp.m9042constructorimpl(48.0f));
            final FiniteAnimationSpec finiteAnimationSpecValue = MotionSchemeKt.value(MotionSchemeKeyTokens.DefaultEffects, composerStartRestartGroup, 6);
            final FiniteAnimationSpec finiteAnimationSpecValue2 = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
            int i8 = i4;
            MotionSchemeKeyTokens motionSchemeKeyTokens = MotionSchemeKeyTokens.DefaultSpatial;
            final FiniteAnimationSpec finiteAnimationSpecValue3 = MotionSchemeKt.value(motionSchemeKeyTokens, composerStartRestartGroup, 6);
            final FiniteAnimationSpec finiteAnimationSpecValue4 = MotionSchemeKt.value(motionSchemeKeyTokens, composerStartRestartGroup, 6);
            DisplayMode displayModeM3401boximpl = DisplayMode.m3401boximpl(i);
            Modifier.Companion companion = Modifier.Companion;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion2 = Composer.Companion;
            if (objRememberedValue == companion2.getEmpty()) {
                i6 = 1;
                objRememberedValue = new cf(i6);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                i6 = 1;
            }
            Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(companion, false, (nl3) objRememberedValue, i6, null);
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(finiteAnimationSpecValue3) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue2) | composerStartRestartGroup.changed(i7) | composerStartRestartGroup.changedInstance(finiteAnimationSpecValue4);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue2 == companion2.getEmpty()) {
                objRememberedValue2 = new nl3() { // from class: ja2
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return DatePickerKt.SwitchableDateEntryContent_KaiTk9E$lambda$21$lambda$20(finiteAnimationSpecValue3, finiteAnimationSpecValue, finiteAnimationSpecValue2, i7, finiteAnimationSpecValue4, (AnimatedContentTransitionScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            nl3 nl3Var3 = (nl3) objRememberedValue2;
            final CalendarModel calendarModel3 = calendarModel2;
            final SelectableDates selectableDates3 = selectableDates2;
            boolean z = i6;
            final y74 y74Var3 = y74Var2;
            composer2 = composerStartRestartGroup;
            AnimatedContentKt.AnimatedContent(displayModeM3401boximpl, modifierSemantics$default, nl3Var3, null, "DatePickerDisplayModeAnimation", null, ComposableLambdaKt.rememberComposableLambda(1838500091, z, new fm3<AnimatedContentScope, DisplayMode, Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt$SwitchableDateEntryContent$3
                @Override // defpackage.fm3
                public /* bridge */ /* synthetic */ j59 invoke(AnimatedContentScope animatedContentScope, DisplayMode displayMode, Composer composer3, Integer num) {
                    m3368invokefYndouo(animatedContentScope, displayMode.m3407unboximpl(), composer3, num.intValue());
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke-fYndouo, reason: not valid java name */
                public final void m3368invokefYndouo(AnimatedContentScope animatedContentScope, int i9, Composer composer3, int i10) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1838500091, i10, -1, "androidx.compose.material3.SwitchableDateEntryContent.<anonymous> (DatePicker.kt:1498)");
                    }
                    DisplayMode.Companion companion3 = DisplayMode.Companion;
                    if (DisplayMode.m3404equalsimpl0(i9, companion3.m3409getPickerjFl4v0())) {
                        composer3.startReplaceGroup(1567031954);
                        DatePickerKt.DatePickerContent(l, j, nl3Var, nl3Var2, calendarModel3, y74Var3, datePickerFormatter, selectableDates3, datePickerColors, composer3, 0);
                        composer3.endReplaceGroup();
                    } else if (DisplayMode.m3404equalsimpl0(i9, companion3.m3408getInputjFl4v0())) {
                        composer3.startReplaceGroup(1567050592);
                        DateInputKt.DateInputContent(l, nl3Var, calendarModel3, y74Var3, datePickerFormatter, selectableDates3, datePickerColors, focusRequester, composer3, 0);
                        composer3.endReplaceGroup();
                    } else {
                        composer3.startReplaceGroup(1334373351);
                        composer3.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composer2, ((i8 >> 6) & 14) | 1597440, 40);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ka2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DatePickerKt.SwitchableDateEntryContent_KaiTk9E$lambda$22(l, j, i, nl3Var, nl3Var2, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, focusRequester, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SwitchableDateEntryContent_KaiTk9E$lambda$14$lambda$13(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setContainer(semanticsPropertyReceiver, true);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final ContentTransform SwitchableDateEntryContent_KaiTk9E$lambda$21$lambda$20(FiniteAnimationSpec finiteAnimationSpec, FiniteAnimationSpec finiteAnimationSpec2, FiniteAnimationSpec finiteAnimationSpec3, final int i, FiniteAnimationSpec finiteAnimationSpec4, AnimatedContentTransitionScope animatedContentTransitionScope) {
        return animatedContentTransitionScope.using(DisplayMode.m3404equalsimpl0(((DisplayMode) animatedContentTransitionScope.getTargetState()).m3407unboximpl(), DisplayMode.Companion.m3408getInputjFl4v0()) ? AnimatedContentKt.togetherWith(EnterExitTransitionKt.slideInVertically(finiteAnimationSpec, new we(2)).plus(EnterExitTransitionKt.fadeIn$default(finiteAnimationSpec2, 0.0f, 2, null)), EnterExitTransitionKt.fadeOut$default(finiteAnimationSpec3, 0.0f, 2, null).plus(EnterExitTransitionKt.slideOutVertically(finiteAnimationSpec, new nl3() { // from class: fa2
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Integer.valueOf(DatePickerKt.SwitchableDateEntryContent_KaiTk9E$lambda$21$lambda$20$lambda$16(i, ((Integer) obj).intValue()));
            }
        }))) : AnimatedContentKt.togetherWith(EnterExitTransitionKt.slideInVertically(finiteAnimationSpec, new nl3() { // from class: ga2
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Integer.valueOf(DatePickerKt.SwitchableDateEntryContent_KaiTk9E$lambda$21$lambda$20$lambda$17(i, ((Integer) obj).intValue()));
            }
        }).plus(EnterExitTransitionKt.fadeIn$default(finiteAnimationSpec2, 0.0f, 2, null)), EnterExitTransitionKt.slideOutVertically(finiteAnimationSpec, new ha2(0)).plus(EnterExitTransitionKt.fadeOut$default(finiteAnimationSpec3, 0.0f, 2, null))), AnimatedContentKt.SizeTransform(true, new hj(finiteAnimationSpec4, 1)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int SwitchableDateEntryContent_KaiTk9E$lambda$21$lambda$20$lambda$15(int i) {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int SwitchableDateEntryContent_KaiTk9E$lambda$21$lambda$20$lambda$16(int i, int i2) {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int SwitchableDateEntryContent_KaiTk9E$lambda$21$lambda$20$lambda$17(int i, int i2) {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int SwitchableDateEntryContent_KaiTk9E$lambda$21$lambda$20$lambda$18(int i) {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FiniteAnimationSpec SwitchableDateEntryContent_KaiTk9E$lambda$21$lambda$20$lambda$19(FiniteAnimationSpec finiteAnimationSpec, IntSize intSize, IntSize intSize2) {
        return finiteAnimationSpec;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SwitchableDateEntryContent_KaiTk9E$lambda$22(Long l, long j, int i, nl3 nl3Var, nl3 nl3Var2, CalendarModel calendarModel, y74 y74Var, DatePickerFormatter datePickerFormatter, SelectableDates selectableDates, DatePickerColors datePickerColors, FocusRequester focusRequester, int i2, int i3, Composer composer, int i4) {
        m3365SwitchableDateEntryContentKaiTk9E(l, j, i, nl3Var, nl3Var2, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, focusRequester, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3));
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v8 */
    public static final void WeekDays(final DatePickerColors datePickerColors, final CalendarModel calendarModel, Composer composer, final int i) {
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1849465391);
        int i2 = (i & 6) == 0 ? (composerStartRestartGroup.changed(datePickerColors) ? 4 : 2) | i : i;
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(calendarModel) ? 32 : 16;
        }
        ?? r8 = 0;
        int i3 = 1;
        if (composerStartRestartGroup.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1849465391, i2, -1, "androidx.compose.material3.WeekDays (DatePicker.kt:1782)");
            }
            int firstDayOfWeek = calendarModel.getFirstDayOfWeek();
            List<b36<String, String>> weekdayNames = calendarModel.getWeekdayNames();
            ArrayList arrayList = new ArrayList();
            int i4 = firstDayOfWeek - 1;
            int size = weekdayNames.size();
            for (int i5 = i4; i5 < size; i5++) {
                arrayList.add(weekdayNames.get(i5));
            }
            for (int i6 = 0; i6 < i4; i6++) {
                arrayList.add(weekdayNames.get(i6));
            }
            TextStyle value = TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getWeekdaysLabelTextFont(), composerStartRestartGroup, 6);
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(SizeKt.m2084defaultMinSizeVpY3zN4$default(Modifier.Companion, 0.0f, RecommendedSizeForAccessibility, 1, null), 0.0f, 1, null);
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getSpaceEvenly(), Alignment.Companion.getCenterVertically(), composerStartRestartGroup, 54);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierFillMaxWidth$default);
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
            bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            composerStartRestartGroup.startReplaceGroup(24563235);
            int size2 = arrayList.size();
            int i7 = 0;
            while (i7 < size2) {
                b36 b36Var = (b36) arrayList.get(i7);
                Modifier.Companion companion2 = Modifier.Companion;
                boolean zChanged = composerStartRestartGroup.changed(b36Var);
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new x12(b36Var, i3);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                Modifier modifierClearAndSetSemantics = SemanticsModifierKt.clearAndSetSemantics(companion2, (nl3) objRememberedValue);
                DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                Modifier modifierM2101sizeVpY3zN4 = SizeKt.m2101sizeVpY3zN4(SizeKt.m2103sizeInqDBjuR0$default(modifierClearAndSetSemantics, datePickerModalTokens.m4689getDateContainerWidthD9Ej5fM(), datePickerModalTokens.m4688getDateContainerHeightD9Ej5fM(), 0.0f, 0.0f, 12, null), ((Dp) composerStartRestartGroup.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl(), ((Dp) composerStartRestartGroup.consume(InteractiveComponentSizeKt.getLocalMinimumInteractiveComponentSize())).m9056unboximpl());
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getCenter(), r8);
                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, r8);
                CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2101sizeVpY3zN4);
                ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                ll3<ComposeUiNode> constructor2 = companion3.getConstructor();
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
                bm3 bm3VarB2 = cc.b(companion3, composerM5355constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl2, currentCompositionLocalMap2);
                if (composerM5355constructorimpl2.getInserting() || !aa4.e(composerM5355constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                    dc.b(bm3VarB2, currentCompositeKeyHash2, composerM5355constructorimpl2, currentCompositeKeyHash2);
                }
                Updater.m5363setimpl(composerM5355constructorimpl2, modifierMaterializeModifier2, companion3.getSetModifier());
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                Composer composer3 = composerStartRestartGroup;
                TextKt.m4085TextNvy7gAk((String) b36Var.c, SizeKt.wrapContentSize$default(companion2, null, false, 3, null), datePickerColors.m3353getWeekdayContentColor0d7_KjU(), null, 0L, null, null, null, 0L, null, TextAlign.m8913boximpl(TextAlign.Companion.m8920getCentere0LSkKk()), 0L, 0, false, 0, 0, null, value, composer3, 48, 0, 130040);
                composer3.endNode();
                i7++;
                composerStartRestartGroup = composer3;
                arrayList = arrayList;
                r8 = 0;
                i3 = 1;
            }
            composer2 = composerStartRestartGroup;
            composer2.endReplaceGroup();
            composer2.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: va2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DatePickerKt.WeekDays$lambda$49(datePickerColors, calendarModel, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 WeekDays$lambda$48$lambda$47$lambda$45$lambda$44(b36 b36Var, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setContentDescription(semanticsPropertyReceiver, (String) b36Var.b);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 WeekDays$lambda$49(DatePickerColors datePickerColors, CalendarModel calendarModel, int i, Composer composer, int i2) {
        WeekDays(datePickerColors, calendarModel, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Year(final String str, final Modifier modifier, final boolean z, final boolean z2, final ll3<j59> ll3Var, final boolean z3, final String str2, final DatePickerColors datePickerColors, Composer composer, final int i) {
        String str3;
        int i2;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1153850597);
        if ((i & 6) == 0) {
            str3 = str;
            i2 = (composerStartRestartGroup.changed(str3) ? 4 : 2) | i;
        } else {
            str3 = str;
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(modifier) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(z2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(ll3Var) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(z3) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(str2) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(datePickerColors) ? 8388608 : 4194304;
        }
        int i3 = 1;
        if (composerStartRestartGroup.shouldExecute((4793491 & i2) != 4793490, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1153850597, i2, -1, "androidx.compose.material3.Year (DatePicker.kt:2128)");
            }
            boolean z4 = ((i2 & 7168) == 2048) | ((i2 & 896) == 256);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (z4 || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = (!z2 || z) ? null : BorderStrokeKt.m1315BorderStrokecXLIe8U(DatePickerModalTokens.INSTANCE.m4692getDateTodayContainerOutlineWidthD9Ej5fM(), datePickerColors.m3352getTodayDateBorderColor0d7_KjU());
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            BorderStroke borderStroke = (BorderStroke) objRememberedValue;
            boolean z5 = (3670016 & i2) == 1048576;
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (z5 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new yx(str2, i3);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            int i4 = i2 >> 6;
            int i5 = i4 & 14;
            composer2 = composerStartRestartGroup;
            SurfaceKt.m3943Surfaced85dljk(z, ll3Var, SemanticsModifierKt.semantics(modifier, true, (nl3) objRememberedValue2), z3, ShapesKt.getValue(DatePickerModalTokens.INSTANCE.getSelectionYearStateLayerShape(), composerStartRestartGroup, 6), datePickerColors.yearContainerColor$material3(z, z3, composerStartRestartGroup, i5 | ((i2 >> 12) & 112) | ((i2 >> 15) & 896)).getValue().m6242unboximpl(), 0L, 0.0f, 0.0f, borderStroke, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(-564400443, true, new C05852(str3, datePickerColors, z2, z, z3), composerStartRestartGroup, 54), composer2, i5 | ((i2 >> 9) & 112) | (i4 & 7168), 48, 1472);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ma2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DatePickerKt.Year$lambda$67(str, modifier, z, z2, ll3Var, z3, str2, datePickerColors, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 Year$lambda$66$lambda$65(String str, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setText(semanticsPropertyReceiver, new AnnotatedString(str, null, 2, 0 == true ? 1 : 0));
        SemanticsPropertiesKt.m8280setRolekuIjeqM(semanticsPropertyReceiver, Role.Companion.m8261getButtono7Vup1c());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 Year$lambda$67(String str, Modifier modifier, boolean z, boolean z2, ll3 ll3Var, boolean z3, String str2, DatePickerColors datePickerColors, int i, Composer composer, int i2) {
        Year(str, modifier, z, z2, ll3Var, z3, str2, datePickerColors, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void YearPicker(final Modifier modifier, final long j, final nl3<? super Integer, j59> nl3Var, final SelectableDates selectableDates, final CalendarModel calendarModel, final y74 y74Var, final DatePickerColors datePickerColors, Composer composer, final int i) {
        int i2;
        Composer composerStartRestartGroup = composer.startRestartGroup(-1286899812);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(j) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(nl3Var) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changed(selectableDates) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(calendarModel) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(y74Var) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(datePickerColors) ? 1048576 : 524288;
        }
        if (composerStartRestartGroup.shouldExecute((599187 & i2) != 599186, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1286899812, i2, -1, "androidx.compose.material3.YearPicker (DatePicker.kt:2068)");
            }
            TextKt.ProvideTextStyle(TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getSelectionYearLabelTextFont(), composerStartRestartGroup, 6), ComposableLambdaKt.rememberComposableLambda(1301915789, true, new C05861(calendarModel, j, y74Var, modifier, datePickerColors, nl3Var, selectableDates), composerStartRestartGroup, 54), composerStartRestartGroup, 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ba2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DatePickerKt.YearPicker$lambda$63(modifier, j, nl3Var, selectableDates, calendarModel, y74Var, datePickerColors, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 YearPicker$lambda$63(Modifier modifier, long j, nl3 nl3Var, SelectableDates selectableDates, CalendarModel calendarModel, y74 y74Var, DatePickerColors datePickerColors, int i, Composer composer, int i2) {
        YearPicker(modifier, j, nl3Var, selectableDates, calendarModel, y74Var, datePickerColors, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0063  */
    /* JADX WARN: Code duplicated, block: B:37:0x0066  */
    /* JADX WARN: Code duplicated, block: B:39:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x0070  */
    /* JADX WARN: Code duplicated, block: B:42:0x0073  */
    /* JADX WARN: Code duplicated, block: B:46:0x007d  */
    /* JADX WARN: Code duplicated, block: B:47:0x007f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0088 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x008a  */
    /* JADX WARN: Code duplicated, block: B:52:0x008f  */
    /* JADX WARN: Code duplicated, block: B:55:0x0097  */
    /* JADX WARN: Code duplicated, block: B:58:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:60:0x0100  */
    /* JADX WARN: Code duplicated, block: B:63:0x010a  */
    /* JADX WARN: Code duplicated, block: B:65:? A[RETURN, SYNTHETIC] */
    private static final void YearPickerMenuButton(final ll3<j59> ll3Var, final boolean z, Modifier modifier, final bm3<? super Composer, ? super Integer, j59> bm3Var, Composer composer, final int i, final int i2) {
        ll3<j59> ll3Var2;
        int i3;
        Modifier modifier2;
        int i4;
        boolean z2;
        final Modifier modifier3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        Composer composerStartRestartGroup = composer.startRestartGroup(-709923073);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
            ll3Var2 = ll3Var;
        } else if ((i & 6) == 0) {
            ll3Var2 = ll3Var;
            i3 = (composerStartRestartGroup.changedInstance(ll3Var2) ? 4 : 2) | i;
        } else {
            ll3Var2 = ll3Var;
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changed(z) ? 32 : 16;
        }
        int i5 = i2 & 4;
        if (i5 == 0) {
            if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                modifier2 = modifier;
                i3 |= composerStartRestartGroup.changed(modifier2) ? 256 : 128;
            }
            if ((i2 & 8) != 0) {
                i3 |= 3072;
            } else if ((i & 3072) == 0) {
                if (composerStartRestartGroup.changedInstance(bm3Var)) {
                    i4 = 2048;
                } else {
                    i4 = 1024;
                }
                i3 |= i4;
            }
            if ((i3 & 1171) != 1170) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-709923073, i3, -1, "androidx.compose.material3.YearPickerMenuButton (DatePicker.kt:2247)");
                }
                modifier2 = modifier4;
                ButtonKt.TextButton(ll3Var2, modifier2, false, RoundedCornerShapeKt.getCircleShape(), ButtonDefaults.INSTANCE.m3147textButtonColorsro_MJ88(0L, ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl(), 0L, 0L, composerStartRestartGroup, 24576, 13), null, null, null, null, ComposableLambdaKt.rememberComposableLambda(1899489890, true, new dm3<RowScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.YearPickerMenuButton.1
                    public final void invoke(RowScope rowScope, Composer composer2, int i6) {
                        String strM4461getString2EP1pXo;
                        if (!composer2.shouldExecute((i6 & 17) != 16, i6 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1899489890, i6, -1, "androidx.compose.material3.YearPickerMenuButton.<anonymous> (DatePicker.kt:2256)");
                        }
                        bm3Var.invoke(composer2, 0);
                        Modifier.Companion companion = Modifier.Companion;
                        SpacerKt.Spacer(SizeKt.m2099size3ABfNKs(companion, ButtonDefaults.INSTANCE.m3143getIconSpacingD9Ej5fM()), composer2, 6);
                        ImageVector arrowDropDown$material3 = Icons.Filled.INSTANCE.getArrowDropDown$material3();
                        if (z) {
                            composer2.startReplaceGroup(1509384391);
                            Strings.Companion companion2 = Strings.Companion;
                            strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_switch_to_day_selection), composer2, 0);
                            composer2.endReplaceGroup();
                        } else {
                            composer2.startReplaceGroup(1509478662);
                            Strings.Companion companion3 = Strings.Companion;
                            strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_switch_to_year_selection), composer2, 0);
                            composer2.endReplaceGroup();
                        }
                        IconKt.m3533Iconww6aTOc(arrowDropDown$material3, strM4461getString2EP1pXo, RotateKt.rotate(companion, z ? 180.0f : 0.0f), 0L, composer2, 0, 8);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.dm3
                    public /* bridge */ /* synthetic */ j59 invoke(RowScope rowScope, Composer composer2, Integer num) {
                        invoke(rowScope, composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), composerStartRestartGroup, (i3 & 14) | 807075840 | ((i3 >> 3) & 112), 388);
                composerStartRestartGroup = composerStartRestartGroup;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
            }
            modifier3 = modifier2;
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: wa2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DatePickerKt.YearPickerMenuButton$lambda$70(ll3Var, z, modifier3, bm3Var, i, i2, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        modifier2 = modifier;
        if ((i2 & 8) != 0) {
            i3 |= 3072;
        } else if ((i & 3072) == 0) {
            if (composerStartRestartGroup.changedInstance(bm3Var)) {
                i4 = 2048;
            } else {
                i4 = 1024;
            }
            i3 |= i4;
        }
        if ((i3 & 1171) != 1170) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (composerStartRestartGroup.shouldExecute(z2, i3 & 1)) {
            if (i5 != 0) {
                modifier4 = Modifier.Companion;
            } else {
                modifier4 = modifier2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-709923073, i3, -1, "androidx.compose.material3.YearPickerMenuButton (DatePicker.kt:2247)");
            }
            modifier2 = modifier4;
            ButtonKt.TextButton(ll3Var2, modifier2, false, RoundedCornerShapeKt.getCircleShape(), ButtonDefaults.INSTANCE.m3147textButtonColorsro_MJ88(0L, ((Color) composerStartRestartGroup.consume(ContentColorKt.getLocalContentColor())).m6242unboximpl(), 0L, 0L, composerStartRestartGroup, 24576, 13), null, null, null, null, ComposableLambdaKt.rememberComposableLambda(1899489890, true, new dm3<RowScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt.YearPickerMenuButton.1
                public final void invoke(RowScope rowScope, Composer composer2, int i6) {
                    String strM4461getString2EP1pXo;
                    if (!composer2.shouldExecute((i6 & 17) != 16, i6 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1899489890, i6, -1, "androidx.compose.material3.YearPickerMenuButton.<anonymous> (DatePicker.kt:2256)");
                    }
                    bm3Var.invoke(composer2, 0);
                    Modifier.Companion companion = Modifier.Companion;
                    SpacerKt.Spacer(SizeKt.m2099size3ABfNKs(companion, ButtonDefaults.INSTANCE.m3143getIconSpacingD9Ej5fM()), composer2, 6);
                    ImageVector arrowDropDown$material3 = Icons.Filled.INSTANCE.getArrowDropDown$material3();
                    if (z) {
                        composer2.startReplaceGroup(1509384391);
                        Strings.Companion companion2 = Strings.Companion;
                        strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_switch_to_day_selection), composer2, 0);
                        composer2.endReplaceGroup();
                    } else {
                        composer2.startReplaceGroup(1509478662);
                        Strings.Companion companion3 = Strings.Companion;
                        strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_switch_to_year_selection), composer2, 0);
                        composer2.endReplaceGroup();
                    }
                    IconKt.m3533Iconww6aTOc(arrowDropDown$material3, strM4461getString2EP1pXo, RotateKt.rotate(companion, z ? 180.0f : 0.0f), 0L, composer2, 0, 8);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ j59 invoke(RowScope rowScope, Composer composer2, Integer num) {
                    invoke(rowScope, composer2, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), composerStartRestartGroup, (i3 & 14) | 807075840 | ((i3 >> 3) & 112), 388);
            composerStartRestartGroup = composerStartRestartGroup;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        modifier3 = modifier2;
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: wa2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DatePickerKt.YearPickerMenuButton$lambda$70(ll3Var, z, modifier3, bm3Var, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 YearPickerMenuButton$lambda$70(ll3 ll3Var, boolean z, Modifier modifier, bm3 bm3Var, int i, int i2, Composer composer, int i3) {
        YearPickerMenuButton(ll3Var, z, modifier, bm3Var, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    private static final String dayContentDescription(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(502032503, i, -1, "androidx.compose.material3.dayContentDescription (DatePicker.kt:1972)");
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            composer.startReplaceGroup(974450583);
            if (z3) {
                composer.startReplaceGroup(1416909399);
                Strings.Companion companion = Strings.Companion;
                sb.append(Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composer, 0));
                composer.endReplaceGroup();
            } else if (z4) {
                composer.startReplaceGroup(1416913397);
                Strings.Companion companion2 = Strings.Companion;
                sb.append(Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composer, 0));
                composer.endReplaceGroup();
            } else if (z5) {
                composer.startReplaceGroup(1416917332);
                Strings.Companion companion3 = Strings.Companion;
                sb.append(Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_day_in_range), composer, 0));
                composer.endReplaceGroup();
            } else {
                composer.startReplaceGroup(974832875);
                composer.endReplaceGroup();
            }
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(974838827);
            composer.endReplaceGroup();
        }
        if (z2) {
            composer.startReplaceGroup(1416920485);
            if (sb.length() > 0) {
                sb.append(", ");
            }
            Strings.Companion companion4 = Strings.Companion;
            sb.append(Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_today_description), composer, 0));
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(975029291);
            composer.endReplaceGroup();
        }
        String string = sb.length() == 0 ? null : sb.toString();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return string;
    }

    public static final float getDatePickerHorizontalPadding() {
        return DatePickerHorizontalPadding;
    }

    public static final PaddingValues getDatePickerModeTogglePadding() {
        return DatePickerModeTogglePadding;
    }

    public static final float getMonthYearHeight() {
        return MonthYearHeight;
    }

    public static final float getRecommendedSizeForAccessibility() {
        return RecommendedSizeForAccessibility;
    }

    public static final int numberOfMonthsInRange(y74 y74Var) {
        return ((y74Var.c - y74Var.b) + 1) * 12;
    }

    /* JADX INFO: renamed from: rememberDatePickerState-EU0dCGE, reason: not valid java name */
    public static final DatePickerState m3367rememberDatePickerStateEU0dCGE(Long l, Long l2, y74 y74Var, int i, SelectableDates selectableDates, Composer composer, int i2, int i3) {
        if ((i3 & 1) != 0) {
            l = null;
        }
        final Long l3 = l;
        final Long l4 = (i3 & 2) != 0 ? l3 : l2;
        if ((i3 & 4) != 0) {
            y74Var = DatePickerDefaults.INSTANCE.getYearRange();
        }
        final y74 y74Var2 = y74Var;
        if ((i3 & 8) != 0) {
            i = DisplayMode.Companion.m3409getPickerjFl4v0();
        }
        final int i4 = i;
        if ((i3 & 16) != 0) {
            selectableDates = DatePickerDefaults.INSTANCE.getAllDates();
        }
        final SelectableDates selectableDates2 = selectableDates;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2065763010, i2, -1, "androidx.compose.material3.rememberDatePickerState (DatePicker.kt:373)");
        }
        final Locale localeDefaultLocale = CalendarLocale_androidKt.defaultLocale(composer, 0);
        Object[] objArr = new Object[0];
        Saver<DatePickerStateImpl, Object> Saver = DatePickerStateImpl.Companion.Saver(selectableDates2, localeDefaultLocale);
        boolean z = true;
        boolean zChangedInstance = ((((i2 & 14) ^ 6) > 4 && composer.changed(l3)) || (i2 & 6) == 4) | ((((i2 & 112) ^ 48) > 32 && composer.changed(l4)) || (i2 & 48) == 32) | composer.changedInstance(y74Var2) | ((((i2 & 7168) ^ 3072) > 2048 && composer.changed(i4)) || (i2 & 3072) == 2048);
        if ((((57344 & i2) ^ 24576) <= 16384 || !composer.changed(selectableDates2)) && (i2 & 24576) != 16384) {
            z = false;
        }
        boolean zChangedInstance2 = zChangedInstance | z | composer.changedInstance(localeDefaultLocale);
        Object objRememberedValue = composer.rememberedValue();
        if (zChangedInstance2 || objRememberedValue == Composer.Companion.getEmpty()) {
            Object obj = new ll3() { // from class: z92
                @Override // defpackage.ll3
                public final Object invoke() {
                    return DatePickerKt.rememberDatePickerState_EU0dCGE$lambda$5$lambda$4(l3, l4, y74Var2, i4, selectableDates2, localeDefaultLocale);
                }
            };
            composer.updateRememberedValue(obj);
            objRememberedValue = obj;
        }
        DatePickerStateImpl datePickerStateImpl = (DatePickerStateImpl) RememberSaveableKt.m5624rememberSaveable(objArr, (Saver) Saver, (ll3) objRememberedValue, composer, 0);
        datePickerStateImpl.setSelectableDates(selectableDates2);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return datePickerStateImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DatePickerStateImpl rememberDatePickerState_EU0dCGE$lambda$5$lambda$4(Long l, Long l2, y74 y74Var, int i, SelectableDates selectableDates, Locale locale) {
        return new DatePickerStateImpl(l, l2, y74Var, i, selectableDates, locale, null);
    }

    public static final Object updateDisplayedMonth(final LazyListState lazyListState, final nl3<? super Long, j59> nl3Var, final CalendarModel calendarModel, final y74 y74Var, e02<? super j59> e02Var) {
        Object objCollect = SnapshotStateKt.snapshotFlow(new k51(lazyListState, 2)).collect(new id3() { // from class: androidx.compose.material3.DatePickerKt.updateDisplayedMonth.3
            public final Object emit(int i, e02<? super j59> e02Var2) {
                int firstVisibleItemIndex = lazyListState.getFirstVisibleItemIndex() / 12;
                nl3Var.invoke(new Long(calendarModel.getMonth(y74Var.b + firstVisibleItemIndex, (lazyListState.getFirstVisibleItemIndex() % 12) + 1).getStartUtcTimeMillis()));
                return j59.a;
            }

            @Override // defpackage.id3
            public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var2) {
                return emit(((Number) obj).intValue(), (e02<? super j59>) e02Var2);
            }
        }, e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }

    /* JADX INFO: renamed from: androidx.compose.material3.DatePickerKt$DatePicker$5, reason: invalid class name */
    public static final class AnonymousClass5 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ DatePickerColors $colors;
        final /* synthetic */ DatePickerState $state;

        public AnonymousClass5(DatePickerState datePickerState, DatePickerColors datePickerColors) {
            this.$state = datePickerState;
            this.$colors = datePickerColors;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$1$lambda$0(DatePickerState datePickerState, DisplayMode displayMode) {
            datePickerState.mo3370setDisplayModevCnGnXg(displayMode.m3407unboximpl());
            return j59.a;
        }

        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1483431603, i, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:206)");
            }
            Modifier modifierPadding = PaddingKt.padding(Modifier.Companion, DatePickerKt.getDatePickerModeTogglePadding());
            int iMo3369getDisplayModejFl4v0 = this.$state.mo3369getDisplayModejFl4v0();
            boolean zChanged = composer.changed(this.$state);
            final DatePickerState datePickerState = this.$state;
            Object objRememberedValue = composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new nl3() { // from class: androidx.compose.material3.y
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return DatePickerKt.AnonymousClass5.invoke$lambda$1$lambda$0(datePickerState, (DisplayMode) obj);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            DatePickerKt.m3364DisplayModeToggleButtoniUJLfQg(modifierPadding, iMo3369getDisplayModejFl4v0, (nl3) objRememberedValue, this.$colors, composer, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.DatePickerKt$DatePicker$6, reason: invalid class name */
    public static final class AnonymousClass6 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ CalendarModel $calendarModel;
        final /* synthetic */ DatePickerColors $colors;
        final /* synthetic */ DatePickerFormatter $dateFormatter;
        final /* synthetic */ FocusRequester $focusRequester;
        final /* synthetic */ DatePickerState $state;

        public AnonymousClass6(DatePickerState datePickerState, CalendarModel calendarModel, DatePickerFormatter datePickerFormatter, DatePickerColors datePickerColors, FocusRequester focusRequester) {
            this.$state = datePickerState;
            this.$calendarModel = calendarModel;
            this.$dateFormatter = datePickerFormatter;
            this.$colors = datePickerColors;
            this.$focusRequester = focusRequester;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$1$lambda$0(DatePickerState datePickerState, Long l) {
            datePickerState.setSelectedDateMillis(l);
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$3$lambda$2(DatePickerState datePickerState, long j) {
            datePickerState.setDisplayedMonthMillis(j);
            return j59.a;
        }

        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1346903698, i, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:220)");
            }
            Long selectedDateMillis = this.$state.getSelectedDateMillis();
            long displayedMonthMillis = this.$state.getDisplayedMonthMillis();
            int iMo3369getDisplayModejFl4v0 = this.$state.mo3369getDisplayModejFl4v0();
            boolean zChanged = composer.changed(this.$state);
            final DatePickerState datePickerState = this.$state;
            Object objRememberedValue = composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new nl3() { // from class: androidx.compose.material3.z
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return DatePickerKt.AnonymousClass6.invoke$lambda$1$lambda$0(datePickerState, (Long) obj);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            nl3 nl3Var = (nl3) objRememberedValue;
            boolean zChanged2 = composer.changed(this.$state);
            final DatePickerState datePickerState2 = this.$state;
            Object objRememberedValue2 = composer.rememberedValue();
            if (zChanged2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new nl3() { // from class: androidx.compose.material3.a0
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return DatePickerKt.AnonymousClass6.invoke$lambda$3$lambda$2(datePickerState2, ((Long) obj).longValue());
                    }
                };
                composer.updateRememberedValue(objRememberedValue2);
            }
            DatePickerKt.m3365SwitchableDateEntryContentKaiTk9E(selectedDateMillis, displayedMonthMillis, iMo3369getDisplayModejFl4v0, nl3Var, (nl3) objRememberedValue2, this.$calendarModel, this.$state.getYearRange(), this.$dateFormatter, this.$state.getSelectableDates(), this.$colors, this.$focusRequester, composer, 0, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.DatePickerKt$HorizontalMonthsList$1, reason: invalid class name */
    public static final class AnonymousClass1 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ CalendarModel $calendarModel;
        final /* synthetic */ DatePickerColors $colors;
        final /* synthetic */ DatePickerFormatter $dateFormatter;
        final /* synthetic */ CalendarMonth $firstMonth;
        final /* synthetic */ LazyListState $lazyListState;
        final /* synthetic */ nl3<Long, j59> $onDateSelectionChange;
        final /* synthetic */ SelectableDates $selectableDates;
        final /* synthetic */ Long $selectedDateMillis;
        final /* synthetic */ CalendarDate $today;
        final /* synthetic */ y74 $yearRange;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(LazyListState lazyListState, y74 y74Var, CalendarModel calendarModel, CalendarMonth calendarMonth, nl3<? super Long, j59> nl3Var, CalendarDate calendarDate, Long l, DatePickerFormatter datePickerFormatter, SelectableDates selectableDates, DatePickerColors datePickerColors) {
            this.$lazyListState = lazyListState;
            this.$yearRange = y74Var;
            this.$calendarModel = calendarModel;
            this.$firstMonth = calendarMonth;
            this.$onDateSelectionChange = nl3Var;
            this.$today = calendarDate;
            this.$selectedDateMillis = l;
            this.$dateFormatter = datePickerFormatter;
            this.$selectableDates = selectableDates;
            this.$colors = datePickerColors;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$3$lambda$2(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            SemanticsPropertiesKt.setHorizontalScrollAxisRange(semanticsPropertyReceiver, new ScrollAxisRange(new i0(), new j0(), false, 4, null));
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final float invoke$lambda$3$lambda$2$lambda$0() {
            return 0.0f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final float invoke$lambda$3$lambda$2$lambda$1() {
            return 0.0f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$5$lambda$4(y74 y74Var, final CalendarModel calendarModel, final CalendarMonth calendarMonth, final nl3 nl3Var, final CalendarDate calendarDate, final Long l, final DatePickerFormatter datePickerFormatter, final SelectableDates selectableDates, final DatePickerColors datePickerColors, LazyListScope lazyListScope) {
            LazyListScope.items$default(lazyListScope, DatePickerKt.numberOfMonthsInRange(y74Var), null, null, ComposableLambdaKt.composableLambdaInstance(72599078, true, new fm3<LazyItemScope, Integer, Composer, Integer, j59>() { // from class: androidx.compose.material3.DatePickerKt$HorizontalMonthsList$1$2$1$1
                public final void invoke(LazyItemScope lazyItemScope, int i, Composer composer, int i2) {
                    int i3;
                    if ((i2 & 6) == 0) {
                        i3 = i2 | (composer.changed(lazyItemScope) ? 4 : 2);
                    } else {
                        i3 = i2;
                    }
                    if ((i2 & 48) == 0) {
                        i3 |= composer.changed(i) ? 32 : 16;
                    }
                    if (!composer.shouldExecute((i3 & 147) != 146, i3 & 1)) {
                        composer.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(72599078, i3, -1, "androidx.compose.material3.HorizontalMonthsList.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1733)");
                    }
                    CalendarMonth calendarMonthPlusMonths = calendarModel.plusMonths(calendarMonth, i);
                    Modifier modifierFillParentMaxWidth$default = LazyItemScope.fillParentMaxWidth$default(lazyItemScope, Modifier.Companion, 0.0f, 1, null);
                    nl3<Long, j59> nl3Var2 = nl3Var;
                    CalendarDate calendarDate2 = calendarDate;
                    Long l2 = l;
                    DatePickerFormatter datePickerFormatter2 = datePickerFormatter;
                    SelectableDates selectableDates2 = selectableDates;
                    DatePickerColors datePickerColors2 = datePickerColors;
                    CalendarModel calendarModel2 = calendarModel;
                    MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                    int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                    CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierFillParentMaxWidth$default);
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
                    bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                    if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    }
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                    DatePickerKt.Month(calendarMonthPlusMonths, nl3Var2, calendarDate2.getUtcTimeMillis(), l2, null, null, datePickerFormatter2, selectableDates2, datePickerColors2, calendarModel2.getLocale(), composer, 221184);
                    composer.endNode();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.fm3
                public /* bridge */ /* synthetic */ j59 invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
                    invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
                    return j59.a;
                }
            }), 6, null);
            return j59.a;
        }

        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1504086906, i, -1, "androidx.compose.material3.HorizontalMonthsList.<anonymous> (DatePicker.kt:1721)");
            }
            Modifier.Companion companion = Modifier.Companion;
            Object objRememberedValue = composer.rememberedValue();
            Composer.Companion companion2 = Composer.Companion;
            if (objRememberedValue == companion2.getEmpty()) {
                objRememberedValue = new g0();
                composer.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(companion, false, (nl3) objRememberedValue, 1, null);
            LazyListState lazyListState = this.$lazyListState;
            FlingBehavior flingBehaviorRememberSnapFlingBehavior$material3 = DatePickerDefaults.INSTANCE.rememberSnapFlingBehavior$material3(lazyListState, null, composer, RendererCapabilities.DECODER_SUPPORT_MASK, 2);
            boolean zChangedInstance = composer.changedInstance(this.$yearRange) | composer.changedInstance(this.$calendarModel) | composer.changed(this.$firstMonth) | composer.changed(this.$onDateSelectionChange) | composer.changed(this.$today) | composer.changed(this.$selectedDateMillis) | composer.changedInstance(this.$dateFormatter) | composer.changed(this.$selectableDates) | composer.changed(this.$colors);
            final y74 y74Var = this.$yearRange;
            final CalendarModel calendarModel = this.$calendarModel;
            final CalendarMonth calendarMonth = this.$firstMonth;
            final nl3<Long, j59> nl3Var = this.$onDateSelectionChange;
            final CalendarDate calendarDate = this.$today;
            final Long l = this.$selectedDateMillis;
            final DatePickerFormatter datePickerFormatter = this.$dateFormatter;
            final SelectableDates selectableDates = this.$selectableDates;
            final DatePickerColors datePickerColors = this.$colors;
            Object objRememberedValue2 = composer.rememberedValue();
            if (zChangedInstance || objRememberedValue2 == companion2.getEmpty()) {
                objRememberedValue2 = new nl3() { // from class: androidx.compose.material3.h0
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return DatePickerKt.AnonymousClass1.invoke$lambda$5$lambda$4(y74Var, calendarModel, calendarMonth, nl3Var, calendarDate, l, datePickerFormatter, selectableDates, datePickerColors, (LazyListScope) obj);
                    }
                };
                composer.updateRememberedValue(objRememberedValue2);
            }
            LazyDslKt.LazyRow(modifierSemantics$default, lazyListState, null, false, null, null, flingBehaviorRememberSnapFlingBehavior$material3, false, null, (nl3) objRememberedValue2, composer, 0, 444);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.DatePickerKt$YearPicker$1, reason: invalid class name and case insensitive filesystem */
    public static final class C05861 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ CalendarModel $calendarModel;
        final /* synthetic */ DatePickerColors $colors;
        final /* synthetic */ long $displayedMonthMillis;
        final /* synthetic */ Modifier $modifier;
        final /* synthetic */ nl3<Integer, j59> $onYearSelected;
        final /* synthetic */ SelectableDates $selectableDates;
        final /* synthetic */ y74 $yearRange;

        /* JADX WARN: Multi-variable type inference failed */
        public C05861(CalendarModel calendarModel, long j, y74 y74Var, Modifier modifier, DatePickerColors datePickerColors, nl3<? super Integer, j59> nl3Var, SelectableDates selectableDates) {
            this.$calendarModel = calendarModel;
            this.$displayedMonthMillis = j;
            this.$yearRange = y74Var;
            this.$modifier = modifier;
            this.$colors = datePickerColors;
            this.$onYearSelected = nl3Var;
            this.$selectableDates = selectableDates;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static final j59 invoke$lambda$1$lambda$0(y74 y74Var, CalendarModel calendarModel, int i, int i2, nl3 nl3Var, SelectableDates selectableDates, DatePickerColors datePickerColors, LazyGridScope lazyGridScope) {
            int size;
            y74Var.getClass();
            if (y74Var instanceof Collection) {
                size = ((Collection) y74Var).size();
            } else {
                Iterator it = y74Var.iterator();
                int i3 = 0;
                while (it.hasNext()) {
                    it.next();
                    i3++;
                    if (i3 < 0) {
                        u96.n();
                        throw null;
                    }
                }
                size = i3;
            }
            LazyGridScope.items$default(lazyGridScope, size, null, null, null, ComposableLambdaKt.composableLambdaInstance(674613074, true, new DatePickerKt$YearPicker$1$1$1$1(y74Var, calendarModel, i, i2, nl3Var, selectableDates, datePickerColors)), 14, null);
            return j59.a;
        }

        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1301915789, i, -1, "androidx.compose.material3.YearPicker.<anonymous> (DatePicker.kt:2070)");
            }
            CalendarModel calendarModel = this.$calendarModel;
            final int year = calendarModel.getMonth(calendarModel.getToday()).getYear();
            final int year2 = this.$calendarModel.getMonth(this.$displayedMonthMillis).getYear();
            LazyGridState lazyGridStateRememberLazyGridState = LazyGridStateKt.rememberLazyGridState(Math.max(0, (year2 - this.$yearRange.b) - 3), 0, composer, 0, 2);
            GridCells.Fixed fixed = new GridCells.Fixed(3);
            Modifier modifierM1289backgroundbw27NRU$default = BackgroundKt.m1289backgroundbw27NRU$default(this.$modifier, this.$colors.m3331getContainerColor0d7_KjU(), null, 2, null);
            Arrangement arrangement = Arrangement.INSTANCE;
            Arrangement.HorizontalOrVertical spaceEvenly = arrangement.getSpaceEvenly();
            Arrangement.HorizontalOrVertical horizontalOrVerticalM1740spacedBy0680j_4 = arrangement.m1740spacedBy0680j_4(DatePickerKt.YearsVerticalPadding);
            boolean zChangedInstance = composer.changedInstance(this.$yearRange) | composer.changedInstance(this.$calendarModel) | composer.changed(year2) | composer.changed(year) | composer.changed(this.$onYearSelected) | composer.changed(this.$selectableDates) | composer.changed(this.$colors);
            final y74 y74Var = this.$yearRange;
            final CalendarModel calendarModel2 = this.$calendarModel;
            final nl3<Integer, j59> nl3Var = this.$onYearSelected;
            final SelectableDates selectableDates = this.$selectableDates;
            final DatePickerColors datePickerColors = this.$colors;
            Object objRememberedValue = composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                nl3 nl3Var2 = new nl3() { // from class: androidx.compose.material3.m0
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return DatePickerKt.C05861.invoke$lambda$1$lambda$0(y74Var, calendarModel2, year2, year, nl3Var, selectableDates, datePickerColors, (LazyGridScope) obj);
                    }
                };
                composer.updateRememberedValue(nl3Var2);
                objRememberedValue = nl3Var2;
            }
            LazyGridDslKt.LazyVerticalGrid(fixed, modifierM1289backgroundbw27NRU$default, lazyGridStateRememberLazyGridState, null, false, horizontalOrVerticalM1740spacedBy0680j_4, spaceEvenly, null, false, null, (nl3) objRememberedValue, composer, 1769472, 0, 920);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.DatePickerKt$Year$2, reason: invalid class name and case insensitive filesystem */
    public static final class C05852 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ DatePickerColors $colors;
        final /* synthetic */ boolean $currentYear;
        final /* synthetic */ boolean $enabled;
        final /* synthetic */ boolean $selected;
        final /* synthetic */ String $text;

        public C05852(String str, DatePickerColors datePickerColors, boolean z, boolean z2, boolean z3) {
            this.$text = str;
            this.$colors = datePickerColors;
            this.$currentYear = z;
            this.$selected = z2;
            this.$enabled = z3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$2$lambda$1$lambda$0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            return j59.a;
        }

        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-564400443, i, -1, "androidx.compose.material3.Year.<anonymous> (DatePicker.kt:2157)");
            }
            Modifier.Companion companion = Modifier.Companion;
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(companion, 0.0f, 1, null);
            Alignment center = Alignment.Companion.getCenter();
            String str = this.$text;
            DatePickerColors datePickerColors = this.$colors;
            boolean z = this.$currentYear;
            boolean z2 = this.$selected;
            boolean z3 = this.$enabled;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
            CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierFillMaxWidth$default);
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion2.getConstructor();
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
            bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new l0();
                composer.updateRememberedValue(objRememberedValue);
            }
            TextKt.m4085TextNvy7gAk(str, SemanticsModifierKt.clearAndSetSemantics(companion, (nl3) objRememberedValue), datePickerColors.yearContentColor$material3(z, z2, z3, composer, 0).getValue().m6242unboximpl(), null, 0L, null, null, null, 0L, null, TextAlign.m8913boximpl(TextAlign.Companion.m8920getCentere0LSkKk()), 0L, 0, false, 0, 0, null, null, composer, 0, 0, 261112);
            composer.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.DatePickerKt$Day$2, reason: invalid class name and case insensitive filesystem */
    public static final class C05822 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ DatePickerColors $colors;
        final /* synthetic */ boolean $enabled;
        final /* synthetic */ boolean $inRange;
        final /* synthetic */ boolean $selected;
        final /* synthetic */ String $text;
        final /* synthetic */ boolean $today;

        public C05822(String str, DatePickerColors datePickerColors, boolean z, boolean z2, boolean z3, boolean z4) {
            this.$text = str;
            this.$colors = datePickerColors;
            this.$today = z;
            this.$selected = z2;
            this.$inRange = z3;
            this.$enabled = z4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$2$lambda$1$lambda$0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            return j59.a;
        }

        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1126347158, i, -1, "androidx.compose.material3.Day.<anonymous> (DatePicker.kt:2032)");
            }
            Modifier.Companion companion = Modifier.Companion;
            DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
            Modifier modifierM2093requiredSizeVpY3zN4 = SizeKt.m2093requiredSizeVpY3zN4(companion, datePickerModalTokens.m4689getDateContainerWidthD9Ej5fM(), datePickerModalTokens.m4688getDateContainerHeightD9Ej5fM());
            Alignment center = Alignment.Companion.getCenter();
            String str = this.$text;
            DatePickerColors datePickerColors = this.$colors;
            boolean z = this.$today;
            boolean z2 = this.$selected;
            boolean z3 = this.$inRange;
            boolean z4 = this.$enabled;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
            CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierM2093requiredSizeVpY3zN4);
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion2.getConstructor();
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
            bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new d0();
                composer.updateRememberedValue(objRememberedValue);
            }
            TextKt.m4085TextNvy7gAk(str, SemanticsModifierKt.clearAndSetSemantics(companion, (nl3) objRememberedValue), datePickerColors.dayContentColor$material3(z, z2, z3, z4, composer, 0).getValue().m6242unboximpl(), null, 0L, null, null, null, 0L, null, TextAlign.m8913boximpl(TextAlign.Companion.m8920getCentere0LSkKk()), 0L, 0, false, 0, 0, null, null, composer, 0, 0, 261112);
            composer.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ j59 invoke(Composer composer, Integer num) {
            invoke(composer, num.intValue());
            return j59.a;
        }
    }
}

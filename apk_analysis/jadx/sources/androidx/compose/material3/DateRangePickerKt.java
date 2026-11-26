package androidx.compose.material3;

import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.DateRangePickerKt;
import androidx.compose.material3.internal.CalendarDate;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.material3.internal.CalendarModel_androidKt;
import androidx.compose.material3.internal.CalendarMonth;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.DatePickerModalTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.CustomAccessibilityAction;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.muxer.MuxerUtil;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.aa4;
import defpackage.av0;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.e02;
import defpackage.eb2;
import defpackage.fb2;
import defpackage.fm3;
import defpackage.gx2;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.rg;
import defpackage.u96;
import defpackage.y22;
import defpackage.y74;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class DateRangePickerKt {
    private static final PaddingValues CalendarMonthSubheadPadding = PaddingKt.m2030PaddingValuesa9UjIt4$default(Dp.m9042constructorimpl(24.0f), Dp.m9042constructorimpl(20.0f), 0.0f, Dp.m9042constructorimpl(8.0f), 4, null);
    private static final PaddingValues DateRangePickerTitlePadding = PaddingKt.m2030PaddingValuesa9UjIt4$default(Dp.m9042constructorimpl(64.0f), 0.0f, Dp.m9042constructorimpl(12.0f), 0.0f, 10, null);
    private static final PaddingValues DateRangePickerHeadlinePadding = PaddingKt.m2030PaddingValuesa9UjIt4$default(Dp.m9042constructorimpl(64.0f), 0.0f, Dp.m9042constructorimpl(12.0f), Dp.m9042constructorimpl(12.0f), 2, null);
    private static final float HeaderHeightOffset = Dp.m9042constructorimpl(60.0f);

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
    /* JADX WARN: Code duplicated, block: B:155:0x0285  */
    /* JADX WARN: Code duplicated, block: B:158:0x0290  */
    /* JADX WARN: Code duplicated, block: B:161:0x02a4  */
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
    public static final void DateRangePicker(final DateRangePickerState dateRangePickerState, Modifier modifier, DatePickerFormatter datePickerFormatter, DatePickerColors datePickerColors, bm3<? super Composer, ? super Integer, j59> bm3Var, bm3<? super Composer, ? super Integer, j59> bm3Var2, boolean z, FocusRequester focusRequester, Composer composer, final int i, final int i2) {
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
        Composer composerStartRestartGroup = composer.startRestartGroup(1969726368);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(dateRangePickerState) ? 4 : 2) | i;
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
                                    bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                        public final void invoke(Composer composer3, int i17) {
                                            if (!composer3.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                                composer3.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-803011924, i17, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                            }
                                            DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                    bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                        public final void invoke(Composer composer3, int i17) {
                                            if (!composer3.shouldExecute((i17 & 3) != 2, i17 & 1)) {
                                                composer3.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-331385278, i17, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                            }
                                            DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                                ComposerKt.traceEventStart(1969726368, i13, -1, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:123)");
                            }
                            zChanged = composerStartRestartGroup.changed(dateRangePickerState.getLocale());
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (zChanged || objRememberedValue3 == Composer.Companion.getEmpty()) {
                                if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                                    calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                                } else {
                                    calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                                }
                                objRememberedValue3 = calendarModelCreateCalendarModel;
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                            }
                            CalendarModel calendarModel = (CalendarModel) objRememberedValue3;
                            if (z6) {
                                composerStartRestartGroup.startReplaceGroup(-2018438858);
                                composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1343236786, true, new AnonymousClass5(dateRangePickerState, datePickerColors4), composerStartRestartGroup, 54);
                                composerStartRestartGroup.endReplaceGroup();
                            } else {
                                composerStartRestartGroup.startReplaceGroup(-2018051234);
                                composerStartRestartGroup.endReplaceGroup();
                                composableLambdaRememberComposableLambda = null;
                            }
                            ComposableLambda composableLambda = composableLambdaRememberComposableLambda;
                            DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
                            TextStyle value = TypographyKt.getValue(datePickerModalTokens.getRangeSelectionHeaderHeadlineFont(), composerStartRestartGroup, 6);
                            float fM9042constructorimpl = Dp.m9042constructorimpl(datePickerModalTokens.m4697getRangeSelectionHeaderContainerHeightD9Ej5fM() - HeaderHeightOffset);
                            FocusRequester focusRequester4 = focusRequester3;
                            AnonymousClass6 anonymousClass6 = new AnonymousClass6(dateRangePickerState, calendarModel, datePickerFormatter3, datePickerColors4, focusRequester4);
                            DatePickerFormatter datePickerFormatter4 = datePickerFormatter3;
                            int i18 = i13 >> 9;
                            composer2 = composerStartRestartGroup;
                            DatePickerKt.m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda, datePickerColors4, value, fM9042constructorimpl, ComposableLambdaKt.rememberComposableLambda(684885105, true, anonymousClass6, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i18 & 112) | (i18 & 896) | ((i13 << 3) & 57344));
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
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jb2
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return DateRangePickerKt.DateRangePicker$lambda$3(dateRangePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
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
                                bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                    public final void invoke(Composer composer3, int i19) {
                                        if (!composer3.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-803011924, i19, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                        }
                                        DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                    public final void invoke(Composer composer3, int i19) {
                                        if (!composer3.shouldExecute((i19 & 3) != 2, i19 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-331385278, i19, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                        }
                                        DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                                bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                    public final void invoke(Composer composer3, int i110) {
                                        if (!composer3.shouldExecute((i110 & 3) != 2, i110 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-803011924, i110, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                        }
                                        DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                    public final void invoke(Composer composer3, int i110) {
                                        if (!composer3.shouldExecute((i110 & 3) != 2, i110 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-331385278, i110, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                        }
                                        DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                            ComposerKt.traceEventStart(1969726368, i13, -1, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:123)");
                        }
                        zChanged = composerStartRestartGroup.changed(dateRangePickerState.getLocale());
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                                calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                            } else {
                                calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                            }
                            objRememberedValue3 = calendarModelCreateCalendarModel;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                                calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                            } else {
                                calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                            }
                            objRememberedValue3 = calendarModelCreateCalendarModel;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        CalendarModel calendarModel2 = (CalendarModel) objRememberedValue3;
                        if (z6) {
                            composerStartRestartGroup.startReplaceGroup(-2018438858);
                            composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1343236786, true, new AnonymousClass5(dateRangePickerState, datePickerColors4), composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-2018051234);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambdaRememberComposableLambda = null;
                        }
                        ComposableLambda composableLambda2 = composableLambdaRememberComposableLambda;
                        DatePickerModalTokens datePickerModalTokens2 = DatePickerModalTokens.INSTANCE;
                        TextStyle value2 = TypographyKt.getValue(datePickerModalTokens2.getRangeSelectionHeaderHeadlineFont(), composerStartRestartGroup, 6);
                        float fM9042constructorimpl2 = Dp.m9042constructorimpl(datePickerModalTokens2.m4697getRangeSelectionHeaderContainerHeightD9Ej5fM() - HeaderHeightOffset);
                        FocusRequester focusRequester5 = focusRequester3;
                        AnonymousClass6 anonymousClass7 = new AnonymousClass6(dateRangePickerState, calendarModel2, datePickerFormatter3, datePickerColors4, focusRequester5);
                        DatePickerFormatter datePickerFormatter5 = datePickerFormatter3;
                        int i111 = i13 >> 9;
                        composer2 = composerStartRestartGroup;
                        DatePickerKt.m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda2, datePickerColors4, value2, fM9042constructorimpl2, ComposableLambdaKt.rememberComposableLambda(684885105, true, anonymousClass7, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i111 & 112) | (i111 & 896) | ((i13 << 3) & 57344));
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
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jb2
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DateRangePickerKt.DateRangePicker$lambda$3(dateRangePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
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
                                bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                    public final void invoke(Composer composer3, int i112) {
                                        if (!composer3.shouldExecute((i112 & 3) != 2, i112 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-803011924, i112, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                        }
                                        DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                    public final void invoke(Composer composer3, int i112) {
                                        if (!composer3.shouldExecute((i112 & 3) != 2, i112 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-331385278, i112, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                        }
                                        DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                                bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                    public final void invoke(Composer composer3, int i113) {
                                        if (!composer3.shouldExecute((i113 & 3) != 2, i113 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-803011924, i113, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                        }
                                        DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                    public final void invoke(Composer composer3, int i113) {
                                        if (!composer3.shouldExecute((i113 & 3) != 2, i113 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-331385278, i113, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                        }
                                        DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                            ComposerKt.traceEventStart(1969726368, i13, -1, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:123)");
                        }
                        zChanged = composerStartRestartGroup.changed(dateRangePickerState.getLocale());
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                                calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                            } else {
                                calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                            }
                            objRememberedValue3 = calendarModelCreateCalendarModel;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                                calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                            } else {
                                calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                            }
                            objRememberedValue3 = calendarModelCreateCalendarModel;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        CalendarModel calendarModel3 = (CalendarModel) objRememberedValue3;
                        if (z6) {
                            composerStartRestartGroup.startReplaceGroup(-2018438858);
                            composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1343236786, true, new AnonymousClass5(dateRangePickerState, datePickerColors4), composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-2018051234);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambdaRememberComposableLambda = null;
                        }
                        ComposableLambda composableLambda3 = composableLambdaRememberComposableLambda;
                        DatePickerModalTokens datePickerModalTokens3 = DatePickerModalTokens.INSTANCE;
                        TextStyle value3 = TypographyKt.getValue(datePickerModalTokens3.getRangeSelectionHeaderHeadlineFont(), composerStartRestartGroup, 6);
                        float fM9042constructorimpl3 = Dp.m9042constructorimpl(datePickerModalTokens3.m4697getRangeSelectionHeaderContainerHeightD9Ej5fM() - HeaderHeightOffset);
                        FocusRequester focusRequester6 = focusRequester3;
                        AnonymousClass6 anonymousClass8 = new AnonymousClass6(dateRangePickerState, calendarModel3, datePickerFormatter3, datePickerColors4, focusRequester6);
                        DatePickerFormatter datePickerFormatter6 = datePickerFormatter3;
                        int i114 = i13 >> 9;
                        composer2 = composerStartRestartGroup;
                        DatePickerKt.m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda3, datePickerColors4, value3, fM9042constructorimpl3, ComposableLambdaKt.rememberComposableLambda(684885105, true, anonymousClass8, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i114 & 112) | (i114 & 896) | ((i13 << 3) & 57344));
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
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jb2
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DateRangePickerKt.DateRangePicker$lambda$3(dateRangePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
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
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                public final void invoke(Composer composer3, int i115) {
                                    if (!composer3.shouldExecute((i115 & 3) != 2, i115 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-803011924, i115, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                public final void invoke(Composer composer3, int i115) {
                                    if (!composer3.shouldExecute((i115 & 3) != 2, i115 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-331385278, i115, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                public final void invoke(Composer composer3, int i116) {
                                    if (!composer3.shouldExecute((i116 & 3) != 2, i116 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-803011924, i116, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                public final void invoke(Composer composer3, int i116) {
                                    if (!composer3.shouldExecute((i116 & 3) != 2, i116 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-331385278, i116, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                        ComposerKt.traceEventStart(1969726368, i13, -1, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:123)");
                    }
                    zChanged = composerStartRestartGroup.changed(dateRangePickerState.getLocale());
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    CalendarModel calendarModel4 = (CalendarModel) objRememberedValue3;
                    if (z6) {
                        composerStartRestartGroup.startReplaceGroup(-2018438858);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1343236786, true, new AnonymousClass5(dateRangePickerState, datePickerColors4), composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-2018051234);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambdaRememberComposableLambda = null;
                    }
                    ComposableLambda composableLambda4 = composableLambdaRememberComposableLambda;
                    DatePickerModalTokens datePickerModalTokens4 = DatePickerModalTokens.INSTANCE;
                    TextStyle value4 = TypographyKt.getValue(datePickerModalTokens4.getRangeSelectionHeaderHeadlineFont(), composerStartRestartGroup, 6);
                    float fM9042constructorimpl4 = Dp.m9042constructorimpl(datePickerModalTokens4.m4697getRangeSelectionHeaderContainerHeightD9Ej5fM() - HeaderHeightOffset);
                    FocusRequester focusRequester7 = focusRequester3;
                    AnonymousClass6 anonymousClass9 = new AnonymousClass6(dateRangePickerState, calendarModel4, datePickerFormatter3, datePickerColors4, focusRequester7);
                    DatePickerFormatter datePickerFormatter7 = datePickerFormatter3;
                    int i117 = i13 >> 9;
                    composer2 = composerStartRestartGroup;
                    DatePickerKt.m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda4, datePickerColors4, value4, fM9042constructorimpl4, ComposableLambdaKt.rememberComposableLambda(684885105, true, anonymousClass9, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i117 & 112) | (i117 & 896) | ((i13 << 3) & 57344));
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
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jb2
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DateRangePickerKt.DateRangePicker$lambda$3(dateRangePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
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
                                bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                    public final void invoke(Composer composer3, int i118) {
                                        if (!composer3.shouldExecute((i118 & 3) != 2, i118 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-803011924, i118, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                        }
                                        DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                    public final void invoke(Composer composer3, int i118) {
                                        if (!composer3.shouldExecute((i118 & 3) != 2, i118 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-331385278, i118, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                        }
                                        DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                                bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                    public final void invoke(Composer composer3, int i119) {
                                        if (!composer3.shouldExecute((i119 & 3) != 2, i119 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-803011924, i119, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                        }
                                        DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                    public final void invoke(Composer composer3, int i119) {
                                        if (!composer3.shouldExecute((i119 & 3) != 2, i119 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-331385278, i119, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                        }
                                        DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                            ComposerKt.traceEventStart(1969726368, i13, -1, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:123)");
                        }
                        zChanged = composerStartRestartGroup.changed(dateRangePickerState.getLocale());
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                                calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                            } else {
                                calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                            }
                            objRememberedValue3 = calendarModelCreateCalendarModel;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                                calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                            } else {
                                calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                            }
                            objRememberedValue3 = calendarModelCreateCalendarModel;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        CalendarModel calendarModel5 = (CalendarModel) objRememberedValue3;
                        if (z6) {
                            composerStartRestartGroup.startReplaceGroup(-2018438858);
                            composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1343236786, true, new AnonymousClass5(dateRangePickerState, datePickerColors4), composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-2018051234);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambdaRememberComposableLambda = null;
                        }
                        ComposableLambda composableLambda5 = composableLambdaRememberComposableLambda;
                        DatePickerModalTokens datePickerModalTokens5 = DatePickerModalTokens.INSTANCE;
                        TextStyle value5 = TypographyKt.getValue(datePickerModalTokens5.getRangeSelectionHeaderHeadlineFont(), composerStartRestartGroup, 6);
                        float fM9042constructorimpl5 = Dp.m9042constructorimpl(datePickerModalTokens5.m4697getRangeSelectionHeaderContainerHeightD9Ej5fM() - HeaderHeightOffset);
                        FocusRequester focusRequester8 = focusRequester3;
                        AnonymousClass6 anonymousClass10 = new AnonymousClass6(dateRangePickerState, calendarModel5, datePickerFormatter3, datePickerColors4, focusRequester8);
                        DatePickerFormatter datePickerFormatter8 = datePickerFormatter3;
                        int i1110 = i13 >> 9;
                        composer2 = composerStartRestartGroup;
                        DatePickerKt.m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda5, datePickerColors4, value5, fM9042constructorimpl5, ComposableLambdaKt.rememberComposableLambda(684885105, true, anonymousClass10, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i1110 & 112) | (i1110 & 896) | ((i13 << 3) & 57344));
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
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jb2
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DateRangePickerKt.DateRangePicker$lambda$3(dateRangePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
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
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                public final void invoke(Composer composer3, int i1111) {
                                    if (!composer3.shouldExecute((i1111 & 3) != 2, i1111 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-803011924, i1111, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                public final void invoke(Composer composer3, int i1111) {
                                    if (!composer3.shouldExecute((i1111 & 3) != 2, i1111 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-331385278, i1111, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                public final void invoke(Composer composer3, int i1112) {
                                    if (!composer3.shouldExecute((i1112 & 3) != 2, i1112 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-803011924, i1112, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                public final void invoke(Composer composer3, int i1112) {
                                    if (!composer3.shouldExecute((i1112 & 3) != 2, i1112 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-331385278, i1112, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                        ComposerKt.traceEventStart(1969726368, i13, -1, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:123)");
                    }
                    zChanged = composerStartRestartGroup.changed(dateRangePickerState.getLocale());
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    CalendarModel calendarModel6 = (CalendarModel) objRememberedValue3;
                    if (z6) {
                        composerStartRestartGroup.startReplaceGroup(-2018438858);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1343236786, true, new AnonymousClass5(dateRangePickerState, datePickerColors4), composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-2018051234);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambdaRememberComposableLambda = null;
                    }
                    ComposableLambda composableLambda6 = composableLambdaRememberComposableLambda;
                    DatePickerModalTokens datePickerModalTokens6 = DatePickerModalTokens.INSTANCE;
                    TextStyle value6 = TypographyKt.getValue(datePickerModalTokens6.getRangeSelectionHeaderHeadlineFont(), composerStartRestartGroup, 6);
                    float fM9042constructorimpl6 = Dp.m9042constructorimpl(datePickerModalTokens6.m4697getRangeSelectionHeaderContainerHeightD9Ej5fM() - HeaderHeightOffset);
                    FocusRequester focusRequester9 = focusRequester3;
                    AnonymousClass6 anonymousClass11 = new AnonymousClass6(dateRangePickerState, calendarModel6, datePickerFormatter3, datePickerColors4, focusRequester9);
                    DatePickerFormatter datePickerFormatter9 = datePickerFormatter3;
                    int i1113 = i13 >> 9;
                    composer2 = composerStartRestartGroup;
                    DatePickerKt.m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda6, datePickerColors4, value6, fM9042constructorimpl6, ComposableLambdaKt.rememberComposableLambda(684885105, true, anonymousClass11, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i1113 & 112) | (i1113 & 896) | ((i13 << 3) & 57344));
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
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jb2
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DateRangePickerKt.DateRangePicker$lambda$3(dateRangePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
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
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                public final void invoke(Composer composer3, int i1114) {
                                    if (!composer3.shouldExecute((i1114 & 3) != 2, i1114 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-803011924, i1114, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                public final void invoke(Composer composer3, int i1114) {
                                    if (!composer3.shouldExecute((i1114 & 3) != 2, i1114 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-331385278, i1114, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                public final void invoke(Composer composer3, int i1115) {
                                    if (!composer3.shouldExecute((i1115 & 3) != 2, i1115 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-803011924, i1115, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                public final void invoke(Composer composer3, int i1115) {
                                    if (!composer3.shouldExecute((i1115 & 3) != 2, i1115 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-331385278, i1115, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                        ComposerKt.traceEventStart(1969726368, i13, -1, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:123)");
                    }
                    zChanged = composerStartRestartGroup.changed(dateRangePickerState.getLocale());
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    CalendarModel calendarModel7 = (CalendarModel) objRememberedValue3;
                    if (z6) {
                        composerStartRestartGroup.startReplaceGroup(-2018438858);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1343236786, true, new AnonymousClass5(dateRangePickerState, datePickerColors4), composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-2018051234);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambdaRememberComposableLambda = null;
                    }
                    ComposableLambda composableLambda7 = composableLambdaRememberComposableLambda;
                    DatePickerModalTokens datePickerModalTokens7 = DatePickerModalTokens.INSTANCE;
                    TextStyle value7 = TypographyKt.getValue(datePickerModalTokens7.getRangeSelectionHeaderHeadlineFont(), composerStartRestartGroup, 6);
                    float fM9042constructorimpl7 = Dp.m9042constructorimpl(datePickerModalTokens7.m4697getRangeSelectionHeaderContainerHeightD9Ej5fM() - HeaderHeightOffset);
                    FocusRequester focusRequester10 = focusRequester3;
                    AnonymousClass6 anonymousClass12 = new AnonymousClass6(dateRangePickerState, calendarModel7, datePickerFormatter3, datePickerColors4, focusRequester10);
                    DatePickerFormatter datePickerFormatter10 = datePickerFormatter3;
                    int i1116 = i13 >> 9;
                    composer2 = composerStartRestartGroup;
                    DatePickerKt.m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda7, datePickerColors4, value7, fM9042constructorimpl7, ComposableLambdaKt.rememberComposableLambda(684885105, true, anonymousClass12, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i1116 & 112) | (i1116 & 896) | ((i13 << 3) & 57344));
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
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jb2
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DateRangePickerKt.DateRangePicker$lambda$3(dateRangePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
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
                        bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                            public final void invoke(Composer composer3, int i1117) {
                                if (!composer3.shouldExecute((i1117 & 3) != 2, i1117 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-803011924, i1117, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                }
                                DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                        bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                            public final void invoke(Composer composer3, int i1117) {
                                if (!composer3.shouldExecute((i1117 & 3) != 2, i1117 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-331385278, i1117, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                }
                                DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                        bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                            public final void invoke(Composer composer3, int i1118) {
                                if (!composer3.shouldExecute((i1118 & 3) != 2, i1118 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-803011924, i1118, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                }
                                DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                        bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                            public final void invoke(Composer composer3, int i1118) {
                                if (!composer3.shouldExecute((i1118 & 3) != 2, i1118 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-331385278, i1118, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                }
                                DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                    ComposerKt.traceEventStart(1969726368, i13, -1, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:123)");
                }
                zChanged = composerStartRestartGroup.changed(dateRangePickerState.getLocale());
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                        calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                    } else {
                        calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                    }
                    objRememberedValue3 = calendarModelCreateCalendarModel;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                        calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                    } else {
                        calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                    }
                    objRememberedValue3 = calendarModelCreateCalendarModel;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                CalendarModel calendarModel8 = (CalendarModel) objRememberedValue3;
                if (z6) {
                    composerStartRestartGroup.startReplaceGroup(-2018438858);
                    composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1343236786, true, new AnonymousClass5(dateRangePickerState, datePickerColors4), composerStartRestartGroup, 54);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-2018051234);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambdaRememberComposableLambda = null;
                }
                ComposableLambda composableLambda8 = composableLambdaRememberComposableLambda;
                DatePickerModalTokens datePickerModalTokens8 = DatePickerModalTokens.INSTANCE;
                TextStyle value8 = TypographyKt.getValue(datePickerModalTokens8.getRangeSelectionHeaderHeadlineFont(), composerStartRestartGroup, 6);
                float fM9042constructorimpl8 = Dp.m9042constructorimpl(datePickerModalTokens8.m4697getRangeSelectionHeaderContainerHeightD9Ej5fM() - HeaderHeightOffset);
                FocusRequester focusRequester11 = focusRequester3;
                AnonymousClass6 anonymousClass13 = new AnonymousClass6(dateRangePickerState, calendarModel8, datePickerFormatter3, datePickerColors4, focusRequester11);
                DatePickerFormatter datePickerFormatter11 = datePickerFormatter3;
                int i1119 = i13 >> 9;
                composer2 = composerStartRestartGroup;
                DatePickerKt.m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda8, datePickerColors4, value8, fM9042constructorimpl8, ComposableLambdaKt.rememberComposableLambda(684885105, true, anonymousClass13, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i1119 & 112) | (i1119 & 896) | ((i13 << 3) & 57344));
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
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jb2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DateRangePickerKt.DateRangePicker$lambda$3(dateRangePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
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
                                bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                    public final void invoke(Composer composer3, int i11110) {
                                        if (!composer3.shouldExecute((i11110 & 3) != 2, i11110 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-803011924, i11110, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                        }
                                        DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                    public final void invoke(Composer composer3, int i11110) {
                                        if (!composer3.shouldExecute((i11110 & 3) != 2, i11110 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-331385278, i11110, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                        }
                                        DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                                bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                    public final void invoke(Composer composer3, int i11111) {
                                        if (!composer3.shouldExecute((i11111 & 3) != 2, i11111 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-803011924, i11111, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                        }
                                        DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                                bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                    public final void invoke(Composer composer3, int i11111) {
                                        if (!composer3.shouldExecute((i11111 & 3) != 2, i11111 & 1)) {
                                            composer3.skipToGroupEnd();
                                            return;
                                        }
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-331385278, i11111, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                        }
                                        DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                            ComposerKt.traceEventStart(1969726368, i13, -1, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:123)");
                        }
                        zChanged = composerStartRestartGroup.changed(dateRangePickerState.getLocale());
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                            if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                                calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                            } else {
                                calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                            }
                            objRememberedValue3 = calendarModelCreateCalendarModel;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        } else {
                            if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                                calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                            } else {
                                calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                            }
                            objRememberedValue3 = calendarModelCreateCalendarModel;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        CalendarModel calendarModel9 = (CalendarModel) objRememberedValue3;
                        if (z6) {
                            composerStartRestartGroup.startReplaceGroup(-2018438858);
                            composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1343236786, true, new AnonymousClass5(dateRangePickerState, datePickerColors4), composerStartRestartGroup, 54);
                            composerStartRestartGroup.endReplaceGroup();
                        } else {
                            composerStartRestartGroup.startReplaceGroup(-2018051234);
                            composerStartRestartGroup.endReplaceGroup();
                            composableLambdaRememberComposableLambda = null;
                        }
                        ComposableLambda composableLambda9 = composableLambdaRememberComposableLambda;
                        DatePickerModalTokens datePickerModalTokens9 = DatePickerModalTokens.INSTANCE;
                        TextStyle value9 = TypographyKt.getValue(datePickerModalTokens9.getRangeSelectionHeaderHeadlineFont(), composerStartRestartGroup, 6);
                        float fM9042constructorimpl9 = Dp.m9042constructorimpl(datePickerModalTokens9.m4697getRangeSelectionHeaderContainerHeightD9Ej5fM() - HeaderHeightOffset);
                        FocusRequester focusRequester12 = focusRequester3;
                        AnonymousClass6 anonymousClass14 = new AnonymousClass6(dateRangePickerState, calendarModel9, datePickerFormatter3, datePickerColors4, focusRequester12);
                        DatePickerFormatter datePickerFormatter12 = datePickerFormatter3;
                        int i11112 = i13 >> 9;
                        composer2 = composerStartRestartGroup;
                        DatePickerKt.m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda9, datePickerColors4, value9, fM9042constructorimpl9, ComposableLambdaKt.rememberComposableLambda(684885105, true, anonymousClass14, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i11112 & 112) | (i11112 & 896) | ((i13 << 3) & 57344));
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
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jb2
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DateRangePickerKt.DateRangePicker$lambda$3(dateRangePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
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
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                public final void invoke(Composer composer3, int i11113) {
                                    if (!composer3.shouldExecute((i11113 & 3) != 2, i11113 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-803011924, i11113, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                public final void invoke(Composer composer3, int i11113) {
                                    if (!composer3.shouldExecute((i11113 & 3) != 2, i11113 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-331385278, i11113, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                public final void invoke(Composer composer3, int i11114) {
                                    if (!composer3.shouldExecute((i11114 & 3) != 2, i11114 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-803011924, i11114, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                public final void invoke(Composer composer3, int i11114) {
                                    if (!composer3.shouldExecute((i11114 & 3) != 2, i11114 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-331385278, i11114, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                        ComposerKt.traceEventStart(1969726368, i13, -1, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:123)");
                    }
                    zChanged = composerStartRestartGroup.changed(dateRangePickerState.getLocale());
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    CalendarModel calendarModel10 = (CalendarModel) objRememberedValue3;
                    if (z6) {
                        composerStartRestartGroup.startReplaceGroup(-2018438858);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1343236786, true, new AnonymousClass5(dateRangePickerState, datePickerColors4), composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-2018051234);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambdaRememberComposableLambda = null;
                    }
                    ComposableLambda composableLambda10 = composableLambdaRememberComposableLambda;
                    DatePickerModalTokens datePickerModalTokens10 = DatePickerModalTokens.INSTANCE;
                    TextStyle value10 = TypographyKt.getValue(datePickerModalTokens10.getRangeSelectionHeaderHeadlineFont(), composerStartRestartGroup, 6);
                    float fM9042constructorimpl10 = Dp.m9042constructorimpl(datePickerModalTokens10.m4697getRangeSelectionHeaderContainerHeightD9Ej5fM() - HeaderHeightOffset);
                    FocusRequester focusRequester13 = focusRequester3;
                    AnonymousClass6 anonymousClass15 = new AnonymousClass6(dateRangePickerState, calendarModel10, datePickerFormatter3, datePickerColors4, focusRequester13);
                    DatePickerFormatter datePickerFormatter13 = datePickerFormatter3;
                    int i11115 = i13 >> 9;
                    composer2 = composerStartRestartGroup;
                    DatePickerKt.m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda10, datePickerColors4, value10, fM9042constructorimpl10, ComposableLambdaKt.rememberComposableLambda(684885105, true, anonymousClass15, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i11115 & 112) | (i11115 & 896) | ((i13 << 3) & 57344));
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
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jb2
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DateRangePickerKt.DateRangePicker$lambda$3(dateRangePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
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
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                public final void invoke(Composer composer3, int i11116) {
                                    if (!composer3.shouldExecute((i11116 & 3) != 2, i11116 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-803011924, i11116, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                public final void invoke(Composer composer3, int i11116) {
                                    if (!composer3.shouldExecute((i11116 & 3) != 2, i11116 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-331385278, i11116, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                public final void invoke(Composer composer3, int i11117) {
                                    if (!composer3.shouldExecute((i11117 & 3) != 2, i11117 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-803011924, i11117, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                public final void invoke(Composer composer3, int i11117) {
                                    if (!composer3.shouldExecute((i11117 & 3) != 2, i11117 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-331385278, i11117, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                        ComposerKt.traceEventStart(1969726368, i13, -1, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:123)");
                    }
                    zChanged = composerStartRestartGroup.changed(dateRangePickerState.getLocale());
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    CalendarModel calendarModel11 = (CalendarModel) objRememberedValue3;
                    if (z6) {
                        composerStartRestartGroup.startReplaceGroup(-2018438858);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1343236786, true, new AnonymousClass5(dateRangePickerState, datePickerColors4), composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-2018051234);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambdaRememberComposableLambda = null;
                    }
                    ComposableLambda composableLambda11 = composableLambdaRememberComposableLambda;
                    DatePickerModalTokens datePickerModalTokens11 = DatePickerModalTokens.INSTANCE;
                    TextStyle value11 = TypographyKt.getValue(datePickerModalTokens11.getRangeSelectionHeaderHeadlineFont(), composerStartRestartGroup, 6);
                    float fM9042constructorimpl11 = Dp.m9042constructorimpl(datePickerModalTokens11.m4697getRangeSelectionHeaderContainerHeightD9Ej5fM() - HeaderHeightOffset);
                    FocusRequester focusRequester14 = focusRequester3;
                    AnonymousClass6 anonymousClass16 = new AnonymousClass6(dateRangePickerState, calendarModel11, datePickerFormatter3, datePickerColors4, focusRequester14);
                    DatePickerFormatter datePickerFormatter14 = datePickerFormatter3;
                    int i11118 = i13 >> 9;
                    composer2 = composerStartRestartGroup;
                    DatePickerKt.m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda11, datePickerColors4, value11, fM9042constructorimpl11, ComposableLambdaKt.rememberComposableLambda(684885105, true, anonymousClass16, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i11118 & 112) | (i11118 & 896) | ((i13 << 3) & 57344));
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
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jb2
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DateRangePickerKt.DateRangePicker$lambda$3(dateRangePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
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
                        bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                            public final void invoke(Composer composer3, int i11119) {
                                if (!composer3.shouldExecute((i11119 & 3) != 2, i11119 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-803011924, i11119, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                }
                                DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                        bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                            public final void invoke(Composer composer3, int i11119) {
                                if (!composer3.shouldExecute((i11119 & 3) != 2, i11119 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-331385278, i11119, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                }
                                DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                        bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                            public final void invoke(Composer composer3, int i111110) {
                                if (!composer3.shouldExecute((i111110 & 3) != 2, i111110 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-803011924, i111110, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                }
                                DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                        bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                            public final void invoke(Composer composer3, int i111110) {
                                if (!composer3.shouldExecute((i111110 & 3) != 2, i111110 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-331385278, i111110, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                }
                                DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                    ComposerKt.traceEventStart(1969726368, i13, -1, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:123)");
                }
                zChanged = composerStartRestartGroup.changed(dateRangePickerState.getLocale());
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                        calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                    } else {
                        calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                    }
                    objRememberedValue3 = calendarModelCreateCalendarModel;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                        calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                    } else {
                        calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                    }
                    objRememberedValue3 = calendarModelCreateCalendarModel;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                CalendarModel calendarModel12 = (CalendarModel) objRememberedValue3;
                if (z6) {
                    composerStartRestartGroup.startReplaceGroup(-2018438858);
                    composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1343236786, true, new AnonymousClass5(dateRangePickerState, datePickerColors4), composerStartRestartGroup, 54);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-2018051234);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambdaRememberComposableLambda = null;
                }
                ComposableLambda composableLambda12 = composableLambdaRememberComposableLambda;
                DatePickerModalTokens datePickerModalTokens12 = DatePickerModalTokens.INSTANCE;
                TextStyle value12 = TypographyKt.getValue(datePickerModalTokens12.getRangeSelectionHeaderHeadlineFont(), composerStartRestartGroup, 6);
                float fM9042constructorimpl12 = Dp.m9042constructorimpl(datePickerModalTokens12.m4697getRangeSelectionHeaderContainerHeightD9Ej5fM() - HeaderHeightOffset);
                FocusRequester focusRequester15 = focusRequester3;
                AnonymousClass6 anonymousClass17 = new AnonymousClass6(dateRangePickerState, calendarModel12, datePickerFormatter3, datePickerColors4, focusRequester15);
                DatePickerFormatter datePickerFormatter15 = datePickerFormatter3;
                int i111111 = i13 >> 9;
                composer2 = composerStartRestartGroup;
                DatePickerKt.m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda12, datePickerColors4, value12, fM9042constructorimpl12, ComposableLambdaKt.rememberComposableLambda(684885105, true, anonymousClass17, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i111111 & 112) | (i111111 & 896) | ((i13 << 3) & 57344));
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
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jb2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DateRangePickerKt.DateRangePicker$lambda$3(dateRangePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
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
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                public final void invoke(Composer composer3, int i111112) {
                                    if (!composer3.shouldExecute((i111112 & 3) != 2, i111112 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-803011924, i111112, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                public final void invoke(Composer composer3, int i111112) {
                                    if (!composer3.shouldExecute((i111112 & 3) != 2, i111112 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-331385278, i111112, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                            bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                                public final void invoke(Composer composer3, int i111113) {
                                    if (!composer3.shouldExecute((i111113 & 3) != 2, i111113 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-803011924, i111113, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                            bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                                public final void invoke(Composer composer3, int i111113) {
                                    if (!composer3.shouldExecute((i111113 & 3) != 2, i111113 & 1)) {
                                        composer3.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-331385278, i111113, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                    }
                                    DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                        ComposerKt.traceEventStart(1969726368, i13, -1, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:123)");
                    }
                    zChanged = composerStartRestartGroup.changed(dateRangePickerState.getLocale());
                    objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    } else {
                        if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                            calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                        } else {
                            calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                        }
                        objRememberedValue3 = calendarModelCreateCalendarModel;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                    }
                    CalendarModel calendarModel13 = (CalendarModel) objRememberedValue3;
                    if (z6) {
                        composerStartRestartGroup.startReplaceGroup(-2018438858);
                        composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1343236786, true, new AnonymousClass5(dateRangePickerState, datePickerColors4), composerStartRestartGroup, 54);
                        composerStartRestartGroup.endReplaceGroup();
                    } else {
                        composerStartRestartGroup.startReplaceGroup(-2018051234);
                        composerStartRestartGroup.endReplaceGroup();
                        composableLambdaRememberComposableLambda = null;
                    }
                    ComposableLambda composableLambda13 = composableLambdaRememberComposableLambda;
                    DatePickerModalTokens datePickerModalTokens13 = DatePickerModalTokens.INSTANCE;
                    TextStyle value13 = TypographyKt.getValue(datePickerModalTokens13.getRangeSelectionHeaderHeadlineFont(), composerStartRestartGroup, 6);
                    float fM9042constructorimpl13 = Dp.m9042constructorimpl(datePickerModalTokens13.m4697getRangeSelectionHeaderContainerHeightD9Ej5fM() - HeaderHeightOffset);
                    FocusRequester focusRequester16 = focusRequester3;
                    AnonymousClass6 anonymousClass18 = new AnonymousClass6(dateRangePickerState, calendarModel13, datePickerFormatter3, datePickerColors4, focusRequester16);
                    DatePickerFormatter datePickerFormatter16 = datePickerFormatter3;
                    int i111114 = i13 >> 9;
                    composer2 = composerStartRestartGroup;
                    DatePickerKt.m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda13, datePickerColors4, value13, fM9042constructorimpl13, ComposableLambdaKt.rememberComposableLambda(684885105, true, anonymousClass18, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i111114 & 112) | (i111114 & 896) | ((i13 << 3) & 57344));
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
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jb2
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DateRangePickerKt.DateRangePicker$lambda$3(dateRangePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
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
                        bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                            public final void invoke(Composer composer3, int i111115) {
                                if (!composer3.shouldExecute((i111115 & 3) != 2, i111115 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-803011924, i111115, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                }
                                DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                        bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                            public final void invoke(Composer composer3, int i111115) {
                                if (!composer3.shouldExecute((i111115 & 3) != 2, i111115 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-331385278, i111115, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                }
                                DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                        bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                            public final void invoke(Composer composer3, int i111116) {
                                if (!composer3.shouldExecute((i111116 & 3) != 2, i111116 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-803011924, i111116, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                }
                                DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                        bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                            public final void invoke(Composer composer3, int i111116) {
                                if (!composer3.shouldExecute((i111116 & 3) != 2, i111116 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-331385278, i111116, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                }
                                DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                    ComposerKt.traceEventStart(1969726368, i13, -1, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:123)");
                }
                zChanged = composerStartRestartGroup.changed(dateRangePickerState.getLocale());
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                        calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                    } else {
                        calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                    }
                    objRememberedValue3 = calendarModelCreateCalendarModel;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                        calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                    } else {
                        calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                    }
                    objRememberedValue3 = calendarModelCreateCalendarModel;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                CalendarModel calendarModel14 = (CalendarModel) objRememberedValue3;
                if (z6) {
                    composerStartRestartGroup.startReplaceGroup(-2018438858);
                    composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1343236786, true, new AnonymousClass5(dateRangePickerState, datePickerColors4), composerStartRestartGroup, 54);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-2018051234);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambdaRememberComposableLambda = null;
                }
                ComposableLambda composableLambda14 = composableLambdaRememberComposableLambda;
                DatePickerModalTokens datePickerModalTokens14 = DatePickerModalTokens.INSTANCE;
                TextStyle value14 = TypographyKt.getValue(datePickerModalTokens14.getRangeSelectionHeaderHeadlineFont(), composerStartRestartGroup, 6);
                float fM9042constructorimpl14 = Dp.m9042constructorimpl(datePickerModalTokens14.m4697getRangeSelectionHeaderContainerHeightD9Ej5fM() - HeaderHeightOffset);
                FocusRequester focusRequester17 = focusRequester3;
                AnonymousClass6 anonymousClass19 = new AnonymousClass6(dateRangePickerState, calendarModel14, datePickerFormatter3, datePickerColors4, focusRequester17);
                DatePickerFormatter datePickerFormatter17 = datePickerFormatter3;
                int i111117 = i13 >> 9;
                composer2 = composerStartRestartGroup;
                DatePickerKt.m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda14, datePickerColors4, value14, fM9042constructorimpl14, ComposableLambdaKt.rememberComposableLambda(684885105, true, anonymousClass19, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i111117 & 112) | (i111117 & 896) | ((i13 << 3) & 57344));
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
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jb2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DateRangePickerKt.DateRangePicker$lambda$3(dateRangePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
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
                        bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                            public final void invoke(Composer composer3, int i111118) {
                                if (!composer3.shouldExecute((i111118 & 3) != 2, i111118 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-803011924, i111118, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                }
                                DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                        bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                            public final void invoke(Composer composer3, int i111118) {
                                if (!composer3.shouldExecute((i111118 & 3) != 2, i111118 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-331385278, i111118, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                }
                                DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                        bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                            public final void invoke(Composer composer3, int i111119) {
                                if (!composer3.shouldExecute((i111119 & 3) != 2, i111119 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-803011924, i111119, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                                }
                                DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                        bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                            public final void invoke(Composer composer3, int i111119) {
                                if (!composer3.shouldExecute((i111119 & 3) != 2, i111119 & 1)) {
                                    composer3.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-331385278, i111119, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                                }
                                DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                    ComposerKt.traceEventStart(1969726368, i13, -1, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:123)");
                }
                zChanged = composerStartRestartGroup.changed(dateRangePickerState.getLocale());
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (zChanged) {
                    if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                        calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                    } else {
                        calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                    }
                    objRememberedValue3 = calendarModelCreateCalendarModel;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                } else {
                    if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                        calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                    } else {
                        calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                    }
                    objRememberedValue3 = calendarModelCreateCalendarModel;
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                }
                CalendarModel calendarModel15 = (CalendarModel) objRememberedValue3;
                if (z6) {
                    composerStartRestartGroup.startReplaceGroup(-2018438858);
                    composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1343236786, true, new AnonymousClass5(dateRangePickerState, datePickerColors4), composerStartRestartGroup, 54);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-2018051234);
                    composerStartRestartGroup.endReplaceGroup();
                    composableLambdaRememberComposableLambda = null;
                }
                ComposableLambda composableLambda15 = composableLambdaRememberComposableLambda;
                DatePickerModalTokens datePickerModalTokens15 = DatePickerModalTokens.INSTANCE;
                TextStyle value15 = TypographyKt.getValue(datePickerModalTokens15.getRangeSelectionHeaderHeadlineFont(), composerStartRestartGroup, 6);
                float fM9042constructorimpl15 = Dp.m9042constructorimpl(datePickerModalTokens15.m4697getRangeSelectionHeaderContainerHeightD9Ej5fM() - HeaderHeightOffset);
                FocusRequester focusRequester18 = focusRequester3;
                AnonymousClass6 anonymousClass110 = new AnonymousClass6(dateRangePickerState, calendarModel15, datePickerFormatter3, datePickerColors4, focusRequester18);
                DatePickerFormatter datePickerFormatter18 = datePickerFormatter3;
                int i1111110 = i13 >> 9;
                composer2 = composerStartRestartGroup;
                DatePickerKt.m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda15, datePickerColors4, value15, fM9042constructorimpl15, ComposableLambdaKt.rememberComposableLambda(684885105, true, anonymousClass110, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i1111110 & 112) | (i1111110 & 896) | ((i13 << 3) & 57344));
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
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jb2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DateRangePickerKt.DateRangePicker$lambda$3(dateRangePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
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
                    bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                        public final void invoke(Composer composer3, int i1111111) {
                            if (!composer3.shouldExecute((i1111111 & 3) != 2, i1111111 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-803011924, i1111111, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                            }
                            DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                    bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                        public final void invoke(Composer composer3, int i1111111) {
                            if (!composer3.shouldExecute((i1111111 & 3) != 2, i1111111 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-331385278, i1111111, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                            }
                            DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                    bm3VarRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-803011924, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.2
                        public final void invoke(Composer composer3, int i1111112) {
                            if (!composer3.shouldExecute((i1111112 & 3) != 2, i1111112 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-803011924, i1111112, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:105)");
                            }
                            DateRangePickerDefaults.INSTANCE.m3379DateRangePickerTitleFNtVw6o(dateRangePickerState.mo3387getDisplayModejFl4v0(), PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerTitlePadding), datePickerColorsColors.m3350getTitleContentColor0d7_KjU(), composer3, 3120, 0);
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
                    bm3VarRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-331385278, z5, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt.DateRangePicker.3
                        public final void invoke(Composer composer3, int i1111112) {
                            if (!composer3.shouldExecute((i1111112 & 3) != 2, i1111112 & 1)) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-331385278, i1111112, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:112)");
                            }
                            DateRangePickerDefaults.INSTANCE.m3378DateRangePickerHeadlineqS89cEg(dateRangePickerState.getSelectedStartDateMillis(), dateRangePickerState.getSelectedEndDateMillis(), dateRangePickerState.mo3387getDisplayModejFl4v0(), datePickerFormatter3, PaddingKt.padding(Modifier.Companion, DateRangePickerKt.DateRangePickerHeadlinePadding), datePickerColorsColors.m3343getHeadlineContentColor0d7_KjU(), composer3, 1597440, 0);
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
                ComposerKt.traceEventStart(1969726368, i13, -1, "androidx.compose.material3.DateRangePicker (DateRangePicker.kt:123)");
            }
            zChanged = composerStartRestartGroup.changed(dateRangePickerState.getLocale());
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChanged) {
                if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                    calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                } else {
                    calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                }
                objRememberedValue3 = calendarModelCreateCalendarModel;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            } else {
                if (dateRangePickerState instanceof BaseDatePickerStateImpl) {
                    calendarModelCreateCalendarModel = ((BaseDatePickerStateImpl) dateRangePickerState).getCalendarModel();
                } else {
                    calendarModelCreateCalendarModel = CalendarModel_androidKt.createCalendarModel(dateRangePickerState.getLocale());
                }
                objRememberedValue3 = calendarModelCreateCalendarModel;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            CalendarModel calendarModel16 = (CalendarModel) objRememberedValue3;
            if (z6) {
                composerStartRestartGroup.startReplaceGroup(-2018438858);
                composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1343236786, true, new AnonymousClass5(dateRangePickerState, datePickerColors4), composerStartRestartGroup, 54);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-2018051234);
                composerStartRestartGroup.endReplaceGroup();
                composableLambdaRememberComposableLambda = null;
            }
            ComposableLambda composableLambda16 = composableLambdaRememberComposableLambda;
            DatePickerModalTokens datePickerModalTokens16 = DatePickerModalTokens.INSTANCE;
            TextStyle value16 = TypographyKt.getValue(datePickerModalTokens16.getRangeSelectionHeaderHeadlineFont(), composerStartRestartGroup, 6);
            float fM9042constructorimpl16 = Dp.m9042constructorimpl(datePickerModalTokens16.m4697getRangeSelectionHeaderContainerHeightD9Ej5fM() - HeaderHeightOffset);
            FocusRequester focusRequester19 = focusRequester3;
            AnonymousClass6 anonymousClass111 = new AnonymousClass6(dateRangePickerState, calendarModel16, datePickerFormatter3, datePickerColors4, focusRequester19);
            DatePickerFormatter datePickerFormatter19 = datePickerFormatter3;
            int i1111113 = i13 >> 9;
            composer2 = composerStartRestartGroup;
            DatePickerKt.m3360DateEntryContainerau3_HiA(modifier4, bm3Var6, bm3Var3, composableLambda16, datePickerColors4, value16, fM9042constructorimpl16, ComposableLambdaKt.rememberComposableLambda(684885105, true, anonymousClass111, composerStartRestartGroup, 54), composer2, ((i13 >> 3) & 14) | 14155776 | (i1111113 & 112) | (i1111113 & 896) | ((i13 << 3) & 57344));
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
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: jb2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DateRangePickerKt.DateRangePicker$lambda$3(dateRangePickerState, modifier3, datePickerFormatter2, datePickerColors3, bm3Var4, bm3Var5, z4, focusRequester2, i, i2, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DateRangePicker$lambda$3(DateRangePickerState dateRangePickerState, Modifier modifier, DatePickerFormatter datePickerFormatter, DatePickerColors datePickerColors, bm3 bm3Var, bm3 bm3Var2, boolean z, FocusRequester focusRequester, int i, int i2, Composer composer, int i3) {
        DateRangePicker(dateRangePickerState, modifier, datePickerFormatter, datePickerColors, bm3Var, bm3Var2, z, focusRequester, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:115:0x0200  */
    public static final void DateRangePickerContent(final Long l, final Long l2, final long j, final bm3<? super Long, ? super Long, j59> bm3Var, final nl3<? super Long, j59> nl3Var, final CalendarModel calendarModel, final y74 y74Var, final DatePickerFormatter datePickerFormatter, final SelectableDates selectableDates, final DatePickerColors datePickerColors, Composer composer, final int i) {
        int i2;
        Long l3;
        bm3<? super Long, ? super Long, j59> bm3Var2;
        nl3<? super Long, j59> nl3Var2;
        SelectableDates selectableDates2;
        Object obj;
        ComposeUiNode.Companion companion;
        Composer composerStartRestartGroup = composer.startRestartGroup(-787063721);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(l) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            l3 = l2;
            i2 |= composerStartRestartGroup.changed(l3) ? 32 : 16;
        } else {
            l3 = l2;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changed(j) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            bm3Var2 = bm3Var;
            i2 |= composerStartRestartGroup.changedInstance(bm3Var2) ? 2048 : 1024;
        } else {
            bm3Var2 = bm3Var;
        }
        if ((i & 24576) == 0) {
            nl3Var2 = nl3Var;
            i2 |= composerStartRestartGroup.changedInstance(nl3Var2) ? 16384 : 8192;
        } else {
            nl3Var2 = nl3Var;
        }
        if ((196608 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(calendarModel) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(y74Var) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= (16777216 & i) == 0 ? composerStartRestartGroup.changed(datePickerFormatter) : composerStartRestartGroup.changedInstance(datePickerFormatter) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            selectableDates2 = selectableDates;
            i2 |= composerStartRestartGroup.changed(selectableDates2) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        } else {
            selectableDates2 = selectableDates;
        }
        if ((i & 805306368) == 0) {
            i2 |= composerStartRestartGroup.changed(datePickerColors) ? 536870912 : 268435456;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 306783379) != 306783378, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-787063721, i2, -1, "androidx.compose.material3.DateRangePickerContent (DateRangePicker.kt:764)");
            }
            int iIndexIn = calendarModel.getMonth(j).indexIn(y74Var);
            if (iIndexIn < 0) {
                iIndexIn = 0;
            }
            LazyListState lazyListStateRememberLazyListState = LazyListStateKt.rememberLazyListState(iIndexIn, 0, composerStartRestartGroup, 0, 2);
            Integer numValueOf = Integer.valueOf(iIndexIn);
            boolean zChanged = composerStartRestartGroup.changed(lazyListStateRememberLazyListState) | composerStartRestartGroup.changed(iIndexIn);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                obj = null;
                objRememberedValue = new DateRangePickerKt$DateRangePickerContent$1$1(lazyListStateRememberLazyListState, iIndexIn, null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            } else {
                obj = null;
            }
            EffectsKt.LaunchedEffect(numValueOf, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue, composerStartRestartGroup, 0);
            Modifier modifierM2035paddingVpY3zN4$default = PaddingKt.m2035paddingVpY3zN4$default(Modifier.Companion, DatePickerKt.getDatePickerHorizontalPadding(), 0.0f, 2, obj);
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composerStartRestartGroup, 0);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM2035paddingVpY3zN4$default);
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
            bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting()) {
                companion = companion2;
            } else {
                companion = companion2;
                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                DatePickerKt.WeekDays(datePickerColors, calendarModel, composerStartRestartGroup, ((i2 >> 27) & 14) | ((i2 >> 12) & 112));
                VerticalMonthsList(lazyListStateRememberLazyListState, l, l3, bm3Var2, nl3Var2, calendarModel, y74Var, datePickerFormatter, selectableDates2, datePickerColors, composerStartRestartGroup, ((i2 << 3) & 1008) | (i2 & 7168) | (57344 & i2) | (458752 & i2) | (3670016 & i2) | (29360128 & i2) | (234881024 & i2) | (1879048192 & i2));
                composerStartRestartGroup.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
            ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
            DatePickerKt.WeekDays(datePickerColors, calendarModel, composerStartRestartGroup, ((i2 >> 27) & 14) | ((i2 >> 12) & 112));
            VerticalMonthsList(lazyListStateRememberLazyListState, l, l3, bm3Var2, nl3Var2, calendarModel, y74Var, datePickerFormatter, selectableDates2, datePickerColors, composerStartRestartGroup, ((i2 << 3) & 1008) | (i2 & 7168) | (57344 & i2) | (458752 & i2) | (3670016 & i2) | (29360128 & i2) | (234881024 & i2) | (1879048192 & i2));
            composerStartRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: hb2
                @Override // defpackage.bm3
                public final Object invoke(Object obj2, Object obj3) {
                    int iIntValue = ((Integer) obj3).intValue();
                    return DateRangePickerKt.DateRangePickerContent$lambda$12(l, l2, j, bm3Var, nl3Var, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, i, (Composer) obj2, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DateRangePickerContent$lambda$12(Long l, Long l2, long j, bm3 bm3Var, nl3 nl3Var, CalendarModel calendarModel, y74 y74Var, DatePickerFormatter datePickerFormatter, SelectableDates selectableDates, DatePickerColors datePickerColors, int i, Composer composer, int i2) {
        DateRangePickerContent(l, l2, j, bm3Var, nl3Var, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: renamed from: DateRangePickerState-HVP43zI, reason: not valid java name */
    public static final DateRangePickerState m3380DateRangePickerStateHVP43zI(Locale locale, Long l, Long l2, Long l3, y74 y74Var, int i, SelectableDates selectableDates) {
        return new DateRangePickerStateImpl(l, l2, l3, y74Var, i, selectableDates, locale, null);
    }

    /* JADX INFO: renamed from: DateRangePickerState-HVP43zI$default, reason: not valid java name */
    public static /* synthetic */ DateRangePickerState m3381DateRangePickerStateHVP43zI$default(Locale locale, Long l, Long l2, Long l3, y74 y74Var, int i, SelectableDates selectableDates, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            l = null;
        }
        if ((i2 & 4) != 0) {
            l2 = null;
        }
        if ((i2 & 8) != 0) {
            l3 = l;
        }
        if ((i2 & 16) != 0) {
            y74Var = DatePickerDefaults.INSTANCE.getYearRange();
        }
        if ((i2 & 32) != 0) {
            i = DisplayMode.Companion.m3409getPickerjFl4v0();
        }
        if ((i2 & 64) != 0) {
            selectableDates = DatePickerDefaults.INSTANCE.getAllDates();
        }
        return m3380DateRangePickerStateHVP43zI(locale, l, l2, l3, y74Var, i, selectableDates);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: SwitchableDateEntryContent-eVtQiho, reason: not valid java name */
    public static final void m3382SwitchableDateEntryContenteVtQiho(final Long l, final Long l2, final long j, final int i, final bm3<? super Long, ? super Long, j59> bm3Var, final nl3<? super Long, j59> nl3Var, final CalendarModel calendarModel, final y74 y74Var, final DatePickerFormatter datePickerFormatter, final SelectableDates selectableDates, final DatePickerColors datePickerColors, final FocusRequester focusRequester, Composer composer, final int i2, final int i3) {
        int i4;
        Long l3;
        bm3<? super Long, ? super Long, j59> bm3Var2;
        nl3<? super Long, j59> nl3Var2;
        int i5;
        Composer composer2;
        Composer composerStartRestartGroup = composer.startRestartGroup(621028059);
        if ((i2 & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(l) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            l3 = l2;
            i4 |= composerStartRestartGroup.changed(l3) ? 32 : 16;
        } else {
            l3 = l2;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i4 |= composerStartRestartGroup.changed(j) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= composerStartRestartGroup.changed(i) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            bm3Var2 = bm3Var;
            i4 |= composerStartRestartGroup.changedInstance(bm3Var2) ? 16384 : 8192;
        } else {
            bm3Var2 = bm3Var;
        }
        if ((196608 & i2) == 0) {
            nl3Var2 = nl3Var;
            i4 |= composerStartRestartGroup.changedInstance(nl3Var2) ? 131072 : 65536;
        } else {
            nl3Var2 = nl3Var;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(calendarModel) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(y74Var) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= (i2 & 134217728) == 0 ? composerStartRestartGroup.changed(datePickerFormatter) : composerStartRestartGroup.changedInstance(datePickerFormatter) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= composerStartRestartGroup.changed(selectableDates) ? 536870912 : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (composerStartRestartGroup.changed(datePickerColors) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= composerStartRestartGroup.changed(focusRequester) ? 32 : 16;
        }
        int i6 = i5;
        int i7 = 1;
        if (composerStartRestartGroup.shouldExecute(((i4 & 306783379) == 306783378 && (i6 & 19) == 18) ? false : true, i4 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(621028059, i4, i6, "androidx.compose.material3.SwitchableDateEntryContent (DateRangePicker.kt:708)");
            }
            FiniteAnimationSpec finiteAnimationSpecValue = MotionSchemeKt.value(MotionSchemeKeyTokens.FastEffects, composerStartRestartGroup, 6);
            Modifier.Companion companion = Modifier.Companion;
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new defpackage.b3(i7);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            final Long l4 = l3;
            final bm3<? super Long, ? super Long, j59> bm3Var3 = bm3Var2;
            final nl3<? super Long, j59> nl3Var3 = nl3Var2;
            composer2 = composerStartRestartGroup;
            CrossfadeKt.Crossfade(DisplayMode.m3401boximpl(i), SemanticsModifierKt.semantics$default(companion, false, (nl3) objRememberedValue, 1, null), (FiniteAnimationSpec<Float>) finiteAnimationSpecValue, (String) null, ComposableLambdaKt.rememberComposableLambda(-773828161, true, new dm3<DisplayMode, Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt$SwitchableDateEntryContent$2
                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ j59 invoke(DisplayMode displayMode, Composer composer3, Integer num) {
                    m3386invokeQujVXRc(displayMode.m3407unboximpl(), composer3, num.intValue());
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke-QujVXRc, reason: not valid java name */
                public final void m3386invokeQujVXRc(int i8, Composer composer3, int i9) {
                    int i10;
                    if ((i9 & 6) == 0) {
                        i10 = i9 | (composer3.changed(i8) ? 4 : 2);
                    } else {
                        i10 = i9;
                    }
                    if (!composer3.shouldExecute((i10 & 19) != 18, i10 & 1)) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-773828161, i10, -1, "androidx.compose.material3.SwitchableDateEntryContent.<anonymous> (DateRangePicker.kt:721)");
                    }
                    DisplayMode.Companion companion2 = DisplayMode.Companion;
                    if (DisplayMode.m3404equalsimpl0(i8, companion2.m3409getPickerjFl4v0())) {
                        composer3.startReplaceGroup(-619517270);
                        DateRangePickerKt.DateRangePickerContent(l, l4, j, bm3Var3, nl3Var3, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, composer3, 0);
                        composer3.endReplaceGroup();
                    } else if (DisplayMode.m3404equalsimpl0(i8, companion2.m3408getInputjFl4v0())) {
                        composer3.startReplaceGroup(-619495944);
                        DateRangeInputKt.DateRangeInputContent(l, l4, bm3Var3, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, focusRequester, composer3, 0);
                        composer3.endReplaceGroup();
                    } else {
                        composer3.startReplaceGroup(-2023979101);
                        composer3.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), composer2, ((i4 >> 9) & 14) | 24576, 8);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: db2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DateRangePickerKt.SwitchableDateEntryContent_eVtQiho$lambda$9(l, l2, j, i, bm3Var, nl3Var, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, focusRequester, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SwitchableDateEntryContent_eVtQiho$lambda$8$lambda$7(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setContainer(semanticsPropertyReceiver, true);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 SwitchableDateEntryContent_eVtQiho$lambda$9(Long l, Long l2, long j, int i, bm3 bm3Var, nl3 nl3Var, CalendarModel calendarModel, y74 y74Var, DatePickerFormatter datePickerFormatter, SelectableDates selectableDates, DatePickerColors datePickerColors, FocusRequester focusRequester, int i2, int i3, Composer composer, int i4) {
        m3382SwitchableDateEntryContenteVtQiho(l, l2, j, i, bm3Var, nl3Var, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, focusRequester, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3));
        return j59.a;
    }

    private static final void VerticalMonthsList(LazyListState lazyListState, final Long l, final Long l2, final bm3<? super Long, ? super Long, j59> bm3Var, final nl3<? super Long, j59> nl3Var, final CalendarModel calendarModel, final y74 y74Var, final DatePickerFormatter datePickerFormatter, final SelectableDates selectableDates, final DatePickerColors datePickerColors, Composer composer, final int i) {
        int i2;
        Long l3;
        Long l4;
        Object month;
        Object dateRangePickerKt$VerticalMonthsList$2$1;
        final LazyListState lazyListState2 = lazyListState;
        Composer composerStartRestartGroup = composer.startRestartGroup(1257365001);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(lazyListState2) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            l3 = l;
            i2 |= composerStartRestartGroup.changed(l3) ? 32 : 16;
        } else {
            l3 = l;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            l4 = l2;
            i2 |= composerStartRestartGroup.changed(l4) ? 256 : 128;
        } else {
            l4 = l2;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(nl3Var) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(calendarModel) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(y74Var) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= (16777216 & i) == 0 ? composerStartRestartGroup.changed(datePickerFormatter) : composerStartRestartGroup.changedInstance(datePickerFormatter) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(selectableDates) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if ((805306368 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(datePickerColors) ? 536870912 : 268435456;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 306783379) != 306783378, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1257365001, i2, -1, "androidx.compose.material3.VerticalMonthsList (DateRangePicker.kt:812)");
            }
            CalendarDate today = calendarModel.getToday();
            boolean zChanged = composerStartRestartGroup.changed(y74Var);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                month = calendarModel.getMonth(y74Var.b, 1);
                composerStartRestartGroup.updateRememberedValue(month);
            } else {
                month = objRememberedValue;
            }
            int i3 = i2;
            TextKt.ProvideTextStyle(TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getDateLabelTextFont(), composerStartRestartGroup, 6), ComposableLambdaKt.rememberComposableLambda(1090773432, true, new AnonymousClass1(l3, l4, bm3Var, lazyListState2, y74Var, calendarModel, (CalendarMonth) month, datePickerFormatter, datePickerColors, today, selectableDates), composerStartRestartGroup, 54), composerStartRestartGroup, 48);
            int i4 = i3 & 14;
            boolean zChangedInstance = (i4 == 4) | ((i3 & 57344) == 16384) | composerStartRestartGroup.changedInstance(calendarModel) | composerStartRestartGroup.changedInstance(y74Var);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue2 == Composer.Companion.getEmpty()) {
                lazyListState2 = lazyListState;
                dateRangePickerKt$VerticalMonthsList$2$1 = new DateRangePickerKt$VerticalMonthsList$2$1(lazyListState2, nl3Var, calendarModel, y74Var, null);
                composerStartRestartGroup.updateRememberedValue(dateRangePickerKt$VerticalMonthsList$2$1);
            } else {
                dateRangePickerKt$VerticalMonthsList$2$1 = objRememberedValue2;
                lazyListState2 = lazyListState;
            }
            EffectsKt.LaunchedEffect(lazyListState2, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) dateRangePickerKt$VerticalMonthsList$2$1, composerStartRestartGroup, i4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ib2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DateRangePickerKt.VerticalMonthsList$lambda$15(lazyListState2, l, l2, bm3Var, nl3Var, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 VerticalMonthsList$lambda$15(LazyListState lazyListState, Long l, Long l2, bm3 bm3Var, nl3 nl3Var, CalendarModel calendarModel, y74 y74Var, DatePickerFormatter datePickerFormatter, SelectableDates selectableDates, DatePickerColors datePickerColors, int i, Composer composer, int i2) {
        VerticalMonthsList(lazyListState, l, l2, bm3Var, nl3Var, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<CustomAccessibilityAction> customScrollActions(LazyListState lazyListState, y22 y22Var, String str, String str2) {
        int i = 0;
        return u96.i(new CustomAccessibilityAction(str, new eb2(i, lazyListState, y22Var)), new CustomAccessibilityAction(str2, new fb2(i, lazyListState, y22Var)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean customScrollActions$lambda$16(LazyListState lazyListState, y22 y22Var) {
        if (!lazyListState.getCanScrollBackward()) {
            return false;
        }
        av0.c(y22Var, null, null, new DateRangePickerKt$customScrollActions$scrollUpAction$1$1(lazyListState, null), 3);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean customScrollActions$lambda$17(LazyListState lazyListState, y22 y22Var) {
        if (!lazyListState.getCanScrollForward()) {
            return false;
        }
        av0.c(y22Var, null, null, new DateRangePickerKt$customScrollActions$scrollDownAction$1$1(lazyListState, null), 3);
        return true;
    }

    /* JADX INFO: renamed from: drawRangeBackground-mxwnekA, reason: not valid java name */
    public static final void m3384drawRangeBackgroundmxwnekA(ContentDrawScope contentDrawScope, SelectedRangeInfo selectedRangeInfo, long j) {
        float fMo1434toPx0680j_4 = contentDrawScope.mo1434toPx0680j_4(DatePickerKt.getRecommendedSizeForAccessibility());
        float fMo1434toPx0680j_5 = contentDrawScope.mo1434toPx0680j_4(DatePickerKt.getRecommendedSizeForAccessibility());
        float fMo1434toPx0680j_6 = contentDrawScope.mo1434toPx0680j_4(DatePickerModalTokens.INSTANCE.m4690getDateStateLayerHeightD9Ej5fM());
        float f = (fMo1434toPx0680j_5 - fMo1434toPx0680j_6) / 2.0f;
        float fB = rg.b(7.0f, fMo1434toPx0680j_4, Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() >> 32)), 7.0f);
        long jM3850getGridStartCoordinatesnOccac = selectedRangeInfo.m3850getGridStartCoordinatesnOccac();
        int iM9170getXimpl = IntOffset.m9170getXimpl(jM3850getGridStartCoordinatesnOccac);
        int iM9171getYimpl = IntOffset.m9171getYimpl(jM3850getGridStartCoordinatesnOccac);
        long jM3849getGridEndCoordinatesnOccac = selectedRangeInfo.m3849getGridEndCoordinatesnOccac();
        int iM9170getXimpl2 = IntOffset.m9170getXimpl(jM3849getGridEndCoordinatesnOccac);
        int iM9171getYimpl2 = IntOffset.m9171getYimpl(jM3849getGridEndCoordinatesnOccac);
        float f2 = fMo1434toPx0680j_4 + fB;
        float f3 = fB / 2.0f;
        float fIntBitsToFloat = (iM9170getXimpl * f2) + (selectedRangeInfo.getFirstIsSelectionStart() ? fMo1434toPx0680j_4 / 2.0f : 0.0f) + f3;
        float f4 = (iM9171getYimpl * fMo1434toPx0680j_5) + f;
        float f5 = iM9170getXimpl2 * f2;
        if (selectedRangeInfo.getLastIsSelectionEnd()) {
            fMo1434toPx0680j_4 /= 2.0f;
        }
        float fIntBitsToFloat2 = f5 + fMo1434toPx0680j_4 + f3;
        float f6 = (iM9171getYimpl2 * fMo1434toPx0680j_5) + f;
        boolean z = contentDrawScope.getLayoutDirection() == LayoutDirection.Rtl;
        if (z) {
            fIntBitsToFloat = Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() >> 32)) - fIntBitsToFloat;
            fIntBitsToFloat2 = Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() >> 32)) - fIntBitsToFloat2;
        }
        float fIntBitsToFloat3 = fIntBitsToFloat2;
        DrawScope.m6800drawRectnJ9OG0$default(contentDrawScope, j, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(f4)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Size.m6047constructorimpl((((long) Float.floatToRawIntBits(iM9171getYimpl == iM9171getYimpl2 ? fIntBitsToFloat3 - fIntBitsToFloat : z ? -fIntBitsToFloat : Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() >> 32)) - fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fMo1434toPx0680j_6)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), 0.0f, null, null, 0, 120, null);
        if (iM9171getYimpl != iM9171getYimpl2) {
            for (int i = (iM9171getYimpl2 - iM9171getYimpl) - 1; i > 0; i--) {
                DrawScope.m6800drawRectnJ9OG0$default(contentDrawScope, j, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(0.0f)) << 32) | (((long) Float.floatToRawIntBits((i * fMo1434toPx0680j_5) + f4)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), Size.m6047constructorimpl((((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() >> 32)))) << 32) | (((long) Float.floatToRawIntBits(fMo1434toPx0680j_6)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), 0.0f, null, null, 0, 120, null);
            }
            long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(contentDrawScope.getLayoutDirection() != LayoutDirection.Ltr ? Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() >> 32)) : 0.0f)) << 32) | (((long) Float.floatToRawIntBits(f6)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            if (z) {
                fIntBitsToFloat3 -= Float.intBitsToFloat((int) (contentDrawScope.mo6806getSizeNHjbRc() >> 32));
            }
            DrawScope.m6800drawRectnJ9OG0$default(contentDrawScope, j, jM5979constructorimpl, Size.m6047constructorimpl((((long) Float.floatToRawIntBits(fIntBitsToFloat3)) << 32) | (((long) Float.floatToRawIntBits(fMo1434toPx0680j_6)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), 0.0f, null, null, 0, 120, null);
        }
    }

    public static final PaddingValues getCalendarMonthSubheadPadding() {
        return CalendarMonthSubheadPadding;
    }

    /* JADX INFO: renamed from: rememberDateRangePickerState-IlFM19s, reason: not valid java name */
    public static final DateRangePickerState m3385rememberDateRangePickerStateIlFM19s(Long l, Long l2, Long l3, y74 y74Var, int i, SelectableDates selectableDates, Composer composer, int i2, int i3) {
        final Long l4 = (i3 & 1) != 0 ? null : l;
        final Long l5 = (i3 & 2) != 0 ? null : l2;
        final Long l6 = (i3 & 4) != 0 ? l4 : l3;
        final y74 yearRange = (i3 & 8) != 0 ? DatePickerDefaults.INSTANCE.getYearRange() : y74Var;
        final int iM3409getPickerjFl4v0 = (i3 & 16) != 0 ? DisplayMode.Companion.m3409getPickerjFl4v0() : i;
        final SelectableDates allDates = (i3 & 32) != 0 ? DatePickerDefaults.INSTANCE.getAllDates() : selectableDates;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2012087461, i2, -1, "androidx.compose.material3.rememberDateRangePickerState (DateRangePicker.kt:283)");
        }
        final Locale localeDefaultLocale = CalendarLocale_androidKt.defaultLocale(composer, 0);
        Object[] objArr = new Object[0];
        Saver<DateRangePickerStateImpl, Object> Saver = DateRangePickerStateImpl.Companion.Saver(allDates, localeDefaultLocale);
        boolean z = true;
        boolean zChangedInstance = ((((i2 & 112) ^ 48) > 32 && composer.changed(l5)) || (i2 & 48) == 32) | ((((i2 & 14) ^ 6) > 4 && composer.changed(l4)) || (i2 & 6) == 4) | ((((i2 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && composer.changed(l6)) || (i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | composer.changedInstance(yearRange) | ((((57344 & i2) ^ 24576) > 16384 && composer.changed(iM3409getPickerjFl4v0)) || (i2 & 24576) == 16384);
        if ((((458752 & i2) ^ ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) <= 131072 || !composer.changed(allDates)) && (i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) != 131072) {
            z = false;
        }
        boolean zChangedInstance2 = zChangedInstance | z | composer.changedInstance(localeDefaultLocale);
        Object objRememberedValue = composer.rememberedValue();
        if (zChangedInstance2 || objRememberedValue == Composer.Companion.getEmpty()) {
            Object obj = new ll3() { // from class: gb2
                @Override // defpackage.ll3
                public final Object invoke() {
                    return DateRangePickerKt.rememberDateRangePickerState_IlFM19s$lambda$5$lambda$4(l4, l5, l6, yearRange, iM3409getPickerjFl4v0, allDates, localeDefaultLocale);
                }
            };
            composer.updateRememberedValue(obj);
            objRememberedValue = obj;
        }
        DateRangePickerStateImpl dateRangePickerStateImpl = (DateRangePickerStateImpl) RememberSaveableKt.m5624rememberSaveable(objArr, (Saver) Saver, (ll3) objRememberedValue, composer, 0);
        dateRangePickerStateImpl.setSelectableDates(allDates);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return dateRangePickerStateImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DateRangePickerStateImpl rememberDateRangePickerState_IlFM19s$lambda$5$lambda$4(Long l, Long l2, Long l3, y74 y74Var, int i, SelectableDates selectableDates, Locale locale) {
        return new DateRangePickerStateImpl(l, l2, l3, y74Var, i, selectableDates, locale, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateDateSelection(long j, Long l, Long l2, bm3<? super Long, ? super Long, j59> bm3Var) {
        if ((l == null && l2 == null) || (l != null && l2 != null)) {
            bm3Var.invoke(Long.valueOf(j), null);
        } else if (l == null || j < l.longValue()) {
            bm3Var.invoke(Long.valueOf(j), null);
        } else {
            bm3Var.invoke(l, Long.valueOf(j));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.DateRangePickerKt$DateRangePicker$5, reason: invalid class name */
    public static final class AnonymousClass5 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ DatePickerColors $colors;
        final /* synthetic */ DateRangePickerState $state;

        public AnonymousClass5(DateRangePickerState dateRangePickerState, DatePickerColors datePickerColors) {
            this.$state = dateRangePickerState;
            this.$colors = datePickerColors;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$1$lambda$0(DateRangePickerState dateRangePickerState, DisplayMode displayMode) {
            dateRangePickerState.mo3388setDisplayModevCnGnXg(displayMode.m3407unboximpl());
            return j59.a;
        }

        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1343236786, i, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:139)");
            }
            Modifier modifierPadding = PaddingKt.padding(Modifier.Companion, DatePickerKt.getDatePickerModeTogglePadding());
            int iMo3387getDisplayModejFl4v0 = this.$state.mo3387getDisplayModejFl4v0();
            boolean zChanged = composer.changed(this.$state);
            final DateRangePickerState dateRangePickerState = this.$state;
            Object objRememberedValue = composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new nl3() { // from class: androidx.compose.material3.t0
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return DateRangePickerKt.AnonymousClass5.invoke$lambda$1$lambda$0(dateRangePickerState, (DisplayMode) obj);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            DatePickerKt.m3364DisplayModeToggleButtoniUJLfQg(modifierPadding, iMo3387getDisplayModejFl4v0, (nl3) objRememberedValue, this.$colors, composer, 6);
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

    /* JADX INFO: renamed from: androidx.compose.material3.DateRangePickerKt$DateRangePicker$6, reason: invalid class name */
    public static final class AnonymousClass6 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ CalendarModel $calendarModel;
        final /* synthetic */ DatePickerColors $colors;
        final /* synthetic */ DatePickerFormatter $dateFormatter;
        final /* synthetic */ FocusRequester $focusRequester;
        final /* synthetic */ DateRangePickerState $state;

        public AnonymousClass6(DateRangePickerState dateRangePickerState, CalendarModel calendarModel, DatePickerFormatter datePickerFormatter, DatePickerColors datePickerColors, FocusRequester focusRequester) {
            this.$state = dateRangePickerState;
            this.$calendarModel = calendarModel;
            this.$dateFormatter = datePickerFormatter;
            this.$colors = datePickerColors;
            this.$focusRequester = focusRequester;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$1$lambda$0(DateRangePickerState dateRangePickerState, Long l, Long l2) {
            try {
                dateRangePickerState.setSelection(l, l2);
            } catch (IllegalArgumentException unused) {
            }
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$3$lambda$2(DateRangePickerState dateRangePickerState, long j) {
            dateRangePickerState.setDisplayedMonthMillis(j);
            return j59.a;
        }

        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(684885105, i, -1, "androidx.compose.material3.DateRangePicker.<anonymous> (DateRangePicker.kt:154)");
            }
            Long selectedStartDateMillis = this.$state.getSelectedStartDateMillis();
            Long selectedEndDateMillis = this.$state.getSelectedEndDateMillis();
            long displayedMonthMillis = this.$state.getDisplayedMonthMillis();
            int iMo3387getDisplayModejFl4v0 = this.$state.mo3387getDisplayModejFl4v0();
            boolean zChanged = composer.changed(this.$state);
            final DateRangePickerState dateRangePickerState = this.$state;
            Object objRememberedValue = composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new bm3() { // from class: androidx.compose.material3.u0
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        return DateRangePickerKt.AnonymousClass6.invoke$lambda$1$lambda$0(dateRangePickerState, (Long) obj, (Long) obj2);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            bm3 bm3Var = (bm3) objRememberedValue;
            boolean zChanged2 = composer.changed(this.$state);
            final DateRangePickerState dateRangePickerState2 = this.$state;
            Object objRememberedValue2 = composer.rememberedValue();
            if (zChanged2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new nl3() { // from class: androidx.compose.material3.v0
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return DateRangePickerKt.AnonymousClass6.invoke$lambda$3$lambda$2(dateRangePickerState2, ((Long) obj).longValue());
                    }
                };
                composer.updateRememberedValue(objRememberedValue2);
            }
            DateRangePickerKt.m3382SwitchableDateEntryContenteVtQiho(selectedStartDateMillis, selectedEndDateMillis, displayedMonthMillis, iMo3387getDisplayModejFl4v0, bm3Var, (nl3) objRememberedValue2, this.$calendarModel, this.$state.getYearRange(), this.$dateFormatter, this.$state.getSelectableDates(), this.$colors, this.$focusRequester, composer, 0, 0);
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

    /* JADX INFO: renamed from: androidx.compose.material3.DateRangePickerKt$VerticalMonthsList$1, reason: invalid class name */
    public static final class AnonymousClass1 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ CalendarModel $calendarModel;
        final /* synthetic */ DatePickerColors $colors;
        final /* synthetic */ DatePickerFormatter $dateFormatter;
        final /* synthetic */ CalendarMonth $firstMonth;
        final /* synthetic */ LazyListState $lazyListState;
        final /* synthetic */ bm3<Long, Long, j59> $onDatesSelectionChange;
        final /* synthetic */ SelectableDates $selectableDates;
        final /* synthetic */ Long $selectedEndDateMillis;
        final /* synthetic */ Long $selectedStartDateMillis;
        final /* synthetic */ CalendarDate $today;
        final /* synthetic */ y74 $yearRange;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(Long l, Long l2, bm3<? super Long, ? super Long, j59> bm3Var, LazyListState lazyListState, y74 y74Var, CalendarModel calendarModel, CalendarMonth calendarMonth, DatePickerFormatter datePickerFormatter, DatePickerColors datePickerColors, CalendarDate calendarDate, SelectableDates selectableDates) {
            this.$selectedStartDateMillis = l;
            this.$selectedEndDateMillis = l2;
            this.$onDatesSelectionChange = bm3Var;
            this.$lazyListState = lazyListState;
            this.$yearRange = y74Var;
            this.$calendarModel = calendarModel;
            this.$firstMonth = calendarMonth;
            this.$dateFormatter = datePickerFormatter;
            this.$colors = datePickerColors;
            this.$today = calendarDate;
            this.$selectableDates = selectableDates;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$1$lambda$0(Long l, Long l2, bm3 bm3Var, long j) {
            DateRangePickerKt.updateDateSelection(j, l, l2, bm3Var);
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$5$lambda$4(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            SemanticsPropertiesKt.setVerticalScrollAxisRange(semanticsPropertyReceiver, new ScrollAxisRange(new z0(), new a1(), false, 4, null));
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final float invoke$lambda$5$lambda$4$lambda$2() {
            return 0.0f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final float invoke$lambda$5$lambda$4$lambda$3() {
            return 0.0f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$7$lambda$6(y74 y74Var, final CalendarModel calendarModel, final CalendarMonth calendarMonth, final Long l, final Long l2, final nl3 nl3Var, final CalendarDate calendarDate, final DatePickerFormatter datePickerFormatter, final SelectableDates selectableDates, final DatePickerColors datePickerColors, final List list, LazyListScope lazyListScope) {
            LazyListScope.items$default(lazyListScope, DatePickerKt.numberOfMonthsInRange(y74Var), null, null, ComposableLambdaKt.composableLambdaInstance(682334170, true, new fm3<LazyItemScope, Integer, Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerKt$VerticalMonthsList$1$2$1$1
                /* JADX WARN: Code duplicated, block: B:49:0x013e  */
                /* JADX WARN: Code duplicated, block: B:52:0x0167  */
                /* JADX WARN: Code duplicated, block: B:56:? A[RETURN, SYNTHETIC] */
                public final void invoke(LazyItemScope lazyItemScope, int i, Composer composer, int i2) {
                    int i3;
                    nl3<Long, j59> nl3Var2;
                    SelectedRangeInfo selectedRangeInfo;
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
                        ComposerKt.traceEventStart(682334170, i3, -1, "androidx.compose.material3.VerticalMonthsList.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DateRangePicker.kt:855)");
                    }
                    CalendarMonth calendarMonthPlusMonths = calendarModel.plusMonths(calendarMonth, i);
                    Modifier modifierFillParentMaxWidth$default = LazyItemScope.fillParentMaxWidth$default(lazyItemScope, Modifier.Companion, 0.0f, 1, null);
                    Long l3 = l;
                    Long l4 = l2;
                    nl3<Long, j59> nl3Var3 = nl3Var;
                    CalendarDate calendarDate2 = calendarDate;
                    DatePickerFormatter datePickerFormatter2 = datePickerFormatter;
                    SelectableDates selectableDates2 = selectableDates;
                    DatePickerColors datePickerColors2 = datePickerColors;
                    CalendarModel calendarModel2 = calendarModel;
                    List<CustomAccessibilityAction> list2 = list;
                    MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer, 0);
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
                    bm3 bm3VarB = cc.b(companion, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
                    if (!composerM5355constructorimpl.getInserting()) {
                        nl3Var2 = nl3Var3;
                        if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                        }
                        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                        TextKt.ProvideTextStyle(TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getRangeSelectionMonthSubheadFont(), composer, 6), ComposableLambdaKt.rememberComposableLambda(-577031469, true, new DateRangePickerKt$VerticalMonthsList$1$2$1$1$1$1(datePickerFormatter2, calendarMonthPlusMonths, calendarModel2, list2, datePickerColors2), composer, 54), composer, 48);
                        if (l3 != null || l4 == null) {
                            composer.startReplaceGroup(186488258);
                            composer.endReplaceGroup();
                            selectedRangeInfo = null;
                        } else {
                            composer.startReplaceGroup(185956701);
                            boolean zChanged = composer.changed(l3) | composer.changed(l4);
                            Object objRememberedValue = composer.rememberedValue();
                            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                                objRememberedValue = SelectedRangeInfo.Companion.calculateRangeInfo(calendarMonthPlusMonths, calendarModel2.getCanonicalDate(l3.longValue()), calendarModel2.getCanonicalDate(l4.longValue()));
                                composer.updateRememberedValue(objRememberedValue);
                            }
                            composer.endReplaceGroup();
                            selectedRangeInfo = (SelectedRangeInfo) objRememberedValue;
                        }
                        DatePickerKt.Month(calendarMonthPlusMonths, nl3Var2, calendarDate2.getUtcTimeMillis(), l3, l4, selectedRangeInfo, datePickerFormatter2, selectableDates2, datePickerColors2, calendarModel2.getLocale(), composer, 0);
                        composer.endNode();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                    nl3Var2 = nl3Var3;
                    dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
                    Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                    ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                    TextKt.ProvideTextStyle(TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getRangeSelectionMonthSubheadFont(), composer, 6), ComposableLambdaKt.rememberComposableLambda(-577031469, true, new DateRangePickerKt$VerticalMonthsList$1$2$1$1$1$1(datePickerFormatter2, calendarMonthPlusMonths, calendarModel2, list2, datePickerColors2), composer, 54), composer, 48);
                    if (l3 != null) {
                        composer.startReplaceGroup(186488258);
                        composer.endReplaceGroup();
                        selectedRangeInfo = null;
                    } else {
                        composer.startReplaceGroup(186488258);
                        composer.endReplaceGroup();
                        selectedRangeInfo = null;
                    }
                    DatePickerKt.Month(calendarMonthPlusMonths, nl3Var2, calendarDate2.getUtcTimeMillis(), l3, l4, selectedRangeInfo, datePickerFormatter2, selectableDates2, datePickerColors2, calendarModel2.getLocale(), composer, 0);
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
                ComposerKt.traceEventStart(1090773432, i, -1, "androidx.compose.material3.VerticalMonthsList.<anonymous> (DateRangePicker.kt:822)");
            }
            Object objRememberedValue = composer.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = EffectsKt.createCompositionCoroutineScope(gx2.b, composer);
                composer.updateRememberedValue(objRememberedValue);
            }
            y22 y22Var = (y22) objRememberedValue;
            Strings.Companion companion2 = Strings.Companion;
            String strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_scroll_to_previous_month), composer, 0);
            String strM4461getString2EP1pXo2 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_scroll_to_next_month), composer, 0);
            boolean zChanged = composer.changed(this.$selectedStartDateMillis) | composer.changed(this.$selectedEndDateMillis) | composer.changed(this.$onDatesSelectionChange);
            final Long l = this.$selectedStartDateMillis;
            final Long l2 = this.$selectedEndDateMillis;
            final bm3<Long, Long, j59> bm3Var = this.$onDatesSelectionChange;
            Object objRememberedValue2 = composer.rememberedValue();
            if (zChanged || objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = new nl3() { // from class: androidx.compose.material3.w0
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return DateRangePickerKt.AnonymousClass1.invoke$lambda$1$lambda$0(l, l2, bm3Var, ((Long) obj).longValue());
                    }
                };
                composer.updateRememberedValue(objRememberedValue2);
            }
            final nl3 nl3Var = (nl3) objRememberedValue2;
            final List listCustomScrollActions = DateRangePickerKt.customScrollActions(this.$lazyListState, y22Var, strM4461getString2EP1pXo, strM4461getString2EP1pXo2);
            Modifier.Companion companion3 = Modifier.Companion;
            Object objRememberedValue3 = composer.rememberedValue();
            if (objRememberedValue3 == companion.getEmpty()) {
                objRememberedValue3 = new x0();
                composer.updateRememberedValue(objRememberedValue3);
            }
            Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(companion3, false, (nl3) objRememberedValue3, 1, null);
            LazyListState lazyListState = this.$lazyListState;
            boolean zChangedInstance = composer.changedInstance(this.$yearRange) | composer.changedInstance(this.$calendarModel) | composer.changed(this.$firstMonth) | composer.changedInstance(this.$dateFormatter) | composer.changedInstance(listCustomScrollActions) | composer.changed(this.$colors) | composer.changed(this.$selectedStartDateMillis) | composer.changed(this.$selectedEndDateMillis) | composer.changed(nl3Var) | composer.changed(this.$today) | composer.changed(this.$selectableDates);
            final y74 y74Var = this.$yearRange;
            final CalendarModel calendarModel = this.$calendarModel;
            final CalendarMonth calendarMonth = this.$firstMonth;
            final Long l3 = this.$selectedStartDateMillis;
            final Long l4 = this.$selectedEndDateMillis;
            final CalendarDate calendarDate = this.$today;
            final DatePickerFormatter datePickerFormatter = this.$dateFormatter;
            final SelectableDates selectableDates = this.$selectableDates;
            final DatePickerColors datePickerColors = this.$colors;
            Object objRememberedValue4 = composer.rememberedValue();
            if (zChangedInstance || objRememberedValue4 == companion.getEmpty()) {
                Object obj = new nl3() { // from class: androidx.compose.material3.y0
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return DateRangePickerKt.AnonymousClass1.invoke$lambda$7$lambda$6(y74Var, calendarModel, calendarMonth, l3, l4, nl3Var, calendarDate, datePickerFormatter, selectableDates, datePickerColors, listCustomScrollActions, (LazyListScope) obj2);
                    }
                };
                composer.updateRememberedValue(obj);
                objRememberedValue4 = obj;
            }
            LazyDslKt.LazyColumn(modifierSemantics$default, lazyListState, null, false, null, null, null, false, null, (nl3) objRememberedValue4, composer, 0, TypedValues.PositionType.TYPE_CURVE_FIT);
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

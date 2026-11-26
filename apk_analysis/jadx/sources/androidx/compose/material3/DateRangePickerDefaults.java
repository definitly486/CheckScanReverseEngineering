package androidx.compose.material3;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.material3.DateRangePickerDefaults;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
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
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.cg;
import defpackage.dc;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.za2;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class DateRangePickerDefaults {
    public static final int $stable = 0;
    public static final DateRangePickerDefaults INSTANCE = new DateRangePickerDefaults();

    private DateRangePickerDefaults() {
    }

    /* JADX WARN: Code duplicated, block: B:147:0x02c9  */
    /* JADX WARN: Code duplicated, block: B:148:0x0307  */
    /* JADX WARN: Code duplicated, block: B:151:0x0327  */
    /* JADX WARN: Code duplicated, block: B:152:0x0365  */
    /* JADX WARN: Code duplicated, block: B:155:0x0382  */
    /* JADX INFO: renamed from: DateRangePickerHeadline-nZrIstQ, reason: not valid java name */
    private final void m3377DateRangePickerHeadlinenZrIstQ(Long l, final Long l2, final int i, final DatePickerFormatter datePickerFormatter, final Modifier modifier, final long j, final String str, final String str2, final bm3<? super Composer, ? super Integer, j59> bm3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var2, final bm3<? super Composer, ? super Integer, j59> bm3Var3, final Locale locale, Composer composer, final int i2, final int i3) {
        int i4;
        int i5;
        Long l3;
        Composer composer2;
        ComposeUiNode.Companion companion;
        Composer composerStartRestartGroup = composer.startRestartGroup(1381313200);
        if ((i2 & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(l) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= composerStartRestartGroup.changed(l2) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i4 |= composerStartRestartGroup.changed(i) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= (i2 & 4096) == 0 ? composerStartRestartGroup.changed(datePickerFormatter) : composerStartRestartGroup.changedInstance(datePickerFormatter) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= composerStartRestartGroup.changed(modifier) ? 16384 : 8192;
        }
        int i6 = i4;
        if ((196608 & i2) == 0) {
            i6 |= composerStartRestartGroup.changed(j) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i6 |= composerStartRestartGroup.changed(str) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i6 |= composerStartRestartGroup.changed(str2) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i6 |= composerStartRestartGroup.changedInstance(bm3Var) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if ((i2 & 805306368) == 0) {
            i6 |= composerStartRestartGroup.changedInstance(bm3Var2) ? 536870912 : 268435456;
        }
        int i7 = i6;
        if ((i3 & 6) == 0) {
            i5 = i3 | (composerStartRestartGroup.changedInstance(bm3Var3) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= composerStartRestartGroup.changedInstance(locale) ? 32 : 16;
        }
        if (composerStartRestartGroup.shouldExecute(((i7 & 306783379) == 306783378 && (i5 & 19) == 18) ? false : true, i7 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1381313200, i7, i5, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:468)");
            }
            int i8 = i5;
            String date$default = DatePickerFormatter.formatDate$default(datePickerFormatter, l, locale, false, 4, null);
            l3 = l;
            String date$default2 = DatePickerFormatter.formatDate$default(datePickerFormatter, l2, locale, false, 4, null);
            String date = datePickerFormatter.formatDate(l3, locale, true);
            String strM4461getString2EP1pXo = "";
            if (date == null) {
                composerStartRestartGroup.startReplaceGroup(620891895);
                DisplayMode.Companion companion2 = DisplayMode.Companion;
                if (DisplayMode.m3404equalsimpl0(i, companion2.m3409getPickerjFl4v0())) {
                    composerStartRestartGroup.startReplaceGroup(297125251);
                    Strings.Companion companion3 = Strings.Companion;
                    String strM4461getString2EP1pXo2 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_no_selection_description), composerStartRestartGroup, 0);
                    composerStartRestartGroup.endReplaceGroup();
                    date = strM4461getString2EP1pXo2;
                } else if (DisplayMode.m3404equalsimpl0(i, companion2.m3408getInputjFl4v0())) {
                    composerStartRestartGroup.startReplaceGroup(297128222);
                    Strings.Companion companion4 = Strings.Companion;
                    date = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_input_no_input_description), composerStartRestartGroup, 0);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(621113326);
                    composerStartRestartGroup.endReplaceGroup();
                    date = "";
                }
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(297117483);
                composerStartRestartGroup.endReplaceGroup();
            }
            String date2 = datePickerFormatter.formatDate(l2, locale, true);
            if (date2 == null) {
                composerStartRestartGroup.startReplaceGroup(621382935);
                DisplayMode.Companion companion5 = DisplayMode.Companion;
                if (DisplayMode.m3404equalsimpl0(i, companion5.m3409getPickerjFl4v0())) {
                    composerStartRestartGroup.startReplaceGroup(297141091);
                    Strings.Companion companion6 = Strings.Companion;
                    strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_no_selection_description), composerStartRestartGroup, 0);
                    composerStartRestartGroup.endReplaceGroup();
                } else if (DisplayMode.m3404equalsimpl0(i, companion5.m3408getInputjFl4v0())) {
                    composerStartRestartGroup.startReplaceGroup(297144062);
                    Strings.Companion companion7 = Strings.Companion;
                    strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_input_no_input_description), composerStartRestartGroup, 0);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(621604366);
                    composerStartRestartGroup.endReplaceGroup();
                }
                composerStartRestartGroup.endReplaceGroup();
                date2 = strM4461getString2EP1pXo;
            } else {
                composerStartRestartGroup.startReplaceGroup(297133385);
                composerStartRestartGroup.endReplaceGroup();
            }
            String strD = cg.d(str, ": ", date);
            String strD2 = cg.d(str2, ": ", date2);
            boolean zChanged = composerStartRestartGroup.changed(strD) | composerStartRestartGroup.changed(strD2);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new za2(0, strD, strD2);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            Modifier modifierClearAndSetSemantics = SemanticsModifierKt.clearAndSetSemantics(modifier, (nl3) objRememberedValue);
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.m1740spacedBy0680j_4(Dp.m9042constructorimpl(4.0f)), Alignment.Companion.getCenterVertically(), composerStartRestartGroup, 54);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierClearAndSetSemantics);
            ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
            ll3<ComposeUiNode> constructor = companion8.getConstructor();
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
            bm3 bm3VarB = cc.b(companion8, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting()) {
                companion = companion8;
            } else {
                companion = companion8;
                if (!aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                }
                Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                if (date$default != null) {
                    composerStartRestartGroup.startReplaceGroup(-177386503);
                    TextKt.m4085TextNvy7gAk(date$default, null, j, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composerStartRestartGroup, (i7 >> 9) & 896, 0, 262138);
                    composer2 = composerStartRestartGroup;
                    composer2.endReplaceGroup();
                } else {
                    composer2 = composerStartRestartGroup;
                    composer2.startReplaceGroup(-177297192);
                    bm3Var.invoke(composer2, Integer.valueOf((i7 >> 24) & 14));
                    composer2.endReplaceGroup();
                }
                bm3Var3.invoke(composer2, Integer.valueOf(i8 & 14));
                if (date$default2 != 0) {
                    composer2.startReplaceGroup(-177171301);
                    TextKt.m4085TextNvy7gAk(date$default2, null, j, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, (i7 >> 9) & 896, 0, 262138);
                    composer2.endReplaceGroup();
                } else {
                    composer2.startReplaceGroup(-177083974);
                    bm3Var2.invoke(composer2, Integer.valueOf((i7 >> 27) & 14));
                    composer2.endReplaceGroup();
                }
                composer2.endNode();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion.getSetModifier());
            RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
            if (date$default != null) {
                composerStartRestartGroup.startReplaceGroup(-177386503);
                TextKt.m4085TextNvy7gAk(date$default, null, j, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composerStartRestartGroup, (i7 >> 9) & 896, 0, 262138);
                composer2 = composerStartRestartGroup;
                composer2.endReplaceGroup();
            } else {
                composer2 = composerStartRestartGroup;
                composer2.startReplaceGroup(-177297192);
                bm3Var.invoke(composer2, Integer.valueOf((i7 >> 24) & 14));
                composer2.endReplaceGroup();
            }
            bm3Var3.invoke(composer2, Integer.valueOf(i8 & 14));
            if (date$default2 != 0) {
                composer2.startReplaceGroup(-177171301);
                TextKt.m4085TextNvy7gAk(date$default2, null, j, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, (i7 >> 9) & 896, 0, 262138);
                composer2.endReplaceGroup();
            } else {
                composer2.startReplaceGroup(-177083974);
                bm3Var2.invoke(composer2, Integer.valueOf((i7 >> 27) & 14));
                composer2.endReplaceGroup();
            }
            composer2.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            l3 = l;
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Long l4 = l3;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ab2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DateRangePickerDefaults.DateRangePickerHeadline_nZrIstQ$lambda$5(this.b, l4, l2, i, datePickerFormatter, modifier, j, str, str2, bm3Var, bm3Var2, bm3Var3, locale, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DateRangePickerHeadline_nZrIstQ$lambda$3$lambda$2(String str, String str2, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.m8279setLiveRegionhR3wRGc(semanticsPropertyReceiver, LiveRegionMode.Companion.m8253getPolite0phEisY());
        SemanticsPropertiesKt.setContentDescription(semanticsPropertyReceiver, str + ", " + str2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DateRangePickerHeadline_nZrIstQ$lambda$5(DateRangePickerDefaults dateRangePickerDefaults, Long l, Long l2, int i, DatePickerFormatter datePickerFormatter, Modifier modifier, long j, String str, String str2, bm3 bm3Var, bm3 bm3Var2, bm3 bm3Var3, Locale locale, int i2, int i3, Composer composer, int i4) {
        dateRangePickerDefaults.m3377DateRangePickerHeadlinenZrIstQ(l, l2, i, datePickerFormatter, modifier, j, str, str2, bm3Var, bm3Var2, bm3Var3, locale, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DateRangePickerHeadline_qS89cEg$lambda$1(DateRangePickerDefaults dateRangePickerDefaults, Long l, Long l2, int i, DatePickerFormatter datePickerFormatter, Modifier modifier, long j, int i2, int i3, Composer composer, int i4) {
        dateRangePickerDefaults.m3378DateRangePickerHeadlineqS89cEg(l, l2, i, datePickerFormatter, modifier, j, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DateRangePickerTitle_FNtVw6o$lambda$0(DateRangePickerDefaults dateRangePickerDefaults, int i, Modifier modifier, long j, int i2, int i3, Composer composer, int i4) {
        dateRangePickerDefaults.m3379DateRangePickerTitleFNtVw6o(i, modifier, j, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0110  */
    /* JADX WARN: Code duplicated, block: B:104:0x0126  */
    /* JADX WARN: Code duplicated, block: B:107:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:109:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:112:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:114:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004a  */
    /* JADX WARN: Code duplicated, block: B:28:0x004f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:32:0x005b  */
    /* JADX WARN: Code duplicated, block: B:33:0x005e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0065  */
    /* JADX WARN: Code duplicated, block: B:38:0x0068  */
    /* JADX WARN: Code duplicated, block: B:40:0x006c  */
    /* JADX WARN: Code duplicated, block: B:42:0x0070  */
    /* JADX WARN: Code duplicated, block: B:43:0x0075  */
    /* JADX WARN: Code duplicated, block: B:45:0x007b  */
    /* JADX WARN: Code duplicated, block: B:46:0x007e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0085  */
    /* JADX WARN: Code duplicated, block: B:52:0x008a  */
    /* JADX WARN: Code duplicated, block: B:54:0x008e  */
    /* JADX WARN: Code duplicated, block: B:56:0x0096  */
    /* JADX WARN: Code duplicated, block: B:57:0x0099  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:72:0x00be  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:76:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:83:0x00de  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:87:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:96:0x0106 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:97:0x0108  */
    /* JADX WARN: Code duplicated, block: B:98:0x010b  */
    /* JADX INFO: renamed from: DateRangePickerHeadline-qS89cEg, reason: not valid java name */
    public final void m3378DateRangePickerHeadlineqS89cEg(final Long l, final Long l2, final int i, final DatePickerFormatter datePickerFormatter, Modifier modifier, long j, Composer composer, final int i2, final int i3) {
        Long l3;
        int i4;
        Long l4;
        int i5;
        int i6;
        boolean zChangedInstance;
        int i7;
        int i8;
        Modifier modifier2;
        int i9;
        final long jM3343getHeadlineContentColor0d7_KjU;
        DateRangePickerDefaults dateRangePickerDefaults;
        int i10;
        boolean z;
        final Modifier modifier3;
        final long j2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        Composer composerStartRestartGroup = composer.startRestartGroup(1655228151);
        if ((i3 & 1) != 0) {
            i4 = i2 | 6;
            l3 = l;
        } else if ((i2 & 6) == 0) {
            l3 = l;
            i4 = (composerStartRestartGroup.changed(l3) ? 4 : 2) | i2;
        } else {
            l3 = l;
            i4 = i2;
        }
        if ((i3 & 2) == 0) {
            if ((i2 & 48) == 0) {
                l4 = l2;
                i4 |= composerStartRestartGroup.changed(l4) ? 32 : 16;
            }
            if ((i3 & 4) != 0) {
                if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                    i5 = i;
                    if (composerStartRestartGroup.changed(i5)) {
                        i6 = 256;
                    } else {
                        i6 = 128;
                    }
                    i4 |= i6;
                }
                if ((i3 & 8) != 0) {
                    i4 |= 3072;
                } else if ((i2 & 3072) == 0) {
                    if ((i2 & 4096) == 0) {
                        zChangedInstance = composerStartRestartGroup.changed(datePickerFormatter);
                    } else {
                        zChangedInstance = composerStartRestartGroup.changedInstance(datePickerFormatter);
                    }
                    if (zChangedInstance) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i4 |= i7;
                }
                i8 = i3 & 16;
                if (i8 != 0) {
                    if ((i2 & 24576) == 0) {
                        modifier2 = modifier;
                        if (composerStartRestartGroup.changed(modifier2)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i4 |= i9;
                    }
                    if ((196608 & i2) == 0) {
                        if ((i3 & 32) == 0) {
                            jM3343getHeadlineContentColor0d7_KjU = j;
                            int i11 = composerStartRestartGroup.changed(jM3343getHeadlineContentColor0d7_KjU) ? 131072 : 65536;
                            i4 |= i11;
                        } else {
                            jM3343getHeadlineContentColor0d7_KjU = j;
                        }
                        i4 |= i11;
                    } else {
                        jM3343getHeadlineContentColor0d7_KjU = j;
                    }
                    if ((i3 & 64) != 0) {
                        if ((i2 & 1572864) == 0) {
                            dateRangePickerDefaults = this;
                            if (composerStartRestartGroup.changed(dateRangePickerDefaults)) {
                                i10 = 1048576;
                            } else {
                                i10 = 524288;
                            }
                            i4 |= i10;
                        }
                        if ((599187 & i4) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                            composerStartRestartGroup.startDefaults();
                            if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                                if (i8 != 0) {
                                    modifier4 = Modifier.Companion;
                                } else {
                                    modifier4 = modifier2;
                                }
                                if ((i3 & 32) != 0) {
                                    i4 &= -458753;
                                    jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                                }
                            } else {
                                composerStartRestartGroup.skipToGroupEnd();
                                if ((i3 & 32) != 0) {
                                    i4 &= -458753;
                                }
                                modifier4 = modifier2;
                            }
                            composerStartRestartGroup.endDefaults();
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1655228151, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:409)");
                            }
                            Strings.Companion companion = Strings.Companion;
                            final String strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composerStartRestartGroup, 0);
                            final String strM4461getString2EP1pXo2 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composerStartRestartGroup, 0);
                            int i12 = (458752 & i4) | (i4 & 14) | 905969664 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4);
                            int i13 = ((i4 >> 12) & 896) | 6;
                            int i14 = i5;
                            Modifier modifier5 = modifier4;
                            long j3 = jM3343getHeadlineContentColor0d7_KjU;
                            dateRangePickerDefaults.m3377DateRangePickerHeadlinenZrIstQ(l3, l4, i14, datePickerFormatter, modifier5, j3, strM4461getString2EP1pXo, strM4461getString2EP1pXo2, ComposableLambdaKt.rememberComposableLambda(850203865, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$1
                                public final void invoke(Composer composer2, int i15) {
                                    if (!composer2.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(850203865, i15, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:421)");
                                    }
                                    TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                    invoke(composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(282231642, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$2
                                public final void invoke(Composer composer2, int i15) {
                                    if (!composer2.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(282231642, i15, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:422)");
                                    }
                                    TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo2, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                    invoke(composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(-320655704, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$3
                                public final void invoke(Composer composer2, int i15) {
                                    if (!composer2.shouldExecute((i15 & 3) != 2, i15 & 1)) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-320655704, i15, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:423)");
                                    }
                                    TextKt.m4085TextNvy7gAk("-", null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 6, 0, 262138);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }

                                @Override // defpackage.bm3
                                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                    invoke(composer2, num.intValue());
                                    return j59.a;
                                }
                            }, composerStartRestartGroup, 54), CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0), composerStartRestartGroup, i12, i13);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            j2 = j3;
                            modifier3 = modifier5;
                        } else {
                            composerStartRestartGroup.skipToGroupEnd();
                            modifier3 = modifier2;
                            j2 = jM3343getHeadlineContentColor0d7_KjU;
                        }
                        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                        if (scopeUpdateScopeEndRestartGroup != null) {
                            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cb2
                                @Override // defpackage.bm3
                                public final Object invoke(Object obj, Object obj2) {
                                    int iIntValue = ((Integer) obj2).intValue();
                                    return DateRangePickerDefaults.DateRangePickerHeadline_qS89cEg$lambda$1(this.b, l, l2, i, datePickerFormatter, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                                }
                            });
                        }
                    }
                    i4 |= 1572864;
                    dateRangePickerDefaults = this;
                    if ((599187 & i4) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i8 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 32) != 0) {
                                i4 &= -458753;
                                jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                            }
                        } else {
                            if (i8 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 32) != 0) {
                                i4 &= -458753;
                                jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1655228151, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:409)");
                        }
                        Strings.Companion companion2 = Strings.Companion;
                        final String strM4461getString2EP1pXo3 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composerStartRestartGroup, 0);
                        final String strM4461getString2EP1pXo4 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composerStartRestartGroup, 0);
                        int i15 = (458752 & i4) | (i4 & 14) | 905969664 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4);
                        int i16 = ((i4 >> 12) & 896) | 6;
                        int i17 = i5;
                        Modifier modifier6 = modifier4;
                        long j4 = jM3343getHeadlineContentColor0d7_KjU;
                        dateRangePickerDefaults.m3377DateRangePickerHeadlinenZrIstQ(l3, l4, i17, datePickerFormatter, modifier6, j4, strM4461getString2EP1pXo3, strM4461getString2EP1pXo4, ComposableLambdaKt.rememberComposableLambda(850203865, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$1
                            public final void invoke(Composer composer2, int i18) {
                                if (!composer2.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(850203865, i18, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:421)");
                                }
                                TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo3, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(282231642, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$2
                            public final void invoke(Composer composer2, int i18) {
                                if (!composer2.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(282231642, i18, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:422)");
                                }
                                TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo4, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(-320655704, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$3
                            public final void invoke(Composer composer2, int i18) {
                                if (!composer2.shouldExecute((i18 & 3) != 2, i18 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-320655704, i18, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:423)");
                                }
                                TextKt.m4085TextNvy7gAk("-", null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 6, 0, 262138);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0), composerStartRestartGroup, i15, i16);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j2 = j4;
                        modifier3 = modifier6;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        j2 = jM3343getHeadlineContentColor0d7_KjU;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cb2
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DateRangePickerDefaults.DateRangePickerHeadline_qS89cEg$lambda$1(this.b, l, l2, i, datePickerFormatter, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 24576;
                modifier2 = modifier;
                if ((196608 & i2) == 0) {
                    if ((i3 & 32) == 0) {
                        jM3343getHeadlineContentColor0d7_KjU = j;
                        if (composerStartRestartGroup.changed(jM3343getHeadlineContentColor0d7_KjU)) {
                        }
                        i4 |= i11;
                    } else {
                        jM3343getHeadlineContentColor0d7_KjU = j;
                    }
                    i4 |= i11;
                } else {
                    jM3343getHeadlineContentColor0d7_KjU = j;
                }
                if ((i3 & 64) != 0) {
                    if ((i2 & 1572864) == 0) {
                        dateRangePickerDefaults = this;
                        if (composerStartRestartGroup.changed(dateRangePickerDefaults)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                    if ((599187 & i4) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i8 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 32) != 0) {
                                i4 &= -458753;
                                jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                            }
                        } else {
                            if (i8 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 32) != 0) {
                                i4 &= -458753;
                                jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1655228151, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:409)");
                        }
                        Strings.Companion companion3 = Strings.Companion;
                        final String strM4461getString2EP1pXo5 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composerStartRestartGroup, 0);
                        final String strM4461getString2EP1pXo6 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composerStartRestartGroup, 0);
                        int i18 = (458752 & i4) | (i4 & 14) | 905969664 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4);
                        int i19 = ((i4 >> 12) & 896) | 6;
                        int i110 = i5;
                        Modifier modifier7 = modifier4;
                        long j5 = jM3343getHeadlineContentColor0d7_KjU;
                        dateRangePickerDefaults.m3377DateRangePickerHeadlinenZrIstQ(l3, l4, i110, datePickerFormatter, modifier7, j5, strM4461getString2EP1pXo5, strM4461getString2EP1pXo6, ComposableLambdaKt.rememberComposableLambda(850203865, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$1
                            public final void invoke(Composer composer2, int i111) {
                                if (!composer2.shouldExecute((i111 & 3) != 2, i111 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(850203865, i111, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:421)");
                                }
                                TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo5, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(282231642, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$2
                            public final void invoke(Composer composer2, int i111) {
                                if (!composer2.shouldExecute((i111 & 3) != 2, i111 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(282231642, i111, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:422)");
                                }
                                TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo6, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(-320655704, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$3
                            public final void invoke(Composer composer2, int i111) {
                                if (!composer2.shouldExecute((i111 & 3) != 2, i111 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-320655704, i111, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:423)");
                                }
                                TextKt.m4085TextNvy7gAk("-", null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 6, 0, 262138);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0), composerStartRestartGroup, i18, i19);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j2 = j5;
                        modifier3 = modifier7;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        j2 = jM3343getHeadlineContentColor0d7_KjU;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cb2
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DateRangePickerDefaults.DateRangePickerHeadline_qS89cEg$lambda$1(this.b, l, l2, i, datePickerFormatter, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 1572864;
                dateRangePickerDefaults = this;
                if ((599187 & i4) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i8 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 32) != 0) {
                            i4 &= -458753;
                            jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                        }
                    } else {
                        if (i8 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 32) != 0) {
                            i4 &= -458753;
                            jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1655228151, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:409)");
                    }
                    Strings.Companion companion4 = Strings.Companion;
                    final String strM4461getString2EP1pXo7 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composerStartRestartGroup, 0);
                    final String strM4461getString2EP1pXo8 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composerStartRestartGroup, 0);
                    int i111 = (458752 & i4) | (i4 & 14) | 905969664 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4);
                    int i112 = ((i4 >> 12) & 896) | 6;
                    int i113 = i5;
                    Modifier modifier8 = modifier4;
                    long j6 = jM3343getHeadlineContentColor0d7_KjU;
                    dateRangePickerDefaults.m3377DateRangePickerHeadlinenZrIstQ(l3, l4, i113, datePickerFormatter, modifier8, j6, strM4461getString2EP1pXo7, strM4461getString2EP1pXo8, ComposableLambdaKt.rememberComposableLambda(850203865, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$1
                        public final void invoke(Composer composer2, int i114) {
                            if (!composer2.shouldExecute((i114 & 3) != 2, i114 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(850203865, i114, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:421)");
                            }
                            TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo7, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(282231642, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$2
                        public final void invoke(Composer composer2, int i114) {
                            if (!composer2.shouldExecute((i114 & 3) != 2, i114 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(282231642, i114, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:422)");
                            }
                            TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo8, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(-320655704, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$3
                        public final void invoke(Composer composer2, int i114) {
                            if (!composer2.shouldExecute((i114 & 3) != 2, i114 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-320655704, i114, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:423)");
                            }
                            TextKt.m4085TextNvy7gAk("-", null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 6, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0), composerStartRestartGroup, i111, i112);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j2 = j6;
                    modifier3 = modifier8;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    j2 = jM3343getHeadlineContentColor0d7_KjU;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cb2
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DateRangePickerDefaults.DateRangePickerHeadline_qS89cEg$lambda$1(this.b, l, l2, i, datePickerFormatter, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i5 = i;
            if ((i3 & 8) != 0) {
                i4 |= 3072;
            } else if ((i2 & 3072) == 0) {
                if ((i2 & 4096) == 0) {
                    zChangedInstance = composerStartRestartGroup.changed(datePickerFormatter);
                } else {
                    zChangedInstance = composerStartRestartGroup.changedInstance(datePickerFormatter);
                }
                if (zChangedInstance) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i4 |= i7;
            }
            i8 = i3 & 16;
            if (i8 != 0) {
                if ((i2 & 24576) == 0) {
                    modifier2 = modifier;
                    if (composerStartRestartGroup.changed(modifier2)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i4 |= i9;
                }
                if ((196608 & i2) == 0) {
                    if ((i3 & 32) == 0) {
                        jM3343getHeadlineContentColor0d7_KjU = j;
                        if (composerStartRestartGroup.changed(jM3343getHeadlineContentColor0d7_KjU)) {
                        }
                        i4 |= i11;
                    } else {
                        jM3343getHeadlineContentColor0d7_KjU = j;
                    }
                    i4 |= i11;
                } else {
                    jM3343getHeadlineContentColor0d7_KjU = j;
                }
                if ((i3 & 64) != 0) {
                    if ((i2 & 1572864) == 0) {
                        dateRangePickerDefaults = this;
                        if (composerStartRestartGroup.changed(dateRangePickerDefaults)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                    if ((599187 & i4) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i8 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 32) != 0) {
                                i4 &= -458753;
                                jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                            }
                        } else {
                            if (i8 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 32) != 0) {
                                i4 &= -458753;
                                jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1655228151, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:409)");
                        }
                        Strings.Companion companion5 = Strings.Companion;
                        final String strM4461getString2EP1pXo9 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composerStartRestartGroup, 0);
                        final String strM4461getString2EP1pXo10 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composerStartRestartGroup, 0);
                        int i114 = (458752 & i4) | (i4 & 14) | 905969664 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4);
                        int i115 = ((i4 >> 12) & 896) | 6;
                        int i116 = i5;
                        Modifier modifier9 = modifier4;
                        long j7 = jM3343getHeadlineContentColor0d7_KjU;
                        dateRangePickerDefaults.m3377DateRangePickerHeadlinenZrIstQ(l3, l4, i116, datePickerFormatter, modifier9, j7, strM4461getString2EP1pXo9, strM4461getString2EP1pXo10, ComposableLambdaKt.rememberComposableLambda(850203865, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$1
                            public final void invoke(Composer composer2, int i117) {
                                if (!composer2.shouldExecute((i117 & 3) != 2, i117 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(850203865, i117, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:421)");
                                }
                                TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo9, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(282231642, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$2
                            public final void invoke(Composer composer2, int i117) {
                                if (!composer2.shouldExecute((i117 & 3) != 2, i117 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(282231642, i117, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:422)");
                                }
                                TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo10, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(-320655704, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$3
                            public final void invoke(Composer composer2, int i117) {
                                if (!composer2.shouldExecute((i117 & 3) != 2, i117 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-320655704, i117, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:423)");
                                }
                                TextKt.m4085TextNvy7gAk("-", null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 6, 0, 262138);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0), composerStartRestartGroup, i114, i115);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j2 = j7;
                        modifier3 = modifier9;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        j2 = jM3343getHeadlineContentColor0d7_KjU;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cb2
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DateRangePickerDefaults.DateRangePickerHeadline_qS89cEg$lambda$1(this.b, l, l2, i, datePickerFormatter, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 1572864;
                dateRangePickerDefaults = this;
                if ((599187 & i4) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i8 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 32) != 0) {
                            i4 &= -458753;
                            jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                        }
                    } else {
                        if (i8 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 32) != 0) {
                            i4 &= -458753;
                            jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1655228151, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:409)");
                    }
                    Strings.Companion companion6 = Strings.Companion;
                    final String strM4461getString2EP1pXo11 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composerStartRestartGroup, 0);
                    final String strM4461getString2EP1pXo12 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composerStartRestartGroup, 0);
                    int i117 = (458752 & i4) | (i4 & 14) | 905969664 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4);
                    int i118 = ((i4 >> 12) & 896) | 6;
                    int i119 = i5;
                    Modifier modifier10 = modifier4;
                    long j8 = jM3343getHeadlineContentColor0d7_KjU;
                    dateRangePickerDefaults.m3377DateRangePickerHeadlinenZrIstQ(l3, l4, i119, datePickerFormatter, modifier10, j8, strM4461getString2EP1pXo11, strM4461getString2EP1pXo12, ComposableLambdaKt.rememberComposableLambda(850203865, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$1
                        public final void invoke(Composer composer2, int i1110) {
                            if (!composer2.shouldExecute((i1110 & 3) != 2, i1110 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(850203865, i1110, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:421)");
                            }
                            TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo11, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(282231642, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$2
                        public final void invoke(Composer composer2, int i1110) {
                            if (!composer2.shouldExecute((i1110 & 3) != 2, i1110 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(282231642, i1110, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:422)");
                            }
                            TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo12, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(-320655704, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$3
                        public final void invoke(Composer composer2, int i1110) {
                            if (!composer2.shouldExecute((i1110 & 3) != 2, i1110 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-320655704, i1110, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:423)");
                            }
                            TextKt.m4085TextNvy7gAk("-", null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 6, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0), composerStartRestartGroup, i117, i118);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j2 = j8;
                    modifier3 = modifier10;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    j2 = jM3343getHeadlineContentColor0d7_KjU;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cb2
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DateRangePickerDefaults.DateRangePickerHeadline_qS89cEg$lambda$1(this.b, l, l2, i, datePickerFormatter, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            modifier2 = modifier;
            if ((196608 & i2) == 0) {
                if ((i3 & 32) == 0) {
                    jM3343getHeadlineContentColor0d7_KjU = j;
                    if (composerStartRestartGroup.changed(jM3343getHeadlineContentColor0d7_KjU)) {
                    }
                    i4 |= i11;
                } else {
                    jM3343getHeadlineContentColor0d7_KjU = j;
                }
                i4 |= i11;
            } else {
                jM3343getHeadlineContentColor0d7_KjU = j;
            }
            if ((i3 & 64) != 0) {
                if ((i2 & 1572864) == 0) {
                    dateRangePickerDefaults = this;
                    if (composerStartRestartGroup.changed(dateRangePickerDefaults)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
                if ((599187 & i4) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i8 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 32) != 0) {
                            i4 &= -458753;
                            jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                        }
                    } else {
                        if (i8 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 32) != 0) {
                            i4 &= -458753;
                            jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1655228151, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:409)");
                    }
                    Strings.Companion companion7 = Strings.Companion;
                    final String strM4461getString2EP1pXo13 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composerStartRestartGroup, 0);
                    final String strM4461getString2EP1pXo14 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composerStartRestartGroup, 0);
                    int i1110 = (458752 & i4) | (i4 & 14) | 905969664 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4);
                    int i1111 = ((i4 >> 12) & 896) | 6;
                    int i1112 = i5;
                    Modifier modifier11 = modifier4;
                    long j9 = jM3343getHeadlineContentColor0d7_KjU;
                    dateRangePickerDefaults.m3377DateRangePickerHeadlinenZrIstQ(l3, l4, i1112, datePickerFormatter, modifier11, j9, strM4461getString2EP1pXo13, strM4461getString2EP1pXo14, ComposableLambdaKt.rememberComposableLambda(850203865, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$1
                        public final void invoke(Composer composer2, int i1113) {
                            if (!composer2.shouldExecute((i1113 & 3) != 2, i1113 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(850203865, i1113, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:421)");
                            }
                            TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo13, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(282231642, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$2
                        public final void invoke(Composer composer2, int i1113) {
                            if (!composer2.shouldExecute((i1113 & 3) != 2, i1113 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(282231642, i1113, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:422)");
                            }
                            TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo14, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(-320655704, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$3
                        public final void invoke(Composer composer2, int i1113) {
                            if (!composer2.shouldExecute((i1113 & 3) != 2, i1113 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-320655704, i1113, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:423)");
                            }
                            TextKt.m4085TextNvy7gAk("-", null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 6, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0), composerStartRestartGroup, i1110, i1111);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j2 = j9;
                    modifier3 = modifier11;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    j2 = jM3343getHeadlineContentColor0d7_KjU;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cb2
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DateRangePickerDefaults.DateRangePickerHeadline_qS89cEg$lambda$1(this.b, l, l2, i, datePickerFormatter, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 1572864;
            dateRangePickerDefaults = this;
            if ((599187 & i4) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 32) != 0) {
                        i4 &= -458753;
                        jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                    }
                } else {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 32) != 0) {
                        i4 &= -458753;
                        jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1655228151, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:409)");
                }
                Strings.Companion companion8 = Strings.Companion;
                final String strM4461getString2EP1pXo15 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composerStartRestartGroup, 0);
                final String strM4461getString2EP1pXo16 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composerStartRestartGroup, 0);
                int i1113 = (458752 & i4) | (i4 & 14) | 905969664 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4);
                int i1114 = ((i4 >> 12) & 896) | 6;
                int i1115 = i5;
                Modifier modifier12 = modifier4;
                long j10 = jM3343getHeadlineContentColor0d7_KjU;
                dateRangePickerDefaults.m3377DateRangePickerHeadlinenZrIstQ(l3, l4, i1115, datePickerFormatter, modifier12, j10, strM4461getString2EP1pXo15, strM4461getString2EP1pXo16, ComposableLambdaKt.rememberComposableLambda(850203865, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$1
                    public final void invoke(Composer composer2, int i1116) {
                        if (!composer2.shouldExecute((i1116 & 3) != 2, i1116 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(850203865, i1116, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:421)");
                        }
                        TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo15, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(282231642, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$2
                    public final void invoke(Composer composer2, int i1116) {
                        if (!composer2.shouldExecute((i1116 & 3) != 2, i1116 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(282231642, i1116, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:422)");
                        }
                        TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo16, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(-320655704, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$3
                    public final void invoke(Composer composer2, int i1116) {
                        if (!composer2.shouldExecute((i1116 & 3) != 2, i1116 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-320655704, i1116, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:423)");
                        }
                        TextKt.m4085TextNvy7gAk("-", null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 6, 0, 262138);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0), composerStartRestartGroup, i1113, i1114);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j2 = j10;
                modifier3 = modifier12;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                j2 = jM3343getHeadlineContentColor0d7_KjU;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cb2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DateRangePickerDefaults.DateRangePickerHeadline_qS89cEg$lambda$1(this.b, l, l2, i, datePickerFormatter, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        l4 = l2;
        if ((i3 & 4) != 0) {
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                i5 = i;
                if (composerStartRestartGroup.changed(i5)) {
                    i6 = 256;
                } else {
                    i6 = 128;
                }
                i4 |= i6;
            }
            if ((i3 & 8) != 0) {
                i4 |= 3072;
            } else if ((i2 & 3072) == 0) {
                if ((i2 & 4096) == 0) {
                    zChangedInstance = composerStartRestartGroup.changed(datePickerFormatter);
                } else {
                    zChangedInstance = composerStartRestartGroup.changedInstance(datePickerFormatter);
                }
                if (zChangedInstance) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i4 |= i7;
            }
            i8 = i3 & 16;
            if (i8 != 0) {
                if ((i2 & 24576) == 0) {
                    modifier2 = modifier;
                    if (composerStartRestartGroup.changed(modifier2)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i4 |= i9;
                }
                if ((196608 & i2) == 0) {
                    if ((i3 & 32) == 0) {
                        jM3343getHeadlineContentColor0d7_KjU = j;
                        if (composerStartRestartGroup.changed(jM3343getHeadlineContentColor0d7_KjU)) {
                        }
                        i4 |= i11;
                    } else {
                        jM3343getHeadlineContentColor0d7_KjU = j;
                    }
                    i4 |= i11;
                } else {
                    jM3343getHeadlineContentColor0d7_KjU = j;
                }
                if ((i3 & 64) != 0) {
                    if ((i2 & 1572864) == 0) {
                        dateRangePickerDefaults = this;
                        if (composerStartRestartGroup.changed(dateRangePickerDefaults)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i4 |= i10;
                    }
                    if ((599187 & i4) != 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                        composerStartRestartGroup.startDefaults();
                        if ((i2 & 1) != 0) {
                            if (i8 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 32) != 0) {
                                i4 &= -458753;
                                jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                            }
                        } else {
                            if (i8 != 0) {
                                modifier4 = Modifier.Companion;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 32) != 0) {
                                i4 &= -458753;
                                jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                            }
                        }
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1655228151, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:409)");
                        }
                        Strings.Companion companion9 = Strings.Companion;
                        final String strM4461getString2EP1pXo17 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composerStartRestartGroup, 0);
                        final String strM4461getString2EP1pXo18 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composerStartRestartGroup, 0);
                        int i1116 = (458752 & i4) | (i4 & 14) | 905969664 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4);
                        int i1117 = ((i4 >> 12) & 896) | 6;
                        int i1118 = i5;
                        Modifier modifier13 = modifier4;
                        long j11 = jM3343getHeadlineContentColor0d7_KjU;
                        dateRangePickerDefaults.m3377DateRangePickerHeadlinenZrIstQ(l3, l4, i1118, datePickerFormatter, modifier13, j11, strM4461getString2EP1pXo17, strM4461getString2EP1pXo18, ComposableLambdaKt.rememberComposableLambda(850203865, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$1
                            public final void invoke(Composer composer2, int i1119) {
                                if (!composer2.shouldExecute((i1119 & 3) != 2, i1119 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(850203865, i1119, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:421)");
                                }
                                TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo17, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(282231642, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$2
                            public final void invoke(Composer composer2, int i1119) {
                                if (!composer2.shouldExecute((i1119 & 3) != 2, i1119 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(282231642, i1119, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:422)");
                                }
                                TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo18, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(-320655704, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$3
                            public final void invoke(Composer composer2, int i1119) {
                                if (!composer2.shouldExecute((i1119 & 3) != 2, i1119 & 1)) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-320655704, i1119, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:423)");
                                }
                                TextKt.m4085TextNvy7gAk("-", null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 6, 0, 262138);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }

                            @Override // defpackage.bm3
                            public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                                invoke(composer2, num.intValue());
                                return j59.a;
                            }
                        }, composerStartRestartGroup, 54), CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0), composerStartRestartGroup, i1116, i1117);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        j2 = j11;
                        modifier3 = modifier13;
                    } else {
                        composerStartRestartGroup.skipToGroupEnd();
                        modifier3 = modifier2;
                        j2 = jM3343getHeadlineContentColor0d7_KjU;
                    }
                    scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                    if (scopeUpdateScopeEndRestartGroup != null) {
                        scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cb2
                            @Override // defpackage.bm3
                            public final Object invoke(Object obj, Object obj2) {
                                int iIntValue = ((Integer) obj2).intValue();
                                return DateRangePickerDefaults.DateRangePickerHeadline_qS89cEg$lambda$1(this.b, l, l2, i, datePickerFormatter, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                            }
                        });
                    }
                }
                i4 |= 1572864;
                dateRangePickerDefaults = this;
                if ((599187 & i4) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i8 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 32) != 0) {
                            i4 &= -458753;
                            jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                        }
                    } else {
                        if (i8 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 32) != 0) {
                            i4 &= -458753;
                            jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1655228151, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:409)");
                    }
                    Strings.Companion companion10 = Strings.Companion;
                    final String strM4461getString2EP1pXo19 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composerStartRestartGroup, 0);
                    final String strM4461getString2EP1pXo110 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composerStartRestartGroup, 0);
                    int i1119 = (458752 & i4) | (i4 & 14) | 905969664 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4);
                    int i11110 = ((i4 >> 12) & 896) | 6;
                    int i11111 = i5;
                    Modifier modifier14 = modifier4;
                    long j12 = jM3343getHeadlineContentColor0d7_KjU;
                    dateRangePickerDefaults.m3377DateRangePickerHeadlinenZrIstQ(l3, l4, i11111, datePickerFormatter, modifier14, j12, strM4461getString2EP1pXo19, strM4461getString2EP1pXo110, ComposableLambdaKt.rememberComposableLambda(850203865, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$1
                        public final void invoke(Composer composer2, int i11112) {
                            if (!composer2.shouldExecute((i11112 & 3) != 2, i11112 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(850203865, i11112, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:421)");
                            }
                            TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo19, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(282231642, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$2
                        public final void invoke(Composer composer2, int i11112) {
                            if (!composer2.shouldExecute((i11112 & 3) != 2, i11112 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(282231642, i11112, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:422)");
                            }
                            TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo110, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(-320655704, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$3
                        public final void invoke(Composer composer2, int i11112) {
                            if (!composer2.shouldExecute((i11112 & 3) != 2, i11112 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-320655704, i11112, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:423)");
                            }
                            TextKt.m4085TextNvy7gAk("-", null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 6, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0), composerStartRestartGroup, i1119, i11110);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j2 = j12;
                    modifier3 = modifier14;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    j2 = jM3343getHeadlineContentColor0d7_KjU;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cb2
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DateRangePickerDefaults.DateRangePickerHeadline_qS89cEg$lambda$1(this.b, l, l2, i, datePickerFormatter, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 24576;
            modifier2 = modifier;
            if ((196608 & i2) == 0) {
                if ((i3 & 32) == 0) {
                    jM3343getHeadlineContentColor0d7_KjU = j;
                    if (composerStartRestartGroup.changed(jM3343getHeadlineContentColor0d7_KjU)) {
                    }
                    i4 |= i11;
                } else {
                    jM3343getHeadlineContentColor0d7_KjU = j;
                }
                i4 |= i11;
            } else {
                jM3343getHeadlineContentColor0d7_KjU = j;
            }
            if ((i3 & 64) != 0) {
                if ((i2 & 1572864) == 0) {
                    dateRangePickerDefaults = this;
                    if (composerStartRestartGroup.changed(dateRangePickerDefaults)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
                if ((599187 & i4) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i8 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 32) != 0) {
                            i4 &= -458753;
                            jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                        }
                    } else {
                        if (i8 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 32) != 0) {
                            i4 &= -458753;
                            jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1655228151, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:409)");
                    }
                    Strings.Companion companion11 = Strings.Companion;
                    final String strM4461getString2EP1pXo111 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composerStartRestartGroup, 0);
                    final String strM4461getString2EP1pXo112 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composerStartRestartGroup, 0);
                    int i11112 = (458752 & i4) | (i4 & 14) | 905969664 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4);
                    int i11113 = ((i4 >> 12) & 896) | 6;
                    int i11114 = i5;
                    Modifier modifier15 = modifier4;
                    long j13 = jM3343getHeadlineContentColor0d7_KjU;
                    dateRangePickerDefaults.m3377DateRangePickerHeadlinenZrIstQ(l3, l4, i11114, datePickerFormatter, modifier15, j13, strM4461getString2EP1pXo111, strM4461getString2EP1pXo112, ComposableLambdaKt.rememberComposableLambda(850203865, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$1
                        public final void invoke(Composer composer2, int i11115) {
                            if (!composer2.shouldExecute((i11115 & 3) != 2, i11115 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(850203865, i11115, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:421)");
                            }
                            TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo111, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(282231642, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$2
                        public final void invoke(Composer composer2, int i11115) {
                            if (!composer2.shouldExecute((i11115 & 3) != 2, i11115 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(282231642, i11115, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:422)");
                            }
                            TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo112, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(-320655704, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$3
                        public final void invoke(Composer composer2, int i11115) {
                            if (!composer2.shouldExecute((i11115 & 3) != 2, i11115 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-320655704, i11115, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:423)");
                            }
                            TextKt.m4085TextNvy7gAk("-", null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 6, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0), composerStartRestartGroup, i11112, i11113);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j2 = j13;
                    modifier3 = modifier15;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    j2 = jM3343getHeadlineContentColor0d7_KjU;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cb2
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DateRangePickerDefaults.DateRangePickerHeadline_qS89cEg$lambda$1(this.b, l, l2, i, datePickerFormatter, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 1572864;
            dateRangePickerDefaults = this;
            if ((599187 & i4) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 32) != 0) {
                        i4 &= -458753;
                        jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                    }
                } else {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 32) != 0) {
                        i4 &= -458753;
                        jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1655228151, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:409)");
                }
                Strings.Companion companion12 = Strings.Companion;
                final String strM4461getString2EP1pXo113 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composerStartRestartGroup, 0);
                final String strM4461getString2EP1pXo114 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composerStartRestartGroup, 0);
                int i11115 = (458752 & i4) | (i4 & 14) | 905969664 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4);
                int i11116 = ((i4 >> 12) & 896) | 6;
                int i11117 = i5;
                Modifier modifier16 = modifier4;
                long j14 = jM3343getHeadlineContentColor0d7_KjU;
                dateRangePickerDefaults.m3377DateRangePickerHeadlinenZrIstQ(l3, l4, i11117, datePickerFormatter, modifier16, j14, strM4461getString2EP1pXo113, strM4461getString2EP1pXo114, ComposableLambdaKt.rememberComposableLambda(850203865, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$1
                    public final void invoke(Composer composer2, int i11118) {
                        if (!composer2.shouldExecute((i11118 & 3) != 2, i11118 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(850203865, i11118, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:421)");
                        }
                        TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo113, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(282231642, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$2
                    public final void invoke(Composer composer2, int i11118) {
                        if (!composer2.shouldExecute((i11118 & 3) != 2, i11118 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(282231642, i11118, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:422)");
                        }
                        TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo114, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(-320655704, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$3
                    public final void invoke(Composer composer2, int i11118) {
                        if (!composer2.shouldExecute((i11118 & 3) != 2, i11118 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-320655704, i11118, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:423)");
                        }
                        TextKt.m4085TextNvy7gAk("-", null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 6, 0, 262138);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0), composerStartRestartGroup, i11115, i11116);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j2 = j14;
                modifier3 = modifier16;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                j2 = jM3343getHeadlineContentColor0d7_KjU;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cb2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DateRangePickerDefaults.DateRangePickerHeadline_qS89cEg$lambda$1(this.b, l, l2, i, datePickerFormatter, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        i5 = i;
        if ((i3 & 8) != 0) {
            i4 |= 3072;
        } else if ((i2 & 3072) == 0) {
            if ((i2 & 4096) == 0) {
                zChangedInstance = composerStartRestartGroup.changed(datePickerFormatter);
            } else {
                zChangedInstance = composerStartRestartGroup.changedInstance(datePickerFormatter);
            }
            if (zChangedInstance) {
                i7 = 2048;
            } else {
                i7 = 1024;
            }
            i4 |= i7;
        }
        i8 = i3 & 16;
        if (i8 != 0) {
            if ((i2 & 24576) == 0) {
                modifier2 = modifier;
                if (composerStartRestartGroup.changed(modifier2)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i4 |= i9;
            }
            if ((196608 & i2) == 0) {
                if ((i3 & 32) == 0) {
                    jM3343getHeadlineContentColor0d7_KjU = j;
                    if (composerStartRestartGroup.changed(jM3343getHeadlineContentColor0d7_KjU)) {
                    }
                    i4 |= i11;
                } else {
                    jM3343getHeadlineContentColor0d7_KjU = j;
                }
                i4 |= i11;
            } else {
                jM3343getHeadlineContentColor0d7_KjU = j;
            }
            if ((i3 & 64) != 0) {
                if ((i2 & 1572864) == 0) {
                    dateRangePickerDefaults = this;
                    if (composerStartRestartGroup.changed(dateRangePickerDefaults)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i4 |= i10;
                }
                if ((599187 & i4) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                    composerStartRestartGroup.startDefaults();
                    if ((i2 & 1) != 0) {
                        if (i8 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 32) != 0) {
                            i4 &= -458753;
                            jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                        }
                    } else {
                        if (i8 != 0) {
                            modifier4 = Modifier.Companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        if ((i3 & 32) != 0) {
                            i4 &= -458753;
                            jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                        }
                    }
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1655228151, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:409)");
                    }
                    Strings.Companion companion13 = Strings.Companion;
                    final String strM4461getString2EP1pXo115 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composerStartRestartGroup, 0);
                    final String strM4461getString2EP1pXo116 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composerStartRestartGroup, 0);
                    int i11118 = (458752 & i4) | (i4 & 14) | 905969664 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4);
                    int i11119 = ((i4 >> 12) & 896) | 6;
                    int i111110 = i5;
                    Modifier modifier17 = modifier4;
                    long j15 = jM3343getHeadlineContentColor0d7_KjU;
                    dateRangePickerDefaults.m3377DateRangePickerHeadlinenZrIstQ(l3, l4, i111110, datePickerFormatter, modifier17, j15, strM4461getString2EP1pXo115, strM4461getString2EP1pXo116, ComposableLambdaKt.rememberComposableLambda(850203865, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$1
                        public final void invoke(Composer composer2, int i111111) {
                            if (!composer2.shouldExecute((i111111 & 3) != 2, i111111 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(850203865, i111111, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:421)");
                            }
                            TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo115, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(282231642, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$2
                        public final void invoke(Composer composer2, int i111111) {
                            if (!composer2.shouldExecute((i111111 & 3) != 2, i111111 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(282231642, i111111, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:422)");
                            }
                            TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo116, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(-320655704, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$3
                        public final void invoke(Composer composer2, int i111111) {
                            if (!composer2.shouldExecute((i111111 & 3) != 2, i111111 & 1)) {
                                composer2.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-320655704, i111111, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:423)");
                            }
                            TextKt.m4085TextNvy7gAk("-", null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 6, 0, 262138);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }

                        @Override // defpackage.bm3
                        public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                            invoke(composer2, num.intValue());
                            return j59.a;
                        }
                    }, composerStartRestartGroup, 54), CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0), composerStartRestartGroup, i11118, i11119);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    j2 = j15;
                    modifier3 = modifier17;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                    j2 = jM3343getHeadlineContentColor0d7_KjU;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cb2
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj, Object obj2) {
                            int iIntValue = ((Integer) obj2).intValue();
                            return DateRangePickerDefaults.DateRangePickerHeadline_qS89cEg$lambda$1(this.b, l, l2, i, datePickerFormatter, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                        }
                    });
                }
            }
            i4 |= 1572864;
            dateRangePickerDefaults = this;
            if ((599187 & i4) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 32) != 0) {
                        i4 &= -458753;
                        jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                    }
                } else {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 32) != 0) {
                        i4 &= -458753;
                        jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1655228151, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:409)");
                }
                Strings.Companion companion14 = Strings.Companion;
                final String strM4461getString2EP1pXo117 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composerStartRestartGroup, 0);
                final String strM4461getString2EP1pXo118 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composerStartRestartGroup, 0);
                int i111111 = (458752 & i4) | (i4 & 14) | 905969664 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4);
                int i111112 = ((i4 >> 12) & 896) | 6;
                int i111113 = i5;
                Modifier modifier18 = modifier4;
                long j16 = jM3343getHeadlineContentColor0d7_KjU;
                dateRangePickerDefaults.m3377DateRangePickerHeadlinenZrIstQ(l3, l4, i111113, datePickerFormatter, modifier18, j16, strM4461getString2EP1pXo117, strM4461getString2EP1pXo118, ComposableLambdaKt.rememberComposableLambda(850203865, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$1
                    public final void invoke(Composer composer2, int i111114) {
                        if (!composer2.shouldExecute((i111114 & 3) != 2, i111114 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(850203865, i111114, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:421)");
                        }
                        TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo117, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(282231642, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$2
                    public final void invoke(Composer composer2, int i111114) {
                        if (!composer2.shouldExecute((i111114 & 3) != 2, i111114 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(282231642, i111114, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:422)");
                        }
                        TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo118, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(-320655704, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$3
                    public final void invoke(Composer composer2, int i111114) {
                        if (!composer2.shouldExecute((i111114 & 3) != 2, i111114 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-320655704, i111114, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:423)");
                        }
                        TextKt.m4085TextNvy7gAk("-", null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 6, 0, 262138);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0), composerStartRestartGroup, i111111, i111112);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j2 = j16;
                modifier3 = modifier18;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                j2 = jM3343getHeadlineContentColor0d7_KjU;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cb2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DateRangePickerDefaults.DateRangePickerHeadline_qS89cEg$lambda$1(this.b, l, l2, i, datePickerFormatter, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 24576;
        modifier2 = modifier;
        if ((196608 & i2) == 0) {
            if ((i3 & 32) == 0) {
                jM3343getHeadlineContentColor0d7_KjU = j;
                if (composerStartRestartGroup.changed(jM3343getHeadlineContentColor0d7_KjU)) {
                }
                i4 |= i11;
            } else {
                jM3343getHeadlineContentColor0d7_KjU = j;
            }
            i4 |= i11;
        } else {
            jM3343getHeadlineContentColor0d7_KjU = j;
        }
        if ((i3 & 64) != 0) {
            if ((i2 & 1572864) == 0) {
                dateRangePickerDefaults = this;
                if (composerStartRestartGroup.changed(dateRangePickerDefaults)) {
                    i10 = 1048576;
                } else {
                    i10 = 524288;
                }
                i4 |= i10;
            }
            if ((599187 & i4) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0) {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 32) != 0) {
                        i4 &= -458753;
                        jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                    }
                } else {
                    if (i8 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 32) != 0) {
                        i4 &= -458753;
                        jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                    }
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1655228151, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:409)");
                }
                Strings.Companion companion15 = Strings.Companion;
                final String strM4461getString2EP1pXo119 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composerStartRestartGroup, 0);
                final String strM4461getString2EP1pXo1110 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composerStartRestartGroup, 0);
                int i111114 = (458752 & i4) | (i4 & 14) | 905969664 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4);
                int i111115 = ((i4 >> 12) & 896) | 6;
                int i111116 = i5;
                Modifier modifier19 = modifier4;
                long j17 = jM3343getHeadlineContentColor0d7_KjU;
                dateRangePickerDefaults.m3377DateRangePickerHeadlinenZrIstQ(l3, l4, i111116, datePickerFormatter, modifier19, j17, strM4461getString2EP1pXo119, strM4461getString2EP1pXo1110, ComposableLambdaKt.rememberComposableLambda(850203865, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$1
                    public final void invoke(Composer composer2, int i111117) {
                        if (!composer2.shouldExecute((i111117 & 3) != 2, i111117 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(850203865, i111117, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:421)");
                        }
                        TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo119, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(282231642, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$2
                    public final void invoke(Composer composer2, int i111117) {
                        if (!composer2.shouldExecute((i111117 & 3) != 2, i111117 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(282231642, i111117, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:422)");
                        }
                        TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo1110, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(-320655704, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$3
                    public final void invoke(Composer composer2, int i111117) {
                        if (!composer2.shouldExecute((i111117 & 3) != 2, i111117 & 1)) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-320655704, i111117, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:423)");
                        }
                        TextKt.m4085TextNvy7gAk("-", null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 6, 0, 262138);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }

                    @Override // defpackage.bm3
                    public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return j59.a;
                    }
                }, composerStartRestartGroup, 54), CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0), composerStartRestartGroup, i111114, i111115);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                j2 = j17;
                modifier3 = modifier19;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                j2 = jM3343getHeadlineContentColor0d7_KjU;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cb2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DateRangePickerDefaults.DateRangePickerHeadline_qS89cEg$lambda$1(this.b, l, l2, i, datePickerFormatter, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 1572864;
        dateRangePickerDefaults = this;
        if ((599187 & i4) != 599186) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i8 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 32) != 0) {
                    i4 &= -458753;
                    jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                }
            } else {
                if (i8 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 32) != 0) {
                    i4 &= -458753;
                    jM3343getHeadlineContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3343getHeadlineContentColor0d7_KjU();
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1655228151, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline (DateRangePicker.kt:409)");
            }
            Strings.Companion companion16 = Strings.Companion;
            final String strM4461getString2EP1pXo1111 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composerStartRestartGroup, 0);
            final String strM4461getString2EP1pXo1112 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composerStartRestartGroup, 0);
            int i111117 = (458752 & i4) | (i4 & 14) | 905969664 | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4);
            int i111118 = ((i4 >> 12) & 896) | 6;
            int i111119 = i5;
            Modifier modifier110 = modifier4;
            long j18 = jM3343getHeadlineContentColor0d7_KjU;
            dateRangePickerDefaults.m3377DateRangePickerHeadlinenZrIstQ(l3, l4, i111119, datePickerFormatter, modifier110, j18, strM4461getString2EP1pXo1111, strM4461getString2EP1pXo1112, ComposableLambdaKt.rememberComposableLambda(850203865, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$1
                public final void invoke(Composer composer2, int i1111110) {
                    if (!composer2.shouldExecute((i1111110 & 3) != 2, i1111110 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(850203865, i1111110, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:421)");
                    }
                    TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo1111, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(282231642, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$2
                public final void invoke(Composer composer2, int i1111110) {
                    if (!composer2.shouldExecute((i1111110 & 3) != 2, i1111110 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(282231642, i1111110, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:422)");
                    }
                    TextKt.m4085TextNvy7gAk(strM4461getString2EP1pXo1112, null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262138);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(-320655704, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateRangePickerDefaults$DateRangePickerHeadline$3
                public final void invoke(Composer composer2, int i1111110) {
                    if (!composer2.shouldExecute((i1111110 & 3) != 2, i1111110 & 1)) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-320655704, i1111110, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerHeadline.<anonymous> (DateRangePicker.kt:423)");
                    }
                    TextKt.m4085TextNvy7gAk("-", null, jM3343getHeadlineContentColor0d7_KjU, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 6, 0, 262138);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), CalendarLocale_androidKt.defaultLocale(composerStartRestartGroup, 0), composerStartRestartGroup, i111117, i111118);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            j2 = j18;
            modifier3 = modifier110;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            j2 = jM3343getHeadlineContentColor0d7_KjU;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: cb2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DateRangePickerDefaults.DateRangePickerHeadline_qS89cEg$lambda$1(this.b, l, l2, i, datePickerFormatter, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0043  */
    /* JADX WARN: Code duplicated, block: B:28:0x0047  */
    /* JADX WARN: Code duplicated, block: B:30:0x004f  */
    /* JADX WARN: Code duplicated, block: B:31:0x0052  */
    /* JADX WARN: Code duplicated, block: B:34:0x0058  */
    /* JADX WARN: Code duplicated, block: B:37:0x0061  */
    /* JADX WARN: Code duplicated, block: B:38:0x0063  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:50:0x0086 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x0088  */
    /* JADX WARN: Code duplicated, block: B:52:0x008b  */
    /* JADX WARN: Code duplicated, block: B:55:0x0090  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:63:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:65:0x0103  */
    /* JADX WARN: Code duplicated, block: B:66:0x0142  */
    /* JADX WARN: Code duplicated, block: B:69:0x0151  */
    /* JADX WARN: Code duplicated, block: B:71:0x0157  */
    /* JADX WARN: Code duplicated, block: B:74:0x0162  */
    /* JADX WARN: Code duplicated, block: B:76:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: DateRangePickerTitle-FNtVw6o, reason: not valid java name */
    public final void m3379DateRangePickerTitleFNtVw6o(final int i, Modifier modifier, long j, Composer composer, final int i2, final int i3) {
        int i4;
        Modifier modifier2;
        long jM3350getTitleContentColor0d7_KjU;
        boolean z;
        final Modifier modifier3;
        final long j2;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Modifier modifier4;
        long j3;
        Modifier modifier5;
        DisplayMode.Companion companion;
        Composer composerStartRestartGroup = composer.startRestartGroup(694693107);
        if ((i3 & 1) != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(i) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i5 = i3 & 2;
        if (i5 == 0) {
            if ((i2 & 48) == 0) {
                modifier2 = modifier;
                i4 |= composerStartRestartGroup.changed(modifier2) ? 32 : 16;
            }
            if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                if ((i3 & 4) == 0) {
                    jM3350getTitleContentColor0d7_KjU = j;
                    int i6 = composerStartRestartGroup.changed(jM3350getTitleContentColor0d7_KjU) ? 256 : 128;
                    i4 |= i6;
                } else {
                    jM3350getTitleContentColor0d7_KjU = j;
                }
                i4 |= i6;
            } else {
                jM3350getTitleContentColor0d7_KjU = j;
            }
            if ((i4 & 147) != 146) {
                z = true;
            } else {
                z = false;
            }
            if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
                composerStartRestartGroup.startDefaults();
                if ((i2 & 1) != 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                    if (i5 != 0) {
                        modifier4 = Modifier.Companion;
                    } else {
                        modifier4 = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        jM3350getTitleContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3350getTitleContentColor0d7_KjU();
                        i4 &= -897;
                    }
                    j3 = jM3350getTitleContentColor0d7_KjU;
                    modifier5 = modifier4;
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    if ((i3 & 4) != 0) {
                        i4 &= -897;
                    }
                    j3 = jM3350getTitleContentColor0d7_KjU;
                    modifier5 = modifier2;
                }
                composerStartRestartGroup.endDefaults();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(694693107, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerTitle (DateRangePicker.kt:371)");
                }
                companion = DisplayMode.Companion;
                if (DisplayMode.m3404equalsimpl0(i, companion.m3409getPickerjFl4v0())) {
                    composerStartRestartGroup.startReplaceGroup(1880154051);
                    Strings.Companion companion2 = Strings.Companion;
                    TextKt.m4085TextNvy7gAk(Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_title), composerStartRestartGroup, 0), modifier5, j3, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composerStartRestartGroup, i4 & 1008, 0, 262136);
                    composerStartRestartGroup.endReplaceGroup();
                } else if (DisplayMode.m3404equalsimpl0(i, companion.m3408getInputjFl4v0())) {
                    composerStartRestartGroup.startReplaceGroup(1880161282);
                    Strings.Companion companion3 = Strings.Companion;
                    TextKt.m4085TextNvy7gAk(Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_input_title), composerStartRestartGroup, 0), modifier5, j3, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composerStartRestartGroup, i4 & 1008, 0, 262136);
                    composerStartRestartGroup.endReplaceGroup();
                } else {
                    composerStartRestartGroup.startReplaceGroup(-1844364305);
                    composerStartRestartGroup.endReplaceGroup();
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                modifier3 = modifier5;
                j2 = j3;
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                modifier3 = modifier2;
                j2 = jM3350getTitleContentColor0d7_KjU;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bb2
                    @Override // defpackage.bm3
                    public final Object invoke(Object obj, Object obj2) {
                        int iIntValue = ((Integer) obj2).intValue();
                        return DateRangePickerDefaults.DateRangePickerTitle_FNtVw6o$lambda$0(this.b, i, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                    }
                });
            }
        }
        i4 |= 48;
        modifier2 = modifier;
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i3 & 4) == 0) {
                jM3350getTitleContentColor0d7_KjU = j;
                if (composerStartRestartGroup.changed(jM3350getTitleContentColor0d7_KjU)) {
                }
                i4 |= i6;
            } else {
                jM3350getTitleContentColor0d7_KjU = j;
            }
            i4 |= i6;
        } else {
            jM3350getTitleContentColor0d7_KjU = j;
        }
        if ((i4 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (composerStartRestartGroup.shouldExecute(z, i4 & 1)) {
            composerStartRestartGroup.startDefaults();
            if ((i2 & 1) != 0) {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 4) != 0) {
                    jM3350getTitleContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3350getTitleContentColor0d7_KjU();
                    i4 &= -897;
                }
                j3 = jM3350getTitleContentColor0d7_KjU;
                modifier5 = modifier4;
            } else {
                if (i5 != 0) {
                    modifier4 = Modifier.Companion;
                } else {
                    modifier4 = modifier2;
                }
                if ((i3 & 4) != 0) {
                    jM3350getTitleContentColor0d7_KjU = DatePickerDefaults.INSTANCE.colors(composerStartRestartGroup, 6).m3350getTitleContentColor0d7_KjU();
                    i4 &= -897;
                }
                j3 = jM3350getTitleContentColor0d7_KjU;
                modifier5 = modifier4;
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(694693107, i4, -1, "androidx.compose.material3.DateRangePickerDefaults.DateRangePickerTitle (DateRangePicker.kt:371)");
            }
            companion = DisplayMode.Companion;
            if (DisplayMode.m3404equalsimpl0(i, companion.m3409getPickerjFl4v0())) {
                composerStartRestartGroup.startReplaceGroup(1880154051);
                Strings.Companion companion4 = Strings.Companion;
                TextKt.m4085TextNvy7gAk(Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_title), composerStartRestartGroup, 0), modifier5, j3, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composerStartRestartGroup, i4 & 1008, 0, 262136);
                composerStartRestartGroup.endReplaceGroup();
            } else if (DisplayMode.m3404equalsimpl0(i, companion.m3408getInputjFl4v0())) {
                composerStartRestartGroup.startReplaceGroup(1880161282);
                Strings.Companion companion5 = Strings.Companion;
                TextKt.m4085TextNvy7gAk(Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_input_title), composerStartRestartGroup, 0), modifier5, j3, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composerStartRestartGroup, i4 & 1008, 0, 262136);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-1844364305);
                composerStartRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier5;
            j2 = j3;
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            modifier3 = modifier2;
            j2 = jM3350getTitleContentColor0d7_KjU;
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: bb2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DateRangePickerDefaults.DateRangePickerTitle_FNtVw6o$lambda$0(this.b, i, modifier3, j2, i2, i3, (Composer) obj, iIntValue);
                }
            });
        }
    }
}

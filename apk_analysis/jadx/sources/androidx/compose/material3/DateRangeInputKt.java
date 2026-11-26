package androidx.compose.material3;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.material3.DateRangeInputKt;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.material3.internal.DateInputFormat;
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
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.nz;
import defpackage.y74;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class DateRangeInputKt {
    private static final float TextFieldSpacing = Dp.m9042constructorimpl(8.0f);

    public static final void DateRangeInputContent(final Long l, final Long l2, bm3<? super Long, ? super Long, j59> bm3Var, final CalendarModel calendarModel, final y74 y74Var, final DatePickerFormatter datePickerFormatter, final SelectableDates selectableDates, final DatePickerColors datePickerColors, final FocusRequester focusRequester, Composer composer, final int i) {
        int i2;
        y74 y74Var2;
        final bm3<? super Long, ? super Long, j59> bm3Var2;
        Composer composer2;
        Object dateInputValidator;
        Composer composerStartRestartGroup = composer.startRestartGroup(1372713366);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(l) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changed(l2) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(bm3Var) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(calendarModel) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            y74Var2 = y74Var;
            i2 |= composerStartRestartGroup.changedInstance(y74Var2) ? 16384 : 8192;
        } else {
            y74Var2 = y74Var;
        }
        if ((196608 & i) == 0) {
            i2 |= (i & 262144) == 0 ? composerStartRestartGroup.changed(datePickerFormatter) : composerStartRestartGroup.changedInstance(datePickerFormatter) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(selectableDates) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i2 |= composerStartRestartGroup.changed(datePickerColors) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i2 |= composerStartRestartGroup.changed(focusRequester) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if (composerStartRestartGroup.shouldExecute((i2 & 38347923) != 38347922, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1372713366, i2, -1, "androidx.compose.material3.DateRangeInputContent (DateRangeInput.kt:44)");
            }
            boolean zChanged = composerStartRestartGroup.changed(calendarModel.getLocale());
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = calendarModel.getDateInputFormat(calendarModel.getLocale());
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            DateInputFormat dateInputFormat = (DateInputFormat) objRememberedValue;
            Strings.Companion companion = Strings.Companion;
            String strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_input_invalid_for_pattern), composerStartRestartGroup, 0);
            String strM4461getString2EP1pXo2 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_input_invalid_year_range), composerStartRestartGroup, 0);
            String strM4461getString2EP1pXo3 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_input_invalid_not_allowed), composerStartRestartGroup, 0);
            String strM4461getString2EP1pXo4 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_input_invalid_range_input), composerStartRestartGroup, 0);
            boolean zChanged2 = composerStartRestartGroup.changed(dateInputFormat) | ((i2 & 458752) == 131072 || ((i2 & 262144) != 0 && composerStartRestartGroup.changed(datePickerFormatter)));
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChanged2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                dateInputValidator = new DateInputValidator(y74Var2, selectableDates, dateInputFormat, datePickerFormatter, strM4461getString2EP1pXo, strM4461getString2EP1pXo2, strM4461getString2EP1pXo3, strM4461getString2EP1pXo4);
                dateInputFormat = dateInputFormat;
                composerStartRestartGroup.updateRememberedValue(dateInputValidator);
            } else {
                dateInputValidator = objRememberedValue2;
            }
            DateInputValidator dateInputValidator2 = (DateInputValidator) dateInputValidator;
            dateInputValidator2.setCurrentStartDateMillis(l);
            dateInputValidator2.setCurrentEndDateMillis(l2);
            Modifier.Companion companion2 = Modifier.Companion;
            Modifier modifierPadding = PaddingKt.padding(companion2, DateInputKt.getInputTextFieldPadding());
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.m1740spacedBy0680j_4(TextFieldSpacing), Alignment.Companion.getTop(), composerStartRestartGroup, 6);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierPadding);
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
            bm3 bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
            if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
            }
            Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion3.getSetModifier());
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            String upperCase = dateInputFormat.getPatternWithDelimiters().toUpperCase(Locale.ROOT);
            upperCase.getClass();
            String strM4461getString2EP1pXo5 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_start_headline), composerStartRestartGroup, 0);
            Modifier modifierWeight$default = RowScope.weight$default(rowScopeInstance, companion2, 0.5f, false, 2, null);
            InputIdentifier.Companion companion4 = InputIdentifier.Companion;
            int iM3565getStartDateInputJ2x2o4M = companion4.m3565getStartDateInputJ2x2o4M();
            Locale locale = calendarModel.getLocale();
            int i3 = i2 & 896;
            int i4 = i2 & 112;
            boolean z = (i4 == 32) | (i3 == 256);
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (z || objRememberedValue3 == Composer.Companion.getEmpty()) {
                objRememberedValue3 = new nz(1, bm3Var, l2);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            int i5 = i2 & 7168;
            int i6 = i2 >> 21;
            int i7 = i6 & 14;
            int i8 = i2;
            composer2 = composerStartRestartGroup;
            boolean z2 = false;
            DateInputKt.m3327DateInputTextFieldxJ3Ic0Y(modifierWeight$default, l, (nl3) objRememberedValue3, calendarModel, ComposableLambdaKt.rememberComposableLambda(1740538748, true, new DateRangeInputKt$DateRangeInputContent$2$2(strM4461getString2EP1pXo5, upperCase), composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(1229526589, true, new DateRangeInputKt$DateRangeInputContent$2$3(upperCase), composerStartRestartGroup, 54), iM3565getStartDateInputJ2x2o4M, dateInputValidator2, dateInputFormat, locale, datePickerColors, focusRequester, composer2, ((i2 << 3) & 112) | 1794048 | i5, i6 & 126);
            String strM4461getString2EP1pXo6 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_range_picker_end_headline), composer2, 0);
            Modifier modifierWeight$default2 = RowScope.weight$default(rowScopeInstance, companion2, 0.5f, false, 2, null);
            int iM3563getEndDateInputJ2x2o4M = companion4.m3563getEndDateInputJ2x2o4M();
            Locale locale2 = calendarModel.getLocale();
            boolean z3 = i3 == 256;
            if ((i8 & 14) == 4) {
                z2 = true;
            }
            boolean z4 = z3 | z2;
            Object objRememberedValue4 = composer2.rememberedValue();
            if (z4 || objRememberedValue4 == Composer.Companion.getEmpty()) {
                bm3Var2 = bm3Var;
                objRememberedValue4 = new nl3() { // from class: xa2
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return DateRangeInputKt.DateRangeInputContent$lambda$7$lambda$6$lambda$5(bm3Var2, l, (Long) obj);
                    }
                };
                composer2.updateRememberedValue(objRememberedValue4);
            } else {
                bm3Var2 = bm3Var;
            }
            DateInputKt.m3327DateInputTextFieldxJ3Ic0Y(modifierWeight$default2, l2, (nl3) objRememberedValue4, calendarModel, ComposableLambdaKt.rememberComposableLambda(-882370893, true, new DateRangeInputKt$DateRangeInputContent$2$5(strM4461getString2EP1pXo6, upperCase), composer2, 54), ComposableLambdaKt.rememberComposableLambda(1956183348, true, new DateRangeInputKt$DateRangeInputContent$2$6(upperCase), composer2, 54), iM3563getEndDateInputJ2x2o4M, dateInputValidator2, dateInputFormat, locale2, datePickerColors, null, composer2, i4 | 1794048 | i5, i7 | 48);
            composer2.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            bm3Var2 = bm3Var;
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final bm3<? super Long, ? super Long, j59> bm3Var3 = bm3Var2;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: ya2
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DateRangeInputKt.DateRangeInputContent$lambda$8(l, l2, bm3Var3, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, focusRequester, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DateRangeInputContent$lambda$7$lambda$4$lambda$3(bm3 bm3Var, Long l, Long l2) {
        bm3Var.invoke(l2, l);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DateRangeInputContent$lambda$7$lambda$6$lambda$5(bm3 bm3Var, Long l, Long l2) {
        bm3Var.invoke(l, l2);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DateRangeInputContent$lambda$8(Long l, Long l2, bm3 bm3Var, CalendarModel calendarModel, y74 y74Var, DatePickerFormatter datePickerFormatter, SelectableDates selectableDates, DatePickerColors datePickerColors, FocusRequester focusRequester, int i, Composer composer, int i2) {
        DateRangeInputContent(l, l2, bm3Var, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, focusRequester, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }
}

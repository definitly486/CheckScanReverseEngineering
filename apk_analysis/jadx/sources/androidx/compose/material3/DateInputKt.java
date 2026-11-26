package androidx.compose.material3;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.DateInputKt;
import androidx.compose.material3.internal.CalendarDate;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.material3.internal.DateInputFormat;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.q92;
import defpackage.ta8;
import defpackage.vu1;
import defpackage.y22;
import defpackage.y74;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class DateInputKt {
    private static final PaddingValues InputTextFieldPadding = PaddingKt.m2030PaddingValuesa9UjIt4$default(Dp.m9042constructorimpl(24.0f), Dp.m9042constructorimpl(10.0f), Dp.m9042constructorimpl(24.0f), 0.0f, 8, null);
    private static final float InputTextNonErroneousBottomPadding = Dp.m9042constructorimpl(16.0f);

    public static final void DateInputContent(final Long l, final nl3<? super Long, j59> nl3Var, final CalendarModel calendarModel, final y74 y74Var, final DatePickerFormatter datePickerFormatter, final SelectableDates selectableDates, final DatePickerColors datePickerColors, final FocusRequester focusRequester, Composer composer, final int i) {
        int i2;
        y74 y74Var2;
        SelectableDates selectableDates2;
        Composer composer2;
        int i3;
        DateInputFormat dateInputFormat;
        int i4;
        Composer composerStartRestartGroup = composer.startRestartGroup(-432341251);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changed(l) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(nl3Var) ? 32 : 16;
        }
        if ((i & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(calendarModel) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            y74Var2 = y74Var;
            i2 |= composerStartRestartGroup.changedInstance(y74Var2) ? 2048 : 1024;
        } else {
            y74Var2 = y74Var;
        }
        if ((i & 24576) == 0) {
            i2 |= (i & 32768) == 0 ? composerStartRestartGroup.changed(datePickerFormatter) : composerStartRestartGroup.changedInstance(datePickerFormatter) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            selectableDates2 = selectableDates;
            i2 |= composerStartRestartGroup.changed(selectableDates2) ? 131072 : 65536;
        } else {
            selectableDates2 = selectableDates;
        }
        if ((1572864 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(datePickerColors) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= composerStartRestartGroup.changed(focusRequester) ? 8388608 : 4194304;
        }
        if (composerStartRestartGroup.shouldExecute((4793491 & i2) != 4793490, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-432341251, i2, -1, "androidx.compose.material3.DateInputContent (DateInput.kt:67)");
            }
            boolean zChanged = composerStartRestartGroup.changed(calendarModel.getLocale());
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = calendarModel.getDateInputFormat(calendarModel.getLocale());
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            DateInputFormat dateInputFormat2 = (DateInputFormat) objRememberedValue;
            Strings.Companion companion = Strings.Companion;
            String strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_input_invalid_for_pattern), composerStartRestartGroup, 0);
            String strM4461getString2EP1pXo2 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_input_invalid_year_range), composerStartRestartGroup, 0);
            String strM4461getString2EP1pXo3 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_input_invalid_not_allowed), composerStartRestartGroup, 0);
            boolean zChanged2 = composerStartRestartGroup.changed(dateInputFormat2) | ((i2 & 57344) == 16384 || ((i2 & 32768) != 0 && composerStartRestartGroup.changed(datePickerFormatter)));
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChanged2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                i3 = i2;
                dateInputFormat = dateInputFormat2;
                i4 = 0;
                DateInputValidator dateInputValidator = new DateInputValidator(y74Var2, selectableDates2, dateInputFormat, datePickerFormatter, strM4461getString2EP1pXo, strM4461getString2EP1pXo2, strM4461getString2EP1pXo3, "");
                composerStartRestartGroup.updateRememberedValue(dateInputValidator);
                objRememberedValue2 = dateInputValidator;
            } else {
                i3 = i2;
                dateInputFormat = dateInputFormat2;
                i4 = 0;
            }
            DateInputValidator dateInputValidator2 = (DateInputValidator) objRememberedValue2;
            String upperCase = dateInputFormat.getPatternWithDelimiters().toUpperCase(Locale.ROOT);
            upperCase.getClass();
            String strM4461getString2EP1pXo4 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_input_label), composerStartRestartGroup, i4);
            Modifier modifierPadding = PaddingKt.padding(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, null), InputTextFieldPadding);
            int iM3564getSingleDateInputJ2x2o4M = InputIdentifier.Companion.m3564getSingleDateInputJ2x2o4M();
            dateInputValidator2.setCurrentStartDateMillis(l);
            int i5 = i3 << 3;
            composer2 = composerStartRestartGroup;
            DateInputFormat dateInputFormat3 = dateInputFormat;
            m3327DateInputTextFieldxJ3Ic0Y(modifierPadding, l, nl3Var, calendarModel, ComposableLambdaKt.rememberComposableLambda(-752164549, true, new AnonymousClass2(strM4461getString2EP1pXo4, upperCase), composerStartRestartGroup, 54), ComposableLambdaKt.rememberComposableLambda(-1179434278, true, new AnonymousClass3(upperCase), composerStartRestartGroup, 54), iM3564getSingleDateInputJ2x2o4M, dateInputValidator2, dateInputFormat3, calendarModel.getLocale(), datePickerColors, focusRequester, composer2, (i5 & 7168) | (i5 & 112) | 1794054 | (i5 & 896), (i3 >> 18) & 126);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: n92
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    int iIntValue = ((Integer) obj2).intValue();
                    return DateInputKt.DateInputContent$lambda$3(l, nl3Var, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, focusRequester, i, (Composer) obj, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DateInputContent$lambda$3(Long l, nl3 nl3Var, CalendarModel calendarModel, y74 y74Var, DatePickerFormatter datePickerFormatter, SelectableDates selectableDates, DatePickerColors datePickerColors, FocusRequester focusRequester, int i, Composer composer, int i2) {
        DateInputContent(l, nl3Var, calendarModel, y74Var, datePickerFormatter, selectableDates, datePickerColors, focusRequester, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: DateInputTextField-xJ3Ic0Y, reason: not valid java name */
    public static final void m3327DateInputTextFieldxJ3Ic0Y(final Modifier modifier, Long l, final nl3<? super Long, j59> nl3Var, final CalendarModel calendarModel, final bm3<? super Composer, ? super Integer, j59> bm3Var, final bm3<? super Composer, ? super Integer, j59> bm3Var2, final int i, final DateInputValidator dateInputValidator, final DateInputFormat dateInputFormat, final Locale locale, final DatePickerColors datePickerColors, final FocusRequester focusRequester, Composer composer, final int i2, final int i3) {
        int i4;
        int i5;
        Long l2;
        Composer composer2;
        MutableState mutableState;
        float fM9042constructorimpl;
        Object obj;
        final DateInputFormat dateInputFormat2;
        boolean z;
        Object dateInputKt$DateInputTextField$5$1;
        final CalendarModel calendarModel2 = calendarModel;
        final Locale locale2 = locale;
        Composer composerStartRestartGroup = composer.startRestartGroup(1456309913);
        if ((i2 & 6) == 0) {
            i4 = (composerStartRestartGroup.changed(modifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= composerStartRestartGroup.changed(l) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(nl3Var) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(calendarModel2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(bm3Var) ? 16384 : 8192;
        }
        if ((i2 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(bm3Var2) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= composerStartRestartGroup.changed(i) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= composerStartRestartGroup.changed(dateInputValidator) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= composerStartRestartGroup.changed(dateInputFormat) ? 67108864 : GroupFlagsKt.HasAuxSlotFlag;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= composerStartRestartGroup.changedInstance(locale2) ? 536870912 : 268435456;
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
        if (composerStartRestartGroup.shouldExecute(((i4 & 306783379) == 306783378 && (i6 & 19) == 18) ? false : true, i4 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1456309913, i4, i6, "androidx.compose.material3.DateInputTextField (DateInput.kt:128)");
            }
            Object[] objArr = new Object[0];
            Saver<TextFieldValue, Object> saver = TextFieldValue.Companion.getSaver();
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            Composer.Companion companion = Composer.Companion;
            int i7 = i4;
            if (objRememberedValue == companion.getEmpty()) {
                objRememberedValue = new vu1(1);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            final MutableState mutableStateRememberSaveable = RememberSaveableKt.rememberSaveable(objArr, (Saver) saver, (ll3) objRememberedValue, composerStartRestartGroup, RendererCapabilities.DECODER_SUPPORT_MASK);
            Object[] objArr2 = {DateInputTextField_xJ3Ic0Y$lambda$6(mutableStateRememberSaveable)};
            int i8 = i7 & 29360128;
            int i9 = i7 & 234881024;
            int i10 = i7 & 3670016;
            boolean zChanged = composerStartRestartGroup.changed(mutableStateRememberSaveable) | (i8 == 8388608) | composerStartRestartGroup.changedInstance(calendarModel2) | (i9 == 67108864) | composerStartRestartGroup.changedInstance(locale2) | (i10 == 1048576);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (zChanged || objRememberedValue2 == companion.getEmpty()) {
                objRememberedValue2 = new ll3() { // from class: o92
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return DateInputKt.DateInputTextField_xJ3Ic0Y$lambda$9$lambda$8(dateInputValidator, calendarModel2, dateInputFormat, locale2, i, mutableStateRememberSaveable);
                    }
                };
                mutableState = mutableStateRememberSaveable;
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            } else {
                mutableState = mutableStateRememberSaveable;
            }
            final MutableState mutableState2 = (MutableState) RememberSaveableKt.rememberSaveable(objArr2, (ll3) objRememberedValue2, composerStartRestartGroup, 0);
            if (ta8.M((CharSequence) mutableState2.getValue())) {
                fM9042constructorimpl = InputTextNonErroneousBottomPadding;
            } else {
                PaddingValues paddingValuesM4061supportingTextPaddinga9UjIt4$material3$default = TextFieldDefaults.m4061supportingTextPaddinga9UjIt4$material3$default(TextFieldDefaults.INSTANCE, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                fM9042constructorimpl = Dp.m9042constructorimpl(InputTextNonErroneousBottomPadding - Dp.m9042constructorimpl(paddingValuesM4061supportingTextPaddinga9UjIt4$material3$default.mo1985calculateTopPaddingD9Ej5fM() + paddingValuesM4061supportingTextPaddinga9UjIt4$material3$default.mo1982calculateBottomPaddingD9Ej5fM()));
            }
            float f = fM9042constructorimpl;
            TextFieldValue textFieldValueDateInputTextField_xJ3Ic0Y$lambda$6 = DateInputTextField_xJ3Ic0Y$lambda$6(mutableState);
            boolean zChanged2 = (i10 == 1048576) | (i9 == 67108864) | composerStartRestartGroup.changed(mutableState) | composerStartRestartGroup.changed(mutableState2) | ((i7 & 896) == 256) | composerStartRestartGroup.changedInstance(calendarModel2) | composerStartRestartGroup.changedInstance(locale2) | (i8 == 8388608);
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (zChanged2 || objRememberedValue3 == companion.getEmpty()) {
                dateInputFormat2 = dateInputFormat;
                final MutableState mutableState3 = mutableState;
                obj = new nl3() { // from class: p92
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return DateInputKt.DateInputTextField_xJ3Ic0Y$lambda$12$lambda$11(dateInputFormat2, mutableState2, nl3Var, calendarModel2, locale2, dateInputValidator, i, mutableState3, (TextFieldValue) obj2);
                    }
                };
                calendarModel2 = calendarModel2;
                locale2 = locale2;
                mutableState = mutableState3;
                composerStartRestartGroup.updateRememberedValue(obj);
            } else {
                obj = objRememberedValue3;
                dateInputFormat2 = dateInputFormat;
            }
            nl3 nl3Var2 = (nl3) obj;
            Modifier modifierM2037paddingqDBjuR0$default = PaddingKt.m2037paddingqDBjuR0$default(modifier, 0.0f, 0.0f, 0.0f, f, 7, null);
            boolean zChanged3 = composerStartRestartGroup.changed(mutableState2);
            Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (zChanged3 || objRememberedValue4 == companion.getEmpty()) {
                z = false;
                objRememberedValue4 = new q92(mutableState2, 0 == true ? 1 : 0);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
            } else {
                z = false;
            }
            boolean z2 = z;
            OutlinedTextFieldKt.OutlinedTextField(textFieldValueDateInputTextField_xJ3Ic0Y$lambda$6, (nl3<? super TextFieldValue, j59>) nl3Var2, SemanticsModifierKt.semantics$default(modifierM2037paddingqDBjuR0$default, z, (nl3) objRememberedValue4, 1, null).then(focusRequester != null ? FocusRequesterModifierKt.focusRequester(Modifier.Companion, focusRequester) : Modifier.Companion), false, false, (TextStyle) null, bm3Var, bm3Var2, (bm3<? super Composer, ? super Integer, j59>) null, (bm3<? super Composer, ? super Integer, j59>) null, (bm3<? super Composer, ? super Integer, j59>) null, (bm3<? super Composer, ? super Integer, j59>) null, (bm3<? super Composer, ? super Integer, j59>) ComposableLambdaKt.rememberComposableLambda(-357881838, true, new bm3<Composer, Integer, j59>() { // from class: androidx.compose.material3.DateInputKt$DateInputTextField$3
                public final void invoke(Composer composer3, int i11) {
                    Composer composer4 = composer3;
                    if (!composer4.shouldExecute((i11 & 3) != 2, i11 & 1)) {
                        composer4.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-357881838, i11, -1, "androidx.compose.material3.DateInputTextField.<anonymous> (DateInput.kt:215)");
                    }
                    if (ta8.M(mutableState2.getValue())) {
                        composer4.startReplaceGroup(-1548950640);
                    } else {
                        composer4.startReplaceGroup(-327061465);
                        TextKt.m4085TextNvy7gAk(mutableState2.getValue(), null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer3, 0, 0, 262142);
                        composer4 = composer3;
                    }
                    composer4.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }

                @Override // defpackage.bm3
                public /* bridge */ /* synthetic */ j59 invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return j59.a;
                }
            }, composerStartRestartGroup, 54), !ta8.M((CharSequence) mutableState2.getValue()), (VisualTransformation) new DateVisualTransformation(dateInputFormat2), new KeyboardOptions(0, Boolean.FALSE, KeyboardType.Companion.m8729getNumberPjHm6EE(), ImeAction.Companion.m8673getDoneeUduSuo(), (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 113, (jh2) null), (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, datePickerColors.getDateTextFieldColors(), composerStartRestartGroup, (i7 << 6) & 33030144, 12779904, 0, 4001592);
            composer2 = composerStartRestartGroup;
            j59 j59Var = j59.a;
            boolean z3 = (i6 & 112) == 32 ? true : z2;
            Object objRememberedValue5 = composer2.rememberedValue();
            if (z3 || objRememberedValue5 == companion.getEmpty()) {
                objRememberedValue5 = new DateInputKt$DateInputTextField$4$1(focusRequester, null);
                composer2.updateRememberedValue(objRememberedValue5);
            }
            EffectsKt.LaunchedEffect(j59Var, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) objRememberedValue5, composer2, 6);
            boolean zChangedInstance = ((i7 & 112) == 32 ? true : z2) | composer2.changedInstance(calendarModel2) | (i9 == 67108864 ? true : z2) | composer2.changedInstance(locale2) | composer2.changed(mutableState);
            Object objRememberedValue6 = composer2.rememberedValue();
            if (zChangedInstance || objRememberedValue6 == companion.getEmpty()) {
                l2 = l;
                dateInputKt$DateInputTextField$5$1 = new DateInputKt$DateInputTextField$5$1(l2, calendarModel2, dateInputFormat2, locale, mutableState, null);
                composer2.updateRememberedValue(dateInputKt$DateInputTextField$5$1);
            } else {
                dateInputKt$DateInputTextField$5$1 = objRememberedValue6;
                l2 = l;
            }
            EffectsKt.LaunchedEffect(l2, (bm3<? super y22, ? super e02<? super j59>, ? extends Object>) dateInputKt$DateInputTextField$5$1, composer2, (i7 >> 3) & 14);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            l2 = l;
            composer2 = composerStartRestartGroup;
            composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Long l3 = l2;
            scopeUpdateScopeEndRestartGroup.updateScope(new bm3() { // from class: r92
                @Override // defpackage.bm3
                public final Object invoke(Object obj2, Object obj3) {
                    int iIntValue = ((Integer) obj3).intValue();
                    return DateInputKt.DateInputTextField_xJ3Ic0Y$lambda$17(modifier, l3, nl3Var, calendarModel, bm3Var, bm3Var2, i, dateInputValidator, dateInputFormat, locale, datePickerColors, focusRequester, i2, i3, (Composer) obj2, iIntValue);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DateInputTextField_xJ3Ic0Y$lambda$12$lambda$11(DateInputFormat dateInputFormat, MutableState mutableState, nl3 nl3Var, CalendarModel calendarModel, Locale locale, DateInputValidator dateInputValidator, int i, MutableState mutableState2, TextFieldValue textFieldValue) {
        if (textFieldValue.getText().length() <= dateInputFormat.getPatternWithoutDelimiters().length()) {
            String text = textFieldValue.getText();
            for (int i2 = 0; i2 < text.length(); i2++) {
                if (Character.isDigit(text.charAt(i2))) {
                }
            }
            mutableState2.setValue(textFieldValue);
            String string = ta8.f0(textFieldValue.getText()).toString();
            Long lValueOf = null;
            if (string.length() != 0 && string.length() >= dateInputFormat.getPatternWithoutDelimiters().length()) {
                CalendarDate calendarDate = calendarModel.parse(string, dateInputFormat.getPatternWithoutDelimiters(), locale);
                mutableState.setValue(dateInputValidator.m3328validateXivgLIo(calendarDate, i, locale));
                if (((CharSequence) mutableState.getValue()).length() == 0 && calendarDate != null) {
                    lValueOf = Long.valueOf(calendarDate.getUtcTimeMillis());
                }
                nl3Var.invoke(lValueOf);
            } else {
                mutableState.setValue("");
                nl3Var.invoke(null);
            }
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DateInputTextField_xJ3Ic0Y$lambda$14$lambda$13(MutableState mutableState, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (!ta8.M((CharSequence) mutableState.getValue())) {
            SemanticsPropertiesKt.error(semanticsPropertyReceiver, (String) mutableState.getValue());
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 DateInputTextField_xJ3Ic0Y$lambda$17(Modifier modifier, Long l, nl3 nl3Var, CalendarModel calendarModel, bm3 bm3Var, bm3 bm3Var2, int i, DateInputValidator dateInputValidator, DateInputFormat dateInputFormat, Locale locale, DatePickerColors datePickerColors, FocusRequester focusRequester, int i2, int i3, Composer composer, int i4) {
        m3327DateInputTextFieldxJ3Ic0Y(modifier, l, nl3Var, calendarModel, bm3Var, bm3Var2, i, dateInputValidator, dateInputFormat, locale, datePickerColors, focusRequester, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableState DateInputTextField_xJ3Ic0Y$lambda$5$lambda$4() {
        return SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new TextFieldValue((String) null, 0L, (TextRange) null, 7, (jh2) null), null, 2, null);
    }

    private static final TextFieldValue DateInputTextField_xJ3Ic0Y$lambda$6(MutableState<TextFieldValue> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableState DateInputTextField_xJ3Ic0Y$lambda$9$lambda$8(DateInputValidator dateInputValidator, CalendarModel calendarModel, DateInputFormat dateInputFormat, Locale locale, int i, MutableState mutableState) {
        return SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(DateInputTextField_xJ3Ic0Y$lambda$6(mutableState).getText().length() > 0 ? dateInputValidator.m3328validateXivgLIo(calendarModel.parse(DateInputTextField_xJ3Ic0Y$lambda$6(mutableState).getText(), dateInputFormat.getPatternWithoutDelimiters(), locale), i, locale) : "", null, 2, null);
    }

    public static final PaddingValues getInputTextFieldPadding() {
        return InputTextFieldPadding;
    }

    /* JADX INFO: renamed from: androidx.compose.material3.DateInputKt$DateInputContent$3, reason: invalid class name */
    public static final class AnonymousClass3 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ String $pattern;

        public AnonymousClass3(String str) {
            this.$pattern = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$1$lambda$0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
            return j59.a;
        }

        public final void invoke(Composer composer, int i) {
            int i2 = 0;
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1179434278, i, -1, "androidx.compose.material3.DateInputContent.<anonymous> (DateInput.kt:98)");
            }
            String str = this.$pattern;
            Modifier.Companion companion = Modifier.Companion;
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new x(i2);
                composer.updateRememberedValue(objRememberedValue);
            }
            TextKt.m4085TextNvy7gAk(str, SemanticsModifierKt.clearAndSetSemantics(companion, (nl3) objRememberedValue), 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer, 0, 0, 262140);
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

    /* JADX INFO: renamed from: androidx.compose.material3.DateInputKt$DateInputContent$2, reason: invalid class name */
    public static final class AnonymousClass2 implements bm3<Composer, Integer, j59> {
        final /* synthetic */ String $labelText;
        final /* synthetic */ String $pattern;

        public AnonymousClass2(String str, String str2) {
            this.$labelText = str;
            this.$pattern = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invoke$lambda$1$lambda$0(String str, String str2, SemanticsPropertyReceiver semanticsPropertyReceiver) {
            SemanticsPropertiesKt.setContentDescription(semanticsPropertyReceiver, str + ", " + str2);
            return j59.a;
        }

        public final void invoke(Composer composer, int i) {
            if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-752164549, i, -1, "androidx.compose.material3.DateInputContent.<anonymous> (DateInput.kt:93)");
            }
            String str = this.$labelText;
            Modifier.Companion companion = Modifier.Companion;
            boolean zChanged = composer.changed(str) | composer.changed(this.$pattern);
            final String str2 = this.$labelText;
            final String str3 = this.$pattern;
            Object objRememberedValue = composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new nl3() { // from class: androidx.compose.material3.w
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return DateInputKt.AnonymousClass2.invoke$lambda$1$lambda$0(str2, str3, (SemanticsPropertyReceiver) obj);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            TextKt.m4085TextNvy7gAk(str, SemanticsModifierKt.semantics$default(companion, false, (nl3) objRememberedValue, 1, null), 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer, 0, 0, 262140);
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

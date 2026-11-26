package androidx.compose.material3;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.KeyboardActionScope;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.tokens.TimeInputTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.Ref;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.intl.LocaleList;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class TimePickerKt$TimeInputImpl$2$1 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ TimePickerColors $colors;
    final /* synthetic */ MutableState<TextFieldValue> $hourValue$delegate;
    final /* synthetic */ MutableState<TextFieldValue> $minuteValue$delegate;
    final /* synthetic */ TimePickerState $state;
    final /* synthetic */ Ref<Boolean> $userOverride;

    public TimePickerKt$TimeInputImpl$2$1(MutableState<TextFieldValue> mutableState, TimePickerState timePickerState, Ref<Boolean> ref, TimePickerColors timePickerColors, MutableState<TextFieldValue> mutableState2) {
        this.$hourValue$delegate = mutableState;
        this.$state = timePickerState;
        this.$userOverride = ref;
        this.$colors = timePickerColors;
        this.$minuteValue$delegate = mutableState2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$12$lambda$11$lambda$10(TimePickerState timePickerState, KeyboardActionScope keyboardActionScope) {
        timePickerState.mo3077setSelection6_8s6DQ(TimePickerSelectionMode.Companion.m4156getMinuteyecRtBI());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$12$lambda$3$lambda$2(TimePickerState timePickerState, Ref ref, final MutableState mutableState, TextFieldValue textFieldValue) {
        TimePickerKt.m4136timeInputOnChange_K77t0(TimePickerSelectionMode.Companion.m4155getHouryecRtBI(), timePickerState, textFieldValue, TimePickerKt.TimeInputImpl$lambda$18(mutableState), timePickerState.is24hour() ? 23 : 12, ref, new nl3() { // from class: androidx.compose.material3.b5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TimePickerKt$TimeInputImpl$2$1.invoke$lambda$12$lambda$3$lambda$2$lambda$1(mutableState, (TextFieldValue) obj);
            }
        });
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$12$lambda$3$lambda$2$lambda$1(MutableState mutableState, TextFieldValue textFieldValue) {
        mutableState.setValue(textFieldValue);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$12$lambda$5$lambda$4(TimePickerState timePickerState, KeyboardActionScope keyboardActionScope) {
        timePickerState.mo3077setSelection6_8s6DQ(TimePickerSelectionMode.Companion.m4156getMinuteyecRtBI());
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$12$lambda$9$lambda$8(TimePickerState timePickerState, Ref ref, final MutableState mutableState, TextFieldValue textFieldValue) {
        TimePickerKt.m4136timeInputOnChange_K77t0(TimePickerSelectionMode.Companion.m4156getMinuteyecRtBI(), timePickerState, textFieldValue, TimePickerKt.TimeInputImpl$lambda$22(mutableState), 59, ref, new nl3() { // from class: androidx.compose.material3.c5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TimePickerKt$TimeInputImpl$2$1.invoke$lambda$12$lambda$9$lambda$8$lambda$7(mutableState, (TextFieldValue) obj);
            }
        });
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$12$lambda$9$lambda$8$lambda$7(MutableState mutableState, TextFieldValue textFieldValue) {
        mutableState.setValue(textFieldValue);
        return j59.a;
    }

    public final void invoke(Composer composer, int i) {
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1306700887, i, -1, "androidx.compose.material3.TimeInputImpl.<anonymous>.<anonymous> (TimePicker.kt:1032)");
        }
        final MutableState<TextFieldValue> mutableState = this.$hourValue$delegate;
        final TimePickerState timePickerState = this.$state;
        final Ref<Boolean> ref = this.$userOverride;
        TimePickerColors timePickerColors = this.$colors;
        final MutableState<TextFieldValue> mutableState2 = this.$minuteValue$delegate;
        Modifier.Companion companion = Modifier.Companion;
        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer, 0);
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, companion);
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
        bm3 bm3VarB = cc.b(companion2, composerM5355constructorimpl, measurePolicyRowMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
        }
        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion2.getSetModifier());
        RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
        boolean zChanged = composer.changed(mutableState) | composer.changedInstance(timePickerState);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new nl3<KeyEvent, Boolean>() { // from class: androidx.compose.material3.TimePickerKt$TimeInputImpl$2$1$1$1$1
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
                    return m4137invokeZmokQxo(keyEvent.m7390unboximpl());
                }

                /* JADX INFO: renamed from: invoke-ZmokQxo, reason: not valid java name */
                public final Boolean m4137invokeZmokQxo(android.view.KeyEvent keyEvent) {
                    int iM7403getUtf16CodePointZmokQxo = KeyEvent_androidKt.m7403getUtf16CodePointZmokQxo(keyEvent);
                    if (48 <= iM7403getUtf16CodePointZmokQxo && iM7403getUtf16CodePointZmokQxo < 58 && TextRange.m8491getStartimpl(TimePickerKt.TimeInputImpl$lambda$18(mutableState).m8741getSelectiond9O1mEE()) == 2 && TimePickerKt.TimeInputImpl$lambda$18(mutableState).getText().length() == 2) {
                        timePickerState.mo3077setSelection6_8s6DQ(TimePickerSelectionMode.Companion.m4156getMinuteyecRtBI());
                    }
                    return Boolean.FALSE;
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        Modifier modifierOnKeyEvent = KeyInputModifierKt.onKeyEvent(companion, (nl3) objRememberedValue);
        TextFieldValue textFieldValueTimeInputImpl$lambda$18 = TimePickerKt.TimeInputImpl$lambda$18(mutableState);
        boolean zChangedInstance = composer.changedInstance(timePickerState) | composer.changed(mutableState) | composer.changedInstance(ref);
        Object objRememberedValue2 = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue2 == Composer.Companion.getEmpty()) {
            objRememberedValue2 = new nl3() { // from class: androidx.compose.material3.d5
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return TimePickerKt$TimeInputImpl$2$1.invoke$lambda$12$lambda$3$lambda$2(timePickerState, ref, mutableState, (TextFieldValue) obj);
                }
            };
            composer.updateRememberedValue(objRememberedValue2);
        }
        nl3 nl3Var = (nl3) objRememberedValue2;
        TimePickerSelectionMode.Companion companion3 = TimePickerSelectionMode.Companion;
        int iM4155getHouryecRtBI = companion3.m4155getHouryecRtBI();
        ImeAction.Companion companion4 = ImeAction.Companion;
        int iM8675getNexteUduSuo = companion4.m8675getNexteUduSuo();
        KeyboardType.Companion companion5 = KeyboardType.Companion;
        KeyboardOptions keyboardOptions = new KeyboardOptions(0, (Boolean) null, companion5.m8729getNumberPjHm6EE(), iM8675getNexteUduSuo, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 115, (jh2) null);
        boolean zChangedInstance2 = composer.changedInstance(timePickerState);
        Object objRememberedValue3 = composer.rememberedValue();
        if (zChangedInstance2 || objRememberedValue3 == Composer.Companion.getEmpty()) {
            objRememberedValue3 = new nl3() { // from class: androidx.compose.material3.e5
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return TimePickerKt$TimeInputImpl$2$1.invoke$lambda$12$lambda$5$lambda$4(timePickerState, (KeyboardActionScope) obj);
                }
            };
            composer.updateRememberedValue(objRememberedValue3);
        }
        TimePickerKt.m4126TimePickerTextField1vLObsk(modifierOnKeyEvent, textFieldValueTimeInputImpl$lambda$18, nl3Var, timePickerState, iM4155getHouryecRtBI, keyboardOptions, new KeyboardActions(null, null, (nl3) objRememberedValue3, null, null, null, 59, null), timePickerColors, composer, 24576, 0);
        TimePickerKt.DisplaySeparator(SizeKt.m2101sizeVpY3zN4(companion, TimePickerKt.DisplaySeparatorWidth, TimeInputTokens.INSTANCE.m5179getPeriodSelectorContainerHeightD9Ej5fM()), composer, 6);
        boolean zChanged2 = composer.changed(mutableState2) | composer.changedInstance(timePickerState);
        Object objRememberedValue4 = composer.rememberedValue();
        if (zChanged2 || objRememberedValue4 == Composer.Companion.getEmpty()) {
            objRememberedValue4 = new nl3<KeyEvent, Boolean>() { // from class: androidx.compose.material3.TimePickerKt$TimeInputImpl$2$1$1$4$1
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
                    return m4138invokeZmokQxo(keyEvent.m7390unboximpl());
                }

                /* JADX INFO: renamed from: invoke-ZmokQxo, reason: not valid java name */
                public final Boolean m4138invokeZmokQxo(android.view.KeyEvent keyEvent) {
                    boolean z = KeyEvent_androidKt.m7403getUtf16CodePointZmokQxo(keyEvent) == 0 && TextRange.m8491getStartimpl(TimePickerKt.TimeInputImpl$lambda$22(mutableState2).m8741getSelectiond9O1mEE()) == 0;
                    if (z) {
                        timePickerState.mo3077setSelection6_8s6DQ(TimePickerSelectionMode.Companion.m4155getHouryecRtBI());
                    }
                    return Boolean.valueOf(z);
                }
            };
            composer.updateRememberedValue(objRememberedValue4);
        }
        Modifier modifierOnPreviewKeyEvent = KeyInputModifierKt.onPreviewKeyEvent(companion, (nl3) objRememberedValue4);
        TextFieldValue textFieldValueTimeInputImpl$lambda$22 = TimePickerKt.TimeInputImpl$lambda$22(mutableState2);
        boolean zChangedInstance3 = composer.changedInstance(timePickerState) | composer.changed(mutableState2) | composer.changedInstance(ref);
        Object objRememberedValue5 = composer.rememberedValue();
        if (zChangedInstance3 || objRememberedValue5 == Composer.Companion.getEmpty()) {
            objRememberedValue5 = new nl3() { // from class: androidx.compose.material3.f5
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return TimePickerKt$TimeInputImpl$2$1.invoke$lambda$12$lambda$9$lambda$8(timePickerState, ref, mutableState2, (TextFieldValue) obj);
                }
            };
            composer.updateRememberedValue(objRememberedValue5);
        }
        nl3 nl3Var2 = (nl3) objRememberedValue5;
        int iM4156getMinuteyecRtBI = companion3.m4156getMinuteyecRtBI();
        KeyboardOptions keyboardOptions2 = new KeyboardOptions(0, (Boolean) null, companion5.m8729getNumberPjHm6EE(), companion4.m8673getDoneeUduSuo(), (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 115, (jh2) null);
        boolean zChangedInstance4 = composer.changedInstance(timePickerState);
        Object objRememberedValue6 = composer.rememberedValue();
        if (zChangedInstance4 || objRememberedValue6 == Composer.Companion.getEmpty()) {
            objRememberedValue6 = new nl3() { // from class: androidx.compose.material3.g5
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return TimePickerKt$TimeInputImpl$2$1.invoke$lambda$12$lambda$11$lambda$10(timePickerState, (KeyboardActionScope) obj);
                }
            };
            composer.updateRememberedValue(objRememberedValue6);
        }
        TimePickerKt.m4126TimePickerTextField1vLObsk(modifierOnPreviewKeyEvent, textFieldValueTimeInputImpl$lambda$22, nl3Var2, timePickerState, iM4156getMinuteyecRtBI, keyboardOptions2, new KeyboardActions(null, null, (nl3) objRememberedValue6, null, null, null, 59, null), timePickerColors, composer, 24576, 0);
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

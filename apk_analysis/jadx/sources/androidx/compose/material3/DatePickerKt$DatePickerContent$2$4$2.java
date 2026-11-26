package androidx.compose.material3;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.material3.internal.CalendarMonth;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import defpackage.aa4;
import defpackage.av0;
import defpackage.bm3;
import defpackage.cc;
import defpackage.dc;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.y22;
import defpackage.y74;

/* JADX INFO: loaded from: classes2.dex */
public final class DatePickerKt$DatePickerContent$2$4$2 implements dm3<AnimatedVisibilityScope, Composer, Integer, j59> {
    final /* synthetic */ CalendarModel $calendarModel;
    final /* synthetic */ DatePickerColors $colors;
    final /* synthetic */ y22 $coroutineScope;
    final /* synthetic */ CalendarMonth $displayedMonth;
    final /* synthetic */ long $displayedMonthMillis;
    final /* synthetic */ LazyListState $monthsListState;
    final /* synthetic */ SelectableDates $selectableDates;
    final /* synthetic */ MutableState<Boolean> $yearPickerVisible$delegate;
    final /* synthetic */ y74 $yearRange;

    public DatePickerKt$DatePickerContent$2$4$2(long j, MutableState<Boolean> mutableState, y22 y22Var, LazyListState lazyListState, y74 y74Var, CalendarMonth calendarMonth, SelectableDates selectableDates, CalendarModel calendarModel, DatePickerColors datePickerColors) {
        this.$displayedMonthMillis = j;
        this.$yearPickerVisible$delegate = mutableState;
        this.$coroutineScope = y22Var;
        this.$monthsListState = lazyListState;
        this.$yearRange = y74Var;
        this.$displayedMonth = calendarMonth;
        this.$selectableDates = selectableDates;
        this.$calendarModel = calendarModel;
        this.$colors = datePickerColors;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$1$lambda$0(String str, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setPaneTitle(semanticsPropertyReceiver, str);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$4$lambda$3$lambda$2(y22 y22Var, MutableState mutableState, LazyListState lazyListState, y74 y74Var, CalendarMonth calendarMonth, int i) {
        DatePickerKt.DatePickerContent$lambda$27(mutableState, !DatePickerKt.DatePickerContent$lambda$26(mutableState));
        av0.c(y22Var, null, null, new DatePickerKt$DatePickerContent$2$4$2$2$1$1$1(lazyListState, i, y74Var, calendarMonth, null), 3);
        return j59.a;
    }

    public final void invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1193716082, i, -1, "androidx.compose.material3.DatePickerContent.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1632)");
        }
        Strings.Companion companion = Strings.Companion;
        final String strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_year_picker_pane_title), composer, 0);
        Modifier.Companion companion2 = Modifier.Companion;
        boolean zChanged = composer.changed(strM4461getString2EP1pXo);
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new nl3() { // from class: androidx.compose.material3.b0
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return DatePickerKt$DatePickerContent$2$4$2.invoke$lambda$1$lambda$0(strM4461getString2EP1pXo, (SemanticsPropertyReceiver) obj);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(companion2, false, (nl3) objRememberedValue, 1, null);
        long j = this.$displayedMonthMillis;
        final MutableState<Boolean> mutableState = this.$yearPickerVisible$delegate;
        final y22 y22Var = this.$coroutineScope;
        final LazyListState lazyListState = this.$monthsListState;
        final y74 y74Var = this.$yearRange;
        final CalendarMonth calendarMonth = this.$displayedMonth;
        SelectableDates selectableDates = this.$selectableDates;
        CalendarModel calendarModel = this.$calendarModel;
        DatePickerColors datePickerColors = this.$colors;
        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer, 0);
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierSemantics$default);
        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
        ll3<ComposeUiNode> constructor = companion3.getConstructor();
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
        bm3 bm3VarB = cc.b(companion3, composerM5355constructorimpl, measurePolicyColumnMeasurePolicy, composerM5355constructorimpl, currentCompositionLocalMap);
        if (composerM5355constructorimpl.getInserting() || !aa4.e(composerM5355constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
            dc.b(bm3VarB, currentCompositeKeyHash, composerM5355constructorimpl, currentCompositeKeyHash);
        }
        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, companion3.getSetModifier());
        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
        Modifier modifierM2035paddingVpY3zN4$default = PaddingKt.m2035paddingVpY3zN4$default(SizeKt.m2088requiredHeight3ABfNKs(companion2, Dp.m9042constructorimpl(Dp.m9042constructorimpl(DatePickerKt.getRecommendedSizeForAccessibility() * 7.0f) - DividerDefaults.INSTANCE.m3410getThicknessD9Ej5fM())), DatePickerKt.getDatePickerHorizontalPadding(), 0.0f, 2, null);
        boolean zChanged2 = composer.changed(mutableState) | composer.changedInstance(y22Var) | composer.changed(lazyListState) | composer.changedInstance(y74Var) | composer.changed(calendarMonth);
        Object objRememberedValue2 = composer.rememberedValue();
        if (zChanged2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
            Object obj = new nl3() { // from class: androidx.compose.material3.c0
                @Override // defpackage.nl3
                public final Object invoke(Object obj2) {
                    return DatePickerKt$DatePickerContent$2$4$2.invoke$lambda$4$lambda$3$lambda$2(y22Var, mutableState, lazyListState, y74Var, calendarMonth, ((Integer) obj2).intValue());
                }
            };
            composer.updateRememberedValue(obj);
            objRememberedValue2 = obj;
        }
        DatePickerKt.YearPicker(modifierM2035paddingVpY3zN4$default, j, (nl3) objRememberedValue2, selectableDates, calendarModel, y74Var, datePickerColors, composer, 6);
        DividerKt.m3412HorizontalDivider9IZ8Weo(null, 0.0f, datePickerColors.m3342getDividerColor0d7_KjU(), composer, 0, 3);
        composer.endNode();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Override // defpackage.dm3
    public /* bridge */ /* synthetic */ j59 invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, Integer num) {
        invoke(animatedVisibilityScope, composer, num.intValue());
        return j59.a;
    }
}

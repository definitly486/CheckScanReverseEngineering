package androidx.compose.material3;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.DatePickerModalTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.Modifier;
import defpackage.fm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.y74;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class DatePickerKt$YearPicker$1$1$1$1 implements fm3<LazyGridItemScope, Integer, Composer, Integer, j59> {
    final /* synthetic */ CalendarModel $calendarModel;
    final /* synthetic */ DatePickerColors $colors;
    final /* synthetic */ int $currentYear;
    final /* synthetic */ int $displayedYear;
    final /* synthetic */ nl3<Integer, j59> $onYearSelected;
    final /* synthetic */ SelectableDates $selectableDates;
    final /* synthetic */ y74 $yearRange;

    /* JADX WARN: Multi-variable type inference failed */
    public DatePickerKt$YearPicker$1$1$1$1(y74 y74Var, CalendarModel calendarModel, int i, int i2, nl3<? super Integer, j59> nl3Var, SelectableDates selectableDates, DatePickerColors datePickerColors) {
        this.$yearRange = y74Var;
        this.$calendarModel = calendarModel;
        this.$displayedYear = i;
        this.$currentYear = i2;
        this.$onYearSelected = nl3Var;
        this.$selectableDates = selectableDates;
        this.$colors = datePickerColors;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$1$lambda$0(nl3 nl3Var, int i) {
        nl3Var.invoke(Integer.valueOf(i));
        return j59.a;
    }

    public final void invoke(LazyGridItemScope lazyGridItemScope, int i, Composer composer, int i2) {
        int i3;
        if ((i2 & 48) == 0) {
            i3 = i2 | (composer.changed(i) ? 32 : 16);
        } else {
            i3 = i2;
        }
        if (!composer.shouldExecute((i3 & 145) != 144, i3 & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(674613074, i3, -1, "androidx.compose.material3.YearPicker.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:2088)");
        }
        final int i4 = i + this.$yearRange.b;
        String localString$default = CalendarLocale_jvmKt.toLocalString$default(i4, 0, 0, false, this.$calendarModel.getLocale(), 7, null);
        Modifier.Companion companion = Modifier.Companion;
        DatePickerModalTokens datePickerModalTokens = DatePickerModalTokens.INSTANCE;
        Modifier modifierM2093requiredSizeVpY3zN4 = SizeKt.m2093requiredSizeVpY3zN4(companion, datePickerModalTokens.m4699getSelectionYearContainerWidthD9Ej5fM(), datePickerModalTokens.m4698getSelectionYearContainerHeightD9Ej5fM());
        boolean z = i4 == this.$displayedYear;
        boolean z2 = i4 == this.$currentYear;
        boolean zChanged = composer.changed(this.$onYearSelected) | composer.changed(i4);
        final nl3<Integer, j59> nl3Var = this.$onYearSelected;
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new ll3() { // from class: androidx.compose.material3.n0
                @Override // defpackage.ll3
                public final Object invoke() {
                    return DatePickerKt$YearPicker$1$1$1$1.invoke$lambda$1$lambda$0(nl3Var, i4);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        boolean zIsSelectableYear = this.$selectableDates.isSelectableYear(i4);
        Strings.Companion companion2 = Strings.Companion;
        DatePickerKt.Year(localString$default, modifierM2093requiredSizeVpY3zN4, z, z2, (ll3) objRememberedValue, zIsSelectableYear, String.format(Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_navigate_to_year_description), composer, 0), Arrays.copyOf(new Object[]{localString$default}, 1)), this.$colors, composer, 48);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Override // defpackage.fm3
    public /* bridge */ /* synthetic */ j59 invoke(LazyGridItemScope lazyGridItemScope, Integer num, Composer composer, Integer num2) {
        invoke(lazyGridItemScope, num.intValue(), composer, num2.intValue());
        return j59.a;
    }
}

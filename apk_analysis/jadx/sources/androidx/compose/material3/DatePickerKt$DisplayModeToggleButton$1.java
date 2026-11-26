package androidx.compose.material3;

import androidx.compose.material3.internal.Icons;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class DatePickerKt$DisplayModeToggleButton$1 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ int $displayMode;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ nl3<DisplayMode, j59> $onDisplayModeChange;

    /* JADX WARN: Multi-variable type inference failed */
    public DatePickerKt$DisplayModeToggleButton$1(int i, nl3<? super DisplayMode, j59> nl3Var, Modifier modifier) {
        this.$displayMode = i;
        this.$onDisplayModeChange = nl3Var;
        this.$modifier = modifier;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$1$lambda$0(nl3 nl3Var) {
        nl3Var.invoke(DisplayMode.m3401boximpl(DisplayMode.Companion.m3408getInputjFl4v0()));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$3$lambda$2(nl3 nl3Var) {
        nl3Var.invoke(DisplayMode.m3401boximpl(DisplayMode.Companion.m3409getPickerjFl4v0()));
        return j59.a;
    }

    public final void invoke(Composer composer, int i) {
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1734512197, i, -1, "androidx.compose.material3.DisplayModeToggleButton.<anonymous> (DatePicker.kt:1408)");
        }
        if (DisplayMode.m3404equalsimpl0(this.$displayMode, DisplayMode.Companion.m3409getPickerjFl4v0())) {
            composer.startReplaceGroup(-101264927);
            ImageVector edit$material3 = Icons.Filled.INSTANCE.getEdit$material3();
            Strings.Companion companion = Strings.Companion;
            String strM4461getString2EP1pXo = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_switch_to_input_mode), composer, 0);
            boolean zChanged = composer.changed(this.$onDisplayModeChange);
            final nl3<DisplayMode, j59> nl3Var = this.$onDisplayModeChange;
            Object objRememberedValue = composer.rememberedValue();
            if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new ll3() { // from class: androidx.compose.material3.e0
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return DatePickerKt$DisplayModeToggleButton$1.invoke$lambda$1$lambda$0(nl3Var);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            DatePickerKt.IconButtonWithTooltip((ll3) objRememberedValue, edit$material3, strM4461getString2EP1pXo, this.$modifier, false, composer, 0, 16);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(-100967048);
            ImageVector dateRange$material3 = Icons.Filled.INSTANCE.getDateRange$material3();
            Strings.Companion companion2 = Strings.Companion;
            String strM4461getString2EP1pXo2 = Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_date_picker_switch_to_calendar_mode), composer, 0);
            boolean zChanged2 = composer.changed(this.$onDisplayModeChange);
            final nl3<DisplayMode, j59> nl3Var2 = this.$onDisplayModeChange;
            Object objRememberedValue2 = composer.rememberedValue();
            if (zChanged2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = new ll3() { // from class: androidx.compose.material3.f0
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return DatePickerKt$DisplayModeToggleButton$1.invoke$lambda$3$lambda$2(nl3Var2);
                    }
                };
                composer.updateRememberedValue(objRememberedValue2);
            }
            DatePickerKt.IconButtonWithTooltip((ll3) objRememberedValue2, dateRange$material3, strM4461getString2EP1pXo2, this.$modifier, false, composer, 0, 16);
            composer.endReplaceGroup();
        }
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

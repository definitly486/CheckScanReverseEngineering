package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.bm3;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class DatePickerKt$MonthsNavigation$1$1 implements bm3<Composer, Integer, j59> {
    final /* synthetic */ DatePickerColors $colors;
    final /* synthetic */ String $yearPickerText;

    public DatePickerKt$MonthsNavigation$1$1(String str, DatePickerColors datePickerColors) {
        this.$yearPickerText = str;
        this.$colors = datePickerColors;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 invoke$lambda$1$lambda$0(String str, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.m8279setLiveRegionhR3wRGc(semanticsPropertyReceiver, LiveRegionMode.Companion.m8253getPolite0phEisY());
        SemanticsPropertiesKt.setContentDescription(semanticsPropertyReceiver, str);
        return j59.a;
    }

    public final void invoke(Composer composer, int i) {
        if (!composer.shouldExecute((i & 3) != 2, i & 1)) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(619076006, i, -1, "androidx.compose.material3.MonthsNavigation.<anonymous>.<anonymous> (DatePicker.kt:2204)");
        }
        String str = this.$yearPickerText;
        Modifier.Companion companion = Modifier.Companion;
        boolean zChanged = composer.changed(str);
        final String str2 = this.$yearPickerText;
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new nl3() { // from class: androidx.compose.material3.k0
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return DatePickerKt$MonthsNavigation$1$1.invoke$lambda$1$lambda$0(str2, (SemanticsPropertyReceiver) obj);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        TextKt.m4085TextNvy7gAk(str, SemanticsModifierKt.semantics$default(companion, false, (nl3) objRememberedValue, 1, null), this.$colors.m3344getNavigationContentColor0d7_KjU(), null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer, 0, 0, 262136);
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

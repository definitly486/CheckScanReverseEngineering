package androidx.compose.material3;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import defpackage.dm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposableSingletons$TimePickerKt {
    public static final ComposableSingletons$TimePickerKt INSTANCE = new ComposableSingletons$TimePickerKt();
    private static dm3<RowScope, Composer, Integer, j59> lambda$1425358052 = ComposableLambdaKt.composableLambdaInstance(1425358052, false, new dm3<RowScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.ComposableSingletons$TimePickerKt$lambda$1425358052$1
        public final void invoke(RowScope rowScope, Composer composer, int i) {
            if (!composer.shouldExecute((i & 17) != 16, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1425358052, i, -1, "androidx.compose.material3.ComposableSingletons$TimePickerKt.lambda$1425358052.<anonymous> (TimePicker.kt:1328)");
            }
            Strings.Companion companion = Strings.Companion;
            TextKt.m4085TextNvy7gAk(Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_time_picker_am), composer, 0), null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer, 0, 0, 262142);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ j59 invoke(RowScope rowScope, Composer composer, Integer num) {
            invoke(rowScope, composer, num.intValue());
            return j59.a;
        }
    });

    /* JADX INFO: renamed from: lambda$-1179219109, reason: not valid java name */
    private static dm3<RowScope, Composer, Integer, j59> f42lambda$1179219109 = ComposableLambdaKt.composableLambdaInstance(-1179219109, false, new dm3<RowScope, Composer, Integer, j59>() { // from class: androidx.compose.material3.ComposableSingletons$TimePickerKt$lambda$-1179219109$1
        public final void invoke(RowScope rowScope, Composer composer, int i) {
            if (!composer.shouldExecute((i & 17) != 16, i & 1)) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1179219109, i, -1, "androidx.compose.material3.ComposableSingletons$TimePickerKt.lambda$-1179219109.<anonymous> (TimePicker.kt:1346)");
            }
            Strings.Companion companion = Strings.Companion;
            TextKt.m4085TextNvy7gAk(Strings_androidKt.m4461getString2EP1pXo(Strings.m4382constructorimpl(R.string.m3c_time_picker_pm), composer, 0), null, 0L, null, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer, 0, 0, 262142);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }

        @Override // defpackage.dm3
        public /* bridge */ /* synthetic */ j59 invoke(RowScope rowScope, Composer composer, Integer num) {
            invoke(rowScope, composer, num.intValue());
            return j59.a;
        }
    });

    /* JADX INFO: renamed from: getLambda$-1179219109$material3, reason: not valid java name */
    public final dm3<RowScope, Composer, Integer, j59> m3325getLambda$1179219109$material3() {
        return f42lambda$1179219109;
    }

    public final dm3<RowScope, Composer, Integer, j59> getLambda$1425358052$material3() {
        return lambda$1425358052;
    }
}

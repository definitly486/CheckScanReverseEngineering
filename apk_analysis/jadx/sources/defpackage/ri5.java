package defpackage;

import androidx.compose.material3.TimePickerKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.navigation.internal.NavControllerImpl;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ri5 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ String c;

    public /* synthetic */ ri5(String str, int i) {
        this.b = i;
        this.c = str;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        String str = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(NavControllerImpl.restoreStateInternal$lambda$51(str, (String) obj));
            default:
                return TimePickerKt.ClockText$lambda$83$lambda$82$lambda$81(str, (SemanticsPropertyReceiver) obj);
        }
    }
}

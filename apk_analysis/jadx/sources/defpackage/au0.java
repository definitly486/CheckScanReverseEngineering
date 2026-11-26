package defpackage;

import androidx.compose.foundation.gestures.BringIntoViewSpec_androidKt;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.ui.text.Savers_androidKt;
import androidx.navigation.NavDestination;
import androidx.navigation.internal.NavControllerImpl;
import yads.tz1;
import yads.zg1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class au0 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ au0(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return BringIntoViewSpec_androidKt.LocalBringIntoViewSpec$lambda$0((CompositionLocalAccessorScope) obj);
            case 1:
                return NavControllerImpl.executePopOperations$lambda$14((NavDestination) obj);
            case 2:
                return Savers_androidKt.TextMotionLinearitySaver$lambda$1(obj);
            case 3:
                return Boolean.valueOf(tz1.b(obj));
            default:
                return Boolean.valueOf(zg1.e(obj));
        }
    }
}

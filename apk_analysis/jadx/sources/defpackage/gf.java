package defpackage;

import androidx.activity.ComponentDialog;
import androidx.compose.animation.core.Animatable;
import androidx.compose.material3.SearchBarKt;
import androidx.compose.material3.TimePickerKt;
import androidx.compose.material3.TimePickerState;
import androidx.compose.material3.WideNavigationRailKt;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.runtime.MutableState;
import yads.nq0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gf implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ gf(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return AnchoredDraggableState.closestValue_delegate$lambda$5((AnchoredDraggableState) obj);
            case 1:
                return ComponentDialog.onBackPressedDispatcher_delegate$lambda$0((ComponentDialog) obj);
            case 2:
                return Boolean.valueOf(SearchBarKt.SearchBarImpl_j1jLAyQ$lambda$37$lambda$36((Animatable) obj));
            case 3:
                return TimePickerKt.TimeInputImpl$lambda$21$lambda$20((TimePickerState) obj);
            case 4:
                return Boolean.valueOf(WideNavigationRailKt.Scrim_3J_VO9M$lambda$33$lambda$32$lambda$31((MutableState) obj));
            default:
                return nq0.f0((nq0) obj);
        }
    }
}

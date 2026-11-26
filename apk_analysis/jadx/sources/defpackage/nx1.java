package defpackage;

import androidx.compose.foundation.layout.FlowLayoutKt;
import androidx.compose.material3.SliderKt;
import androidx.compose.material3.SliderState;
import androidx.compose.material3.TimePickerKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import yads.c62;
import yads.lf;
import yads.m62;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nx1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ nx1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                Placeable.PlacementScope.place$default((Placeable.PlacementScope) obj, (Placeable) obj2, 0, 0, 0.0f, 4, null);
                return j59.a;
            case 1:
                return FlowLayoutKt.breakDownItems_di9J0FM$lambda$2$0((r07) obj2, (Placeable) obj);
            case 2:
                return Boolean.valueOf(SliderKt.sliderSemantics$lambda$52$lambda$51((SliderState) obj2, ((Float) obj).floatValue()));
            case 3:
                return TimePickerKt.TimePickerTextField_1vLObsk$lambda$92$lambda$89$lambda$88$lambda$87((String) obj2, (SemanticsPropertyReceiver) obj);
            case 4:
                return c62.a((m62) obj2, obj);
            default:
                return lf.a((lf) obj2, (Throwable) obj);
        }
    }
}

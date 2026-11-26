package defpackage;

import androidx.compose.material3.AnalogTimePickerState;
import androidx.compose.material3.TimePickerColors;
import androidx.compose.material3.TimePickerKt;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import yads.g82;
import yads.zo1;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class cv8 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ cv8(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return TimePickerKt.drawSelector$lambda$61((AnalogTimePickerState) obj3, (TimePickerColors) obj2, (ContentDrawScope) obj);
            default:
                return g82.b((g82) obj3, (zo1) obj2, ((Boolean) obj).booleanValue());
        }
    }
}

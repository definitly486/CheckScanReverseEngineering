package defpackage;

import androidx.compose.material3.TimePickerColors;
import androidx.compose.material3.TimePickerKt;
import androidx.compose.material3.TimePickerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.retain.RetainedValuesStoreRegistry;
import androidx.compose.ui.Modifier;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class i67 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ i67(int i, int i2, Object obj, Object obj2, Object obj3) {
        this.b = i2;
        this.d = obj;
        this.e = obj2;
        this.f = obj3;
        this.c = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.b;
        Object obj3 = this.f;
        Object obj4 = this.d;
        switch (i) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return RetainedValuesStoreRegistry.LocalRetainedValuesStoreProvider$lambda$0((RetainedValuesStoreRegistry) obj4, this.e, (bm3) obj3, this.c, (Composer) obj, iIntValue);
            default:
                int iIntValue2 = ((Integer) obj2).intValue();
                return TimePickerKt.TimeInputImpl$lambda$28((Modifier) obj4, (TimePickerColors) this.e, (TimePickerState) obj3, this.c, (Composer) obj, iIntValue2);
        }
    }
}

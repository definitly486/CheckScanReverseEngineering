package defpackage;

import android.content.Context;
import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.foundation.text.BasicSecureTextField_androidKt;
import androidx.compose.material3.DatePickerKt;
import yads.br0;
import yads.c32;
import yads.mv4;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class we implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ we(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(AnchoredDraggableKt.AnchoredDraggableState$lambda$0(obj));
            case 1:
                return BasicSecureTextField_androidKt.DefaultContentResolverForSecureTextField$lambda$0((Context) obj);
            case 2:
                return Integer.valueOf(DatePickerKt.SwitchableDateEntryContent_KaiTk9E$lambda$21$lambda$20$lambda$15(((Integer) obj).intValue()));
            case 3:
                return Boolean.valueOf(c32.b((br0) obj));
            default:
                return mv4.a((dc4) obj);
        }
    }
}

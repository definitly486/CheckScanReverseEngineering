package defpackage;

import android.content.Context;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt;
import androidx.compose.material3.RangeSliderState;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import java.util.List;
import yads.bv3;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class jx6 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ jx6(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return RangeSliderState.Companion.Saver$lambda$1((ll3) this.c, (nm1) this.d, (List) obj);
            case 1:
                return TextFieldSelectionManager_androidKt.textFieldMagnifier$lambda$0$4$0$1((Density) this.c, (MutableState) this.d, (DpSize) obj);
            default:
                return bv3.a((Context) this.c, (String) this.d, (String) obj);
        }
    }
}

package defpackage;

import androidx.compose.foundation.MagnifierNode;
import androidx.compose.material3.ExposedDropdownMenuBoxScope;
import androidx.compose.material3.SheetState;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.unit.Density;
import yads.e42;
import yads.gf0;
import yads.te;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a43 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ a43(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return ExposedDropdownMenuBoxScope.ExposedDropdownMenu_vNxi1II$lambda$2$lambda$1((MutableState) obj);
            case 1:
                return MagnifierNode.onObservedReadsChanged$lambda$0((MagnifierNode) obj);
            case 2:
                return Float.valueOf(SheetState._init_$lambda$11((Density) obj));
            case 3:
                return e42.c((te) obj);
            default:
                return gf0.l((gf0) obj);
        }
    }
}

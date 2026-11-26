package defpackage;

import androidx.compose.material3.BottomSheetScaffoldKt;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.material3.SheetState;
import yads.hd3;
import yads.i05;
import yads.mv1;
import yads.rg2;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class at0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ at0(SheetState sheetState, ll3 ll3Var) {
        this.b = 1;
        this.c = sheetState;
        this.d = ll3Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        Object obj3 = this.d;
        switch (i) {
            case 0:
                return BottomSheetScaffoldKt.StandardBottomSheet_w7I5h1o$lambda$10$lambda$9((y22) obj3, (SheetState) obj2, ((Float) obj).floatValue());
            case 1:
                return ModalBottomSheetKt.ModalBottomSheet_YbuCTN8$lambda$4$lambda$3$lambda$2((SheetState) obj2, (ll3) obj3, (Throwable) obj);
            default:
                return rg2.a((mv1) obj3, (i05) obj2, (hd3) obj);
        }
    }

    public /* synthetic */ at0(int i, Object obj, Object obj2) {
        this.b = i;
        this.d = obj;
        this.c = obj2;
    }
}

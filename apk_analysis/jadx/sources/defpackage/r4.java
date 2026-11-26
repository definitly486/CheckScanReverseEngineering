package defpackage;

import android.view.View;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class r4 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r4(bw7 bw7Var, yu7 yu7Var) {
        super(1);
        this.f = 2;
        this.g = bw7Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                va3 va3Var = (va3) obj;
                c4 c4Var = (c4) obj2;
                va3Var.getClass();
                if (va3Var.b().isEmpty()) {
                    return aq1.b;
                }
                c4Var.a.g1(va3Var.a());
                s67 s67Var = c4Var.d;
                ua3[] ua3VarArr = (ua3[]) va3Var.b().toArray(new ua3[0]);
                return s67Var.a((ua3[]) Arrays.copyOf(ua3VarArr, ua3VarArr.length)).c(c4Var.d());
            case 1:
                ArrayList arrayList = (ArrayList) obj;
                arrayList.getClass();
                y77.a aVar = ((y77) obj2).b;
                aVar.addAll(arrayList);
                return aVar;
            default:
                ((View) obj).getClass();
                ((bw7) obj2).b.invoke(0);
                return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r4(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }
}

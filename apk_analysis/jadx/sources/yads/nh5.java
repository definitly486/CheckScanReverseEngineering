package yads;

import defpackage.gh4;
import defpackage.j59;
import defpackage.nl3;
import defpackage.r07;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class nh5 extends gh4 implements nl3 {
    public final /* synthetic */ ArrayList b;
    public final /* synthetic */ r07 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nh5(ArrayList arrayList, r07 r07Var) {
        super(1);
        this.b = arrayList;
        this.c = r07Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        for (lh5 lh5Var : this.b) {
            int i = lh5Var.b;
            if (i > 0) {
                lh5Var.b = i - 1;
                lh5Var.c--;
            } else {
                lh5Var.c++;
            }
        }
        lh5 lh5Var2 = (lh5) this.c.b;
        if (lh5Var2 != null) {
            int i2 = lh5Var2.b;
            if (i2 > 0) {
                lh5Var2.b = i2 - 1;
                lh5Var2.c--;
            } else {
                lh5Var2.c++;
            }
        }
        return j59.a;
    }
}

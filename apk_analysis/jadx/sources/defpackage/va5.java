package defpackage;

import com.google.common.collect.j;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class va5 implements ua5 {
    public final j a;
    public final ta5 b;

    public va5(ArrayList arrayList, ta5 ta5Var) {
        this.a = j.o(arrayList);
        this.b = ta5Var;
    }

    @Override // defpackage.ua5
    public final void a(vv4 vv4Var, List list, List list2) {
        super.a(vv4Var, list, list2);
        for (wa5 wa5Var : this.a) {
            if (wa5Var.b() <= vv4Var.a) {
                this.b.b();
                wa5Var.a();
            }
        }
    }

    @Override // defpackage.ua5
    public final void b(hw4 hw4Var, long j, List<String> list, List<String> list2) {
        super.b(hw4Var, j, list, list2);
        for (wa5 wa5Var : this.a) {
            if (wa5Var.b() <= hw4Var.a) {
                this.b.b();
                wa5Var.a();
            }
        }
    }
}

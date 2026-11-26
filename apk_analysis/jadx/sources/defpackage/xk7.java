package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class xk7 implements wk7 {
    public final k61 a;
    public final HashMap<Integer, List<vy4>> b = new HashMap<>();

    public xk7(k61 k61Var) {
        this.a = k61Var;
    }

    @Override // defpackage.wk7
    public final mz7<wt0> a(int i, int i2, String str, String str2, String str3) {
        return this.a.a(i, i2, str3, str, str2);
    }

    @Override // defpackage.wk7
    public final o08 b(int i) {
        return mz7.e(this.b.get(Integer.valueOf(i)));
    }

    @Override // defpackage.wk7
    public final void c(int i, ArrayList arrayList) {
        this.b.put(Integer.valueOf(i), arrayList);
    }
}

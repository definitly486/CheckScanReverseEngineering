package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class pn2 implements on2 {
    public final nn2 a;
    public final HashMap<Long, List<vy4>> b = new HashMap<>();

    public pn2(nn2 nn2Var) {
        this.a = nn2Var;
    }

    @Override // defpackage.on2
    public final o08 a(long j) {
        return mz7.e(this.b.get(Long.valueOf(j)));
    }

    @Override // defpackage.on2
    public final void b(long j, ArrayList arrayList) {
        this.b.put(Long.valueOf(j), arrayList);
    }
}

package yads;

import android.net.Uri;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class y66 implements z66 {
    public final z66 a;
    public final z50 b;

    public y66(z66 z66Var, z50 z50Var) {
        this.a = z66Var;
        this.b = z50Var;
    }

    @Override // yads.z66
    public final tp0 a(ArrayList arrayList, nl3 nl3Var) {
        return this.a.a(arrayList, nl3Var);
    }

    @Override // yads.z66
    public final void c() {
    }

    @Override // yads.m76
    public final Object get(String str) {
        Object q46Var = this.b.a.get(str);
        if (q46Var instanceof Uri) {
            q46Var = new q46(q46Var.toString());
        }
        return q46Var == null ? this.a.get(str) : q46Var;
    }

    @Override // yads.z66
    public final void a() {
    }

    @Override // yads.z66
    public final tp0 a(List list, nl3 nl3Var) {
        return tp0.a;
    }

    @Override // yads.z66
    public final tp0 a(String str, ao2 ao2Var, boolean z, nl3 nl3Var) {
        return this.a.a(str, ao2Var, z, nl3Var);
    }

    @Override // yads.z66
    public final u66 a(String str) {
        return this.a.a(str);
    }

    @Override // yads.z66
    public final void a(u66 u66Var) {
        this.a.a(u66Var);
    }

    @Override // yads.z66
    public final void a(gs2 gs2Var, nl3 nl3Var) {
        this.a.a(gs2Var, nl3Var);
    }
}

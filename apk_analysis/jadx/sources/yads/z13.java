package yads;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class z13 implements y13 {
    public final /* synthetic */ yu3 a;
    public final /* synthetic */ a23 b;

    public z13(yu3 yu3Var, a23 a23Var) {
        this.a = yu3Var;
        this.b = a23Var;
    }

    @Override // yads.y13
    public final u13 a(String str, ArrayList arrayList) {
        try {
            return this.a.a(str, arrayList);
        } catch (a94 unused) {
            return this.b.a.a(str, arrayList);
        }
    }

    @Override // yads.y13
    public final u13 b(String str, ArrayList arrayList) {
        try {
            return this.a.b(str, arrayList);
        } catch (a94 unused) {
            return this.b.a.b(str, arrayList);
        }
    }
}

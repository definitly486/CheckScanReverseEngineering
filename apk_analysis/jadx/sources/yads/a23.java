package yads;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class a23 implements y13 {
    public final y13 a;

    public a23(y13 y13Var) {
        this.a = y13Var;
    }

    public final a23 a(ArrayList arrayList) {
        return new a23(new z13(new yu3(arrayList), this));
    }

    @Override // yads.y13
    public final u13 b(String str, ArrayList arrayList) {
        return this.a.b(str, arrayList);
    }

    @Override // yads.y13
    public final u13 a(String str, ArrayList arrayList) {
        return this.a.a(str, arrayList);
    }
}

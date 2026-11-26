package yads;

import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
public final class fb1 implements Comparator {
    public final /* synthetic */ fs2 b;

    public fb1(fs2 fs2Var) {
        this.b = fs2Var;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return defpackage.pp1.a((Double) ((cp1) obj).b.a(this.b), (Double) ((cp1) obj2).b.a(this.b));
    }
}

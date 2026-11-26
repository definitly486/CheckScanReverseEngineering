package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class qp7 implements Iterable<String>, re4 {
    public final /* synthetic */ f03 b;

    public qp7(f03 f03Var) {
        this.b = f03Var;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new pp7(this.b);
    }
}

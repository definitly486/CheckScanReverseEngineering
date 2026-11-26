package defpackage;

import java.util.Iterator;
import ml2.a;

/* JADX INFO: loaded from: classes5.dex */
public final class gp7 implements Iterable<Object>, re4 {
    public final /* synthetic */ ml2 b;

    public gp7(ml2 ml2Var) {
        this.b = ml2Var;
    }

    @Override // java.lang.Iterable
    public final Iterator<Object> iterator() {
        return this.b.new a();
    }
}

package defpackage;

import o22.a;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c0<B extends o22.a, E extends B> implements o22.b<E> {
    public final nl3<o22.a, E> b;
    public final o22.b<?> c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [o22$b<?>] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r2v0, types: [nl3<? super o22$a, ? extends E extends B>, nl3<o22$a, E extends B>] */
    public c0(o22.b<B> bVar, nl3<? super o22.a, ? extends E> nl3Var) {
        bVar.getClass();
        this.b = nl3Var;
        this.c = bVar instanceof c0 ? (o22.b<B>) ((c0) bVar).c : bVar;
    }
}

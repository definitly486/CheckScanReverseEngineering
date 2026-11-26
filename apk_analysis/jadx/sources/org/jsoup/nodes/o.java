package org.jsoup.nodes;

import defpackage.qz0;
import java.util.Iterator;
import org.jsoup.nodes.n;

/* JADX INFO: loaded from: classes5.dex */
public final class o<T extends n> implements Iterator<T> {
    public final n b;
    public T c;
    public n d;
    public n e;
    public n f;
    public final Class<T> g;

    /* JADX WARN: Multi-variable type inference failed */
    public o(n nVar, Class<T> cls) {
        this.g = cls;
        if (cls.isInstance(nVar)) {
            this.c = nVar;
        }
        this.d = nVar;
        this.e = nVar;
        this.b = nVar;
        this.f = nVar.A();
    }

    public final void a() {
        T t;
        if (this.c != null) {
            return;
        }
        if (this.f != null && this.d.b == null) {
            this.d = this.e;
        }
        n nVarA = this.d;
        do {
            t = null;
            if (nVarA.j() > 0) {
                nVarA = nVarA.p().get(0);
            } else {
                n nVar = this.b;
                if (nVar == nVarA) {
                    nVarA = null;
                } else if (nVarA.u() != null) {
                    nVarA = nVarA.u();
                } else {
                    do {
                        nVarA = nVarA.A();
                        if (nVarA == null || nVar == nVarA) {
                        }
                        this.c = t;
                    } while (nVarA.u() == null);
                    nVarA = nVarA.u();
                }
            }
            if (nVarA == null) {
            }
            this.c = t;
        } while (!this.g.isInstance(nVarA));
        t = (T) nVarA;
        this.c = t;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        a();
        return this.c != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        a();
        T t = this.c;
        if (t == null) {
            qz0.e();
            return null;
        }
        this.e = this.d;
        this.d = t;
        this.f = t.A();
        this.c = null;
        return t;
    }

    @Override // java.util.Iterator
    public final void remove() {
        n nVar = this.d;
        h hVar = nVar.b;
        if (hVar != null) {
            hVar.C(nVar);
        }
    }
}

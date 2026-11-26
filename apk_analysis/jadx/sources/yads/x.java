package yads;

import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes6.dex */
public final class x extends w implements ListIterator {
    public final /* synthetic */ y e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(y yVar, int i) {
        super(yVar, ((List) yVar.c).listIterator(i));
        this.e = yVar;
    }

    public final ListIterator a() {
        this.d.b();
        if (this.d.c == this.c) {
            return (ListIterator) this.b;
        }
        defpackage.ln.e();
        return null;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        boolean zIsEmpty = this.e.isEmpty();
        a().add(obj);
        y yVar = this.e;
        yVar.g.f++;
        if (zIsEmpty) {
            yVar.a();
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return a().hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return a().nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return a().previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return a().previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        a().set(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(y yVar) {
        super(yVar);
        this.e = yVar;
    }
}

package defpackage;

import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes4.dex */
public final class sxa extends pxa implements ListIterator {
    public final /* synthetic */ wxa e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sxa(wxa wxaVar, int i) {
        super(wxaVar, ((List) wxaVar.c).listIterator(i));
        this.e = wxaVar;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        wxa wxaVar = this.e;
        boolean zIsEmpty = wxaVar.isEmpty();
        a();
        ((ListIterator) this.b).add(obj);
        wxaVar.g.f++;
        if (zIsEmpty) {
            wxaVar.a();
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        a();
        return ((ListIterator) this.b).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        a();
        return ((ListIterator) this.b).nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        a();
        return ((ListIterator) this.b).previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        a();
        return ((ListIterator) this.b).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        a();
        ((ListIterator) this.b).set(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sxa(wxa wxaVar) {
        super(wxaVar);
        this.e = wxaVar;
    }
}

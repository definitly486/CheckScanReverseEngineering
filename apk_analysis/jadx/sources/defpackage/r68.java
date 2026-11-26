package defpackage;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes5.dex */
public final class r68 implements ol2 {
    public final char a;
    public int b = 0;
    public final LinkedList<ol2> c = new LinkedList<>();

    public r68(char c) {
        this.a = c;
    }

    @Override // defpackage.ol2
    public final char a() {
        return this.a;
    }

    @Override // defpackage.ol2
    public final int b() {
        return this.b;
    }

    @Override // defpackage.ol2
    public final char c() {
        return this.a;
    }

    @Override // defpackage.ol2
    public final void d(dq8 dq8Var, dq8 dq8Var2, int i) {
        LinkedList<ol2> linkedList = this.c;
        for (ol2 first : linkedList) {
            if (first.b() <= i) {
                first.d(dq8Var, dq8Var2, i);
            }
        }
        first = linkedList.getFirst();
        first.d(dq8Var, dq8Var2, i);
    }

    @Override // defpackage.ol2
    public final int e(nl2 nl2Var, nl2 nl2Var2) {
        ol2 first;
        int i = nl2Var.g;
        LinkedList<ol2> linkedList = this.c;
        Iterator<ol2> it = linkedList.iterator();
        while (it.hasNext()) {
            first = it.next();
            if (first.b() <= i) {
                return first.e(nl2Var, nl2Var2);
            }
        }
        first = linkedList.getFirst();
        return first.e(nl2Var, nl2Var2);
    }

    public final void f(ol2 ol2Var) {
        int iB = ol2Var.b();
        LinkedList<ol2> linkedList = this.c;
        ListIterator<ol2> listIterator = linkedList.listIterator();
        while (listIterator.hasNext()) {
            int iB2 = listIterator.next().b();
            if (iB > iB2) {
                listIterator.previous();
                listIterator.add(ol2Var);
                return;
            } else if (iB == iB2) {
                throw new IllegalArgumentException("Cannot add two delimiter processors for char '" + this.a + "' and minimum length " + iB);
            }
        }
        linkedList.add(ol2Var);
        this.b = iB;
    }
}

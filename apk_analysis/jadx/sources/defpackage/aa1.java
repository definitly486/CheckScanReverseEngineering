package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class aa1 implements om1<Character>, Iterable<Character>, re4 {
    public final char b;
    public final char c;

    static {
        new aa1((char) 1, (char) 0);
    }

    public aa1(char c, char c2) {
        this.b = c;
        this.c = (char) nh5.a(c, c2, 1);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof aa1)) {
            return false;
        }
        if (isEmpty() && ((aa1) obj).isEmpty()) {
            return true;
        }
        aa1 aa1Var = (aa1) obj;
        return this.b == aa1Var.b && this.c == aa1Var.c;
    }

    @Override // defpackage.om1
    public final Comparable getEndInclusive() {
        return Character.valueOf(this.c);
    }

    @Override // defpackage.om1
    public final Comparable getStart() {
        return Character.valueOf(this.b);
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.b * 31) + this.c;
    }

    @Override // defpackage.om1
    public final boolean isEmpty() {
        return aa4.f(this.b, this.c) > 0;
    }

    @Override // java.lang.Iterable
    public final Iterator<Character> iterator() {
        return new z91(this.b, this.c);
    }

    public final String toString() {
        return this.b + ".." + this.c;
    }
}

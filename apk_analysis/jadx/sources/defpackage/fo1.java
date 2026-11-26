package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class fo1 implements o22, Serializable {
    public final o22 b;
    public final o22.a c;

    public static final class a implements Serializable {
        public final o22[] b;

        public a(o22[] o22VarArr) {
            this.b = o22VarArr;
        }

        private final Object readResolve() {
            o22[] o22VarArr = this.b;
            o22 o22VarPlus = gx2.b;
            for (o22 o22Var : o22VarArr) {
                o22VarPlus = o22VarPlus.plus(o22Var);
            }
            return o22VarPlus;
        }
    }

    public fo1(o22.a aVar, o22 o22Var) {
        o22Var.getClass();
        this.b = o22Var;
        this.c = aVar;
    }

    private final void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final Object writeReplace() {
        int iB = b();
        final o22[] o22VarArr = new o22[iB];
        final p07 p07Var = new p07();
        fold(j59.a, new bm3() { // from class: do1
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                o22.a aVar = (o22.a) obj2;
                ((j59) obj).getClass();
                aVar.getClass();
                p07 p07Var2 = p07Var;
                int i = p07Var2.b;
                p07Var2.b = i + 1;
                o22VarArr[i] = aVar;
                return j59.a;
            }
        });
        if (p07Var.b == iB) {
            return new a(o22VarArr);
        }
        ah.f("Check failed.");
        return null;
    }

    public final int b() {
        int i = 2;
        while (true) {
            o22 o22Var = this.b;
            this = o22Var instanceof fo1 ? (fo1) o22Var : null;
            if (this == null) {
                return i;
            }
            i++;
        }
    }

    public final boolean equals(Object obj) {
        boolean zE;
        if (this == obj) {
            return true;
        }
        if (obj instanceof fo1) {
            fo1 fo1Var = (fo1) obj;
            if (fo1Var.b() == b()) {
                while (true) {
                    o22.a aVar = this.c;
                    if (!aa4.e(fo1Var.get(aVar.getKey()), aVar)) {
                        zE = false;
                        break;
                    }
                    o22 o22Var = this.b;
                    if (!(o22Var instanceof fo1)) {
                        o22Var.getClass();
                        o22.a aVar2 = (o22.a) o22Var;
                        zE = aa4.e(fo1Var.get(aVar2.getKey()), aVar2);
                        break;
                    }
                    this = (fo1) o22Var;
                }
                if (zE) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.o22
    public final <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return bm3Var.invoke((Object) this.b.fold(r, bm3Var), this.c);
    }

    @Override // defpackage.o22
    public final <E extends o22.a> E get(o22.b<E> bVar) {
        bVar.getClass();
        while (true) {
            E e = (E) this.c.get(bVar);
            if (e != null) {
                return e;
            }
            o22 o22Var = this.b;
            if (!(o22Var instanceof fo1)) {
                return (E) o22Var.get(bVar);
            }
            this = (fo1) o22Var;
        }
    }

    public final int hashCode() {
        return this.c.hashCode() + this.b.hashCode();
    }

    @Override // defpackage.o22
    public final o22 minusKey(o22.b<?> bVar) {
        bVar.getClass();
        o22.a aVar = this.c;
        o22.a aVar2 = aVar.get(bVar);
        o22 o22Var = this.b;
        if (aVar2 != null) {
            return o22Var;
        }
        o22 o22VarMinusKey = o22Var.minusKey(bVar);
        if (o22VarMinusKey == o22Var) {
            return this;
        }
        return o22VarMinusKey == gx2.b ? aVar : new fo1(aVar, o22VarMinusKey);
    }

    @Override // defpackage.o22
    public final o22 plus(o22 o22Var) {
        o22Var.getClass();
        return o22Var == gx2.b ? this : (o22) o22Var.fold(this, new ht1(1));
    }

    public final String toString() {
        return xp.e(new StringBuilder("["), (String) fold("", new eo1(0)), ']');
    }
}

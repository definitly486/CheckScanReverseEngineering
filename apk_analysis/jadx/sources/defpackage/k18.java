package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
public final class k18<T, R> extends mz7<R> {
    public final ArrayList b;
    public final xq c;

    public final class a implements xl3<T, R> {
        public a() {
        }

        @Override // defpackage.xl3
        public final R apply(T t) {
            return (R) k18.this.c.apply(new Object[]{t});
        }
    }

    public k18(ArrayList arrayList, xq xqVar) {
        this.b = arrayList;
        this.c = xqVar;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super R> t08Var) {
        c18[] c18VarArr = new c18[8];
        try {
            int i = 0;
            for (c18 c18Var : this.b) {
                if (c18Var == null) {
                    NullPointerException nullPointerException = new NullPointerException("One of the sources is null");
                    t08Var.onSubscribe(hx2.INSTANCE);
                    t08Var.onError(nullPointerException);
                    return;
                } else {
                    if (i == c18VarArr.length) {
                        c18VarArr = (c18[]) Arrays.copyOf(c18VarArr, (i >> 2) + i);
                    }
                    int i2 = i + 1;
                    c18VarArr[i] = c18Var;
                    i = i2;
                }
            }
            if (i == 0) {
                NoSuchElementException noSuchElementException = new NoSuchElementException();
                t08Var.onSubscribe(hx2.INSTANCE);
                t08Var.onError(noSuchElementException);
            } else {
                if (i == 1) {
                    c18VarArr[0].d(new p08.a(t08Var, new a()));
                    return;
                }
                j18.b bVar = new j18.b(t08Var, i, this.c);
                t08Var.onSubscribe(bVar);
                for (int i3 = 0; i3 < i && !bVar.isDisposed(); i3++) {
                    c18VarArr[i3].d(bVar.d[i3]);
                }
            }
        } catch (Throwable th) {
            m13.d(th);
            t08Var.onSubscribe(hx2.INSTANCE);
            t08Var.onError(th);
        }
    }
}

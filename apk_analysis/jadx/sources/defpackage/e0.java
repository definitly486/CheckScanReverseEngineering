package defpackage;

import defpackage.e0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public interface e0<Target, ActualSelf extends e0<Target, ActualSelf>> extends ic2 {

    public static final class a {
        public static <Target, ActualSelf extends e0<Target, ActualSelf>> void a(e0<Target, ActualSelf> e0Var, nl3<? super ActualSelf, j59>[] nl3VarArr, nl3<? super ActualSelf, j59> nl3Var) {
            nl3Var.getClass();
            ArrayList arrayList = new ArrayList(nl3VarArr.length);
            for (nl3<? super ActualSelf, j59> nl3Var2 : nl3VarArr) {
                e0 e0VarS = e0Var.s();
                nl3Var2.invoke(e0VarS);
                arrayList.add(new wu1(e0VarS.o().a));
            }
            e0 e0VarS2 = e0Var.s();
            nl3Var.invoke(e0VarS2);
            e0Var.o().a(new wc(new wu1(e0VarS2.o().a), arrayList));
        }

        public static <Target, ActualSelf extends e0<Target, ActualSelf>> void b(e0<Target, ActualSelf> e0Var, String str, nl3<? super ActualSelf, j59> nl3Var) {
            nl3Var.getClass();
            nq<Target> nqVarO = e0Var.o();
            e0 e0VarS = e0Var.s();
            nl3Var.invoke(e0VarS);
            j59 j59Var = j59.a;
            nqVarO.a(new uz5(str, new wu1(e0VarS.o().a)));
        }

        public static <Target, ActualSelf extends e0<Target, ActualSelf>> yx0<Target> c(e0<Target, ActualSelf> e0Var) {
            return new yx0<>(e0Var.o().a);
        }

        public static <Target, ActualSelf extends e0<Target, ActualSelf>> void d(e0<Target, ActualSelf> e0Var, String str) {
            str.getClass();
            e0Var.o().a(new hx1(str));
        }
    }

    void b(nl3<? super ActualSelf, j59>[] nl3VarArr, nl3<? super ActualSelf, j59> nl3Var);

    nq<Target> o();

    ActualSelf s();

    void u(String str, nl3<? super ActualSelf, j59> nl3Var);
}

package defpackage;

import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class o87 {
    public final to1 a = new to1();
    public final y57 b = new y57();

    public final void a(df7 df7Var) {
        b(new c00(df7Var));
    }

    public final void b(so1... so1VarArr) {
        so1VarArr.getClass();
        to1 to1Var = this.a;
        to1Var.getClass();
        to1Var.c.post(new uu(1, to1Var, so1VarArr));
    }

    public final void c() {
        b(new vz());
    }

    public final void d(df7 df7Var) {
        b(new xi3(df7Var));
    }

    public final void e(df7... df7VarArr) {
        ArrayList arrayList = new ArrayList(df7VarArr.length);
        for (df7 df7Var : df7VarArr) {
            arrayList.add(new xi3(df7Var));
        }
        Object[] array = arrayList.toArray(new xi3[0]);
        if (array == null) {
            o2.d("null cannot be cast to non-null type kotlin.Array<T>");
        } else {
            xi3[] xi3VarArr = (xi3[]) array;
            b((so1[]) Arrays.copyOf(xi3VarArr, xi3VarArr.length));
        }
    }

    public final void f(df7... df7VarArr) {
        ArrayList arrayList = new ArrayList(df7VarArr.length);
        int length = df7VarArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            df7 df7Var = df7VarArr[i];
            int i3 = i2 + 1;
            arrayList.add(i2 == 0 ? new l27(df7Var) : new xi3(df7Var));
            i++;
            i2 = i3;
        }
        l68 l68Var = new l68(2);
        l68Var.a(new c00(null));
        Object[] array = arrayList.toArray(new so1[0]);
        if (array == null) {
            o2.d("null cannot be cast to non-null type kotlin.Array<T>");
            return;
        }
        l68Var.b(array);
        ArrayList<Object> arrayList2 = l68Var.a;
        b((so1[]) arrayList2.toArray(new so1[arrayList2.size()]));
    }

    public final void g(df7 df7Var) {
        b(new c00(null), new l27(df7Var));
    }

    public final void h(df7 df7Var) {
        b(new l27(df7Var));
    }
}

package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class qx7<Target> implements x83<Target> {
    public final d93<Target, Integer> a;
    public final Integer b;
    public final Integer c;

    public /* synthetic */ class a extends qm3 implements nl3<Target, Integer> {
        @Override // defpackage.nl3
        public final Integer invoke(Object obj) {
            return (Integer) ((d3) this.receiver).b(obj);
        }
    }

    public qx7(d93 d93Var, Integer num, Integer num2) {
        d93Var.getClass();
        this.a = d93Var;
        this.b = num;
        this.c = num2;
        if (num.intValue() >= 0) {
            return;
        }
        h8.f(num, "The minimum number of digits (", ") is negative");
        throw null;
    }

    @Override // defpackage.x83
    public final vi3<Target> a() {
        new a(1, this.a.a(), d3.class, "getterNotNull", "getterNotNull(Ljava/lang/Object;)Ljava/lang/Object;", 0);
        int iIntValue = this.b.intValue();
        rx7 rx7Var = new rx7();
        if (iIntValue < 0) {
            c9.f(kv2.b(iIntValue, "The minimum number of digits (", ") is negative"));
            return null;
        }
        if (iIntValue <= 9) {
            return this.c != null ? new d58(rx7Var) : rx7Var;
        }
        c9.f(kv2.b(iIntValue, "The minimum number of digits (", ") exceeds the length of an Int"));
        return null;
    }

    @Override // defpackage.x83
    public final a46<Target> b() {
        d93<Target, Integer> d93Var = this.a;
        d3<Target, Integer> d3VarA = d93Var.a();
        String name = d93Var.getName();
        d3VarA.getClass();
        name.getClass();
        Integer num = this.b;
        Integer num2 = this.c;
        ArrayList arrayListK = u96.k(or4.b(num, null, num2, d3VarA, name, true));
        arrayListK.add(or4.b(num, 4, num2, d3VarA, name, false));
        List listI = u96.i(new w86("+"), new hq5(u96.h(new k79(5, null, d3VarA, name, false))));
        kx2 kx2Var = kx2.b;
        arrayListK.add(new a46(listI, kx2Var));
        return new a46<>(kx2Var, arrayListK);
    }

    @Override // defpackage.x83
    public final d93<Target, Integer> c() {
        return this.a;
    }
}

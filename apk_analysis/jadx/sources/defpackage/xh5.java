package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class xh5<Target> implements x83<Target> {
    public final j79<Target> a;
    public final List<String> b;
    public final String c;

    public final class a implements hs<Target, String> {
        public a() {
        }

        @Override // defpackage.hs
        public final String c(Object obj, String str) {
            String str2 = str;
            str2.getClass();
            xh5<Target> xh5Var = xh5.this;
            j79<Target> j79Var = xh5Var.a;
            wr6 wr6Var = j79Var.a;
            List<String> list = xh5Var.b;
            Integer num = (Integer) wr6Var.c(obj, Integer.valueOf(list.indexOf(str2) + j79Var.b));
            if (num != null) {
                return list.get(num.intValue() - j79Var.b);
            }
            return null;
        }
    }

    public /* synthetic */ class b extends qm3 implements nl3<Target, String> {
        @Override // defpackage.nl3
        public final String invoke(Object obj) {
            xh5 xh5Var = (xh5) this.receiver;
            j79<Target> j79Var = xh5Var.a;
            int iIntValue = ((Number) j79Var.a.b(obj)).intValue();
            String str = (String) qn1.W(iIntValue - j79Var.b, xh5Var.b);
            return str == null ? me0.d(n7.c(iIntValue, "The value ", " of "), j79Var.d, " does not have a corresponding string representation") : str;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public xh5(j79<? super Target> j79Var, List<String> list, String str) {
        j79Var.getClass();
        this.a = j79Var;
        this.b = list;
        this.c = str;
        int size = list.size();
        int i = (j79Var.c - j79Var.b) + 1;
        if (size == i) {
            return;
        }
        StringBuilder sb = new StringBuilder("The number of values (");
        sb.append(list.size());
        sb.append(") in ");
        sb.append(list);
        sb.append(" does not match the range of the field (");
        c9.f(rg.h(sb, i, ')'));
        throw null;
    }

    @Override // defpackage.x83
    public final vi3<Target> a() {
        new b(1, this, xh5.class, "getStringValue", "getStringValue(Ljava/lang/Object;)Ljava/lang/String;", 0);
        return new v98();
    }

    @Override // defpackage.x83
    public final a46<Target> b() {
        List<String> list = this.b;
        return new a46<>(u96.h(new da8(list, new a(), "one of " + list + " for " + this.c)), kx2.b);
    }

    @Override // defpackage.x83
    public final /* bridge */ /* synthetic */ d93 c() {
        return this.a;
    }
}

package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class a46<Output> {
    public final List<y36<Output>> a;
    public final List<a46<Output>> b;

    /* JADX WARN: Multi-variable type inference failed */
    public a46(List<? extends y36<? super Output>> list, List<? extends a46<? super Output>> list2) {
        list.getClass();
        list2.getClass();
        this.a = list;
        this.b = list2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(qn1.a0(this.a, ", ", null, null, 0, null, 62));
        sb.append('(');
        return xp.e(sb, qn1.a0(this.b, ";", null, null, 0, null, 62), ')');
    }
}

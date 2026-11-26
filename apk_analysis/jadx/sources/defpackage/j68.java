package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class j68 implements Iterable<String> {
    public final /* synthetic */ String b;
    public final /* synthetic */ k68 c;

    public j68(k68 k68Var, String str) {
        this.b = str;
        this.c = k68Var;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        String str = this.b;
        k68 k68Var = this.c;
        return k68Var.c.a(k68Var, str);
    }

    public final String toString() {
        wb4 wb4Var = new wb4(", ");
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        wb4Var.a(sb, iterator());
        sb.append(']');
        return sb.toString();
    }
}

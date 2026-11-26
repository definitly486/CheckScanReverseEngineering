package yads;

import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
public final class a83 implements Comparator {
    public static final a83 b = new a83();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        w73 w73Var = (w73) obj;
        w73 w73Var2 = (w73) obj2;
        if (w73Var.a() / w73Var.e < w73Var2.a() / w73Var2.e) {
            return 1;
        }
        return w73Var.a() / w73Var.e > w73Var2.a() / w73Var2.e ? -1 : 0;
    }
}

package androidx.compose.ui.text.android;

import defpackage.a07;
import defpackage.bm3;
import defpackage.j59;
import defpackage.kx2;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ListUtils_androidKt {
    public static final <T> void fastForEach(List<? extends T> list, nl3<? super T, j59> nl3Var) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            nl3Var.invoke(list.get(i));
        }
    }

    public static final <T, R, C extends Collection<? super R>> C fastMapTo(List<? extends T> list, C c, nl3<? super T, ? extends R> nl3Var) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            c.add(nl3Var.invoke(list.get(i)));
        }
        return c;
    }

    public static final <T, R> List<R> fastZipWithNext(List<? extends T> list, bm3<? super T, ? super T, ? extends R> bm3Var) {
        if (list.size() <= 1) {
            return kx2.b;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        a07 a07Var = list.get(0);
        int size = list.size() - 1;
        while (i < size) {
            i++;
            T t = list.get(i);
            arrayList.add(bm3Var.invoke(a07Var, t));
            a07Var = t;
        }
        return arrayList;
    }
}

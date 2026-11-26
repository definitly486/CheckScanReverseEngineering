package defpackage;

import android.graphics.Color;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final class uc5 {
    public static final LinkedHashSet a(List list) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        fr frVar = new fr(new z67(list));
        while (!frVar.isEmpty()) {
            tc5 tc5Var = (tc5) frVar.removeLast();
            if (linkedHashSet.add(tc5Var)) {
                ArrayList arrayList = tc5Var.e;
                arrayList.getClass();
                Iterator it = new y67(arrayList).iterator();
                while (true) {
                    ListIterator<T> listIterator = ((y67.a) it).b;
                    if (listIterator.hasPrevious()) {
                        tc5 tc5Var2 = (tc5) listIterator.previous();
                        if (!linkedHashSet.contains(tc5Var2)) {
                            frVar.addLast(tc5Var2);
                        }
                    }
                }
            }
        }
        return linkedHashSet;
    }

    public static final void b(o22 o22Var, Throwable th) {
        if (th instanceof CancellationException) {
            return;
        }
        try {
            d97.b(th);
        } catch (Throwable th2) {
            sj0.c(th, th2);
            v22.a(o22Var, th);
        }
    }

    public static final Integer c(String str) {
        Object aVar;
        try {
            aVar = Integer.valueOf(Color.parseColor(str));
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        return (Integer) aVar;
    }

    public static boolean d(byte b) {
        return b > -65;
    }
}

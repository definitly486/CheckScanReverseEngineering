package androidx.compose.runtime.snapshots;

import androidx.collection.ObjectList;
import defpackage.bm3;
import defpackage.j59;
import defpackage.kx6;
import defpackage.nl3;
import defpackage.y74;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class ListUtilsKt {
    /* JADX WARN: Multi-variable type inference failed */
    private static final <T> void appendElement(Appendable appendable, T t, nl3<? super T, ? extends CharSequence> nl3Var) throws IOException {
        if (nl3Var != null) {
            appendable.append(nl3Var.invoke(t));
            return;
        }
        if (t == 0 ? true : t instanceof CharSequence) {
            appendable.append((CharSequence) t);
        } else if (t instanceof Character) {
            appendable.append(((Character) t).charValue());
        } else {
            appendable.append(t.toString());
        }
    }

    public static final <T> boolean fastAll(List<? extends T> list, nl3<? super T, Boolean> nl3Var) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!nl3Var.invoke(list.get(i)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static final <T> boolean fastAny(List<? extends T> list, nl3<? super T, Boolean> nl3Var) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (nl3Var.invoke(list.get(i)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public static final <T> List<T> fastFilterIndexed(List<? extends T> list, bm3<? super Integer, ? super T, Boolean> bm3Var) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            T t = list.get(i);
            if (bm3Var.invoke(Integer.valueOf(i), t).booleanValue()) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static final <T> void fastForEach(ObjectList<T> objectList, nl3<? super T, j59> nl3Var) {
        y74 y74VarN = kx6.n(0, objectList._size);
        int i = y74VarN.b;
        int i2 = y74VarN.c;
        if (i > i2) {
            return;
        }
        while (true) {
            nl3Var.invoke(objectList.get(i));
            if (i == i2) {
                return;
            } else {
                i++;
            }
        }
    }

    public static final <T> void fastForEachIndexed(List<? extends T> list, bm3<? super Integer, ? super T, j59> bm3Var) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            bm3Var.invoke(Integer.valueOf(i), list.get(i));
        }
    }

    public static final <T, K> Map<K, List<T>> fastGroupBy(List<? extends T> list, nl3<? super T, ? extends K> nl3Var) {
        HashMap map = new HashMap(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            T t = list.get(i);
            K kInvoke = nl3Var.invoke(t);
            Object arrayList = map.get(kInvoke);
            if (arrayList == null) {
                arrayList = new ArrayList();
                map.put(kInvoke, arrayList);
            }
            ((ArrayList) arrayList).add(t);
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T, A extends Appendable> A fastJoinTo(List<? extends T> list, A a, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, nl3<? super T, ? extends CharSequence> nl3Var) throws IOException {
        a.append(charSequence2);
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            T t = list.get(i3);
            i2++;
            if (i2 > 1) {
                a.append(charSequence);
            }
            if (i >= 0 && i2 > i) {
                break;
            }
            appendElement(a, t, nl3Var);
        }
        if (i >= 0 && i2 > i) {
            a.append(charSequence4);
        }
        a.append(charSequence3);
        return a;
    }

    public static final <T> String fastJoinToString(List<? extends T> list, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, nl3<? super T, ? extends CharSequence> nl3Var) {
        return ((StringBuilder) fastJoinTo(list, new StringBuilder(), charSequence, charSequence2, charSequence3, i, charSequence4, nl3Var)).toString();
    }

    public static /* synthetic */ String fastJoinToString$default(List list, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, nl3 nl3Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        if ((i2 & 2) != 0) {
            charSequence2 = "";
        }
        if ((i2 & 4) != 0) {
            charSequence3 = "";
        }
        if ((i2 & 8) != 0) {
            i = -1;
        }
        if ((i2 & 16) != 0) {
            charSequence4 = "...";
        }
        if ((i2 & 32) != 0) {
            nl3Var = null;
        }
        CharSequence charSequence5 = charSequence4;
        nl3 nl3Var2 = nl3Var;
        return fastJoinToString(list, charSequence, charSequence2, charSequence3, i, charSequence5, nl3Var2);
    }

    public static final <T, R> List<R> fastMap(List<? extends T> list, nl3<? super T, ? extends R> nl3Var) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(nl3Var.invoke(list.get(i)));
        }
        return arrayList;
    }

    public static final <T, R> List<R> fastMapNotNull(List<? extends T> list, nl3<? super T, ? extends R> nl3Var) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            R rInvoke = nl3Var.invoke(list.get(i));
            if (rInvoke != null) {
                arrayList.add(rInvoke);
            }
        }
        return arrayList;
    }

    public static final <T> boolean fastNone(List<? extends T> list, nl3<? super T, Boolean> nl3Var) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (nl3Var.invoke(list.get(i)).booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static final <T> Set<T> fastToSet(List<? extends T> list) {
        HashSet hashSet = new HashSet(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            hashSet.add(list.get(i));
        }
        return hashSet;
    }

    public static final <T> void fastForEach(List<? extends T> list, nl3<? super T, j59> nl3Var) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            nl3Var.invoke(list.get(i));
        }
    }
}

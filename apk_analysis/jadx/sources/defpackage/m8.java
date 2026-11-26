package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class m8 {
    public final List<il2> a;
    public final List<pz3> b;
    public final ArrayList c;

    /* JADX WARN: Multi-variable type inference failed */
    public m8(List<? extends il2> list, List<? extends pz3> list2) {
        this.a = list;
        this.b = list2;
        int size = list2.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(-1);
        }
        this.c = arrayList;
    }

    public static m8 a(m8 m8Var, List list) {
        List<il2> list2 = m8Var.a;
        m8Var.getClass();
        list2.getClass();
        list.getClass();
        return new m8(list2, list);
    }

    public final il2 b(int i) {
        return this.a.get(i);
    }

    public final int c(int i) {
        List<pz3> list;
        ArrayList arrayList = this.c;
        Object obj = arrayList.get(i);
        Integer num = null;
        if (((Number) obj).intValue() == -1) {
            obj = null;
        }
        Integer num2 = (Integer) obj;
        if (num2 != null) {
            return num2.intValue();
        }
        Iterator<il2> it = this.a.iterator();
        int i2 = 0;
        while (true) {
            boolean zHasNext = it.hasNext();
            list = this.b;
            if (!zHasNext) {
                i2 = -1;
                break;
            }
            if (it.next().e(i, list)) {
                break;
            }
            i2++;
        }
        Integer numValueOf = Integer.valueOf(i2);
        if (i2 == -1) {
            numValueOf = null;
        }
        if (numValueOf != null) {
            arrayList.set(i, Integer.valueOf(numValueOf.intValue()));
            num = numValueOf;
        }
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException(("Provide adapter for type " + list.get(i).getClass() + " at position: " + i).toString());
    }

    public final <T extends pz3> int d(Class<T> cls) {
        List<pz3> list = this.b;
        pz3 pz3Var = (pz3) qn1.V(nn1.x(list, cls));
        if (pz3Var == null) {
            return Integer.MIN_VALUE;
        }
        return c(list.indexOf(pz3Var));
    }

    public final pz3 e(int i) {
        return this.b.get(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m8)) {
            return false;
        }
        m8 m8Var = (m8) obj;
        return aa4.e(this.a, m8Var.a) && aa4.e(this.b, m8Var.b);
    }

    public final pz3 f(int i) {
        return (pz3) qn1.W(i, this.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "AdaptersState(adapters=" + this.a + ", data=" + this.b + ")";
    }
}

package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class hq5<Output> implements y36<Output> {
    public final List<cq5<Output>> a;
    public final int b;
    public final boolean c;

    /* JADX WARN: Multi-variable type inference failed */
    public hq5(List<? extends cq5<? super Output>> list) {
        boolean z;
        this.a = list;
        Iterator it = list.iterator();
        int i = 0;
        int i2 = 0;
        while (true) {
            int iIntValue = 1;
            if (!it.hasNext()) {
                break;
            }
            Integer num = ((cq5) it.next()).a;
            if (num != null) {
                iIntValue = num.intValue();
            }
            i2 += iIntValue;
        }
        this.b = i2;
        List<cq5<Output>> list2 = this.a;
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            Iterator<T> it2 = list2.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (((cq5) it2.next()).a == null) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
        } else {
            z = false;
            break;
        }
        this.c = z;
        List<cq5<Output>> list3 = this.a;
        if (!(list3 instanceof Collection) || !list3.isEmpty()) {
            Iterator<T> it3 = list3.iterator();
            while (it3.hasNext()) {
                Integer num2 = ((cq5) it3.next()).a;
                if ((num2 != null ? num2.intValue() : Integer.MAX_VALUE) <= 0) {
                    fg.c("Failed requirement.");
                    throw null;
                }
            }
        }
        List<cq5<Output>> list4 = this.a;
        if (!(list4 instanceof Collection) || !list4.isEmpty()) {
            Iterator<T> it4 = list4.iterator();
            while (it4.hasNext()) {
                if (((cq5) it4.next()).a == null && (i = i + 1) < 0) {
                    u96.n();
                    throw null;
                }
            }
        }
        if (i <= 1) {
            return;
        }
        List<cq5<Output>> list5 = this.a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list5) {
            if (((cq5) obj).a == null) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        Iterator it5 = arrayList.iterator();
        while (it5.hasNext()) {
            arrayList2.add(((cq5) it5.next()).b);
        }
        h8.f(arrayList2, "At most one variable-length numeric field in a row is allowed, but got several: ", ". Parsing is undefined: for example, with variable-length month number and variable-length day of month, '111' can be parsed as Jan 11th or Nov 1st.");
        throw null;
    }

    @Override // defpackage.y36
    public final Object a(m02 m02Var, CharSequence charSequence, int i) {
        int i2 = this.b;
        if (i + i2 > charSequence.length()) {
            return new o36(i, new eq5(this));
        }
        p07 p07Var = new p07();
        while (p07Var.b + i < charSequence.length() && ex0.c(charSequence.charAt(p07Var.b + i))) {
            p07Var.b++;
        }
        if (p07Var.b < i2) {
            return new o36(i, new fq5(p07Var, this));
        }
        List<cq5<Output>> list = this.a;
        int size = list.size();
        int i3 = 0;
        while (i3 < size) {
            Integer num = list.get(i3).a;
            int iIntValue = (num != null ? num.intValue() : (p07Var.b - i2) + 1) + i;
            dq5 dq5VarA = list.get(i3).a(m02Var, charSequence, i, iIntValue);
            if (dq5VarA != null) {
                return new o36(i, new gq5(charSequence.subSequence(i, iIntValue).toString(), this, i3, dq5VarA));
            }
            i3++;
            i = iIntValue;
        }
        return Integer.valueOf(i);
    }

    public final String b() {
        String str;
        List<cq5<Output>> list = this.a;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            cq5 cq5Var = (cq5) it.next();
            Integer num = cq5Var.a;
            if (num == null) {
                str = "at least one digit";
            } else {
                str = num + " digits";
            }
            arrayList.add(str + " for " + cq5Var.b);
        }
        boolean z = this.c;
        int i = this.b;
        if (z) {
            return "a number with at least " + i + " digits: " + arrayList;
        }
        return "a number with exactly " + i + " digits: " + arrayList;
    }

    public final String toString() {
        return b();
    }
}

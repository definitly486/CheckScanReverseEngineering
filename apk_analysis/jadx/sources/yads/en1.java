package yads;

import android.view.View;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class en1 {
    public final vq0 a;
    public final w41 b;

    public en1(vq0 vq0Var, w41 w41Var) {
        this.a = vq0Var;
        this.b = w41Var;
    }

    /* JADX WARN: Code duplicated, block: B:106:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:127:0x01b7 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x0184  */
    /* JADX WARN: Code duplicated, block: B:79:0x018e  */
    /* JADX WARN: Code duplicated, block: B:82:0x0199  */
    /* JADX WARN: Code duplicated, block: B:85:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:87:0x01af  */
    /* JADX WARN: Code duplicated, block: B:89:0x01b7 A[EDGE_INSN: B:89:0x01b7->B:90:0x01b9 BREAK  A[LOOP:4: B:83:0x019d->B:129:?]] */
    /* JADX WARN: Code duplicated, block: B:92:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:93:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:95:0x01c5  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void a(cb1 cb1Var, List list, fs2 fs2Var) throws qq5 {
        br0 br0Var;
        gq0 gq0Var;
        n32 n32Var;
        br0 br0Var2;
        br0 br0VarA;
        List list2;
        gq0 gq0Var2;
        Iterator it;
        defpackage.b36 b36Var;
        br0 br0Var3;
        boolean z;
        int i;
        int i2 = 0;
        View childAt = this.a.getChildAt(0);
        br0 br0Var4 = cb1Var.a;
        long j = cb1Var.b;
        String strValueOf = String.valueOf(j);
        p41 p41VarA = br0Var4.a();
        String strA = p41VarA instanceof z22 ? du1.a((z22) p41VarA) : p41VarA.a();
        if (strA == null) {
            bz.a(0);
            strA = (String) bz.a.get(0);
        }
        n32 n32Var2 = new n32(j, defpackage.kx2.b, u96.i(strValueOf, strA), 8);
        int size = list.size();
        if (size != 0) {
            boolean z2 = true;
            if (size != 1) {
                Iterator it2 = list.iterator();
                if (!it2.hasNext()) {
                    defpackage.n1.e("Empty collection can't be reduced.");
                    return;
                }
                Object next = it2.next();
                while (it2.hasNext()) {
                    n32 n32Var3 = (n32) it2.next();
                    n32 n32Var4 = (n32) next;
                    if (n32Var4.a != n32Var3.a) {
                        br0Var3 = br0Var4;
                        z = z2;
                        next = null;
                        i = i2;
                    } else {
                        ArrayList<defpackage.b36> arrayList = new ArrayList();
                        int i3 = i2;
                        for (Object obj : n32Var4.b) {
                            int i4 = i3 + 1;
                            if (i3 < 0) {
                                u96.o();
                                throw null;
                            }
                            defpackage.b36 b36Var2 = (defpackage.b36) obj;
                            defpackage.b36 b36Var3 = (defpackage.b36) defpackage.qn1.W(i3, n32Var3.b);
                            if (b36Var3 == null || !defpackage.aa4.e(b36Var2, b36Var3)) {
                                break;
                            }
                            arrayList.add(b36Var2);
                            i3 = i4;
                        }
                        long j2 = n32Var4.a;
                        List list3 = n32Var4.c;
                        int size2 = i2;
                        for (defpackage.b36 b36Var4 : arrayList) {
                            boolean z3 = z2;
                            int size3 = list3.size() - 1;
                            br0 br0Var5 = br0Var4;
                            int i5 = size2;
                            while (true) {
                                if (i5 >= size3) {
                                    size2 = list3.size();
                                    break;
                                }
                                int i6 = size3;
                                int i7 = i5;
                                if (defpackage.aa4.e(list3.get(i5), (String) b36Var4.b)) {
                                    int i8 = i7 + 1;
                                    if (defpackage.aa4.e(list3.get(i8), (String) b36Var4.c)) {
                                        size2 = i8;
                                        break;
                                    }
                                }
                                i5 = i7 + 1;
                                size3 = i6;
                            }
                            z2 = z3;
                            br0Var4 = br0Var5;
                        }
                        br0Var3 = br0Var4;
                        z = z2;
                        i = 0;
                        next = new n32(j2, arrayList, list3.subList(0, size2 + 1), (n32Var4.d || n32Var3.d) ? z : false);
                    }
                    i2 = i;
                    if (next == null) {
                        next = n32Var2;
                    }
                    z2 = z;
                    br0Var4 = br0Var3;
                }
                br0Var = br0Var4;
                gq0Var = null;
                n32Var = (n32) next;
            } else {
                br0Var = br0Var4;
                gq0Var = null;
                n32Var = (n32) defpackage.qn1.T(list);
            }
        } else {
            br0Var = br0Var4;
            gq0Var = null;
            n32Var = n32Var2;
        }
        if (n32Var.b.isEmpty()) {
            br0Var2 = br0Var;
        } else {
            k32 k32VarA = du1.a(childAt, n32Var);
            if (k32VarA == null) {
                n32 n32VarD = n32Var.d();
                if ((n32VarD.b.isEmpty() && cb1Var.b == n32Var.a) || du1.a(childAt, n32VarD) == null) {
                    b36Var = gq0Var;
                } else {
                    if (k32VarA != null || (gq0Var2 = (gq0) k32VarA.l.c) == null) {
                        br0VarA = cb1Var.a;
                        list2 = n32Var.b;
                        if (list2.isEmpty()) {
                            br0VarA = gq0Var;
                            break;
                        }
                        it = list2.iterator();
                        while (it.hasNext()) {
                            String str = (String) ((defpackage.b36) it.next()).b;
                            if (br0VarA != null || (br0VarA = du1.a(br0VarA, str, fs2Var)) == null) {
                                br0VarA = gq0Var;
                                break;
                            }
                        }
                        if (br0VarA instanceof gq0) {
                            gq0Var2 = (gq0) br0VarA;
                        } else {
                            gq0Var2 = gq0Var;
                        }
                        if (gq0Var2 == null) {
                            b36Var = gq0Var;
                        }
                    }
                    b36Var = new defpackage.b36(k32VarA, gq0Var2);
                }
            } else {
                if (k32VarA != null) {
                    br0VarA = cb1Var.a;
                    list2 = n32Var.b;
                    if (list2.isEmpty()) {
                        br0VarA = gq0Var;
                        break;
                    }
                    it = list2.iterator();
                    while (it.hasNext()) {
                        String str2 = (String) ((defpackage.b36) it.next()).b;
                        if (br0VarA != null) {
                        }
                        br0VarA = gq0Var;
                    }
                    if (br0VarA instanceof gq0) {
                        gq0Var2 = (gq0) br0VarA;
                    } else {
                        gq0Var2 = gq0Var;
                    }
                    if (gq0Var2 == null) {
                        b36Var = gq0Var;
                    }
                } else {
                    br0VarA = cb1Var.a;
                    list2 = n32Var.b;
                    if (list2.isEmpty()) {
                        br0VarA = gq0Var;
                        break;
                    }
                    it = list2.iterator();
                    while (it.hasNext()) {
                        String str3 = (String) ((defpackage.b36) it.next()).b;
                        if (br0VarA != null) {
                        }
                        br0VarA = gq0Var;
                    }
                    if (br0VarA instanceof gq0) {
                        gq0Var2 = (gq0) br0VarA;
                    } else {
                        gq0Var2 = gq0Var;
                    }
                    if (gq0Var2 == null) {
                        b36Var = gq0Var;
                    }
                }
                b36Var = new defpackage.b36(k32VarA, gq0Var2);
            }
            if (b36Var == 0) {
                return;
            }
            k32 k32Var = (k32) b36Var.b;
            br0Var2 = (gq0) b36Var.c;
            if (k32Var != null) {
                n32 n32Var5 = k32Var.m;
                n32Var2 = n32Var5 == null ? n32Var : n32Var5;
                childAt = k32Var;
            } else {
                br0Var2 = br0Var;
            }
        }
        tt ttVarA = pq.a(childAt);
        if (ttVarA == null) {
            ttVarA = this.a.B;
        }
        this.b.a(ttVarA, childAt, br0Var2, n32Var2.d());
        this.b.a();
    }
}

package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class r72 {
    public final List a;
    public final List b;
    public final List c;
    public final as2 d;

    public r72(List list, List list2, List list3, as2 as2Var) {
        this.a = list;
        this.b = list2;
        this.c = list3;
        this.d = as2Var;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004b  */
    /* JADX WARN: Code duplicated, block: B:34:0x0065  */
    /* JADX WARN: Code duplicated, block: B:36:0x006d  */
    /* JADX WARN: Code duplicated, block: B:39:0x007c A[LOOP:1: B:32:0x005f->B:39:0x007c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:42:0x0082 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x0084  */
    /* JADX WARN: Code duplicated, block: B:45:0x008a  */
    /* JADX WARN: Code duplicated, block: B:46:0x008c A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:47:0x008d  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:58:0x00ba A[LOOP:2: B:51:0x009d->B:58:0x00ba, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:61:0x00c0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:62:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:64:0x00d4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:71:0x007e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x00d6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:75:0x00d6 A[SYNTHETIC] */
    public final boolean a(r72 r72Var, fs2 fs2Var, fs2 fs2Var2) {
        List list;
        List list2;
        List list3;
        List list4;
        int i;
        int i2;
        int i3;
        int i4;
        if (r72Var == null) {
            return false;
        }
        List list5 = this.a;
        List list6 = r72Var.a;
        if (list5 != null) {
            if (list6 != null && list5.size() == list6.size()) {
                int i5 = 0;
                for (Object obj : list5) {
                    int i6 = i5 + 1;
                    if (i5 < 0) {
                        u96.o();
                        throw null;
                    }
                    if (((xr0) obj).a((xr0) list6.get(i5), fs2Var, fs2Var2)) {
                        i5 = i6;
                    }
                }
                list = this.b;
                list2 = r72Var.b;
                if (list != null) {
                    if (list2 == null && list.size() == list2.size()) {
                        i3 = 0;
                        for (Object obj2 : list) {
                            i4 = i3 + 1;
                            if (i3 >= 0) {
                                u96.o();
                                throw null;
                            }
                            if (!((x72) obj2).a((x72) list2.get(i3), fs2Var, fs2Var2)) {
                                i3 = i4;
                            }
                        }
                        list3 = this.c;
                        list4 = r72Var.c;
                        if (list3 != null) {
                            if (list4 == null && list3.size() == list4.size()) {
                                i = 0;
                                for (Object obj3 : list3) {
                                    i2 = i + 1;
                                    if (i >= 0) {
                                        u96.o();
                                        throw null;
                                    }
                                    if (!((y72) obj3).a((y72) list4.get(i), fs2Var, fs2Var2)) {
                                        i = i2;
                                    }
                                }
                                if (defpackage.aa4.e(this.d.a(fs2Var), r72Var.d.a(fs2Var2))) {
                                    return true;
                                }
                            }
                        } else if (list4 == null) {
                            if (defpackage.aa4.e(this.d.a(fs2Var), r72Var.d.a(fs2Var2))) {
                                return true;
                            }
                        }
                    }
                } else if (list2 == null) {
                    list3 = this.c;
                    list4 = r72Var.c;
                    if (list3 != null) {
                        if (list4 == null) {
                            return false;
                        }
                        i = 0;
                        while (r1.hasNext()) {
                            i2 = i + 1;
                            if (i >= 0) {
                                u96.o();
                                throw null;
                            }
                            if (!((y72) obj3).a((y72) list4.get(i), fs2Var, fs2Var2)) {
                                i = i2;
                            }
                        }
                        if (defpackage.aa4.e(this.d.a(fs2Var), r72Var.d.a(fs2Var2))) {
                            return true;
                        }
                    } else if (list4 == null) {
                        if (defpackage.aa4.e(this.d.a(fs2Var), r72Var.d.a(fs2Var2))) {
                            return true;
                        }
                    }
                }
            }
        } else if (list6 == null) {
            list = this.b;
            list2 = r72Var.b;
            if (list != null) {
                if (list2 == null) {
                    return false;
                }
                i3 = 0;
                while (r1.hasNext()) {
                    i4 = i3 + 1;
                    if (i3 >= 0) {
                        u96.o();
                        throw null;
                    }
                    if (!((x72) obj2).a((x72) list2.get(i3), fs2Var, fs2Var2)) {
                        i3 = i4;
                    }
                }
                list3 = this.c;
                list4 = r72Var.c;
                if (list3 != null) {
                    if (list4 == null) {
                        return false;
                    }
                    i = 0;
                    while (r1.hasNext()) {
                        i2 = i + 1;
                        if (i >= 0) {
                            u96.o();
                            throw null;
                        }
                        if (!((y72) obj3).a((y72) list4.get(i), fs2Var, fs2Var2)) {
                            i = i2;
                        }
                    }
                    if (defpackage.aa4.e(this.d.a(fs2Var), r72Var.d.a(fs2Var2))) {
                        return true;
                    }
                } else if (list4 == null) {
                    if (defpackage.aa4.e(this.d.a(fs2Var), r72Var.d.a(fs2Var2))) {
                        return true;
                    }
                }
            } else if (list2 == null) {
                list3 = this.c;
                list4 = r72Var.c;
                if (list3 != null) {
                    if (list4 == null) {
                        return false;
                    }
                    i = 0;
                    while (r1.hasNext()) {
                        i2 = i + 1;
                        if (i >= 0) {
                            u96.o();
                            throw null;
                        }
                        if (!((y72) obj3).a((y72) list4.get(i), fs2Var, fs2Var2)) {
                            i = i2;
                        }
                    }
                    if (defpackage.aa4.e(this.d.a(fs2Var), r72Var.d.a(fs2Var2))) {
                        return true;
                    }
                } else if (list4 == null) {
                    if (defpackage.aa4.e(this.d.a(fs2Var), r72Var.d.a(fs2Var2))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}

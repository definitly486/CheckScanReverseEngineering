package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class fs1 {
    public final List<e94> a;
    public final List<b36<g05<? extends Object, ? extends Object>, ne4<? extends Object>>> b;
    public final List<b36<tf4<? extends Object>, ne4<? extends Object>>> c;
    public List<? extends ll3<? extends List<? extends b36<? extends u83.a<? extends Object>, ? extends ne4<? extends Object>>>>> d;
    public List<? extends ll3<? extends List<? extends td2.a>>> e;
    public final fh8 f;
    public final fh8 g;

    public static final class a {
        public final ArrayList a;
        public final ArrayList b;
        public final ArrayList c;
        public final ArrayList d;
        public final ArrayList e;

        public a(fs1 fs1Var) {
            this.a = qn1.v0(fs1Var.a);
            this.b = qn1.v0(fs1Var.b);
            this.c = qn1.v0(fs1Var.c);
            List list = (List) fs1Var.f.getValue();
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new f80((b36) it.next(), 3));
            }
            this.d = arrayList;
            List list2 = (List) fs1Var.g.getValue();
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(new b11((td2.a) it2.next(), 1));
            }
            this.e = arrayList2;
        }

        public final void a(final u83.a aVar, final zk1 zk1Var) {
            this.d.add(new ll3() { // from class: es1
                @Override // defpackage.ll3
                public final Object invoke() {
                    return u96.h(new b36(aVar, zk1Var));
                }
            });
        }

        public final void b(g05 g05Var, zk1 zk1Var) {
            this.b.add(new b36(g05Var, zk1Var));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public fs1(List<? extends e94> list, List<? extends b36<? extends g05<? extends Object, ? extends Object>, ? extends ne4<? extends Object>>> list2, List<? extends b36<? extends tf4<? extends Object>, ? extends ne4<? extends Object>>> list3, List<? extends ll3<? extends List<? extends b36<? extends u83.a<? extends Object>, ? extends ne4<? extends Object>>>>> list4, List<? extends ll3<? extends List<? extends td2.a>>> list5) {
        this.a = list;
        this.b = list2;
        this.c = list3;
        this.d = list4;
        this.e = list5;
        this.f = new fh8(new ds1(this, 0));
        this.g = new fh8(new uj(this, 2));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public fs1() {
        kx2 kx2Var = kx2.b;
        this(kx2Var, kx2Var, kx2Var, kx2Var, kx2Var);
    }
}

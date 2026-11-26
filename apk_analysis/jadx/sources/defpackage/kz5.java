package defpackage;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes5.dex */
public final class kz5 {
    public final oz5 a;

    public static final class a {
        public final Date a;
        public final ArrayList b;

        public a(Date date, ArrayList arrayList) {
            this.a = date;
            this.b = arrayList;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && this.b.equals(aVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "OperationsPage(date=" + this.a + ", operations=" + this.b + ")";
        }
    }

    public kz5(oz5 oz5Var) {
        this.a = oz5Var;
    }

    public static a a(fz5 fz5Var) {
        m88 m88VarB;
        String strC;
        String strA;
        pz3 ez5Var;
        ArrayList arrayList;
        m88 m88VarB2;
        m88 m88VarB3;
        pb2 pb2Var = pb2.a;
        String strA2 = fz5Var.a();
        pb2Var.getClass();
        Date dateF = pb2.f(strA2);
        List<ry5> listB = fz5Var.b();
        ArrayList arrayList2 = new ArrayList(kn1.q(listB, 10));
        for (ry5 ry5Var : listB) {
            List<cz5> listF = ry5Var.f();
            if (listF == null || listF.isEmpty()) {
                long jNextLong = new Random().nextLong();
                String strB = ry5Var.b();
                String strH = ry5Var.h();
                String strG = ry5Var.g();
                String strI = ry5Var.i();
                i88 i88VarD = ry5Var.d();
                if (i88VarD == null || (m88VarB = i88VarD.b()) == null) {
                    m88VarB = m88.UNKNOWN;
                }
                m88 m88Var = m88VarB;
                i88 i88VarD2 = ry5Var.d();
                if (i88VarD2 == null || (strC = i88VarD2.c()) == null) {
                    strC = "";
                }
                String str = strC;
                i88 i88VarD3 = ry5Var.d();
                if (i88VarD3 == null || (strA = i88VarD3.a()) == null) {
                    strA = "#0000000";
                }
                String str2 = strA;
                cz5.a aVarE = ry5Var.e();
                String strB2 = aVarE != null ? aVarE.b() : null;
                cz5.a aVarE2 = ry5Var.e();
                String strA3 = aVarE2 != null ? aVarE2.a() : null;
                qy5 qy5VarA = ry5Var.a();
                if (qy5VarA == null) {
                    qy5VarA = qy5.UNKNOWN;
                }
                ez5Var = new ez5(jNextLong, strB, strH, strG, strI, m88Var, str, str2, strB2, strA3, qy5VarA);
            } else {
                ry5Var.j(new Random().nextLong());
                long jC = ry5Var.c();
                String strB3 = ry5Var.b();
                String strH2 = ry5Var.h();
                String strI2 = ry5Var.i();
                List<cz5> listF2 = ry5Var.f();
                if (listF2 != null) {
                    List<cz5> list = listF2;
                    ArrayList arrayList3 = new ArrayList(kn1.q(list, 10));
                    for (cz5 cz5Var : list) {
                        cz5Var.getClass();
                        long jC2 = cz5Var.c();
                        String strB4 = cz5Var.b();
                        String strG2 = cz5Var.g();
                        String strF = cz5Var.f();
                        String strH3 = cz5Var.h();
                        i88 i88VarD4 = cz5Var.d();
                        String strC2 = i88VarD4 != null ? i88VarD4.c() : null;
                        i88 i88VarD5 = cz5Var.d();
                        String strA4 = i88VarD5 != null ? i88VarD5.a() : null;
                        cz5.a aVarE3 = cz5Var.e();
                        String strB5 = aVarE3 != null ? aVarE3.b() : null;
                        cz5.a aVarE4 = cz5Var.e();
                        String strA5 = aVarE4 != null ? aVarE4.a() : null;
                        qy5 qy5VarA2 = cz5Var.a();
                        if (qy5VarA2 == null) {
                            qy5VarA2 = qy5.UNKNOWN;
                        }
                        qy5 qy5Var = qy5VarA2;
                        i88 i88VarD6 = cz5Var.d();
                        if (i88VarD6 == null || (m88VarB3 = i88VarD6.b()) == null) {
                            m88VarB3 = m88.UNKNOWN;
                        }
                        arrayList3.add(new ez5(jC2, strB4, strG2, strF, strH3, m88VarB3, strC2, strA4, strB5, strA5, qy5Var));
                    }
                    arrayList = arrayList3;
                } else {
                    arrayList = null;
                }
                i88 i88VarD7 = ry5Var.d();
                if (i88VarD7 == null || (m88VarB2 = i88VarD7.b()) == null) {
                    m88VarB2 = m88.UNKNOWN;
                }
                m88 m88Var2 = m88VarB2;
                i88 i88VarD8 = ry5Var.d();
                String strC3 = i88VarD8 != null ? i88VarD8.c() : null;
                i88 i88VarD9 = ry5Var.d();
                String strA6 = i88VarD9 != null ? i88VarD9.a() : null;
                qy5 qy5VarA3 = ry5Var.a();
                if (qy5VarA3 == null) {
                    qy5VarA3 = qy5.UNKNOWN;
                }
                ez5Var = new xy5(jC, strB3, strH2, strI2, arrayList, m88Var2, strC3, strA6, qy5VarA3);
            }
            arrayList2.add(ez5Var);
        }
        return new a(dateF, arrayList2);
    }

    public static ArrayList b(j26 j26Var) {
        List listA = j26Var.a();
        ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(a((fz5) it.next()));
        }
        return arrayList;
    }
}

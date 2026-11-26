package defpackage;

import defpackage.m02;
import java.util.ArrayList;
import java.util.List;
import kotlinx.datetime.internal.format.parser.ParseException;

/* JADX INFO: loaded from: classes5.dex */
public final class u36<Output extends m02<Output>> {

    public static final class a<Output> {
        public final Output a;
        public final a46<Output> b;
        public final int c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(m02 m02Var, a46 a46Var, int i) {
            a46Var.getClass();
            this.a = m02Var;
            this.b = a46Var;
            this.c = i;
        }
    }

    public static m02 a(a46 a46Var, CharSequence charSequence, m02 m02Var) throws ParseException {
        String string;
        m02Var.getClass();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayListK = u96.k(new a(m02Var, a46Var, 0));
        while (true) {
            a aVar = (a) nn1.F(arrayListK);
            if (aVar != null) {
                m02 m02Var2 = (m02) ((m02) aVar.a).copy();
                int iIntValue = aVar.c;
                a46<Output> a46Var2 = aVar.b;
                List<y36<Output>> list = a46Var2.a;
                List<a46<Output>> list2 = a46Var2.b;
                int size = list.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        if (!list2.isEmpty()) {
                            int size2 = list2.size() - 1;
                            if (size2 < 0) {
                                break;
                            }
                            while (true) {
                                int i2 = size2 - 1;
                                arrayListK.add(new a(m02Var2, (a46) list2.get(size2), iIntValue));
                                if (i2 < 0) {
                                    break;
                                }
                                size2 = i2;
                            }
                        } else {
                            if (iIntValue != charSequence.length()) {
                                arrayList.add(new o36(iIntValue, t36.f));
                                break;
                            }
                            return m02Var2;
                        }
                    } else {
                        Object objA = ((y36) a46Var2.a.get(i)).a(m02Var2, charSequence, iIntValue);
                        if (!(objA instanceof Integer)) {
                            if (objA instanceof o36) {
                                arrayList.add((o36) objA);
                                break;
                            }
                            ah.f(ad2.b(objA, "Unexpected parse result: "));
                            return null;
                        }
                        iIntValue = ((Number) objA).intValue();
                        i++;
                    }
                }
            } else {
                if (arrayList.size() > 1) {
                    nn1.J(new s36(), arrayList);
                }
                if (arrayList.size() == 1) {
                    string = "Position " + ((o36) arrayList.get(0)).a + ": " + ((o36) arrayList.get(0)).b.invoke();
                } else {
                    StringBuilder sb = new StringBuilder(arrayList.size() * 33);
                    qn1.Z(arrayList, sb, ", ", t51.h, 56);
                    string = sb.toString();
                }
                throw new ParseException(string);
            }
        }
    }
}

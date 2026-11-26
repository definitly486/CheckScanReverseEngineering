package yads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class x13 {
    public static final ArrayList a(List list) {
        xo2 xo2Var;
        xo2 xo2Var2;
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            vf1 vf1Var = (vf1) it.next();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            Iterator it2 = vf1Var.a.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((wf1) it2.next()).a);
                switch (r3.b) {
                    case STRING:
                        xo2Var2 = xo2.STRING;
                        break;
                    case INTEGER:
                        xo2Var2 = xo2.INTEGER;
                        break;
                    case NUMBER:
                        xo2Var2 = xo2.NUMBER;
                        break;
                    case BOOLEAN:
                        xo2Var2 = xo2.BOOLEAN;
                        break;
                    case DATETIME:
                        xo2Var2 = xo2.DATETIME;
                        break;
                    case COLOR:
                        xo2Var2 = xo2.COLOR;
                        break;
                    case URL:
                        xo2Var2 = xo2.URL;
                        break;
                    case DICT:
                        xo2Var2 = xo2.DICT;
                        break;
                    case ARRAY:
                        xo2Var2 = xo2.ARRAY;
                        break;
                    default:
                        defpackage.me0.e();
                        return null;
                }
                arrayList3.add(new w13(xo2Var2, 0));
            }
            String str = vf1Var.c;
            switch (vf1Var.d) {
                case STRING:
                    xo2Var = xo2.STRING;
                    break;
                case INTEGER:
                    xo2Var = xo2.INTEGER;
                    break;
                case NUMBER:
                    xo2Var = xo2.NUMBER;
                    break;
                case BOOLEAN:
                    xo2Var = xo2.BOOLEAN;
                    break;
                case DATETIME:
                    xo2Var = xo2.DATETIME;
                    break;
                case COLOR:
                    xo2Var = xo2.COLOR;
                    break;
                case URL:
                    xo2Var = xo2.URL;
                    break;
                case DICT:
                    xo2Var = xo2.DICT;
                    break;
                case ARRAY:
                    xo2Var = xo2.ARRAY;
                    break;
                default:
                    defpackage.me0.e();
                    return null;
            }
            arrayList.add(new xu3(str, arrayList3, xo2Var, arrayList2, vf1Var.b));
        }
        return arrayList;
    }
}

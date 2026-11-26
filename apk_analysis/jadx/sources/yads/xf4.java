package yads;

import defpackage.u96;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class xf4 {
    public static List b(pg4 pg4Var) {
        if (!(pg4Var instanceof ni4)) {
            return u96.j(pg4Var != null ? pg4Var.e() : null);
        }
        ArrayList arrayListK = ((ni4) pg4Var).k();
        ArrayList arrayList = new ArrayList();
        Iterator it = arrayListK.iterator();
        while (it.hasNext()) {
            s70 s70VarE = ((pg4) it.next()).e();
            if (s70VarE != null) {
                arrayList.add(s70VarE);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Iterable, java.util.List] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.util.ArrayList] */
    public final String a(pg4 pg4Var) {
        ?? J;
        if (pg4Var instanceof ni4) {
            ArrayList arrayListK = ((ni4) pg4Var).k();
            J = new ArrayList();
            Iterator it = arrayListK.iterator();
            while (it.hasNext()) {
                String strA = ((pg4) it.next()).a();
                if (strA != null) {
                    J.add(strA);
                }
            }
        } else {
            J = u96.j(pg4Var != null ? pg4Var.a() : null);
        }
        ?? r1 = J;
        if (r1.isEmpty()) {
            return null;
        }
        return defpackage.qn1.a0(r1, StringUtils.COMMA, "[", "]", 0, null, 56);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Iterable, java.util.List] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.util.ArrayList] */
    public final String c(pg4 pg4Var) {
        ?? J;
        if (pg4Var instanceof ni4) {
            ArrayList arrayListK = ((ni4) pg4Var).k();
            J = new ArrayList();
            Iterator it = arrayListK.iterator();
            while (it.hasNext()) {
                String info = ((pg4) it.next()).getInfo();
                if (info != null) {
                    J.add(info);
                }
            }
        } else {
            J = u96.j(pg4Var != null ? pg4Var.getInfo() : null);
        }
        ?? r1 = J;
        if (r1.isEmpty()) {
            return null;
        }
        return defpackage.qn1.a0(r1, StringUtils.COMMA, "[", "]", 0, null, 56);
    }
}

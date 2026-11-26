package yads;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import defpackage.u96;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class rr4 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [android.view.View, android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v2, types: [android.view.View] */
    public static ArrayList a(View view) {
        ArrayList arrayList = new ArrayList();
        th6 th6Var = eh6.a;
        ViewParent parent = view.getParent();
        ?? r2 = view;
        ?? r1 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        while (r1 != 0) {
            int childCount = r1.getChildCount();
            for (int iIndexOfChild = r1.indexOfChild(r2) + 1; iIndexOfChild < childCount; iIndexOfChild++) {
                arrayList.addAll(b(r1.getChildAt(iIndexOfChild)));
            }
            ViewParent parent2 = r1.getParent();
            ViewGroup viewGroup = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
            r2 = r1;
            r1 = viewGroup;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (view.getZ() <= ((View) obj).getZ()) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public static List b(View view) {
        defpackage.ar4 ar4VarE = u96.e();
        if (!eh6.b(view)) {
            if (!(view instanceof ViewGroup) || eh6.c(view)) {
                ar4VarE.add(view);
            } else {
                ViewGroup viewGroup = (ViewGroup) view;
                defpackage.ar4 ar4VarE2 = u96.e();
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    ar4VarE2.addAll(b(viewGroup.getChildAt(i)));
                }
                ar4VarE.addAll(u96.d(ar4VarE2));
            }
        }
        return u96.d(ar4VarE);
    }
}

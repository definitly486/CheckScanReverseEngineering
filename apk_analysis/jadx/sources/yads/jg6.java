package yads;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class jg6 {
    public static final View a(String str, vq0 vq0Var) {
        List list;
        vq0Var.getClass();
        if (str == null) {
            list = defpackage.kx2.b;
        } else {
            ArrayList arrayList = new ArrayList();
            a(vq0Var, str, arrayList);
            list = arrayList;
        }
        if (list.isEmpty()) {
            return null;
        }
        if (list.size() <= 1) {
            return (View) defpackage.qn1.T(list);
        }
        o01.a(vq0Var, new RuntimeException(defpackage.c9.d(list.size(), "Ambiguous scope id. There are ", " divs with id '", str, "'")));
        return null;
    }

    public static void a(View view, String str, ArrayList arrayList) {
        if (defpackage.aa4.e(str, view.getTag())) {
            arrayList.add(view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                a(viewGroup.getChildAt(i), str, arrayList);
            }
        }
    }
}

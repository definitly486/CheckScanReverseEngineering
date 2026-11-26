package yads;

import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class y16 implements Runnable {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        View rootView;
        a26 a26Var = a26.g;
        a26Var.getClass();
        a26Var.b.clear();
        Iterator it = Collections.unmodifiableCollection(tp6.c.b).iterator();
        while (it.hasNext()) {
            ((dp6) it.next()).getClass();
        }
        a26Var.f = System.nanoTime();
        a26Var.d.a();
        long jNanoTime = System.nanoTime();
        qp6 qp6Var = a26Var.c.b;
        if (a26Var.d.f.size() > 0) {
            for (String str : a26Var.d.f) {
                JSONObject jSONObjectA = qp6Var.a(null);
                View view = (View) a26Var.d.c.get(str);
                yp6 yp6Var = a26Var.c.a;
                String str2 = (String) a26Var.d.g.get(str);
                if (str2 != null) {
                    JSONObject jSONObjectA2 = yp6Var.a(view);
                    try {
                        jSONObjectA2.put("adSessionId", str);
                    } catch (JSONException e) {
                        Log.e("OMIDLIB", "Error with setting ad session id", e);
                    }
                    try {
                        jSONObjectA2.put("notVisibleReason", str2);
                    } catch (JSONException e2) {
                        Log.e("OMIDLIB", "Error with setting not visible reason", e2);
                    }
                    rp6.a(jSONObjectA, jSONObjectA2);
                }
                rp6.a(jSONObjectA);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                lp6 lp6Var = a26Var.e;
                lp6Var.b.a(new eq6(lp6Var, hashSet, jSONObjectA, jNanoTime));
            }
        }
        if (a26Var.d.e.size() > 0) {
            JSONObject jSONObjectA3 = qp6Var.a(null);
            ArrayList arrayList = new ArrayList();
            tp6 tp6Var = tp6.c;
            if (tp6Var != null) {
                Collection collectionUnmodifiableCollection = Collections.unmodifiableCollection(tp6Var.b);
                IdentityHashMap identityHashMap = new IdentityHashMap((collectionUnmodifiableCollection.size() * 2) + 3);
                Iterator it2 = collectionUnmodifiableCollection.iterator();
                while (it2.hasNext()) {
                    View view2 = (View) ((dp6) it2.next()).d.get();
                    if (view2 != null && mq6.d(view2) && (rootView = view2.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                        identityHashMap.put(rootView, rootView);
                        float fB = mq6.b(rootView);
                        int size = arrayList.size();
                        while (size > 0 && mq6.b((View) arrayList.get(size - 1)) > fB) {
                            size--;
                        }
                        arrayList.add(size, rootView);
                    }
                }
            }
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                a26Var.a((View) it3.next(), qp6Var.a, jSONObjectA3, false);
            }
            rp6.a(jSONObjectA3);
            lp6 lp6Var2 = a26Var.e;
            lp6Var2.b.a(new hq6(lp6Var2, a26Var.d.e, jSONObjectA3, jNanoTime));
        } else {
            lp6 lp6Var3 = a26Var.e;
            lp6Var3.b.a(new zp6(lp6Var3));
        }
        ap6 ap6Var = a26Var.d;
        ap6Var.a.clear();
        ap6Var.b.clear();
        ap6Var.c.clear();
        ap6Var.d.clear();
        ap6Var.e.clear();
        ap6Var.f.clear();
        ap6Var.g.clear();
        ap6Var.j = false;
        ap6Var.h.clear();
        System.nanoTime();
        if (a26Var.a.size() > 0) {
            Iterator it4 = a26Var.a.iterator();
            if (it4.hasNext()) {
                it4.next().getClass();
                throw new ClassCastException();
            }
        }
        qq6.d.a();
    }
}

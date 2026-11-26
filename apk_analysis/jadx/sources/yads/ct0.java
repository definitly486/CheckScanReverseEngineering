package yads;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.yandex.mobile.ads.R$id;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ct0 {
    public static final boolean a(View view) {
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup == null) {
            return false;
        }
        Object tag = viewGroup.getTag(R$id.monetization_ads_divkit_div_penetrating_longtap_tag);
        Boolean bool = tag instanceof Boolean ? (Boolean) tag : null;
        return (bool != null ? bool.booleanValue() : false) || a(viewGroup);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(View view, List list, fs2 fs2Var, nl3 nl3Var) {
        if ((view instanceof hs2) && list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((hs2) view).a(((xr0) it.next()).b.a(fs2Var, nl3Var));
            }
        }
    }

    public static final void a(View view, as2 as2Var, sg3 sg3Var, fs2 fs2Var) {
        if (((Boolean) as2Var.a(fs2Var)).booleanValue()) {
            pq.a(view, sg3Var);
            view.requestFocus();
        }
    }

    public static final List a(List list, fs2 fs2Var) {
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((Boolean) ((xr0) obj).b.a(fs2Var)).booleanValue()) {
                    arrayList.add(obj);
                }
            }
            return arrayList;
        }
        return defpackage.kx2.b;
    }
}

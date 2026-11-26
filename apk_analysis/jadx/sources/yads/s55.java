package yads;

import android.view.View;
import androidx.collection.SparseArrayCompat;
import com.yandex.mobile.ads.R$id;

/* JADX INFO: loaded from: classes6.dex */
public abstract class s55 {
    /* JADX WARN: Multi-variable type inference failed */
    public static final hs2 a(View view) {
        if (view instanceof hs2) {
            return (hs2) view;
        }
        Object tag = view.getTag(R$id.monetization_ads_divkit_div_releasable_list);
        SparseArrayCompat sparseArrayCompat = tag instanceof SparseArrayCompat ? (SparseArrayCompat) tag : null;
        if (sparseArrayCompat == null) {
            sparseArrayCompat = new SparseArrayCompat();
            view.setTag(R$id.monetization_ads_divkit_div_releasable_list, sparseArrayCompat);
        }
        Object obj = sparseArrayCompat.get(0);
        hs2 hs2Var = obj instanceof hs2 ? (hs2) obj : null;
        if (hs2Var != null) {
            return hs2Var;
        }
        is2 is2Var = new is2();
        sparseArrayCompat.put(0, is2Var);
        return is2Var;
    }

    public static final xo5 b(View view) {
        Object tag = view.getTag(R$id.monetization_ads_divkit_div_releasable_list);
        SparseArrayCompat sparseArrayCompat = tag instanceof SparseArrayCompat ? (SparseArrayCompat) tag : null;
        if (sparseArrayCompat != null) {
            return new xo5(sparseArrayCompat);
        }
        return null;
    }
}

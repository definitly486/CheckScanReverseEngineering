package yads;

import android.view.View;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes6.dex */
public final class jq implements ViewPager.PageTransformer {
    public final /* synthetic */ a62 a;

    public jq(a62 a62Var) {
        this.a = a62Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.viewpager.widget.ViewPager.PageTransformer
    public final void transformPage(View view, float f) {
        iq iqVar;
        a62 a62Var = this.a;
        if (!a62Var.n && f > -1.0f && f < 1.0f && (iqVar = (iq) a62Var.g.get(view)) != null) {
            iqVar.a();
        }
    }
}

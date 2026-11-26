package yads;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import androidx.viewpager.widget.PagerAdapter;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class eq extends PagerAdapter {
    public SparseArray a;
    public final /* synthetic */ a62 b;

    public eq(a62 a62Var) {
        this.b = a62Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.viewpager.widget.PagerAdapter
    public final void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        if (oh6.b(this.b.c)) {
            i = (getCount() - i) - 1;
        }
        ViewGroup viewGroup2 = (ViewGroup) obj;
        iq iqVar = (iq) this.b.g.remove(viewGroup2);
        ViewGroup viewGroup3 = iqVar.d;
        if (viewGroup3 != null) {
            a62 a62Var = (a62) iqVar.e;
            a62Var.x.remove(viewGroup3);
            vq0 vq0Var = a62Var.q.a;
            Iterator<View> it = ViewGroupKt.getChildren(viewGroup3).iterator();
            while (it.hasNext()) {
                di2.a(vq0Var.u(), it.next());
            }
            viewGroup3.removeAllViews();
            iqVar.d = null;
        }
        this.b.h.remove(Integer.valueOf(i));
        int i2 = rv3.a;
        vj5[] vj5VarArr = vj5.b;
        viewGroup.removeView(viewGroup2);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final int getCount() {
        lq lqVar = this.b.m;
        if (lqVar == null) {
            return 0;
        }
        return lqVar.a().size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final int getItemPosition(Object obj) {
        return -2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.viewpager.widget.PagerAdapter
    public final Object instantiateItem(ViewGroup viewGroup, int i) {
        ViewGroup viewGroup2;
        if (oh6.b(this.b.c)) {
            i = (getCount() - i) - 1;
        }
        int i2 = rv3.a;
        vj5[] vj5VarArr = vj5.b;
        iq iqVar = (iq) this.b.h.get(Integer.valueOf(i));
        if (iqVar != null) {
            viewGroup2 = iqVar.a;
            viewGroup2.getParent();
        } else {
            a62 a62Var = this.b;
            viewGroup2 = (ViewGroup) a62Var.a.a(a62Var.i);
            kq kqVar = (kq) this.b.m.a().get(i);
            a62 a62Var2 = this.b;
            iq iqVar2 = new iq(a62Var2, viewGroup2, kqVar, i);
            a62Var2.h.put(Integer.valueOf(i), iqVar2);
            iqVar = iqVar2;
        }
        viewGroup.addView(viewGroup2);
        this.b.g.put(viewGroup2, iqVar);
        if (i == this.b.c.getCurrentItem()) {
            iqVar.a();
        }
        SparseArray<Parcelable> sparseArray = this.a;
        if (sparseArray != null) {
            viewGroup2.restoreHierarchyState(sparseArray);
        }
        return viewGroup2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean isViewFromObject(View view, Object obj) {
        return obj == view;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        if (!(parcelable instanceof Bundle)) {
            this.a = null;
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        bundle.setClassLoader(eq.class.getClassLoader());
        this.a = bundle.getSparseParcelableArray("div_tabs_child_states");
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final Parcelable saveState() {
        SparseArray<Parcelable> sparseArray = new SparseArray<>(this.b.g.size());
        Iterator it = this.b.g.keySet().iterator();
        while (it.hasNext()) {
            ((ViewGroup) it.next()).saveHierarchyState(sparseArray);
        }
        Bundle bundle = new Bundle();
        bundle.putSparseParcelableArray("div_tabs_child_states", sparseArray);
        return bundle;
    }
}

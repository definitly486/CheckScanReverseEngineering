package com.warefly.checkscan.presentation.statistics.view;

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.databinding.FragmentCostStatisticsBinding;
import com.warefly.checkscan.presentation.statistics.presenter.StatisticsPresenter;
import com.warefly.checkscan.presentation.statistics.view.StatisticsFragment;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.bw5;
import defpackage.e;
import defpackage.ed5;
import defpackage.gh4;
import defpackage.j44;
import defpackage.j59;
import defpackage.kn1;
import defpackage.lb7;
import defpackage.ld5;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.o78;
import defpackage.oi9;
import defpackage.ol4;
import defpackage.p78;
import defpackage.q78;
import defpackage.qn1;
import defpackage.r78;
import defpackage.u96;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;
import defpackage.zn2;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class StatisticsFragment extends FlowFragment<FragmentCostStatisticsBinding> implements StatisticsView {
    public static final /* synthetic */ ze4<Object>[] q;
    public LinearLayoutManager l;
    public ed5 m;
    public StatisticsPresenter presenter;
    public final int j = R.layout.fragment_cost_statistics;
    public final ol4 k = new ol4(FragmentCostStatisticsBinding.class);
    public final float n = 70.0f;
    public final int o = 2;
    public final int p = 1;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            StatisticsPresenter statisticsPresenter = StatisticsFragment.this.presenter;
            if (statisticsPresenter != null) {
                statisticsPresenter.onBackPressed();
                return j59.a;
            }
            aa4.j("presenter");
            throw null;
        }
    }

    static {
        bs6 bs6Var = new bs6(StatisticsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;", 0);
        x07.a.getClass();
        q = new ze4[]{bs6Var};
    }

    public static int q(RecyclerView.LayoutManager layoutManager, View view, OrientationHelper orientationHelper) {
        int end;
        int decoratedMeasurement = (orientationHelper.getDecoratedMeasurement(view) / 2) + orientationHelper.getDecoratedStart(view);
        if (layoutManager.getClipToPadding()) {
            end = (orientationHelper.getTotalSpace() / 2) + orientationHelper.getStartAfterPadding();
        } else {
            end = orientationHelper.getEnd() / 2;
        }
        return decoratedMeasurement - end;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final void e(View view) {
        oi9.a(15, view, true);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.j;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentCostStatisticsBinding fragmentCostStatisticsBindingS = s();
        ImageView imageView = fragmentCostStatisticsBindingS.btnBackStatistics;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
        fragmentCostStatisticsBindingS.btnMonthPrevious.setOnClickListener(new View.OnClickListener() { // from class: m78
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ze4<Object>[] ze4VarArr = StatisticsFragment.q;
                StatisticsFragment statisticsFragment = this.b;
                statisticsFragment.r(statisticsFragment.t().v + 1);
                statisticsFragment.p();
            }
        });
        fragmentCostStatisticsBindingS.btnMonthNext.setOnClickListener(new View.OnClickListener() { // from class: n78
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ze4<Object>[] ze4VarArr = StatisticsFragment.q;
                StatisticsFragment statisticsFragment = this.b;
                statisticsFragment.r(statisticsFragment.t().v - 1);
                statisticsFragment.p();
            }
        });
        this.l = new LinearLayoutManager(getContext(), 0, true);
        RecyclerView recyclerView = s().rvMonths;
        LinearLayoutManager linearLayoutManager = this.l;
        if (linearLayoutManager == null) {
            aa4.j("productsLayoutManager");
            throw null;
        }
        recyclerView.addOnScrollListener(new bw5(linearLayoutManager, new p78(this)));
        recyclerView.setLayoutManager(linearLayoutManager);
        LinearLayoutManager linearLayoutManager2 = this.l;
        if (linearLayoutManager2 == null) {
            aa4.j("productsLayoutManager");
            throw null;
        }
        ed5 ed5Var = new ed5(new zn2(this, 1), linearLayoutManager2);
        this.m = ed5Var;
        recyclerView.setAdapter(ed5Var);
    }

    public final void p() {
        ImageView imageView = s().btnMonthNext;
        imageView.getClass();
        ed5 ed5VarT = t();
        int i = ed5VarT.v - 1;
        imageView.setVisibility(i >= 0 ? ((ld5) ed5VarT.u.get(i)).c : true ? 8 : 0);
    }

    public final StatisticsPresenter providePresenter() {
        return new StatisticsPresenter((q78) m2.c(q78.class, e.e(this), null, null), (uf3) n2.c(uf3.class, e.e(this), n(), null));
    }

    public final void r(int i) {
        View viewF;
        FragmentCostStatisticsBinding fragmentCostStatisticsBindingS = s();
        LinearLayoutManager linearLayoutManager = this.l;
        if (linearLayoutManager == null) {
            aa4.j("productsLayoutManager");
            throw null;
        }
        RecyclerView recyclerView = fragmentCostStatisticsBindingS.rvMonths;
        recyclerView.getClass();
        o78 o78Var = new o78(this, linearLayoutManager, recyclerView.getContext());
        o78Var.setTargetPosition(i);
        linearLayoutManager.startSmoothScroll(o78Var);
        ed5 ed5VarT = t();
        ArrayList arrayList = ed5VarT.u;
        if (arrayList.size() > i) {
            ((ld5) arrayList.get(i)).b = true;
            int i2 = ed5VarT.v;
            if (i2 >= 0) {
                ((ld5) arrayList.get(i2)).b = false;
                if (ed5VarT.f(i2) != null && (viewF = ed5VarT.f(i2)) != null) {
                    ((TextView) viewF.findViewById(R.id.tv_month)).setTextColor(Color.parseColor("#000000"));
                }
                ed5VarT.v = -1;
            }
            View viewF2 = ed5VarT.f(i);
            if (viewF2 != null) {
                ((TextView) viewF2.findViewById(R.id.tv_month)).setTextColor(Color.parseColor("#3085ff"));
            }
            ed5VarT.v = i;
        }
        fragmentCostStatisticsBindingS.vpStatistics.setCurrentItem(i);
    }

    public final FragmentCostStatisticsBinding s() {
        return (FragmentCostStatisticsBinding) this.k.getValue(this, q[0]);
    }

    @Override // com.warefly.checkscan.presentation.statistics.view.StatisticsView
    public final void showLoadMonth(boolean z) {
        ProgressBar progressBar = s().pbMonths;
        progressBar.getClass();
        progressBar.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.statistics.view.StatisticsView
    public final void showMonth(List<ld5> list) throws IllegalAccessException, NoSuchFieldException {
        list.getClass();
        ed5 ed5VarT = t();
        ArrayList arrayList = ed5VarT.u;
        arrayList.clear();
        arrayList.addAll(list);
        ed5VarT.notifyDataSetChanged();
        FragmentCostStatisticsBinding fragmentCostStatisticsBindingS = s();
        ViewPager2 viewPager2 = fragmentCostStatisticsBindingS.vpStatistics;
        viewPager2.getClass();
        Field declaredField = ViewPager2.class.getDeclaredField("mRecyclerView");
        declaredField.setAccessible(true);
        Object obj = declaredField.get(viewPager2);
        obj.getClass();
        RecyclerView recyclerView = (RecyclerView) obj;
        Field declaredField2 = RecyclerView.class.getDeclaredField("mTouchSlop");
        declaredField2.setAccessible(true);
        Object obj2 = declaredField2.get(recyclerView);
        obj2.getClass();
        declaredField2.set(recyclerView, Integer.valueOf(((Integer) obj2).intValue() * 4));
        int i = 0;
        viewPager2.setUserInputEnabled(false);
        viewPager2.setAdapter(new r78(this, t().u));
        fragmentCostStatisticsBindingS.vpStatistics.setOffscreenPageLimit(1);
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = list.iterator();
        it.getClass();
        while (it.hasNext()) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            Object next = it.next();
            j44 j44Var = new j44(i, next);
            if (((ld5) next).b) {
                arrayList2.add(j44Var);
            }
            i = i2;
        }
        ArrayList arrayList3 = new ArrayList(kn1.q(arrayList2, 10));
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(Integer.valueOf(((j44) it2.next()).a));
        }
        if (arrayList3.isEmpty()) {
            return;
        }
        fragmentCostStatisticsBindingS.vpStatistics.setCurrentItem(((Number) qn1.T(arrayList3)).intValue());
    }

    public final ed5 t() {
        ed5 ed5Var = this.m;
        if (ed5Var != null) {
            return ed5Var;
        }
        aa4.j("monthAdapter");
        throw null;
    }
}

package com.warefly.checkscan.presentation.statistics.sectionStatistics.view;

import android.os.Bundle;
import android.view.View;
import android.widget.ProgressBar;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.hookedonplay.decoviewlib.DecoView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentPageStatisticsBinding;
import com.warefly.checkscan.databinding.ItemShopsStatisticsBinding;
import com.warefly.checkscan.presentation.cheques.view.MoreTagsDialog;
import com.warefly.checkscan.presentation.statistics.sectionStatistics.presenter.StatisticsPagePresenter;
import defpackage.aa4;
import defpackage.ag;
import defpackage.b36;
import defpackage.bs6;
import defpackage.c81;
import defpackage.dk8;
import defpackage.dp7;
import defpackage.e;
import defpackage.e29;
import defpackage.e67;
import defpackage.ep7;
import defpackage.fg;
import defpackage.gq0;
import defpackage.id2;
import defpackage.ip7;
import defpackage.j59;
import defpackage.jp7;
import defpackage.jz7;
import defpackage.k78;
import defpackage.kn1;
import defpackage.m2;
import defpackage.m86;
import defpackage.nn1;
import defpackage.ol4;
import defpackage.pn1;
import defpackage.pq7;
import defpackage.q78;
import defpackage.qn1;
import defpackage.r07;
import defpackage.s78;
import defpackage.t78;
import defpackage.u78;
import defpackage.u96;
import defpackage.v78;
import defpackage.vc1;
import defpackage.w78;
import defpackage.x07;
import defpackage.x78;
import defpackage.xr;
import defpackage.y78;
import defpackage.ze4;
import defpackage.zo7;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class StatisticsPageFragment extends BaseFragment<FragmentPageStatisticsBinding> implements StatisticsPageView {
    public static final a o;
    public static final /* synthetic */ ze4<Object>[] p;
    public m86 h;
    public dk8 i;
    public jz7<e67, ItemShopsStatisticsBinding> j;
    public float k;
    public MoreTagsDialog m;
    public StatisticsPagePresenter presenter;
    public final int f = R.layout.fragment_page_statistics;
    public final ol4 g = new ol4(FragmentPageStatisticsBinding.class);
    public final ArrayList<dk8.a> l = new ArrayList<>();
    public final ArrayList<dk8.a> n = new ArrayList<>();

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(StatisticsPageFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;", 0);
        x07.a.getClass();
        p = new ze4[]{bs6Var};
        o = new a();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentPageStatisticsBinding n() {
        return (FragmentPageStatisticsBinding) this.g.getValue(this, p[0]);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        DecoView decoView = n().categoriesLayout.categoriesExpensesPieChart;
        decoView.getClass();
        this.h = new m86(decoView);
    }

    public final StatisticsPagePresenter providePresenter() {
        Bundle arguments = getArguments();
        Long lValueOf = arguments != null ? Long.valueOf(arguments.getLong("SECTION_MONTH")) : null;
        if (lValueOf == null) {
            fg.c("PageId should be supplied of valid StatisticsSection id");
            return null;
        }
        long jLongValue = lValueOf.longValue();
        Bundle arguments2 = getArguments();
        return new StatisticsPagePresenter(jLongValue, arguments2 != null ? Boolean.valueOf(arguments2.getBoolean("SECTION_FUTURE_MONTH")) : null, (q78) m2.c(q78.class, e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.statistics.sectionStatistics.view.StatisticsPageView
    public final void showLoadingStatistics(boolean z) {
        ProgressBar progressBar = n().pbLoadingStatistics;
        progressBar.getClass();
        progressBar.setVisibility(z ? 0 : 8);
    }

    /* JADX WARN: Code duplicated, block: B:105:0x03ae  */
    /* JADX WARN: Code duplicated, block: B:81:0x030d  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v3, types: [T, java.lang.Number] */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.warefly.checkscan.presentation.statistics.sectionStatistics.view.StatisticsPageView
    public final void showStatistics(k78 k78Var) throws Throwable {
        float f;
        boolean z;
        Throwable th;
        Object obj;
        List<e67> listB;
        Object obj2;
        List<c81> listA;
        b36 b36Var;
        float f2 = 100.0f;
        boolean z2 = true;
        int i = 0;
        Throwable th2 = null;
        if (k78Var == null || (listA = k78Var.a()) == null) {
            f = 100.0f;
            z = true;
            th = null;
        } else {
            if (listA.isEmpty()) {
                listA = null;
            }
            if (listA != null) {
                this.i = new dk8();
                RecyclerView recyclerView = n().categoriesLayout.rvCategories;
                dk8 dk8Var = this.i;
                if (dk8Var == null) {
                    aa4.j("categoriesAdapter");
                    throw null;
                }
                recyclerView.setAdapter(dk8Var);
                ViewCompat.setNestedScrollingEnabled(recyclerView, false);
                FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(recyclerView.getContext());
                flexboxLayoutManager.C(1);
                flexboxLayoutManager.A(0);
                recyclerView.setLayoutManager(flexboxLayoutManager);
                dk8 dk8Var2 = this.i;
                if (dk8Var2 == null) {
                    aa4.j("categoriesAdapter");
                    throw null;
                }
                dk8Var2.t = new vc1(this, 3);
                List<c81> list = listA;
                ArrayList arrayList = new ArrayList(kn1.q(list, 10));
                long jB = 0;
                for (c81 c81Var : list) {
                    jB += c81Var.b();
                    arrayList.add(new b36(c81Var, Long.valueOf(c81Var.b())));
                }
                w78 w78Var = new w78(this);
                x78 x78Var = new x78(this);
                r07 r07Var = new r07();
                ip7 ip7Var = new ip7(new pn1(arrayList), new t78());
                if (arrayList.size() > 6) {
                    zo7 zo7VarJ = jp7.j(ip7Var, 5);
                    Iterator it = zo7VarJ.iterator();
                    ?? ValueOf = 0L;
                    while (it.hasNext()) {
                        z2 = z2;
                        ValueOf = Long.valueOf(((Number) ((b36) it.next()).c).longValue() + ValueOf.longValue());
                    }
                    z = z2;
                    r07Var.b = ValueOf;
                    b36Var = new b36(jp7.p(ip7Var, 5), zo7VarJ);
                } else {
                    z = true;
                    b36Var = new b36(ip7Var, null);
                }
                zo7 zo7Var = (zo7) b36Var.b;
                zo7 zo7Var2 = (zo7) b36Var.c;
                zo7Var.getClass();
                Iterator it2 = zo7Var.iterator();
                if (!it2.hasNext()) {
                    ag.g("Sequence is empty.");
                    return;
                }
                zo7 e29Var = new e29(zo7Var, new v78(w78Var, ((Number) ((b36) it2.next()).c).longValue()));
                Long l = (Long) r07Var.b;
                if (l != null) {
                    long jLongValue = l.longValue();
                    String string = requireContext().getString(R.string.other);
                    string.getClass();
                    ep7 ep7Var = new ep7(new dk8.a(-1, string, jLongValue, ContextCompat.getColor(requireContext(), R.color.blueCharcoal), ContextCompat.getColor(requireContext(), R.color.statistics_chart_color_six), true));
                    zo7[] zo7VarArr = new zo7[2];
                    zo7VarArr[0] = e29Var;
                    zo7VarArr[z ? 1 : 0] = ep7Var;
                    e29Var = dp7.g(new xr(zo7VarArr));
                }
                List listQ = jp7.q(e29Var);
                ArrayList<dk8.a> arrayList2 = this.n;
                arrayList2.clear();
                arrayList2.addAll(listQ);
                ArrayList<dk8.a> arrayList3 = this.l;
                arrayList3.clear();
                if (zo7Var2 != null) {
                    nn1.t(arrayList3, new e29(zo7Var2, new u78(x78Var)));
                }
                n().categoriesLayout.tvExpensesChart.setText(requireContext().getString(R.string.placeholder_ruble_price, Float.valueOf(jB / 100.0f)));
                dk8 dk8Var3 = this.i;
                if (dk8Var3 == null) {
                    aa4.j("categoriesAdapter");
                    throw null;
                }
                dk8Var3.i.addAll(arrayList2);
                dk8Var3.notifyDataSetChanged();
                m86 m86Var = this.h;
                if (m86Var == null) {
                    aa4.j("categoriesChartHelper");
                    throw null;
                }
                ArrayList arrayList4 = new ArrayList(kn1.q(arrayList2, 10));
                for (dk8.a aVar : arrayList2) {
                    arrayList4.add(new m86.a(aVar.c, aVar.e));
                }
                DecoView decoView = m86Var.a;
                Iterator it3 = arrayList4.iterator();
                float f3 = 0.0f;
                while (it3.hasNext()) {
                    f3 += ((m86.a) it3.next()).a;
                }
                if (f3 == 0.0f) {
                    Iterator it4 = arrayList4.iterator();
                    while (it4.hasNext()) {
                        ((m86.a) it4.next()).a = 100.0f;
                        f3 += 100.0f;
                    }
                }
                int size = m86Var.b.size();
                if (size < arrayList4.size()) {
                    for (m86.a aVar2 : arrayList4.subList(size, arrayList4.size())) {
                        pq7.a aVar3 = new pq7.a(aVar2.b);
                        aVar3.a(1.0f, 1.0f);
                        aVar3.g = false;
                        aVar3.c = 38.0f;
                        aVar3.f = false;
                        aVar2.c = decoView.b(new pq7(aVar3));
                    }
                    m86Var.b = qn1.h0(arrayList4.subList(size, arrayList4.size()), m86Var.b);
                }
                int i2 = 0;
                float f4 = f3;
                for (Object obj3 : arrayList4) {
                    int i3 = i2 + 1;
                    if (i2 < 0) {
                        Throwable th3 = th2;
                        u96.o();
                        throw th3;
                    }
                    float f5 = f2;
                    id2.a aVar4 = new id2.a(f4 / f3);
                    aVar4.c = m86Var.b.get(i2).c;
                    aVar4.b = 1000L;
                    decoView.a(new id2(aVar4));
                    f4 -= ((m86.a) obj3).a;
                    i2 = i3;
                    f2 = f5;
                    th2 = th2;
                }
                f = f2;
                th = th2;
                int size2 = m86Var.b.size();
                for (int size3 = arrayList4.size(); size3 < size2; size3++) {
                    id2.a aVar5 = new id2.a(0.0f);
                    aVar5.c = m86Var.b.get(size3).c;
                    aVar5.b = 1000L;
                    decoView.a(new id2(aVar5));
                }
            } else {
                f = 100.0f;
                z = true;
                th = null;
            }
        }
        if (k78Var == null || (listB = k78Var.b()) == null) {
            obj = th;
        } else {
            if (listB.isEmpty()) {
                obj2 = listB;
                obj2 = th;
            }
            if (obj2 != null) {
                RecyclerView recyclerView2 = n().rvRetailers;
                recyclerView2.setHasFixedSize(z);
                recyclerView2.setLayoutManager(new LinearLayoutManager(recyclerView2.getContext()));
                jz7<e67, ItemShopsStatisticsBinding> jz7Var = new jz7<>(R.layout.item_shops_statistics, null, null, gq0.h, new s78(recyclerView2), 6);
                this.j = jz7Var;
                recyclerView2.setAdapter(jz7Var);
                recyclerView2.setVisibility(0);
                List listN0 = qn1.n0((Iterable) obj2, new y78());
                ArrayList arrayList5 = new ArrayList(kn1.q(listN0, 10));
                for (Object obj4 : listN0) {
                    int i4 = i + 1;
                    if (i < 0) {
                        u96.o();
                        throw th;
                    }
                    e67 e67Var = (e67) obj4;
                    long jB2 = e67Var.b();
                    if (i == 0) {
                        this.k = jB2;
                    }
                    e67Var.c = (int) ((((jB2 * f) / this.k) / f) * 203.0f);
                    arrayList5.add(e67Var);
                    i = i4;
                }
                jz7<e67, ItemShopsStatisticsBinding> jz7Var2 = this.j;
                if (jz7Var2 != null) {
                    jz7Var2.b(arrayList5);
                }
                obj = j59.a;
            } else {
                obj = th;
            }
        }
        if (obj == null) {
            n().tvShops.setVisibility(8);
        }
    }
}

package com.warefly.checkscan.presentation.bonuses.view.chooseRegion.view;

import android.os.Bundle;
import android.text.Editable;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.navigation.NavArgsLazy;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.FragmentChooseRegionBinding;
import com.warefly.checkscan.databinding.ItemFilterBasicBinding;
import com.warefly.checkscan.databinding.LayoutToolbarSimpleTitleBinding;
import com.warefly.checkscan.presentation.bonuses.view.chooseRegion.presenter.ChooseRegionPresenter;
import com.warefly.checkscan.presentation.bonuses.view.chooseRegion.presenter.ChooseRegionView;
import com.warefly.checkscan.presentation.bonuses.view.chooseRegion.view.ChooseRegionFragment;
import defpackage.aa4;
import defpackage.bs6;
import defpackage.c4;
import defpackage.c9;
import defpackage.gh4;
import defpackage.hj1;
import defpackage.ij1;
import defpackage.j59;
import defpackage.jf6;
import defpackage.jj1;
import defpackage.jz7;
import defpackage.kk7;
import defpackage.l17;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.ol4;
import defpackage.p61;
import defpackage.rb;
import defpackage.ta8;
import defpackage.uf3;
import defpackage.x07;
import defpackage.ze4;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ChooseRegionFragment extends BaseFragment<FragmentChooseRegionBinding> implements ChooseRegionView {
    public static final /* synthetic */ ze4<Object>[] j;
    public final int f = R.layout.fragment_choose_region;
    public final ol4 g = new ol4(FragmentChooseRegionBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(jj1.class), new f());
    public jz7<l17, ItemFilterBasicBinding> i;
    public ChooseRegionPresenter presenter;

    public static final class a extends gh4 implements nl3<Editable, j59> {
        public final /* synthetic */ FragmentChooseRegionBinding g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(FragmentChooseRegionBinding fragmentChooseRegionBinding) {
            super(1);
            this.g = fragmentChooseRegionBinding;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Editable editable) {
            String string;
            Editable editable2 = editable;
            ChooseRegionPresenter chooseRegionPresenterN = ChooseRegionFragment.this.n();
            if (editable2 == null || (string = editable2.toString()) == null) {
                string = "";
            }
            chooseRegionPresenterN.onQueryChanged(string);
            this.g.btnRemoveSearch.setVisibility((editable2 == null || ta8.M(editable2)) ? 8 : 0);
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ FragmentChooseRegionBinding f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(FragmentChooseRegionBinding fragmentChooseRegionBinding) {
            super(1);
            this.f = fragmentChooseRegionBinding;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            this.f.etSearch.setText("");
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public c() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ChooseRegionFragment.this.n().onBackPressed();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ l17 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(l17 l17Var) {
            super(1);
            this.g = l17Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ChooseRegionFragment.this.n().onRegionSelected(this.g);
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ l17 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(l17 l17Var) {
            super(1);
            this.g = l17Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ChooseRegionFragment.this.n().onRegionSelected(this.g);
            return j59.a;
        }
    }

    public static final class f implements ll3<Bundle> {
        public f() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            ChooseRegionFragment chooseRegionFragment = ChooseRegionFragment.this;
            Bundle arguments = chooseRegionFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(chooseRegionFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(ChooseRegionFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentChooseRegionBinding;", 0);
        x07.a.getClass();
        j = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        n().onBackPressed();
        return false;
    }

    public final ChooseRegionPresenter n() {
        ChooseRegionPresenter chooseRegionPresenter = this.presenter;
        if (chooseRegionPresenter != null) {
            return chooseRegionPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        ze4<?>[] ze4VarArr = j;
        ze4<?> ze4Var = ze4VarArr[0];
        ol4 ol4Var = this.g;
        FragmentChooseRegionBinding fragmentChooseRegionBinding = (FragmentChooseRegionBinding) ol4Var.getValue(this, ze4Var);
        LayoutToolbarSimpleTitleBinding layoutToolbarSimpleTitleBinding = fragmentChooseRegionBinding.toolbar;
        ImageView imageView = layoutToolbarSimpleTitleBinding.ivBtnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new c()));
        layoutToolbarSimpleTitleBinding.tvTitle.setText(getString(R.string.choose_region_title));
        RecyclerView recyclerView = ((FragmentChooseRegionBinding) ol4Var.getValue(this, ze4VarArr[0])).rvRegions;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        jz7<l17, ItemFilterBasicBinding> jz7Var = new jz7<>(R.layout.item_filter_basic, null, new rb(this, 2), hj1.f, ij1.f, 2);
        this.i = jz7Var;
        recyclerView.setAdapter(jz7Var);
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.setOnTouchListener(new View.OnTouchListener() { // from class: gj1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                ze4<Object>[] ze4VarArr2 = ChooseRegionFragment.j;
                View view3 = this.b.getView();
                if (view3 == null) {
                    return false;
                }
                le9.b(view3);
                return false;
            }
        });
        ImageView imageView2 = fragmentChooseRegionBinding.btnRemoveSearch;
        imageView2.getClass();
        imageView2.setOnClickListener(new lb7(new b(fragmentChooseRegionBinding)));
        fragmentChooseRegionBinding.etSearch.addTextChangedListener(new kk7(new a(fragmentChooseRegionBinding)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ChooseRegionPresenter providePresenter() {
        return new ChooseRegionPresenter((uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), (p61) m2.c(p61.class, defpackage.e.e(this), null, null), (c4) m2.c(c4.class, defpackage.e.e(this), null, null), (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null), ((jj1) this.h.getValue()).a);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.view.chooseRegion.presenter.ChooseRegionView
    public final void showSelectedRegion(l17 l17Var) {
        l17Var.getClass();
        FragmentChooseRegionBinding fragmentChooseRegionBinding = (FragmentChooseRegionBinding) this.g.getValue(this, j[0]);
        TextView textView = fragmentChooseRegionBinding.tvSelectedRegion;
        textView.getClass();
        textView.setVisibility(0);
        ImageView imageView = fragmentChooseRegionBinding.ivSelected;
        imageView.getClass();
        imageView.setVisibility(0);
        fragmentChooseRegionBinding.tvSelectedRegion.setText(l17Var.b());
        ImageView imageView2 = fragmentChooseRegionBinding.ivSelected;
        imageView2.getClass();
        imageView2.setOnClickListener(new lb7(new d(l17Var)));
        TextView textView2 = fragmentChooseRegionBinding.tvSelectedRegion;
        textView2.getClass();
        textView2.setOnClickListener(new lb7(new e(l17Var)));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.view.chooseRegion.presenter.ChooseRegionView
    public final void showSuggestions(List<l17> list) {
        list.getClass();
        jz7<l17, ItemFilterBasicBinding> jz7Var = this.i;
        if (jz7Var != null) {
            jz7Var.b(list);
        }
    }
}

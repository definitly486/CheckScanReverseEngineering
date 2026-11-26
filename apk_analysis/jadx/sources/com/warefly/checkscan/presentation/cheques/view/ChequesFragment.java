package com.warefly.checkscan.presentation.cheques.view;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.databinding.BannerLayoutBinding;
import com.warefly.checkscan.databinding.FragmentChequesBinding;
import com.warefly.checkscan.databinding.ItemChequesProgressAlfaBinding;
import com.warefly.checkscan.databinding.ItemPollBinding;
import com.warefly.checkscan.databinding.ItemPollVariantBinding;
import com.warefly.checkscan.databinding.ItemSortChequeBinding;
import com.warefly.checkscan.databinding.LayoutAdWideBannerWithOrdBinding;
import com.warefly.checkscan.presentation.cheques.exportCheques.dialog.view.LightDatePickerDialog;
import com.warefly.checkscan.presentation.cheques.presenter.ChequesPresenter;
import com.warefly.checkscan.presentation.cheques.view.ChequesFragment;
import com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.DateSortDialog;
import com.warefly.checkscan.presentation.cheques.view.sortDialogs.view.SumSortDialog;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import defpackage.aa4;
import defpackage.ai1;
import defpackage.b06;
import defpackage.bi1;
import defpackage.bm3;
import defpackage.bs6;
import defpackage.cb1;
import defpackage.cl4;
import defpackage.cw5;
import defpackage.d54;
import defpackage.dm3;
import defpackage.eu1;
import defpackage.fu1;
import defpackage.gh4;
import defpackage.i16;
import defpackage.j59;
import defpackage.jf6;
import defpackage.jz7;
import defpackage.kx2;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.m90;
import defpackage.mo7;
import defpackage.n2;
import defpackage.nl3;
import defpackage.nm4;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.p72;
import defpackage.pl2;
import defpackage.po4;
import defpackage.q78;
import defpackage.qd7;
import defpackage.r07;
import defpackage.rd1;
import defpackage.rd7;
import defpackage.rt;
import defpackage.s48;
import defpackage.sh1;
import defpackage.th1;
import defpackage.u48;
import defpackage.u96;
import defpackage.uf3;
import defpackage.uh1;
import defpackage.uv2;
import defpackage.v05;
import defpackage.vh1;
import defpackage.wh1;
import defpackage.x07;
import defpackage.xb0;
import defpackage.xd1;
import defpackage.xh1;
import defpackage.y51;
import defpackage.yg1;
import defpackage.yh1;
import defpackage.z96;
import defpackage.zd3;
import defpackage.ze4;
import defpackage.zl2;
import eightbitlab.com.blurview.BlurView;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class ChequesFragment extends BaseFragment<FragmentChequesBinding> implements ChequesView {
    public static final /* synthetic */ ze4<Object>[] q;
    public th1 h;
    public OrdAdInfoDialog j;
    public jz7<u48, ItemSortChequeBinding> k;
    public LightDatePickerDialog m;
    public SumSortDialog n;
    public DateSortDialog o;
    public eu1 p;
    public ChequesPresenter presenter;
    public final int f = R.layout.fragment_cheques;
    public final ol4 g = new ol4(FragmentChequesBinding.class);
    public final cl4 i = nm4.a(po4.SYNCHRONIZED, new n());
    public final b l = new b();

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[u48.values().length];
            try {
                iArr[u48.Date.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[u48.Search.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[u48.Period.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[u48.Sum.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public static final class b extends gh4 implements dm3<ItemSortChequeBinding, u48, Integer, j59> {

        public static final /* synthetic */ class a {
            public static final /* synthetic */ int[] a;

            static {
                int[] iArr = new int[u48.values().length];
                try {
                    iArr[u48.Date.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[u48.Search.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                a = iArr;
            }
        }

        public b() {
            super(3);
        }

        @Override // defpackage.dm3
        public final j59 invoke(ItemSortChequeBinding itemSortChequeBinding, u48 u48Var, Integer num) {
            ItemSortChequeBinding itemSortChequeBinding2 = itemSortChequeBinding;
            u48 u48Var2 = u48Var;
            num.intValue();
            itemSortChequeBinding2.getClass();
            u48Var2.getClass();
            int i = a.a[u48Var2.ordinal()];
            ImageView imageView = itemSortChequeBinding2.ivBySort;
            int i2 = 1;
            if (i == 1) {
                if (u48Var2.d()) {
                    com.bumptech.glide.a.e(imageView).f(Integer.valueOf(R.drawable.ic_sorting_white)).L(itemSortChequeBinding2.ivBySort);
                } else {
                    com.bumptech.glide.a.e(imageView).f(Integer.valueOf(R.drawable.ic_sorting)).L(itemSortChequeBinding2.ivBySort);
                }
                itemSortChequeBinding2.ivBySort.setVisibility(0);
            } else if (i != 2) {
                imageView.setVisibility(8);
            } else {
                if (u48Var2.d()) {
                    com.bumptech.glide.a.e(imageView).f(Integer.valueOf(R.drawable.ic_search_white_14)).L(itemSortChequeBinding2.ivBySort);
                } else {
                    com.bumptech.glide.a.e(imageView).f(Integer.valueOf(R.drawable.ic_search_black_14)).L(itemSortChequeBinding2.ivBySort);
                }
                itemSortChequeBinding2.ivBySort.setVisibility(0);
            }
            itemSortChequeBinding2.tvBySort.setText(u48Var2.a());
            if (u48Var2.d()) {
                itemSortChequeBinding2.getRoot().setBackground(oz1.b(itemSortChequeBinding2, R.drawable.rounded_readily_blue_100dp));
                TextView textView = itemSortChequeBinding2.tvBySort;
                ConstraintLayout root = itemSortChequeBinding2.getRoot();
                root.getClass();
                textView.setTextColor(ContextCompat.getColor(root.getContext(), R.color.white));
                com.bumptech.glide.a.e(itemSortChequeBinding2.btnBySort).f(Integer.valueOf(R.drawable.ic_close_dear)).L(itemSortChequeBinding2.btnBySort);
                ImageView imageView2 = itemSortChequeBinding2.btnBySort;
                imageView2.getClass();
                imageView2.setOnClickListener(new lb7(new m90(i2, ChequesFragment.this, u48Var2)));
            } else {
                itemSortChequeBinding2.getRoot().setBackground(oz1.b(itemSortChequeBinding2, R.drawable.rounded_very_light_blue_100_background));
                TextView textView2 = itemSortChequeBinding2.tvBySort;
                ConstraintLayout root2 = itemSortChequeBinding2.getRoot();
                root2.getClass();
                textView2.setTextColor(ContextCompat.getColor(root2.getContext(), R.color.black));
                com.bumptech.glide.a.e(itemSortChequeBinding2.btnBySort).f(Integer.valueOf(R.drawable.ic_dropdawn)).L(itemSortChequeBinding2.btnBySort);
                ImageView imageView3 = itemSortChequeBinding2.btnBySort;
                imageView3.getClass();
                imageView3.setOnClickListener(new lb7(new vh1(1)));
            }
            return j59.a;
        }
    }

    public static final class c extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ xb0 g;
        public final /* synthetic */ BannerLayoutBinding h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(xb0 xb0Var, BannerLayoutBinding bannerLayoutBinding) {
            super(1);
            this.g = xb0Var;
            this.h = bannerLayoutBinding;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ChequesFragment.this.o().onInformerClosed(this.g);
            this.h.getRoot().setVisibility(8);
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ xb0 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(xb0 xb0Var) {
            super(1);
            this.g = xb0Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ChequesFragment.this.o().onInformerClick(this.g);
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<s48, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(s48 s48Var) {
            s48 s48Var2 = s48Var;
            s48Var2.getClass();
            ChequesFragment.this.o().onDateSort(s48Var2);
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ String g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str) {
            super(1);
            this.g = str;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ChequesFragment.this.o().onMiniBannerClick(this.g);
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<z96.a, j59> {
        public final /* synthetic */ r07<List<z96.a>> f;
        public final /* synthetic */ RecyclerView g;
        public final /* synthetic */ ChequesFragment h;
        public final /* synthetic */ z96 i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(r07<List<z96.a>> r07Var, RecyclerView recyclerView, ChequesFragment chequesFragment, z96 z96Var) {
            super(1);
            this.f = r07Var;
            this.g = recyclerView;
            this.h = chequesFragment;
            this.i = z96Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(z96.a aVar) {
            Object next;
            z96.a aVar2 = aVar;
            aVar2.getClass();
            r07<List<z96.a>> r07Var = this.f;
            Iterator<T> it = r07Var.b.iterator();
            while (it.hasNext()) {
                ((z96.a) it.next()).d = false;
            }
            Iterator<T> it2 = r07Var.b.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!aa4.e(((z96.a) next).c, aVar2.c));
            z96.a aVar3 = (z96.a) next;
            if (aVar3 != null) {
                aVar3.d = true;
                ze4<Object>[] ze4VarArr = ChequesFragment.q;
                ChequesFragment chequesFragment = this.h;
                ItemPollBinding itemPollBinding = chequesFragment.n().viewPoll;
                TextView textView = itemPollBinding.btnComplete;
                textView.setVisibility(0);
                textView.setOnClickListener(new lb7(new uh1(this.i, textView, itemPollBinding, chequesFragment, aVar3)));
            }
            RecyclerView.Adapter adapter = this.g.getAdapter();
            if (adapter != null) {
                adapter.notifyDataSetChanged();
            }
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<View, ItemPollVariantBinding> {
        public static final h f = new h(1);

        @Override // defpackage.nl3
        public final ItemPollVariantBinding invoke(View view) {
            View view2 = view;
            view2.getClass();
            ItemPollVariantBinding itemPollVariantBindingBind = ItemPollVariantBinding.bind(view2);
            itemPollVariantBindingBind.getClass();
            return itemPollVariantBindingBind;
        }
    }

    public static final class i extends gh4 implements dm3<ItemPollVariantBinding, z96.a, Integer, j59> {
        public final /* synthetic */ ItemPollBinding f;
        public final /* synthetic */ ChequesFragment g;
        public final /* synthetic */ z96 h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(z96 z96Var, ItemPollBinding itemPollBinding, ChequesFragment chequesFragment) {
            super(3);
            this.f = itemPollBinding;
            this.g = chequesFragment;
            this.h = z96Var;
        }

        @Override // defpackage.dm3
        public final j59 invoke(ItemPollVariantBinding itemPollVariantBinding, z96.a aVar, Integer num) {
            ItemPollVariantBinding itemPollVariantBinding2 = itemPollVariantBinding;
            z96.a aVar2 = aVar;
            num.intValue();
            itemPollVariantBinding2.getClass();
            aVar2.getClass();
            itemPollVariantBinding2.rb.setText(aVar2.c);
            itemPollVariantBinding2.rb.setChecked(aVar2.d);
            if (aVar2.d) {
                this.f.btnComplete.setVisibility(0);
                ze4<Object>[] ze4VarArr = ChequesFragment.q;
                ChequesFragment chequesFragment = this.g;
                ItemPollBinding itemPollBinding = chequesFragment.n().viewPoll;
                TextView textView = itemPollBinding.btnComplete;
                textView.setVisibility(0);
                textView.setOnClickListener(new lb7(new uh1(this.h, textView, itemPollBinding, chequesFragment, aVar2)));
            }
            return j59.a;
        }
    }

    public static final class j extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ ChequesFragment f;
        public final /* synthetic */ z96 g;
        public final /* synthetic */ ItemPollBinding h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(z96 z96Var, ItemPollBinding itemPollBinding, ChequesFragment chequesFragment) {
            super(1);
            this.f = chequesFragment;
            this.g = z96Var;
            this.h = itemPollBinding;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            this.f.o().onPollClosed(this.g);
            this.h.getRoot().setVisibility(8);
            return j59.a;
        }
    }

    public static final class k extends gh4 implements nl3<u48, j59> {
        public k() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(u48 u48Var) {
            u48 u48Var2 = u48Var;
            u48Var2.getClass();
            ze4<Object>[] ze4VarArr = ChequesFragment.q;
            int i = a.a[u48Var2.ordinal()];
            ChequesFragment chequesFragment = ChequesFragment.this;
            if (i == 1) {
                chequesFragment.showDateSortDialog();
            } else if (i == 2) {
                chequesFragment.o().openSearch();
            } else if (i == 3) {
                LightDatePickerDialog lightDatePickerDialog = chequesFragment.m;
                if (lightDatePickerDialog != null) {
                    lightDatePickerDialog.dismiss();
                }
                Context context = chequesFragment.getContext();
                if (context != null) {
                    LightDatePickerDialog lightDatePickerDialog2 = new LightDatePickerDialog(context, new bi1(chequesFragment));
                    chequesFragment.m = lightDatePickerDialog2;
                    lightDatePickerDialog2.show();
                }
            } else if (i == 4) {
                chequesFragment.showSumSortDialog();
            }
            return j59.a;
        }
    }

    public static final class l extends gh4 implements nl3<View, ItemSortChequeBinding> {
        public static final l f = new l(1);

        @Override // defpackage.nl3
        public final ItemSortChequeBinding invoke(View view) {
            View view2 = view;
            view2.getClass();
            ItemSortChequeBinding itemSortChequeBindingBind = ItemSortChequeBinding.bind(view2);
            itemSortChequeBindingBind.getClass();
            return itemSortChequeBindingBind;
        }
    }

    public static final class m extends gh4 implements bm3<String, String, j59> {
        public m() {
            super(2);
        }

        @Override // defpackage.bm3
        public final j59 invoke(String str, String str2) {
            String str3 = str;
            String str4 = str2;
            str3.getClass();
            str4.getClass();
            ChequesFragment.this.o().onSumSort(str3, str4);
            return j59.a;
        }
    }

    public static final class n implements ll3<v05> {
        public n() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, v05] */
        @Override // defpackage.ll3
        public final v05 invoke() {
            return m2.c(v05.class, defpackage.e.e(ChequesFragment.this), null, null);
        }
    }

    public static final class o extends gh4 implements nl3<View, j59> {
        public o() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ChequesFragment.this.o().onQueueClicked();
            return j59.a;
        }
    }

    static {
        bs6 bs6Var = new bs6(ChequesFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;", 0);
        x07.a.getClass();
        q = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentChequesBinding n() {
        return (FragmentChequesBinding) this.g.getValue(this, q[0]);
    }

    public final ChequesPresenter o() {
        ChequesPresenter chequesPresenter = this.presenter;
        if (chequesPresenter != null) {
            return chequesPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        ViewTreeObserver viewTreeObserver;
        View view = getView();
        if (view != null && (viewTreeObserver = view.getViewTreeObserver()) != null) {
            viewTreeObserver.removeOnGlobalLayoutListener(this.h);
        }
        this.k = null;
        this.p = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (z) {
            return;
        }
        o().resetMiniBannerWasShown();
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        o().resetMiniBannerWasShown();
    }

    /* JADX WARN: Type inference failed for: r9v7, types: [th1] */
    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(final View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvCheques2;
        int i2 = 0;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(recyclerView.getContext(), 1, false);
        recyclerView.addOnScrollListener(new cw5(linearLayoutManager, new wh1(this)));
        recyclerView.setLayoutManager(linearLayoutManager);
        eu1 eu1Var = new eu1(new cb1(qd7.c, 1), new rd1(new xh1(this, i2), new yh1(this)));
        this.p = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new i16(pl2.o(10)));
        ConstraintLayout constraintLayout = n().layoutYourStatistics;
        constraintLayout.getClass();
        constraintLayout.setOnClickListener(new lb7(new y51(this, 1)));
        TextView textView = n().btnExportCheques;
        textView.getClass();
        textView.setOnClickListener(new lb7(new ai1(this, i2)));
        this.h = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: th1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                ze4<Object>[] ze4VarArr = ChequesFragment.q;
                View viewFindViewById = view.findViewById(R.id.incld_ad_wide_banner_with_ord);
                viewFindViewById.getClass();
                if (!viewFindViewById.isShown() ? false : viewFindViewById.getGlobalVisibleRect(new Rect())) {
                    this.o().sendMiniBannerWatched();
                }
            }
        };
        view.getViewTreeObserver().addOnGlobalLayoutListener(this.h);
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void openDeeplink(String str) {
        Context context;
        str.getClass();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        if (intent.resolveActivity(requireContext().getPackageManager()) == null || (context = getContext()) == null) {
            return;
        }
        context.startActivity(intent);
    }

    public final ChequesPresenter providePresenter() {
        return new ChequesPresenter((uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), (xd1) m2.c(xd1.class, defpackage.e.e(this), null, null), (zl2) m2.c(zl2.class, defpackage.e.e(this), null, null), (yg1) m2.c(yg1.class, defpackage.e.e(this), null, null), (q78) m2.c(q78.class, defpackage.e.e(this), null, null), (d54) m2.c(d54.class, defpackage.e.e(this), null, null), (uv2) m2.c(uv2.class, defpackage.e.e(this), null, null), (fu1) n2.c(fu1.class, defpackage.e.e(this), p72.g, null), (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null), (mo7) m2.c(mo7.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void refreshSorts(List<? extends u48> list) {
        list.getClass();
        jz7<u48, ItemSortChequeBinding> jz7Var = this.k;
        if (jz7Var != null) {
            jz7Var.b(list);
        }
        RecyclerView recyclerView = n().rvCheques2;
        recyclerView.postDelayed(new rt(recyclerView, 1), 400L);
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showAlfaProgressCheques(String str, SpannableString spannableString, int i2, boolean z) {
        str.getClass();
        spannableString.getClass();
        ItemChequesProgressAlfaBinding itemChequesProgressAlfaBinding = n().layoutAlfaProgress;
        itemChequesProgressAlfaBinding.tvReward.setText(str);
        itemChequesProgressAlfaBinding.tvProgress.setText(spannableString);
        LinearProgressIndicator linearProgressIndicator = itemChequesProgressAlfaBinding.pbProgress;
        if (z) {
            linearProgressIndicator.setProgress(100);
            itemChequesProgressAlfaBinding.pbProgress.setIndicatorColor(oz1.a(itemChequesProgressAlfaBinding, R.color.statistics_chart_color_fourth));
        } else {
            linearProgressIndicator.setProgress(i2);
        }
        itemChequesProgressAlfaBinding.getRoot().setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showBanner(xb0 xb0Var) {
        xb0Var.getClass();
        FragmentChequesBinding fragmentChequesBindingN = n();
        fragmentChequesBindingN.viewPoll.getRoot().setVisibility(8);
        BannerLayoutBinding bannerLayoutBinding = fragmentChequesBindingN.viewBanner;
        bannerLayoutBinding.getRoot().setVisibility(0);
        bannerLayoutBinding.tvDearUser.setText(xb0Var.d);
        bannerLayoutBinding.tvYouAdded.setText(xb0Var.b);
        TextView textView = bannerLayoutBinding.btnGoToFav;
        xb0.a aVar = xb0Var.a;
        textView.setText(aVar != null ? aVar.b : null);
        textView.setOnClickListener(new lb7(new d(xb0Var)));
        ImageView imageView = bannerLayoutBinding.btnCloseDear;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new c(xb0Var, bannerLayoutBinding)));
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showBannerIgnored() {
        n().layoutAllBanners.setVisibility(8);
        View view = getView();
        if (view != null) {
            oz1.i(R.string.cheques_banner_ignored, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showCheques(List<Object> list, boolean z) {
        list.getClass();
        eu1 eu1Var = this.p;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
        FragmentChequesBinding fragmentChequesBindingN = n();
        Group group = fragmentChequesBindingN.groupEmpty;
        group.getClass();
        group.setVisibility(z ? 8 : 0);
        CoordinatorLayout coordinatorLayout = fragmentChequesBindingN.layoutCheques;
        coordinatorLayout.getClass();
        coordinatorLayout.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showChequesDuringOnboarding(List<Object> list) {
        list.getClass();
        FragmentChequesBinding fragmentChequesBindingN = n();
        Group group = fragmentChequesBindingN.groupEmpty;
        group.getClass();
        List<Object> list2 = list;
        group.setVisibility(!list2.isEmpty() ? 8 : 0);
        CoordinatorLayout coordinatorLayout = fragmentChequesBindingN.layoutCheques;
        coordinatorLayout.getClass();
        coordinatorLayout.setVisibility(list2.isEmpty() ? 8 : 0);
        eu1 eu1Var = this.p;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showChequesLoading(boolean z) {
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showCouldntDeleteCheque() {
        View view = getView();
        if (view != null) {
            oz1.g(R.string.title_couldnt_delete_cheque, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showCouldntLoadCheques(boolean z) {
        View view = getView();
        if (view != null) {
            oz1.g(R.string.title_couldnt_load_cheques, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showDateRange(Date date, Date date2, boolean z) {
        date.getClass();
        String[] stringArray = getResources().getStringArray(R.array.cheques_month_name);
        stringArray.getClass();
        n().tvSpentForMonth.setText(getString(R.string.cheques_spent_for, stringArray[Calendar.getInstance().get(2)]));
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showDateSortDialog() {
        DateSortDialog dateSortDialog = this.o;
        if (dateSortDialog != null) {
            dateSortDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            DateSortDialog dateSortDialog2 = new DateSortDialog(context, new e());
            this.o = dateSortDialog2;
            dateSortDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showDeselectDateButton(boolean z) {
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showError() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.best_shops_error_occurred, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showExpenses(long j2) {
        TextView textView = n().tvStatisticsValue;
        String string = getString(R.string.cheque_request_sum);
        string.getClass();
        NumberFormat numberFormat = NumberFormat.getInstance(Locale.getDefault());
        numberFormat.getClass();
        DecimalFormatSymbols decimalFormatSymbols = ((DecimalFormat) numberFormat).getDecimalFormatSymbols();
        decimalFormatSymbols.setGroupingSeparator(' ');
        String str = new DecimalFormat("#,###,###,###.##", decimalFormatSymbols).format(Float.valueOf(j2 / 100.0f));
        str.getClass();
        textView.setText(String.format(string, Arrays.copyOf(new Object[]{str}, 1)));
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showGoScanFirstReceipt(boolean z) {
        FragmentChequesBinding fragmentChequesBindingN = n();
        Group group = fragmentChequesBindingN.groupEmpty;
        group.getClass();
        group.setVisibility(z ? 0 : 8);
        CoordinatorLayout coordinatorLayout = fragmentChequesBindingN.layoutCheques;
        coordinatorLayout.getClass();
        coordinatorLayout.setVisibility(z ? 8 : 0);
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showLoadingElectrocheques(boolean z) {
        ConstraintLayout constraintLayout = n().layoutYourElectricChecks;
        constraintLayout.getClass();
        constraintLayout.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showMiniBanner(String str, String str2, b06 b06Var) {
        str.getClass();
        str2.getClass();
        LayoutAdWideBannerWithOrdBinding layoutAdWideBannerWithOrdBinding = n().incldAdWideBannerWithOrd;
        MaterialCardView root = layoutAdWideBannerWithOrdBinding.getRoot();
        root.getClass();
        int i2 = 0;
        root.setVisibility(0);
        MaterialCardView root2 = layoutAdWideBannerWithOrdBinding.getRoot();
        root2.getClass();
        root2.setOnClickListener(new lb7(new f(str2)));
        com.bumptech.glide.a.e(layoutAdWideBannerWithOrdBinding.getRoot()).h(str).L(layoutAdWideBannerWithOrdBinding.ivPicture);
        if (b06Var != null) {
            BlurView blurView = layoutAdWideBannerWithOrdBinding.incldAdsBadge.blurView;
            blurView.getClass();
            MaterialCardView root3 = layoutAdWideBannerWithOrdBinding.getRoot();
            root3.getClass();
            zd3.h(blurView, root3);
            BlurView root4 = layoutAdWideBannerWithOrdBinding.incldAdsBadge.getRoot();
            root4.getClass();
            root4.setVisibility(b06Var.b ? 0 : 8);
            layoutAdWideBannerWithOrdBinding.incldAdsBadge.getRoot().setOnClickListener(new sh1(i2, this, b06Var));
        }
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showNoChequesForSelectedFilter(boolean z) {
        showGoScanFirstReceipt(!z);
        eu1 eu1Var = this.p;
        if (eu1Var != null) {
            eu1Var.submitList(u96.h(rd7.a));
        }
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showOrdAdDialog(b06 b06Var) {
        b06Var.getClass();
        OrdAdInfoDialog ordAdInfoDialog = this.j;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OrdAdInfoDialog ordAdInfoDialog2 = new OrdAdInfoDialog(context, b06Var);
            this.j = ordAdInfoDialog2;
            ordAdInfoDialog2.show();
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [T, kx2] */
    /* JADX WARN: Type inference failed for: r3v2, types: [T, java.util.List<z96$a>] */
    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showPoll(z96 z96Var) {
        z96Var.getClass();
        FragmentChequesBinding fragmentChequesBindingN = n();
        fragmentChequesBindingN.viewBanner.getRoot().setVisibility(8);
        ItemPollBinding itemPollBinding = fragmentChequesBindingN.viewPoll;
        itemPollBinding.getRoot().setVisibility(0);
        itemPollBinding.tvTitle.setText(z96Var.c);
        r07 r07Var = new r07();
        r07Var.b = kx2.b;
        ?? r3 = z96Var.d;
        if (r3 != 0) {
            r07Var.b = r3;
        }
        RecyclerView recyclerView = itemPollBinding.rvVariants;
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView.setAdapter(new jz7(R.layout.item_poll_variant, (List) r07Var.b, new g(r07Var, recyclerView, this, z96Var), h.f, new i(z96Var, itemPollBinding, this)));
        recyclerView.addItemDecoration(new i16(pl2.o(4)));
        ImageView imageView = itemPollBinding.btnClose;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new j(z96Var, itemPollBinding, this)));
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showSorts(List<? extends u48> list) {
        list.getClass();
        RecyclerView recyclerView = n().rvSorts;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
        jz7<u48, ItemSortChequeBinding> jz7Var = new jz7<>(R.layout.item_sort_cheque, list, new k(), l.f, this.l);
        this.k = jz7Var;
        recyclerView.setAdapter(jz7Var);
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showSumSortDialog() {
        SumSortDialog sumSortDialog = this.n;
        if (sumSortDialog != null) {
            sumSortDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            SumSortDialog sumSortDialog2 = new SumSortDialog(context, new m());
            this.n = sumSortDialog2;
            sumSortDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void showUnauthorized() {
        View view = getView();
        if (view != null) {
            oz1.i(R.string.settings_page_sign_up_first, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.cheques.view.ChequesView
    public final void updateChequeQueueCount(int i2) {
        ConstraintLayout constraintLayout = n().layoutYouHaveMissed;
        if (i2 <= 0) {
            constraintLayout.setVisibility(8);
        } else {
            constraintLayout.setVisibility(0);
            constraintLayout.setOnClickListener(new lb7(new o()));
        }
    }
}

package com.warefly.checkscan.presentation.bonuses.main.view;

import android.content.Context;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Slide;
import androidx.transition.TransitionManager;
import com.google.android.material.card.MaterialCardView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.bonuses.databinding.FragmentBonusesNewBinding;
import com.warefly.checkscan.bonuses.databinding.ItemRvSearchButtonBinding;
import com.warefly.checkscan.bonuses.databinding.LayoutBonusesToolbarBinding;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import com.warefly.checkscan.core.ui.infinityScrolling.HorizontalCarouselRecyclerViewNew;
import com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import com.warefly.checkscan.profile.presentation.main.dialogs.ProfilePromocodeErrorBottomSheet;
import com.warefly.checkscan.profile.presentation.main.dialogs.ProfilePromocodeSuccessBottomSheet;
import com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView;
import defpackage.aa4;
import defpackage.b06;
import defpackage.b7;
import defpackage.b81;
import defpackage.bk1;
import defpackage.bs6;
import defpackage.dw0;
import defpackage.es3;
import defpackage.eu1;
import defpackage.ew8;
import defpackage.fh8;
import defpackage.fw8;
import defpackage.gh4;
import defpackage.gs3;
import defpackage.gw0;
import defpackage.h71;
import defpackage.hk7;
import defpackage.hs3;
import defpackage.hw0;
import defpackage.i58;
import defpackage.i72;
import defpackage.i73;
import defpackage.ic8;
import defpackage.iw0;
import defpackage.j59;
import defpackage.jf6;
import defpackage.k07;
import defpackage.k6;
import defpackage.kz;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.lw8;
import defpackage.m2;
import defpackage.m58;
import defpackage.m6;
import defpackage.m8;
import defpackage.mo7;
import defpackage.mr0;
import defpackage.n2;
import defpackage.n58;
import defpackage.nl3;
import defpackage.nm4;
import defpackage.nv7;
import defpackage.ol4;
import defpackage.ov0;
import defpackage.ph1;
import defpackage.pl2;
import defpackage.pm;
import defpackage.po0;
import defpackage.pp5;
import defpackage.pw8;
import defpackage.pz3;
import defpackage.q6;
import defpackage.qk4;
import defpackage.qn1;
import defpackage.r88;
import defpackage.rv7;
import defpackage.s20;
import defpackage.sn5;
import defpackage.sv7;
import defpackage.t58;
import defpackage.uf3;
import defpackage.uu5;
import defpackage.vf6;
import defpackage.vw8;
import defpackage.wl0;
import defpackage.x07;
import defpackage.xq0;
import defpackage.y10;
import defpackage.y61;
import defpackage.yq0;
import defpackage.ze4;
import defpackage.zl2;
import defpackage.zq0;
import defpackage.zr3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class BonusesMainNewFragment extends BaseFragment<FragmentBonusesNewBinding> implements BonusesMainNewView {
    public static final /* synthetic */ ze4<Object>[] v;
    public final int f = R.layout.fragment_bonuses_new;
    public final ol4 g = new ol4(FragmentBonusesNewBinding.class);
    public final fh8 h = nm4.b(c.f);
    public final fh8 i = nm4.b(b.f);
    public final fh8 j = new fh8(new m());
    public final k k = new k();
    public final a l = new a();
    public final l m = new l();
    public k07 n;
    public k07 o;
    public OrdAdInfoDialog p;
    public BonusesMainNewPresenter presenter;
    public ProfilePromocodeErrorBottomSheet q;
    public ProfilePromocodeSuccessBottomSheet r;
    public LoadingDialog s;
    public i58 t;
    public t58 u;

    public static final class a extends RecyclerView.OnScrollListener {
        public a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
            recyclerView.getClass();
            super.onScrolled(recyclerView, i, i2);
            BonusesMainNewFragment.this.o().onContentScrolled(i2);
        }
    }

    public static final class b extends gh4 implements ll3<Integer> {
        public static final b f = new b(0);

        @Override // defpackage.ll3
        public final Integer invoke() {
            return Integer.valueOf(pl2.e(16));
        }
    }

    public static final class c extends gh4 implements ll3<Integer> {
        public static final c f = new c(0);

        @Override // defpackage.ll3
        public final Integer invoke() {
            return Integer.valueOf(pl2.e(8));
        }
    }

    public static final class d extends gh4 implements nl3<Integer, Object> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final Object invoke(Integer num) {
            m8 m8Var;
            List<pz3> list;
            int iIntValue = num.intValue();
            i58 i58Var = BonusesMainNewFragment.this.t;
            if (i58Var == null || (m8Var = i58Var.i) == null || (list = m8Var.b) == null) {
                return null;
            }
            return (pz3) qn1.W(iIntValue, list);
        }
    }

    public static final class e extends gh4 implements nl3<Integer, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(Integer num) {
            BonusesMainNewFragment.this.o().sendPromoBannerShownEvent(num.intValue());
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<View, j59> {
        public f() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BonusesMainNewFragment.this.o().onChooseRegion();
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<View, j59> {
        public g() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BonusesMainNewFragment.this.o().onSearchClick();
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<View, j59> {
        public h() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BonusesMainNewFragment.this.o().onSearchClick();
            return j59.a;
        }
    }

    public static final class i extends gh4 implements nl3<View, j59> {
        public i() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BonusesMainNewFragment.this.o().onProfileClicked();
            return j59.a;
        }
    }

    public static final class j extends gh4 implements nl3<View, j59> {
        public j() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            BonusesMainNewFragment.this.o().onNotificationsClicked();
            return j59.a;
        }
    }

    public static final class k extends RecyclerView.OnScrollListener {
        public k() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public final void onScrollStateChanged(RecyclerView recyclerView, int i) {
            recyclerView.getClass();
            if (i == 0) {
                RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                layoutManager.getClass();
                BonusesMainNewFragment.this.o().changePosSpecialByUser(((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition());
            }
        }
    }

    public static final class l implements RecyclerView.OnItemTouchListener {
        public l() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            recyclerView.getClass();
            motionEvent.getClass();
            int action = motionEvent.getAction();
            BonusesMainNewFragment bonusesMainNewFragment = BonusesMainNewFragment.this;
            if (action == 0) {
                bonusesMainNewFragment.o().setScrollState(false);
                return false;
            }
            if (action != 1 && action != 3) {
                return false;
            }
            bonusesMainNewFragment.o().setScrollState(true);
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void onRequestDisallowInterceptTouchEvent(boolean z) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            recyclerView.getClass();
            motionEvent.getClass();
        }
    }

    public static final class m extends gh4 implements ll3<Slide> {
        public m() {
            super(0);
        }

        @Override // defpackage.ll3
        public final Slide invoke() {
            Slide slide = new Slide(48);
            slide.setDuration(400L);
            slide.addTarget(BonusesMainNewFragment.this.n().includeSearch.getRoot());
            return slide;
        }
    }

    static {
        bs6 bs6Var = new bs6(BonusesMainNewFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;", 0);
        x07.a.getClass();
        v = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public final void changeSearchVisibility(boolean z) {
        if (z) {
            TransitionManager.beginDelayedTransition(n().getRoot(), (Slide) this.j.getValue());
        }
        ConstraintLayout root = n().includeSearch.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public final void dismissLoadingDialog() {
        LoadingDialog loadingDialog = this.s;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentBonusesNewBinding n() {
        return (FragmentBonusesNewBinding) this.g.getValue(this, v[0]);
    }

    public final BonusesMainNewPresenter o() {
        BonusesMainNewPresenter bonusesMainNewPresenter = this.presenter;
        if (bonusesMainNewPresenter != null) {
            return bonusesMainNewPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        o().onHiddenChanged(z);
        k07 k07Var = this.n;
        if (k07Var != null) {
            k07Var.b(z);
        }
        k07 k07Var2 = this.o;
        if (k07Var2 != null) {
            k07Var2.b(z);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        o().onPause();
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        o().onResume();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = n().rvContent;
        recyclerView.addOnScrollListener(this.l);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(recyclerView.getContext(), 3, 1, false);
        gridLayoutManager.setSpanSizeLookup(new zq0(this));
        recyclerView.setLayoutManager(gridLayoutManager);
        gw0 gw0Var = new gw0(new eu1(new ov0(o())));
        y61 y61Var = new y61(new eu1(new b81(o()), new dw0(o())));
        t58 t58Var = new t58(o(), this.k, this.m, new bk1(), o(), o().getCurrentSpecialPos(), new xq0(this, 0));
        this.u = t58Var;
        j59 j59Var = j59.a;
        i58 i58Var = new i58(gw0Var, y61Var, t58Var, new ph1(hk7.c, 1), new nv7(o()), new rv7(o()), new fw8(ew8.c), new pw8(o()), new es3(o()), new vw8(o()), new lw8(o()), new po0(o()), new b7(o()), new r88(o()), new mr0(o()), new uu5(o()), new iw0(hw0.c, 0), new y10(h71.c, 1), new hs3(gs3.c), new qk4(vf6.c, 1), new n58(m58.c), new s20(sn5.c, 2));
        i58Var.registerAdapterDataObserver(new yq0(this, recyclerView));
        this.t = i58Var;
        recyclerView.setAdapter(i58Var);
        recyclerView.setItemAnimator(null);
        RecyclerView recyclerView2 = n().rvContent;
        recyclerView2.getClass();
        k07 k07Var = new k07(recyclerView2, new d(), new e(), 0.8f);
        k07Var.b(isHidden());
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        k07Var.a(viewLifecycleOwner);
        this.n = k07Var;
    }

    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public final void openCustomTab(String str) {
        str.getClass();
        Context context = getContext();
        if (context != null) {
            i72.b(context, str);
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public final void openDeeplink(String str) {
        str.getClass();
        openUrl(str);
    }

    public final BonusesMainNewPresenter providePresenter() {
        return new BonusesMainNewPresenter((wl0) m2.c(wl0.class, defpackage.e.e(this), null, null), (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), (zl2) m2.c(zl2.class, defpackage.e.e(this), null, null), (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null), (i73) m2.c(i73.class, defpackage.e.e(this), null, null), (k6) m2.c(k6.class, defpackage.e.e(this), null, null), (mo7) m2.c(mo7.class, defpackage.e.e(this), null, null), (pp5) m2.c(pp5.class, defpackage.e.e(this), null, null), (ic8) m2.c(ic8.class, defpackage.e.e(this), null, null), (kz) m2.c(kz.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public final void scrollNextSpecials(int i2) {
        HorizontalCarouselRecyclerViewNew horizontalCarouselRecyclerViewNew;
        t58 t58Var = this.u;
        if (t58Var == null || (horizontalCarouselRecyclerViewNew = t58Var.i) == null) {
            return;
        }
        if (i2 != 0) {
            horizontalCarouselRecyclerViewNew.smoothScrollToPosition(i2);
        } else {
            horizontalCarouselRecyclerViewNew.scrollToPosition(i2);
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public final void setAvatar(String str) {
        str.getClass();
        n().includeSearchWithBadges.btnProfile.setProfilePic(str);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public final void setBadgeType(ProfileBadgeView.b bVar) {
        bVar.getClass();
        n().includeSearchWithBadges.btnProfile.setBadgeType(bVar);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public final void showContent(List<? extends pz3> list) {
        list.getClass();
        i58 i58Var = this.t;
        if (i58Var != null) {
            i58Var.submitList(list);
        }
        RecyclerView recyclerView = n().rvContent;
        if (recyclerView.getItemDecorationCount() > 0) {
            recyclerView.removeItemDecorationAt(0);
        }
        fh8 fh8Var = this.h;
        int iIntValue = ((Number) fh8Var.getValue()).intValue();
        int iIntValue2 = ((Number) fh8Var.getValue()).intValue();
        fh8 fh8Var2 = this.i;
        int iIntValue3 = ((Number) fh8Var2.getValue()).intValue();
        int iIntValue4 = ((Number) fh8Var2.getValue()).intValue();
        i58 i58Var2 = this.t;
        int iD = i58Var2 != null ? i58Var2.i.d(sv7.a.class) : Integer.MIN_VALUE;
        i58 i58Var3 = this.t;
        recyclerView.addItemDecoration(new zr3(iIntValue2, iIntValue, iIntValue3, iIntValue4, new int[]{iD, i58Var3 != null ? i58Var3.i.d(sv7.b.class) : Integer.MIN_VALUE}), 0);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public final void showLoadingDialog() {
        LoadingDialog loadingDialog = this.s;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        LoadingDialog loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
        m(loadingDialogB);
        this.s = loadingDialogB;
    }

    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public final void showOrdDialog(b06 b06Var) {
        b06Var.getClass();
        OrdAdInfoDialog ordAdInfoDialog = this.p;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OrdAdInfoDialog ordAdInfoDialog2 = new OrdAdInfoDialog(context, b06Var);
            this.p = ordAdInfoDialog2;
            ordAdInfoDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public final void showPromocodeErrorBottomSheet(m6 m6Var) {
        Context context = getContext();
        if (context != null) {
            ProfilePromocodeErrorBottomSheet profilePromocodeErrorBottomSheet = this.q;
            if (profilePromocodeErrorBottomSheet != null) {
                profilePromocodeErrorBottomSheet.dismiss();
            }
            ProfilePromocodeErrorBottomSheet profilePromocodeErrorBottomSheet2 = new ProfilePromocodeErrorBottomSheet(context, true, m6Var);
            this.q = profilePromocodeErrorBottomSheet2;
            profilePromocodeErrorBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public final void showPromocodeSuccessBottomSheet(q6 q6Var) {
        q6Var.getClass();
        Context context = getContext();
        if (context != null) {
            ProfilePromocodeSuccessBottomSheet profilePromocodeSuccessBottomSheet = this.r;
            if (profilePromocodeSuccessBottomSheet != null) {
                profilePromocodeSuccessBottomSheet.dismiss();
            }
            ProfilePromocodeSuccessBottomSheet profilePromocodeSuccessBottomSheet2 = new ProfilePromocodeSuccessBottomSheet(context, true, q6Var);
            this.r = profilePromocodeSuccessBottomSheet2;
            profilePromocodeSuccessBottomSheet2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public final void showToolbar(boolean z) {
        if (z) {
            ConstraintLayout root = n().includeSearch.getRoot();
            root.getClass();
            root.setVisibility(8);
            LayoutBonusesToolbarBinding layoutBonusesToolbarBinding = n().includeSearchWithBadges;
            ConstraintLayout root2 = layoutBonusesToolbarBinding.getRoot();
            root2.getClass();
            root2.setVisibility(0);
            MaterialCardView materialCardView = layoutBonusesToolbarBinding.btnSearch;
            materialCardView.getClass();
            materialCardView.setOnClickListener(new lb7(new h()));
            ProfileBadgeView profileBadgeView = layoutBonusesToolbarBinding.btnProfile;
            profileBadgeView.getClass();
            profileBadgeView.setOnClickListener(new lb7(new i()));
            ImageView imageView = layoutBonusesToolbarBinding.btnNotifications;
            imageView.getClass();
            imageView.setOnClickListener(new lb7(new j()));
            return;
        }
        ConstraintLayout root3 = n().includeSearchWithBadges.getRoot();
        root3.getClass();
        root3.setVisibility(8);
        ItemRvSearchButtonBinding itemRvSearchButtonBinding = n().includeSearch;
        ConstraintLayout root4 = itemRvSearchButtonBinding.getRoot();
        root4.getClass();
        root4.setVisibility(0);
        ImageView imageView2 = itemRvSearchButtonBinding.btnLocation;
        imageView2.getClass();
        imageView2.setOnClickListener(new lb7(new f()));
        ConstraintLayout root5 = itemRvSearchButtonBinding.getRoot();
        root5.getClass();
        root5.setOnClickListener(new lb7(new g()));
        AppCompatEditText appCompatEditText = itemRvSearchButtonBinding.etSearch;
        appCompatEditText.getClass();
        appCompatEditText.setVisibility(4);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.main.view.BonusesMainNewView
    public final void showUnreadNotificationsBadge(boolean z) {
        if (z) {
            ImageView imageView = n().includeSearchWithBadges.ivBellRedDot;
            imageView.getClass();
            pm.c(imageView);
        } else {
            ImageView imageView2 = n().includeSearchWithBadges.ivBellRedDot;
            imageView2.getClass();
            imageView2.setImageDrawable(null);
            imageView2.setVisibility(8);
        }
    }
}

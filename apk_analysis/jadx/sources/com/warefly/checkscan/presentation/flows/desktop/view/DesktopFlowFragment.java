package com.warefly.checkscan.presentation.flows.desktop.view;

import android.content.Context;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavArgsLazy;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.material.imageview.ShapeableImageView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.architecture.FlowFragment;
import com.warefly.checkscan.databinding.FragmentDesktopBinding;
import com.warefly.checkscan.presentation.Deeplink;
import com.warefly.checkscan.presentation.bonuses.behaviors.NewFeatureDialog;
import com.warefly.checkscan.presentation.commonDialogs.ordAdDialog.OrdAdInfoDialog;
import com.warefly.checkscan.presentation.commonDialogs.push.view.RequestPushPermissionDialog;
import com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter;
import com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView;
import com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView;
import com.warefly.checkscan.ui.bottomnavigationscan.BottomNavigationScan;
import defpackage.aa4;
import defpackage.b06;
import defpackage.bs6;
import defpackage.c4;
import defpackage.c9;
import defpackage.cc0;
import defpackage.cl4;
import defpackage.cm3;
import defpackage.da7;
import defpackage.dc0;
import defpackage.ed3;
import defpackage.fh8;
import defpackage.g27;
import defpackage.g6;
import defpackage.gh4;
import defpackage.h37;
import defpackage.hc0;
import defpackage.hm;
import defpackage.ic8;
import defpackage.j59;
import defpackage.jf6;
import defpackage.jh;
import defpackage.kz;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.me0;
import defpackage.mm3;
import defpackage.mo7;
import defpackage.n2;
import defpackage.nh9;
import defpackage.nk1;
import defpackage.nl3;
import defpackage.nm4;
import defpackage.o2;
import defpackage.o37;
import defpackage.o42;
import defpackage.oi9;
import defpackage.ol4;
import defpackage.p37;
import defpackage.p42;
import defpackage.p51;
import defpackage.pl2;
import defpackage.pm;
import defpackage.po4;
import defpackage.pp5;
import defpackage.qm3;
import defpackage.qm5;
import defpackage.ra8;
import defpackage.ri8;
import defpackage.uf3;
import defpackage.up3;
import defpackage.uq0;
import defpackage.vd0;
import defpackage.vf1;
import defpackage.wk8;
import defpackage.x07;
import defpackage.x37;
import defpackage.y82;
import defpackage.yl2;
import defpackage.zb0;
import defpackage.ze4;
import defpackage.zl2;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class DesktopFlowFragment extends FlowFragment<FragmentDesktopBinding> implements DesktopView {
    public static final /* synthetic */ ze4<Object>[] s;
    public final int j = R.layout.fragment_desktop;
    public final NavArgsLazy k = new NavArgsLazy(x07.a(yl2.class), new h());
    public final cl4 l = nm4.a(po4.SYNCHRONIZED, new g());
    public final fh8 m = new fh8(new b());
    public final ActivityResultLauncher<String> n;
    public int o;
    public final ol4 p;
    public DesktopPresenter presenter;
    public final g27 q;
    public OrdAdInfoDialog r;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ri8.values().length];
            try {
                iArr[ri8.Cheques.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ri8.Bonuses.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ri8.Discount.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ri8.Balance.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ri8.Tasks.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ri8.Games.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            a = iArr;
        }
    }

    public static final class b extends gh4 implements ll3<Integer> {
        public b() {
            super(0);
        }

        @Override // defpackage.ll3
        public final Integer invoke() {
            return Integer.valueOf(ContextCompat.getColor(DesktopFlowFragment.this.requireContext(), R.color.expires_orange));
        }
    }

    public static final /* synthetic */ class c implements cc0, mm3 {
        public final /* synthetic */ DesktopPresenter b;

        public c(DesktopPresenter desktopPresenter) {
            this.b = desktopPresenter;
        }

        public final void a(b06 b06Var) {
            b06Var.getClass();
            this.b.onOrdClicked(b06Var);
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof cc0) && (obj instanceof mm3)) {
                return getFunctionDelegate().equals(((mm3) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // defpackage.mm3
        public final cm3<?> getFunctionDelegate() {
            return new qm3(1, this.b, DesktopPresenter.class, "onOrdClicked", "onOrdClicked(Lcom/warefly/checkscan/shared/ord/OrdInfo;)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    public static final /* synthetic */ class d implements dc0, mm3 {
        public final /* synthetic */ DesktopPresenter b;

        public d(DesktopPresenter desktopPresenter) {
            this.b = desktopPresenter;
        }

        public final void a(int i) {
            this.b.sendBannerWatched(i);
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof dc0) && (obj instanceof mm3)) {
                return getFunctionDelegate().equals(((mm3) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override // defpackage.mm3
        public final cm3<?> getFunctionDelegate() {
            return new qm3(1, this.b, DesktopPresenter.class, "sendBannerWatched", "sendBannerWatched(I)V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    public static final class e implements o37<up3> {
        public e() {
        }

        @Override // defpackage.o37
        public final boolean onLoadFailed(GlideException glideException, Object obj, wk8<up3> wk8Var, boolean z) {
            return false;
        }

        @Override // defpackage.o37
        public final boolean onResourceReady(up3 up3Var, Object obj, wk8<up3> wk8Var, y82 y82Var, boolean z) {
            up3 up3Var2 = up3Var;
            up3Var2.h = 1;
            up3Var2.registerAnimationCallback(new com.warefly.checkscan.presentation.flows.desktop.view.a(DesktopFlowFragment.this));
            return false;
        }
    }

    public static final class f extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ ed3 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(ed3 ed3Var) {
            super(1);
            this.g = ed3Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            DesktopFlowFragment.this.q().onFloatingClick(this.g);
            return j59.a;
        }
    }

    public static final class g implements ll3<zb0> {
        public g() {
        }

        /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, zb0] */
        @Override // defpackage.ll3
        public final zb0 invoke() {
            return m2.c(zb0.class, defpackage.e.e(DesktopFlowFragment.this), null, null);
        }
    }

    public static final class h implements ll3<Bundle> {
        public h() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            DesktopFlowFragment desktopFlowFragment = DesktopFlowFragment.this;
            Bundle arguments = desktopFlowFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(desktopFlowFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(DesktopFlowFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentDesktopBinding;", 0);
        x07.a.getClass();
        s = new ze4[]{bs6Var};
    }

    public DesktopFlowFragment() {
        ActivityResultLauncher<String> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestPermission(), new hm(2));
        activityResultLauncherRegisterForActivityResult.getClass();
        this.n = activityResultLauncherRegisterForActivityResult;
        this.o = -1;
        this.p = new ol4(FragmentDesktopBinding.class);
        this.q = new g27();
    }

    public static int r(ri8 ri8Var) {
        switch (a.a[ri8Var.ordinal()]) {
            case 1:
                return R.id.cheques;
            case 2:
                return R.id.bonuses;
            case 3:
                return R.id.discount;
            case 4:
                return R.id.balance;
            case 5:
                return R.id.tasks;
            case 6:
                return R.id.games;
            default:
                me0.e();
                return 0;
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final void e(View view) {
        oi9.a(13, view, false);
        FrameLayout frameLayout = p().desktopContainer;
        frameLayout.getClass();
        ViewCompat.setOnApplyWindowInsetsListener(frameLayout, new jh(5));
        ViewCompat.requestApplyInsets(frameLayout);
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void hideFloatingButton() {
        p().btnWithdraw.setVisibility(8);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.j;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        Object next;
        List<Fragment> fragments = getChildFragmentManager().getFragments();
        fragments.getClass();
        Iterator<T> it = fragments.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((Fragment) next).isVisible());
        BaseFragment baseFragment = next instanceof BaseFragment ? (BaseFragment) next : null;
        if (baseFragment != null && !baseFragment.k()) {
            return false;
        }
        q().onBackFromTabClicked();
        return false;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.FlowFragment, defpackage.fh5, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        q().onResume();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        p().bottomNavigation.setItemIconTintList(null);
        FragmentDesktopBinding fragmentDesktopBindingP = p();
        ImageView imageView = fragmentDesktopBindingP.btnNotifications;
        imageView.getClass();
        int i = 1;
        imageView.setOnClickListener(new lb7(new p42(this, i)));
        ProfileBadgeView profileBadgeView = fragmentDesktopBindingP.btnProfile;
        profileBadgeView.getClass();
        profileBadgeView.setOnClickListener(new lb7(new nk1(this, i)));
        FragmentDesktopBinding fragmentDesktopBindingP2 = p();
        TextView textView = fragmentDesktopBindingP2.incldNoInternetView.tvNoInternetButton;
        textView.getClass();
        textView.setOnClickListener(new lb7(new o42(this, i)));
        ShapeableImageView shapeableImageView = fragmentDesktopBindingP2.btnScan;
        shapeableImageView.getClass();
        shapeableImageView.setOnClickListener(new lb7(new vf1(this, 2)));
    }

    public final FragmentDesktopBinding p() {
        return (FragmentDesktopBinding) this.p.getValue(this, s[0]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final DesktopPresenter providePresenter() {
        uf3 uf3Var = (uf3) n2.c(uf3.class, defpackage.e.e(this), n(), null);
        c4 c4Var = (c4) m2.c(c4.class, defpackage.e.e(this), null, null);
        jf6 jf6Var = (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null);
        pp5 pp5Var = (pp5) m2.c(pp5.class, defpackage.e.e(this), null, null);
        p51 p51Var = (p51) m2.c(p51.class, defpackage.e.e(this), null, null);
        zl2 zl2Var = (zl2) m2.c(zl2.class, defpackage.e.e(this), null, null);
        Deeplink.Desktop desktop = ((yl2) this.k.getValue()).a;
        return new DesktopPresenter(uf3Var, c4Var, jf6Var, pp5Var, p51Var, zl2Var, (nh9) m2.c(nh9.class, defpackage.e.e(this), null, null), (ic8) m2.c(ic8.class, defpackage.e.e(this), null, null), (da7) m2.c(da7.class, defpackage.e.e(this), null, null), (kz) m2.c(kz.class, defpackage.e.e(this), null, null), (g6) m2.c(g6.class, defpackage.e.e(this), null, null), (qm5) m2.c(qm5.class, defpackage.e.e(this), null, null), desktop, (x37) m2.c(x37.class, defpackage.e.e(this), null, null), (mo7) m2.c(mo7.class, defpackage.e.e(this), null, null));
    }

    public final DesktopPresenter q() {
        DesktopPresenter desktopPresenter = this.presenter;
        if (desktopPresenter != null) {
            return desktopPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void requestPushPermission() {
        Context context = getContext();
        if (context != null) {
            boolean z = ContextCompat.checkSelfPermission(requireContext(), "android.permission.POST_NOTIFICATIONS") == 0;
            boolean zShouldShowRequestPermissionRationale = ActivityCompat.shouldShowRequestPermissionRationale(requireActivity(), "android.permission.POST_NOTIFICATIONS");
            if (ContextCompat.checkSelfPermission(context, "android.permission.POST_NOTIFICATIONS") == 0) {
                return;
            }
            if (z || zShouldShowRequestPermissionRationale) {
                q().pushPermissionNotAllowed();
            } else {
                requestSystemPermission();
            }
        }
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void requestSystemPermission() {
        this.n.launch("android.permission.POST_NOTIFICATIONS");
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void setAvatar(String str) {
        str.getClass();
        p().btnProfile.setProfilePic(str);
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void setBadgeType(ProfileBadgeView.b bVar) {
        bVar.getClass();
        p().btnProfile.setBadgeType(bVar);
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void setBottomItem(ri8 ri8Var) {
        ri8Var.getClass();
        p().bottomNavigation.setSelectedItemId(r(ri8Var));
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void setBottomSelectedIcon(ri8 ri8Var) {
        ri8Var.getClass();
        MenuItem menuItemFindItem = p().bottomNavigation.getMenu().findItem(r(ri8Var));
        if (menuItemFindItem != null) {
            menuItemFindItem.setChecked(true);
        }
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void setBottomTabs(boolean z) {
        BottomNavigationScan bottomNavigationScan = p().bottomNavigation;
        bottomNavigationScan.getMenu().findItem(R.id.discount).setVisible(!z);
        bottomNavigationScan.getMenu().findItem(R.id.games).setVisible(z);
        bottomNavigationScan.setOnItemSelectedListener(new vd0(this, 2));
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void setTab(ri8 ri8Var, Deeplink.Desktop desktop) {
        ri8Var.getClass();
        FragmentManager childFragmentManager = getChildFragmentManager();
        childFragmentManager.getClass();
        FragmentTransaction fragmentTransactionBeginTransaction = childFragmentManager.beginTransaction();
        fragmentTransactionBeginTransaction.getClass();
        Fragment primaryNavigationFragment = childFragmentManager.getPrimaryNavigationFragment();
        if (primaryNavigationFragment != null) {
            fragmentTransactionBeginTransaction.hide(primaryNavigationFragment);
        }
        String strName = ri8Var.name();
        Fragment fragmentFindFragmentByTag = childFragmentManager.findFragmentByTag(strName);
        if (fragmentFindFragmentByTag == null) {
            String str = new String();
            ri8Var.name();
            new FragmentFactory();
            TabContainerFragment tabContainerFragment = new TabContainerFragment();
            tabContainerFragment.setArguments(new uq0(ri8Var, str, desktop).getArguments());
            fragmentTransactionBeginTransaction.add(R.id.desktop_container, tabContainerFragment, strName);
            fragmentFindFragmentByTag = tabContainerFragment;
        } else {
            fragmentTransactionBeginTransaction.show(fragmentFindFragmentByTag);
        }
        fragmentTransactionBeginTransaction.setPrimaryNavigationFragment(fragmentFindFragmentByTag);
        fragmentTransactionBeginTransaction.commit();
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void setUpChequesToolbar() {
        FragmentDesktopBinding fragmentDesktopBindingP = p();
        ConstraintLayout constraintLayout = fragmentDesktopBindingP.toolbarContent;
        constraintLayout.getClass();
        constraintLayout.setVisibility(0);
        String string = getString(R.string.title_my_cheques_tab);
        string.getClass();
        FragmentDesktopBinding fragmentDesktopBindingP2 = p();
        TextView textView = fragmentDesktopBindingP2.tvToolbar;
        textView.getClass();
        textView.setVisibility(0);
        fragmentDesktopBindingP2.tvToolbar.setText(string);
        ImageView imageView = fragmentDesktopBindingP.ivMainToolbar;
        imageView.getClass();
        imageView.setVisibility(8);
        ImageView imageView2 = fragmentDesktopBindingP.btnNotifications;
        imageView2.getClass();
        imageView2.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void setUpDefaultToolbar() {
        FragmentDesktopBinding fragmentDesktopBindingP = p();
        ConstraintLayout constraintLayout = fragmentDesktopBindingP.toolbarContent;
        constraintLayout.getClass();
        constraintLayout.setVisibility(0);
        TextView textView = fragmentDesktopBindingP.tvToolbar;
        textView.getClass();
        textView.setVisibility(4);
        ImageView imageView = fragmentDesktopBindingP.ivMainToolbar;
        imageView.getClass();
        imageView.setVisibility(0);
        ImageView imageView2 = fragmentDesktopBindingP.btnNotifications;
        imageView2.getClass();
        imageView2.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void setUpDiscountToolbar() {
        FragmentDesktopBinding fragmentDesktopBindingP = p();
        ConstraintLayout constraintLayout = fragmentDesktopBindingP.toolbarContent;
        constraintLayout.getClass();
        constraintLayout.setVisibility(0);
        String string = getString(R.string.title_products);
        string.getClass();
        FragmentDesktopBinding fragmentDesktopBindingP2 = p();
        TextView textView = fragmentDesktopBindingP2.tvToolbar;
        textView.getClass();
        textView.setVisibility(0);
        fragmentDesktopBindingP2.tvToolbar.setText(string);
        ImageView imageView = fragmentDesktopBindingP.ivMainToolbar;
        imageView.getClass();
        imageView.setVisibility(8);
        TextView textView2 = fragmentDesktopBindingP.tvToolbar;
        textView2.getClass();
        textView2.setVisibility(0);
        ImageView imageView2 = fragmentDesktopBindingP.btnNotifications;
        imageView2.getClass();
        imageView2.setVisibility(4);
        ImageView imageView3 = fragmentDesktopBindingP.ivBellRedDot;
        imageView3.getClass();
        imageView3.setVisibility(8);
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void setUpScanButtonImage(String str) {
        str.getClass();
        com.bumptech.glide.a.d(requireContext()).h(str).h(R.drawable.btn_add_receipt).L(p().btnScan);
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void showBottomBanner(hc0.a aVar) {
        aVar.getClass();
        zb0 zb0Var = (zb0) this.l.getValue();
        Context context = getContext();
        c cVar = new c(q());
        d dVar = new d(q());
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        viewLifecycleOwner.getClass();
        zb0Var.a(aVar, cVar, dVar, viewLifecycleOwner, context);
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void showCoinAnim() {
        FragmentDesktopBinding fragmentDesktopBindingP = p();
        Menu menu = p().bottomNavigation.getMenu();
        menu.getClass();
        MenuItem menuItemFindItem = menu.findItem(R.id.balance);
        int iIntValue = ((Number) this.m.getValue()).intValue();
        SpannableString spannableString = new SpannableString("Баланс");
        spannableString.setSpan(new ForegroundColorSpan(iIntValue), 0, 6, 33);
        menuItemFindItem.setTitle(spannableString);
        menuItemFindItem.setIcon(R.drawable.ic_empty);
        p().menuCostyl.setVisibility(0);
        fragmentDesktopBindingP.animPlaceholder.setVisibility(0);
        h37 h37VarB = com.bumptech.glide.a.e(fragmentDesktopBindingP.animPlaceholder).a(up3.class).b(p37.m);
        h37VarB.H(h37VarB.N(Integer.valueOf(R.raw.anim_coin))).M(new e()).L(fragmentDesktopBindingP.animPlaceholder);
        q().animCoinShowed();
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void showFloatingButton(ed3 ed3Var) {
        ed3Var.getClass();
        ImageView imageView = p().btnWithdraw;
        imageView.setVisibility(0);
        String str = ed3Var.c;
        if (ra8.u(str, ".gif", false)) {
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            if (layoutParams == null) {
                o2.d("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
                return;
            } else {
                layoutParams.width = pl2.e(136);
                imageView.setLayoutParams(layoutParams);
                com.bumptech.glide.a.e(imageView).a(up3.class).b(p37.m).N(str).L(imageView);
            }
        } else {
            ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
            if (layoutParams2 == null) {
                o2.d("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
                return;
            } else {
                layoutParams2.width = pl2.e(158);
                imageView.setLayoutParams(layoutParams2);
                com.bumptech.glide.a.e(imageView).h(str).L(imageView);
            }
        }
        imageView.setOnClickListener(new lb7(new f(ed3Var)));
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void showNoInternetConnection(boolean z) {
        FrameLayout frameLayout = p().desktopContainer;
        frameLayout.getClass();
        frameLayout.setVisibility(!z ? 0 : 8);
        ConstraintLayout root = p().incldNoInternetView.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void showOrdAdDialog(b06 b06Var) {
        b06Var.getClass();
        OrdAdInfoDialog ordAdInfoDialog = this.r;
        if (ordAdInfoDialog != null) {
            ordAdInfoDialog.dismiss();
        }
        Context context = getContext();
        if (context != null) {
            OrdAdInfoDialog ordAdInfoDialog2 = new OrdAdInfoDialog(context, b06Var);
            this.r = ordAdInfoDialog2;
            ordAdInfoDialog2.show();
        }
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void showPushPermissionDialog() {
        RequestPushPermissionDialog.d.getClass();
        l(new RequestPushPermissionDialog());
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void showScanButton(boolean z) {
        ShapeableImageView shapeableImageView = p().btnScan;
        shapeableImageView.getClass();
        shapeableImageView.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void showTasksAnimatedBadge(boolean z) {
        p().bottomNavigation.setAnimatedBadge(R.id.tasks, z);
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void showToolbar(boolean z) {
        ConstraintLayout constraintLayout = p().toolbarContent;
        constraintLayout.getClass();
        constraintLayout.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void showUnreadNotificationsBadge(boolean z) {
        if (z) {
            ImageView imageView = p().ivBellRedDot;
            imageView.getClass();
            pm.c(imageView);
        } else {
            ImageView imageView2 = p().ivBellRedDot;
            imageView2.getClass();
            imageView2.setImageDrawable(null);
            imageView2.setVisibility(8);
        }
    }

    @Override // com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopView
    public final void showUpdateAvailable() {
        Context context = getContext();
        if (context != null) {
            g27 g27Var = this.q;
            g27Var.getClass();
            NewFeatureDialog newFeatureDialog = (NewFeatureDialog) g27Var.b;
            if (newFeatureDialog == null || !newFeatureDialog.isShowing()) {
                NewFeatureDialog newFeatureDialog2 = new NewFeatureDialog(context, true);
                g27Var.b = newFeatureDialog2;
                newFeatureDialog2.show();
            }
        }
    }
}

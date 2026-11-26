package com.warefly.checkscan.presentation.bonuses.couponPage.view;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.navigation.NavArgsLazy;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.zxing.WriterException;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.LoadingButton;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import com.warefly.checkscan.databinding.FragmentCouponNewBinding;
import com.warefly.checkscan.databinding.ItemAdmitadGetCashbackDescriptionBinding;
import com.warefly.checkscan.databinding.ItemAdmitadNewDescriptionBinding;
import com.warefly.checkscan.databinding.ItemCouponNewBinding;
import com.warefly.checkscan.databinding.ItemCouponPromocodeBinding;
import com.warefly.checkscan.databinding.LayoutBarcodeBinding;
import com.warefly.checkscan.databinding.LayoutTextToolbarBinding;
import com.warefly.checkscan.databinding.SnackbarCouponBinding;
import com.warefly.checkscan.presentation.bonuses.behaviors.AddedToFavesDialog;
import com.warefly.checkscan.presentation.bonuses.behaviors.RemovedFromFavesDialog;
import com.warefly.checkscan.presentation.bonuses.couponPage.presenter.CouponNewPresenter;
import com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialog;
import com.warefly.checkscan.presentation.webview.WebViewActivity;
import defpackage.aa4;
import defpackage.aw5;
import defpackage.b54;
import defpackage.bs6;
import defpackage.c42;
import defpackage.c9;
import defpackage.dq3;
import defpackage.eu1;
import defpackage.fq4;
import defpackage.fv6;
import defpackage.g32;
import defpackage.gh4;
import defpackage.h32;
import defpackage.i72;
import defpackage.j32;
import defpackage.j59;
import defpackage.jf6;
import defpackage.la8;
import defpackage.lb7;
import defpackage.ld2;
import defpackage.ll3;
import defpackage.m2;
import defpackage.m32;
import defpackage.n2;
import defpackage.nl3;
import defpackage.o32;
import defpackage.ol4;
import defpackage.os7;
import defpackage.oz1;
import defpackage.p32;
import defpackage.p37;
import defpackage.q32;
import defpackage.q42;
import defpackage.qc0;
import defpackage.qi0;
import defpackage.qm3;
import defpackage.qs2;
import defpackage.r32;
import defpackage.r96;
import defpackage.s32;
import defpackage.s37;
import defpackage.sy8;
import defpackage.t32;
import defpackage.ta8;
import defpackage.tm1;
import defpackage.u32;
import defpackage.u96;
import defpackage.uf3;
import defpackage.v88;
import defpackage.vq2;
import defpackage.x07;
import defpackage.yw3;
import defpackage.ze4;
import defpackage.zw3;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class CouponNewFragment extends BaseFragment<FragmentCouponNewBinding> implements CouponNewView {
    public static final /* synthetic */ ze4<Object>[] m;
    public final int f = R.layout.fragment_coupon_new;
    public final ol4 g = new ol4(FragmentCouponNewBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(u32.class), new l());
    public os7 i;
    public LoadingDialog j;
    public eu1 k;
    public eu1 l;
    public CouponNewPresenter presenter;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[g32.values().length];
            try {
                iArr[g32.WEB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[g32.PROMOCODE_INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ LayoutTextToolbarBinding g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(LayoutTextToolbarBinding layoutTextToolbarBinding) {
            super(1);
            this.g = layoutTextToolbarBinding;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            CouponNewFragment couponNewFragment = CouponNewFragment.this;
            couponNewFragment.o().setFavouriteCoupon(((u32) couponNewFragment.h.getValue()).a, !this.g.btnFave.isSelected());
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
            CouponNewFragment.this.o().onBackClick();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements ll3<j59> {
        public final /* synthetic */ m32 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(m32 m32Var) {
            super(0);
            this.g = m32Var;
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            CouponNewFragment.this.o().onShareCardClicked(this.g);
            return j59.a;
        }
    }

    public static final /* synthetic */ class e extends qm3 implements nl3<Boolean, j59> {
        @Override // defpackage.nl3
        public final j59 invoke(Boolean bool) {
            ((CouponNewPresenter) this.receiver).showLoadingDialog(bool.booleanValue());
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ b54 g;
        public final /* synthetic */ m32 h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(b54 b54Var, m32 m32Var) {
            super(1);
            this.g = b54Var;
            this.h = m32Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            CouponNewPresenter couponNewPresenterO = CouponNewFragment.this.o();
            b54 b54Var = this.g;
            String str = b54Var.a;
            c42 c42Var = b54Var.b;
            if (c42Var == null) {
                c42Var = c42.PROMOCODE;
            }
            j32 j32Var = this.h.f;
            couponNewPresenterO.onCopyClick(str, c42Var, j32Var != null ? j32Var.b : null);
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ m32 g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(m32 m32Var) {
            super(1);
            this.g = m32Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            CouponNewPresenter couponNewPresenterO = CouponNewFragment.this.o();
            j32 j32Var = this.g.f;
            couponNewPresenterO.onOpenUrl(j32Var != null ? j32Var.b : null);
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
            CouponNewFragment.this.o().onRequestPromocodeClick();
            return j59.a;
        }
    }

    public static final class i extends gh4 implements ll3<j59> {
        public i() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            View view = CouponNewFragment.this.getView();
            if (view != null) {
                oz1.g(R.string.bonuses_dynamic_link_error, view);
            }
            return j59.a;
        }
    }

    public static final class j extends gh4 implements nl3<View, j59> {
        public final /* synthetic */ ImageView f;
        public final /* synthetic */ String g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(ImageView imageView, String str) {
            super(1);
            this.f = imageView;
            this.g = str;
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            i72.b(this.f.getContext(), this.g);
            return j59.a;
        }
    }

    public static final class k implements Animation.AnimationListener {
        public final /* synthetic */ String b;
        public final /* synthetic */ String c;
        public final /* synthetic */ ItemCouponPromocodeBinding d;

        public k(String str, String str2, ItemCouponPromocodeBinding itemCouponPromocodeBinding) {
            this.b = str;
            this.c = str2;
            this.d = itemCouponPromocodeBinding;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationEnd(Animation animation) {
            CouponNewFragment.this.o().promoCodeShowed(this.b, this.c);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationRepeat(Animation animation) {
            this.d.tvPromocode.setText(this.b);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationStart(Animation animation) {
        }
    }

    public static final class l implements ll3<Bundle> {
        public l() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            CouponNewFragment couponNewFragment = CouponNewFragment.this;
            Bundle arguments = couponNewFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(couponNewFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(CouponNewFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentCouponNewBinding;", 0);
        x07.a.getClass();
        m = new ze4[]{bs6Var};
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void copyCode(String str) {
        str.getClass();
        Context context = getContext();
        if (context != null) {
            Object systemService = context.getSystemService("clipboard");
            systemService.getClass();
            ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText(context.getString(R.string.coupon_code_title), str));
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.snackbar_coupon, (ViewGroup) null);
            SnackbarCouponBinding snackbarCouponBindingBind = SnackbarCouponBinding.bind(viewInflate);
            snackbarCouponBindingBind.getClass();
            snackbarCouponBindingBind.tvMessage.setText(getString(R.string.promo_code_copied_new));
            Toast toast = new Toast(requireContext());
            toast.setView(viewInflate);
            toast.show();
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        o().onBackClick();
        return false;
    }

    public final FragmentCouponNewBinding n() {
        return (FragmentCouponNewBinding) this.g.getValue(this, m[0]);
    }

    public final CouponNewPresenter o() {
        CouponNewPresenter couponNewPresenter = this.presenter;
        if (couponNewPresenter != null) {
            return couponNewPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        LayoutTextToolbarBinding layoutTextToolbarBinding = n().viewToolbar;
        layoutTextToolbarBinding.btnShare.setVisibility(0);
        layoutTextToolbarBinding.btnFave.setVisibility(0);
        ImageView imageView = layoutTextToolbarBinding.btnFave;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new b(layoutTextToolbarBinding)));
        ImageView imageView2 = layoutTextToolbarBinding.btnBack;
        imageView2.getClass();
        imageView2.setOnClickListener(new lb7(new c()));
        n().nestedScroll.setOnScrollChangeListener(new o32(this));
        RecyclerView recyclerView = n().layoutPopularProducts.rvHotItems;
        eu1 eu1Var = new eu1(new zw3(new p32(this), new q32(2, o(), CouponNewPresenter.class, "onHotItemOrderClick", "onHotItemOrderClick(Ljava/lang/String;Ljava/lang/String;)V", 0), new r32(0, o(), CouponNewPresenter.class, "onAdultConfirmedClick", "onAdultConfirmedClick()V", 0)));
        this.l = eu1Var;
        recyclerView.setAdapter(eu1Var);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        layoutManager.getClass();
        recyclerView.addOnScrollListener(new aw5((LinearLayoutManager) layoutManager, new s32(this)));
        o().initHotsPaginator();
        RecyclerView recyclerView2 = n().layoutGetCashbackInfo.rvSteps;
        eu1 eu1Var2 = new eu1(new v88());
        this.k = eu1Var2;
        recyclerView2.setAdapter(eu1Var2);
        Context context = recyclerView2.getContext();
        context.getClass();
        recyclerView2.addItemDecoration(new fq4(context));
        TextView textView = n().layoutDescription.btnGoToOperations;
        textView.getClass();
        textView.setOnClickListener(new lb7(new t32(this, 0)));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void openCouponUrl(String str) {
        str.getClass();
        Context context = getContext();
        if (context != null) {
            i72.b(context, str);
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void openHotItemUrl(String str, String str2) {
        str.getClass();
        str2.getClass();
        Context context = getContext();
        if (context != null) {
            int i2 = WebViewActivity.f;
            startActivity(WebViewActivity.a.a(context, 12, str, str2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final CouponNewPresenter providePresenter() {
        return new CouponNewPresenter(((u32) this.h.getValue()).a, (q42) m2.c(q42.class, defpackage.e.e(this), null, null), (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void setCouponInfo(m32 m32Var) {
        j59 j59Var;
        String str;
        m32Var.getClass();
        ItemCouponNewBinding itemCouponNewBinding = n().layoutTitle;
        com.bumptech.glide.a.b(getContext()).d(this).h(m32Var.a).L(itemCouponNewBinding.ivBanner);
        j32 j32Var = m32Var.f;
        if (j32Var != null && (str = j32Var.a) != null) {
            itemCouponNewBinding.btnCopyCode.setText(str);
            n().btnGoShop.setText(str);
        }
        String str2 = m32Var.d;
        if (str2 != null) {
            itemCouponNewBinding.tvTitle.setText(str2);
        }
        String str3 = m32Var.e;
        if (str3 != null) {
            itemCouponNewBinding.tvDescription.setText(str3);
        }
        h32 h32Var = m32Var.b;
        if (h32Var != null) {
            String str4 = h32Var.a;
            TextView textView = itemCouponNewBinding.tvExpiration;
            if (str4 == null || ta8.M(str4)) {
                textView.getClass();
                textView.setVisibility(8);
            } else {
                textView.setText(str4);
                String str5 = h32Var.b;
                if (str5 != null) {
                    textView.setTextColor(Color.parseColor(str5));
                }
                String str6 = h32Var.c;
                if (str6 != null) {
                    DrawableCompat.setTint(DrawableCompat.wrap(textView.getBackground()).mutate(), Color.parseColor(str6));
                }
                textView.setVisibility(0);
            }
        }
        b54 b54Var = m32Var.h;
        if (b54Var != null) {
            for (LoadingButton loadingButton : u96.i(itemCouponNewBinding.btnCopyCode, n().btnGoShop)) {
                loadingButton.getClass();
                loadingButton.setOnClickListener(new lb7(new f(b54Var, m32Var)));
            }
            j59Var = j59.a;
        } else {
            j59Var = null;
        }
        if (j59Var == null) {
            g32 g32Var = j32Var != null ? j32Var.c : null;
            int i2 = g32Var == null ? -1 : a.a[g32Var.ordinal()];
            if (i2 == 1) {
                LoadingButton loadingButton2 = itemCouponNewBinding.btnCopyCode;
                loadingButton2.getClass();
                loadingButton2.setOnClickListener(new lb7(new g(m32Var)));
            } else if (i2 == 2) {
                for (LoadingButton loadingButton3 : u96.i(itemCouponNewBinding.btnCopyCode, n().btnGoShop)) {
                    loadingButton3.getClass();
                    loadingButton3.setOnClickListener(new lb7(new h()));
                }
            }
        }
        LayoutTextToolbarBinding layoutTextToolbarBinding = n().viewToolbar;
        layoutTextToolbarBinding.tvToolbarTitle.setText(m32Var.c);
        layoutTextToolbarBinding.btnFave.setSelected(m32Var.g);
        ImageView imageView = n().viewToolbar.btnShare;
        imageView.getClass();
        this.i = new os7(imageView, new e(1, o(), CouponNewPresenter.class, "showLoadingDialog", "showLoadingDialog(Z)V", 0), new d(m32Var));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void setDescriptionInfo(Spanned spanned) {
        spanned.getClass();
        ItemAdmitadNewDescriptionBinding itemAdmitadNewDescriptionBinding = n().layoutDescription;
        itemAdmitadNewDescriptionBinding.tvDescription.setMovementMethod(LinkMovementMethod.getInstance());
        itemAdmitadNewDescriptionBinding.tvDescription.setText(spanned);
        itemAdmitadNewDescriptionBinding.getRoot().setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void setFloatingButtonVisibility(boolean z) {
        LoadingButton loadingButton = n().btnGoShop;
        loadingButton.getClass();
        loadingButton.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void setHotItemsInfo(List<yw3> list) {
        list.getClass();
        n().layoutPopularProducts.getRoot().setVisibility(0);
        eu1 eu1Var = this.l;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void setStepsInfo(String str, List<la8> list) {
        str.getClass();
        list.getClass();
        ItemAdmitadGetCashbackDescriptionBinding itemAdmitadGetCashbackDescriptionBinding = n().layoutGetCashbackInfo;
        itemAdmitadGetCashbackDescriptionBinding.tvAdmitadGetCashbackTitle.setText(str);
        itemAdmitadGetCashbackDescriptionBinding.getRoot().setVisibility(0);
        eu1 eu1Var = this.k;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // defpackage.js7
    public final void shareCard(String str, String str2, String str3, String str4) {
        m2.e(str, str2, str3, str4);
        os7 os7Var = this.i;
        if (os7Var != null) {
            String string = getString(R.string.bonuses_dynamic_link_description, str3);
            string.getClass();
            f(os7Var.a(str, str2, string, str4, new i()), "ShareCard");
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void showActionButtonLoading(boolean z) {
        n().layoutTitle.btnCopyCode.setLoading(z);
        n().btnGoShop.setLoading(z);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void showBarCode(String str) {
        str.getClass();
        LayoutBarcodeBinding layoutBarcodeBinding = n().layoutTitle.viewBarcode;
        ImageView imageView = layoutBarcodeBinding.ivBarcode;
        Bitmap bitmapCreateBitmap = null;
        try {
            qi0 qi0VarA = tm1.a(str, qc0.CODE_128);
            bitmapCreateBitmap = Bitmap.createBitmap(300, 50, Bitmap.Config.RGB_565);
            for (int i2 = 0; i2 < 300; i2++) {
                for (int i3 = 0; i3 < 50; i3++) {
                    bitmapCreateBitmap.getClass();
                    bitmapCreateBitmap.setPixel(i2, i3, qi0VarA.c(i2, i3) ? -16777216 : -1);
                }
            }
        } catch (WriterException e2) {
            e2.printStackTrace();
        }
        imageView.setImageBitmap(bitmapCreateBitmap);
        layoutBarcodeBinding.tvBarcode.setText(str);
        layoutBarcodeBinding.getRoot().setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void showFavoriteStatus(boolean z) {
        n().viewToolbar.btnFave.setSelected(z);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void showFavoriteStatusIsChanged(boolean z, boolean z2) {
        Context context = getContext();
        if (context != null) {
            if (z2) {
                new AddedToFavesDialog(context, z).show();
            } else {
                new RemovedFromFavesDialog(context, z).show();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x004a  */
    /* JADX WARN: Code duplicated, block: B:22:? A[RETURN, SYNTHETIC] */
    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void showImageCode(String str, String str2) {
        str.getClass();
        ImageView imageView = n().layoutTitle.ivImageCode;
        imageView.setVisibility(0);
        p37 p37VarE = com.bumptech.glide.a.e(imageView);
        s37 s37Var = new s37();
        ld2 ld2Var = ld2.PREFER_ARGB_8888;
        r96.b(ld2Var);
        s37 s37VarW = s37Var.w(vq2.f, ld2Var).w(dq3.a, ld2Var);
        synchronized (p37VarE) {
            synchronized (p37VarE) {
                p37VarE.k = p37VarE.k.b(s37VarW);
            }
            p37VarE.h(str).P(qs2.h()).L(imageView);
            if (str2 != null) {
                imageView.setOnClickListener(new lb7(new j(imageView, str2)));
            }
        }
        p37VarE.h(str).P(qs2.h()).L(imageView);
        if (str2 != null) {
            imageView.setOnClickListener(new lb7(new j(imageView, str2)));
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void showLoading(boolean z) {
        FragmentCouponNewBinding fragmentCouponNewBindingN = n();
        ConstraintLayout constraintLayout = fragmentCouponNewBindingN.allBlocks;
        constraintLayout.getClass();
        constraintLayout.setVisibility(!z ? 0 : 8);
        FrameLayout root = fragmentCouponNewBindingN.viewLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void showLoadingDialog(boolean z) {
        LoadingDialog loadingDialog = this.j;
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        if (z) {
            LoadingDialog loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
            m(loadingDialogB);
            this.j = loadingDialogB;
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void showPromocode(String str) {
        str.getClass();
        LinearLayout root = n().layoutTitle.layoutPromocode.getRoot();
        root.getClass();
        root.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void showPromocodeCopied(String str, String str2) {
        str.getClass();
        ItemCouponPromocodeBinding itemCouponPromocodeBinding = n().layoutTitle.layoutPromocode;
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(200L);
        alphaAnimation.setRepeatCount(1);
        alphaAnimation.setRepeatMode(2);
        alphaAnimation.setAnimationListener(new k(str, str2, itemCouponPromocodeBinding));
        itemCouponPromocodeBinding.tvPromocode.startAnimation(alphaAnimation);
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void showQrCode(String str) {
        str.getClass();
        ImageView imageView = n().layoutTitle.ivQrCode;
        imageView.setVisibility(0);
        imageView.setImageBitmap(fv6.a(200, str));
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void showRedirectDialog(sy8 sy8Var, String str, String str2) {
        sy8Var.getClass();
        str.getClass();
        str2.getClass();
        Context context = getContext();
        if (context != null) {
            new RedirectDialog(context, sy8Var, str, str2).show();
        }
    }

    @Override // com.warefly.checkscan.presentation.bonuses.couponPage.view.CouponNewView
    public final void showRequestInfoError() {
        View view = getView();
        if (view != null) {
            oz1.g(R.string.error_coupon_promocode_request, view);
        }
    }
}

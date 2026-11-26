package com.warefly.checkscan.presentation.addScreenshots.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.navigation.NavArgsLazy;
import com.bumptech.glide.load.engine.GlideException;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.SafeImageView;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.core.ui.base.dialogs.LoadingDialog;
import com.warefly.checkscan.databinding.FragmentAddScreenshotsBinding;
import com.warefly.checkscan.presentation.addScreenshots.bottomSheet.HelpLoadScreenshotBottomSheet;
import com.warefly.checkscan.presentation.addScreenshots.presenter.AddScreenshotsPresenter;
import defpackage.a9;
import defpackage.aa4;
import defpackage.b9;
import defpackage.bs6;
import defpackage.c9;
import defpackage.d9;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.h37;
import defpackage.hy1;
import defpackage.j59;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.o2;
import defpackage.o37;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.p51;
import defpackage.pl2;
import defpackage.uf3;
import defpackage.w65;
import defpackage.wk8;
import defpackage.x07;
import defpackage.y82;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class AddScreenshotsFragment extends BaseFragment<FragmentAddScreenshotsBinding> implements AddScreenshotsView {
    public static final /* synthetic */ ze4<Object>[] n;
    public final int f = R.layout.fragment_add_screenshots;
    public final ol4 g = new ol4(FragmentAddScreenshotsBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(d9.class), new j());
    public final fh8 i = new fh8(new i());
    public final ActivityResultLauncher<String> j;
    public final ActivityResultLauncher<String> k;
    public HelpLoadScreenshotBottomSheet l;
    public LoadingDialog m;
    public AddScreenshotsPresenter presenter;

    public static final class a extends gh4 implements nl3<View, j59> {
        public a() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AddScreenshotsFragment.this.o().onBackClick();
            return j59.a;
        }
    }

    public static final class b extends gh4 implements nl3<View, j59> {
        public b() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AddScreenshotsFragment.this.o().onLoadBankScreenshotClick();
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
            AddScreenshotsFragment.this.o().onLoadShopScreenshotClick();
            return j59.a;
        }
    }

    public static final class d extends gh4 implements nl3<View, j59> {
        public d() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AddScreenshotsFragment.this.o().onLoadBankScreenshotClick();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<View, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            AddScreenshotsFragment.this.o().onLoadShopScreenshotClick();
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
            AddScreenshotsFragment.this.o().onHelpScreenshotClick();
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
            AddScreenshotsFragment.this.o().uploadScreenshots();
            return j59.a;
        }
    }

    public static final class h<T> implements o37 {
        public final /* synthetic */ FragmentAddScreenshotsBinding b;

        public h(FragmentAddScreenshotsBinding fragmentAddScreenshotsBinding) {
            this.b = fragmentAddScreenshotsBinding;
        }

        @Override // defpackage.o37
        public final boolean onLoadFailed(GlideException glideException, Object obj, wk8<T> wk8Var, boolean z) {
            return false;
        }

        @Override // defpackage.o37
        public final boolean onResourceReady(Object obj, Object obj2, wk8 wk8Var, y82 y82Var, boolean z) {
            Drawable drawable = (Drawable) obj;
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            ze4<Object>[] ze4VarArr = AddScreenshotsFragment.n;
            float fFloatValue = ((Number) AddScreenshotsFragment.this.i.getValue()).floatValue() / intrinsicWidth;
            float f = fFloatValue > 1.0f ? intrinsicHeight : intrinsicHeight * fFloatValue;
            SafeImageView safeImageView = this.b.ivShopScreenshot;
            safeImageView.getClass();
            ViewGroup.LayoutParams layoutParams = safeImageView.getLayoutParams();
            if (layoutParams == null) {
                o2.d("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                return false;
            }
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
            ((ViewGroup.MarginLayoutParams) layoutParams2).height = w65.b(f);
            safeImageView.setLayoutParams(layoutParams2);
            safeImageView.setImageDrawableWithCache(drawable);
            return false;
        }
    }

    public static final class i extends gh4 implements ll3<Float> {
        public i() {
            super(0);
        }

        @Override // defpackage.ll3
        public final Float invoke() {
            return Float.valueOf(AddScreenshotsFragment.this.getResources().getDisplayMetrics().widthPixels - pl2.e(24));
        }
    }

    public static final class j implements ll3<Bundle> {
        public j() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            AddScreenshotsFragment addScreenshotsFragment = AddScreenshotsFragment.this;
            Bundle arguments = addScreenshotsFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(addScreenshotsFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(AddScreenshotsFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/FragmentAddScreenshotsBinding;", 0);
        x07.a.getClass();
        n = new ze4[]{bs6Var};
    }

    public AddScreenshotsFragment() {
        ActivityResultLauncher<String> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.GetContent(), new a9(this, 0));
        activityResultLauncherRegisterForActivityResult.getClass();
        this.j = activityResultLauncherRegisterForActivityResult;
        ActivityResultLauncher<String> activityResultLauncherRegisterForActivityResult2 = registerForActivityResult(new ActivityResultContracts.GetContent(), new b9(this, 0));
        activityResultLauncherRegisterForActivityResult2.getClass();
        this.k = activityResultLauncherRegisterForActivityResult2;
    }

    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public final void getBankScreenshot() {
        this.j.launch("image/*");
    }

    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public final void getShopScreenshot() {
        this.k.launch("image/*");
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public final void isUploadButtonVisible(boolean z) {
        AppCompatTextView appCompatTextView = n().btnUpload;
        appCompatTextView.getClass();
        appCompatTextView.setVisibility(z ? 0 : 8);
    }

    public final FragmentAddScreenshotsBinding n() {
        return (FragmentAddScreenshotsBinding) this.g.getValue(this, n[0]);
    }

    public final AddScreenshotsPresenter o() {
        AddScreenshotsPresenter addScreenshotsPresenter = this.presenter;
        if (addScreenshotsPresenter != null) {
            return addScreenshotsPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentAddScreenshotsBinding fragmentAddScreenshotsBindingN = n();
        fragmentAddScreenshotsBindingN.toolbar.tvHeader.setText(getString(R.string.add_screenshots_toolbar_title));
        ImageView imageView = fragmentAddScreenshotsBindingN.toolbar.btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new a()));
        AppCompatTextView appCompatTextView = fragmentAddScreenshotsBindingN.btnLoadScreenshotBank;
        appCompatTextView.getClass();
        appCompatTextView.setOnClickListener(new lb7(new b()));
        AppCompatTextView appCompatTextView2 = fragmentAddScreenshotsBindingN.btnLoadScreenshotShop;
        appCompatTextView2.getClass();
        appCompatTextView2.setOnClickListener(new lb7(new c()));
        AppCompatTextView appCompatTextView3 = fragmentAddScreenshotsBindingN.btnScreenshotBank;
        appCompatTextView3.getClass();
        appCompatTextView3.setOnClickListener(new lb7(new d()));
        AppCompatTextView appCompatTextView4 = fragmentAddScreenshotsBindingN.btnScreenshotShop;
        appCompatTextView4.getClass();
        appCompatTextView4.setOnClickListener(new lb7(new e()));
        AppCompatTextView appCompatTextView5 = fragmentAddScreenshotsBindingN.tvHelpScreenshots;
        appCompatTextView5.getClass();
        appCompatTextView5.setOnClickListener(new lb7(new f()));
        AppCompatTextView appCompatTextView6 = fragmentAddScreenshotsBindingN.btnUpload;
        appCompatTextView6.getClass();
        appCompatTextView6.setOnClickListener(new lb7(new g()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AddScreenshotsPresenter providePresenter() {
        return new AddScreenshotsPresenter((p51) m2.c(p51.class, defpackage.e.e(this), null, null), (hy1) m2.c(hy1.class, defpackage.e.e(this), null, null), (uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), ((d9) this.h.getValue()).a);
    }

    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public final void replaceLoadBankButton(String str) {
        str.getClass();
        FragmentAddScreenshotsBinding fragmentAddScreenshotsBindingN = n();
        fragmentAddScreenshotsBindingN.btnLoadScreenshotBank.setVisibility(8);
        AppCompatTextView appCompatTextView = fragmentAddScreenshotsBindingN.btnScreenshotBank;
        appCompatTextView.setText(str);
        appCompatTextView.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public final void replaceLoadShopButton(String str, Uri uri) {
        str.getClass();
        uri.getClass();
        FragmentAddScreenshotsBinding fragmentAddScreenshotsBindingN = n();
        fragmentAddScreenshotsBindingN.ivShopScreenshot.setImageDrawable(null);
        fragmentAddScreenshotsBindingN.btnLoadScreenshotShop.setVisibility(8);
        AppCompatTextView appCompatTextView = fragmentAddScreenshotsBindingN.btnScreenshotShop;
        appCompatTextView.setText(str);
        appCompatTextView.setVisibility(0);
        h37 h37VarA = com.bumptech.glide.a.e(fragmentAddScreenshotsBindingN.ivShopScreenshot).a(Drawable.class);
        h37 h37VarN = h37VarA.N(uri);
        if ("android.resource".equals(uri.getScheme())) {
            h37VarN = h37VarA.H(h37VarN);
        }
        h37VarN.F(new h(fragmentAddScreenshotsBindingN)).O();
    }

    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public final void showBankDescription(String str, String str2) {
        str.getClass();
        str2.getClass();
        FragmentAddScreenshotsBinding fragmentAddScreenshotsBindingN = n();
        fragmentAddScreenshotsBindingN.tvScreenshotBankTitle.setText(str);
        fragmentAddScreenshotsBindingN.tvScreenshotBankDescription.setText(str2);
    }

    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public final void showHelpScreenshotDialog(long j2) {
        Context context;
        HelpLoadScreenshotBottomSheet helpLoadScreenshotBottomSheet = this.l;
        if ((helpLoadScreenshotBottomSheet == null || !helpLoadScreenshotBottomSheet.isShowing()) && (context = getContext()) != null) {
            HelpLoadScreenshotBottomSheet helpLoadScreenshotBottomSheet2 = new HelpLoadScreenshotBottomSheet(context, j2);
            helpLoadScreenshotBottomSheet2.show();
            this.l = helpLoadScreenshotBottomSheet2;
        }
    }

    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public final void showLoading(boolean z) {
        LoadingDialog loadingDialog = this.m;
        if (!z) {
            if (loadingDialog != null) {
                loadingDialog.dismiss();
                return;
            }
            return;
        }
        if (loadingDialog != null) {
            loadingDialog.dismiss();
        }
        if (getContext() != null) {
            LoadingDialog loadingDialogB = LoadingDialog.a.b(LoadingDialog.d);
            m(loadingDialogB);
            this.m = loadingDialogB;
        }
    }

    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public final void showShopDescription(String str, String str2) {
        str.getClass();
        str2.getClass();
        FragmentAddScreenshotsBinding fragmentAddScreenshotsBindingN = n();
        fragmentAddScreenshotsBindingN.tvScreenshotShopTitle.setText(str);
        fragmentAddScreenshotsBindingN.tvScreenshotShopDescription.setText(str2);
    }

    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public final void showShopExampleImage(String str) {
        str.getClass();
        n().ivShopScreenshot.setImageDrawable(null);
        com.bumptech.glide.a.e(n().ivShopScreenshot).h(str).L(n().ivShopScreenshot);
    }

    @Override // com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView
    public final void showSomeError() {
        View view = getView();
        if (view != null) {
            oz1.d(R.string.some_error, view);
        }
    }
}

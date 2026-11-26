package com.warefly.checkscan.presentation.scanner.view;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.PickVisualMediaRequest;
import androidx.activity.result.PickVisualMediaRequestKt;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraInfo;
import androidx.camera.view.PreviewView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.navigation.NavArgsLazy;
import androidx.recyclerview.widget.RecyclerView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.component.logger.CrashlyticsException;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter;
import com.warefly.checkscan.presentation.scanner.view.ScannerFragment;
import com.warefly.checkscan.scannerml.databinding.FragmentScannerNewBinding;
import com.warefly.checkscan.scannerml.databinding.ItemChequeWithCountBinding;
import defpackage.aa4;
import defpackage.av6;
import defpackage.bm3;
import defpackage.bs6;
import defpackage.c9;
import defpackage.eu1;
import defpackage.fh8;
import defpackage.g86;
import defpackage.gh4;
import defpackage.i13;
import defpackage.ic8;
import defpackage.j59;
import defpackage.jf6;
import defpackage.kh1;
import defpackage.la3;
import defpackage.lb5;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n2;
import defpackage.nl3;
import defpackage.oh1;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.ph1;
import defpackage.qw3;
import defpackage.r7;
import defpackage.s0;
import defpackage.s47;
import defpackage.u11;
import defpackage.uf3;
import defpackage.vd7;
import defpackage.x07;
import defpackage.yg1;
import defpackage.ym2;
import defpackage.ze4;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes5.dex */
public final class ScannerFragment extends BaseFragment<FragmentScannerNewBinding> implements ScannerView {
    public static final /* synthetic */ ze4<Object>[] o;
    public final int f = R.layout.fragment_scanner_new;
    public final ol4 g = new ol4(FragmentScannerNewBinding.class);
    public final NavArgsLazy h = new NavArgsLazy(x07.a(vd7.class), new q());
    public final fh8 i = new fh8(new a());
    public final fh8 j = new fh8(new b());
    public u11 k;
    public g86 l;
    public final ActivityResultLauncher<String> m;
    public eu1 n;
    public ScannerPresenter presenter;

    public static final class a extends gh4 implements ll3<Integer> {
        public a() {
            super(0);
        }

        @Override // defpackage.ll3
        public final Integer invoke() {
            return Integer.valueOf(ContextCompat.getColor(ScannerFragment.this.requireContext(), R.color.colorAccent));
        }
    }

    public static final class b extends gh4 implements ll3<Integer> {
        public b() {
            super(0);
        }

        @Override // defpackage.ll3
        public final Integer invoke() {
            return Integer.valueOf(ContextCompat.getColor(ScannerFragment.this.requireContext(), R.color.white));
        }
    }

    public static final class c extends gh4 implements bm3<String, Bundle, j59> {
        public c() {
            super(2);
        }

        @Override // defpackage.bm3
        public final j59 invoke(String str, Bundle bundle) {
            str.getClass();
            bundle.getClass();
            ScannerFragment scannerFragment = ScannerFragment.this;
            scannerFragment.o().onGalleryClick();
            FragmentKt.clearFragmentResult(scannerFragment, "SCANNER_ONBOARDING_GALLERY_REQUEST_KEY");
            return j59.a;
        }
    }

    public static final class d extends gh4 implements ll3<LifecycleOwner> {
        public d() {
            super(0);
        }

        @Override // defpackage.ll3
        public final LifecycleOwner invoke() {
            return ScannerFragment.this;
        }
    }

    public static final class e extends gh4 implements ll3<LifecycleOwner> {
        public e() {
            super(0);
        }

        @Override // defpackage.ll3
        public final LifecycleOwner invoke() {
            ScannerFragment scannerFragment = ScannerFragment.this;
            if (scannerFragment.getView() != null) {
                return scannerFragment.getViewLifecycleOwner();
            }
            return null;
        }
    }

    public static final class f extends gh4 implements ll3<j59> {
        public f() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            ze4<Object>[] ze4VarArr = ScannerFragment.o;
            ScannerFragment.this.m.launch("android.permission.CAMERA");
            return j59.a;
        }
    }

    public static final class g extends gh4 implements nl3<Integer, j59> {
        public final /* synthetic */ FragmentScannerNewBinding f;
        public final /* synthetic */ ScannerFragment g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(ScannerFragment scannerFragment, FragmentScannerNewBinding fragmentScannerNewBinding) {
            super(1);
            this.f = fragmentScannerNewBinding;
            this.g = scannerFragment;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Integer num) {
            int iIntValue;
            int iIntValue2 = num.intValue();
            ImageView imageView = this.f.ivFlash;
            ScannerFragment scannerFragment = this.g;
            if (iIntValue2 == 1) {
                ze4<Object>[] ze4VarArr = ScannerFragment.o;
                iIntValue = ((Number) scannerFragment.i.getValue()).intValue();
            } else {
                ze4<Object>[] ze4VarArr2 = ScannerFragment.o;
                iIntValue = ((Number) scannerFragment.j.getValue()).intValue();
            }
            imageView.setColorFilter(iIntValue);
            return j59.a;
        }
    }

    public static final class h extends gh4 implements nl3<Throwable, j59> {
        public static final h f = new h(1);

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            Throwable th2 = th;
            th2.getClass();
            s0.d(new CrashlyticsException.CameraUnavailable("Camera unavailable: ".concat("Could not instantiate camera, reason: ".concat(i13.a(th2)))));
            return j59.a;
        }
    }

    public static final class i implements View.OnLayoutChangeListener {
        public final /* synthetic */ FragmentScannerNewBinding c;

        public i(FragmentScannerNewBinding fragmentScannerNewBinding) {
            this.c = fragmentScannerNewBinding;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            view.removeOnLayoutChangeListener(this);
            FragmentScannerNewBinding fragmentScannerNewBinding = this.c;
            PreviewView previewView = fragmentScannerNewBinding.viewPreview;
            ScannerFragment scannerFragment = ScannerFragment.this;
            ScannerPresenter scannerPresenterO = scannerFragment.o();
            la3 la3Var = (la3) m2.c(la3.class, defpackage.e.e(scannerFragment), null, null);
            lb5 lb5Var = (lb5) m2.c(lb5.class, defpackage.e.e(scannerFragment), null, null);
            ImageView imageView = fragmentScannerNewBinding.ivScannerFrame;
            previewView.getClass();
            d dVar = scannerFragment.new d();
            e eVar = scannerFragment.new e();
            f fVar = scannerFragment.new f();
            g gVar = new g(scannerFragment, fragmentScannerNewBinding);
            imageView.getClass();
            scannerFragment.k = new u11(previewView, dVar, eVar, fVar, gVar, scannerPresenterO, lb5Var, la3Var, imageView, h.f);
        }
    }

    public static final class j extends gh4 implements nl3<View, j59> {
        public j() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ScannerFragment.this.o().onExitClicked();
            return j59.a;
        }
    }

    public static final class k extends gh4 implements nl3<View, j59> {
        public k() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ScannerFragment.this.o().onInfoClicked();
            return j59.a;
        }
    }

    public static final class l extends gh4 implements nl3<View, j59> {
        public l() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ScannerFragment.this.o().onGalleryClick();
            return j59.a;
        }
    }

    public static final class m extends gh4 implements nl3<View, j59> {
        public m() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ScannerFragment.this.o().onManualQrClicked();
            return j59.a;
        }
    }

    public static final class n extends gh4 implements nl3<View, j59> {
        public n() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ScannerFragment.this.o().onMainButtonClick();
            return j59.a;
        }
    }

    public static final class o extends gh4 implements nl3<View, j59> {
        public o() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ScannerFragment.this.o().onChequeClick();
            return j59.a;
        }
    }

    public static final class p extends gh4 implements nl3<View, j59> {
        public p() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            ScannerFragment.this.o().onBrandlinkClick();
            return j59.a;
        }
    }

    public static final class q implements ll3<Bundle> {
        public q() {
        }

        @Override // defpackage.ll3
        public final Bundle invoke() {
            ScannerFragment scannerFragment = ScannerFragment.this;
            Bundle arguments = scannerFragment.getArguments();
            if (arguments != null) {
                return arguments;
            }
            c9.g(scannerFragment, "Fragment ", " has null arguments");
            return null;
        }
    }

    static {
        bs6 bs6Var = new bs6(ScannerFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;", 0);
        x07.a.getClass();
        o = new ze4[]{bs6Var};
    }

    public ScannerFragment() {
        ActivityResultLauncher<String> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestPermission(), new ym2(this));
        activityResultLauncherRegisterForActivityResult.getClass();
        this.m = activityResultLauncherRegisterForActivityResult;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final void e(View view) {
        final int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.margin_sm);
        final int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.margin_sm);
        ViewCompat.setOnApplyWindowInsetsListener(view, new OnApplyWindowInsetsListener() { // from class: ud7
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                ze4<Object>[] ze4VarArr = ScannerFragment.o;
                Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
                ScannerFragment scannerFragment = this.b;
                scannerFragment.n().glTop.setGuidelineBegin(dimensionPixelSize + insets.top);
                ImageView imageView = scannerFragment.n().ivGallery;
                imageView.getClass();
                ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
                if (layoutParams == null) {
                    o2.d("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                    return null;
                }
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                marginLayoutParams.bottomMargin = dimensionPixelSize2 + insets.bottom;
                imageView.setLayoutParams(marginLayoutParams);
                return WindowInsetsCompat.CONSUMED;
            }
        });
        ViewCompat.requestApplyInsets(view);
    }

    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public final void handleChequesListVisible(boolean z) {
        RecyclerView recyclerView = n().rvContent;
        recyclerView.getClass();
        recyclerView.setVisibility(z ? 0 : 8);
        FrameLayout root = n().tvChequeInfo.getRoot();
        root.getClass();
        root.setVisibility(z ? 8 : 0);
    }

    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public final void handleErrorMessage(boolean z) {
        AppCompatTextView root = n().messageError.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public final void handleMessageVisibility(boolean z) {
        AppCompatTextView root = n().message.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    public final FragmentScannerNewBinding n() {
        return (FragmentScannerNewBinding) this.g.getValue(this, o[0]);
    }

    public final ScannerPresenter o() {
        ScannerPresenter scannerPresenter = this.presenter;
        if (scannerPresenter != null) {
            return scannerPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.l = new g86(requireActivity().getActivityResultRegistry(), this, (av6) m2.c(av6.class, defpackage.e.e(this), null, null), o());
        Lifecycle lifecycle = getLifecycle();
        g86 g86Var = this.l;
        if (g86Var != null) {
            lifecycle.addObserver(g86Var);
        } else {
            aa4.j("pickGalleryPictureBehavior");
            throw null;
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, defpackage.fh5, androidx.fragment.app.Fragment
    public final void onDestroy() {
        ExecutorService executorService;
        u11 u11Var = this.k;
        if (u11Var != null && (executorService = u11Var.k) != null) {
            executorService.shutdown();
        }
        this.k = null;
        super.onDestroy();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentKt.setFragmentResultListener(this, "SCANNER_ONBOARDING_GALLERY_REQUEST_KEY", new c());
        FragmentScannerNewBinding fragmentScannerNewBindingN = n();
        PreviewView previewView = fragmentScannerNewBindingN.viewPreview;
        previewView.getClass();
        if (!previewView.isLaidOut() || previewView.isLayoutRequested()) {
            previewView.addOnLayoutChangeListener(new i(fragmentScannerNewBindingN));
        } else {
            PreviewView previewView2 = fragmentScannerNewBindingN.viewPreview;
            ScannerPresenter scannerPresenterO = o();
            la3 la3Var = (la3) m2.c(la3.class, defpackage.e.e(this), null, null);
            lb5 lb5Var = (lb5) m2.c(lb5.class, defpackage.e.e(this), null, null);
            ImageView imageView = fragmentScannerNewBindingN.ivScannerFrame;
            previewView2.getClass();
            d dVar = new d();
            e eVar = new e();
            f fVar = new f();
            g gVar = new g(this, fragmentScannerNewBindingN);
            imageView.getClass();
            this.k = new u11(previewView2, dVar, eVar, fVar, gVar, scannerPresenterO, lb5Var, la3Var, imageView, h.f);
        }
        ImageView imageView2 = fragmentScannerNewBindingN.ivClose;
        imageView2.getClass();
        imageView2.setOnClickListener(new lb7(new j()));
        ImageView imageView3 = fragmentScannerNewBindingN.ivInfo;
        imageView3.getClass();
        imageView3.setOnClickListener(new lb7(new k()));
        ImageView imageView4 = fragmentScannerNewBindingN.ivGallery;
        imageView4.getClass();
        imageView4.setOnClickListener(new lb7(new l()));
        AppCompatTextView appCompatTextView = fragmentScannerNewBindingN.btnManual;
        appCompatTextView.getClass();
        appCompatTextView.setOnClickListener(new lb7(new m()));
        fragmentScannerNewBindingN.ivFlash.setOnClickListener(new View.OnClickListener() { // from class: td7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                Camera camera;
                CameraInfo cameraInfo;
                LiveData<Integer> torchState;
                Integer value;
                Camera camera2;
                CameraControl cameraControl;
                u11 u11Var = this.b.k;
                if (u11Var == null || (camera = u11Var.l) == null || (cameraInfo = camera.getCameraInfo()) == null || (torchState = cameraInfo.getTorchState()) == null || (value = torchState.getValue()) == null || (camera2 = u11Var.l) == null || (cameraControl = camera2.getCameraControl()) == null) {
                    return;
                }
                cameraControl.enableTorch(value.intValue() != 1);
            }
        });
        AppCompatTextView appCompatTextView2 = fragmentScannerNewBindingN.btnLoad;
        appCompatTextView2.getClass();
        appCompatTextView2.setOnClickListener(new lb7(new n()));
        FrameLayout root = fragmentScannerNewBindingN.tvChequeInfo.getRoot();
        root.getClass();
        root.setOnClickListener(new lb7(new o()));
        ImageView imageView5 = fragmentScannerNewBindingN.ivBrandlink;
        imageView5.getClass();
        imageView5.setOnClickListener(new lb7(new p()));
        RecyclerView recyclerView = n().rvContent;
        eu1 eu1Var = new eu1(new ph1(oh1.c, 0));
        this.n = eu1Var;
        recyclerView.setAdapter(eu1Var);
        recyclerView.addItemDecoration(new qw3(0, 8));
    }

    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public final void openGallery() {
        g86 g86Var = this.l;
        if (g86Var == null) {
            aa4.j("pickGalleryPictureBehavior");
            throw null;
        }
        try {
            ActivityResultLauncher<PickVisualMediaRequest> activityResultLauncher = g86Var.f;
            if (activityResultLauncher == null) {
                aa4.j("pickFromGallery");
                throw null;
            }
            activityResultLauncher.launch(PickVisualMediaRequestKt.PickVisualMediaRequest(ActivityResultContracts.PickVisualMedia.ImageOnly.INSTANCE));
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ScannerPresenter providePresenter() {
        return new ScannerPresenter((uf3) n2.c(uf3.class, defpackage.e.e(this), j(), null), (s47) m2.c(s47.class, defpackage.e.e(this), null, null), (jf6) m2.c(jf6.class, defpackage.e.e(this), null, null), (yg1) m2.c(yg1.class, defpackage.e.e(this), null, null), (vd7) this.h.getValue(), (ic8) m2.c(ic8.class, defpackage.e.e(this), null, null));
    }

    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public final void setCheques(List<kh1> list) {
        list.getClass();
        eu1 eu1Var = this.n;
        if (eu1Var != null) {
            eu1Var.submitList(list);
        }
    }

    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public final void setLoadButtonText(String str) {
        str.getClass();
        n().btnLoad.setText(str);
    }

    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public final void showBrandlinkButton() {
        n().ivBrandlink.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public final void showCropError() {
        View view = getView();
        if (view != null) {
            oz1.d(R.string.title_error_crop_image, view);
        }
    }

    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public final void showLastChequeInfo(String str, int i2) {
        str.getClass();
        ItemChequeWithCountBinding itemChequeWithCountBinding = n().tvChequeInfo;
        itemChequeWithCountBinding.tvTitle.setVisibility(0);
        itemChequeWithCountBinding.tvCount.setText(String.valueOf(i2));
        itemChequeWithCountBinding.tvCount.setVisibility(0);
        itemChequeWithCountBinding.tvTitle.setText(str);
    }

    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public final void showLoadButton() {
        n().btnLoad.setVisibility(0);
    }

    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public final void vibrate() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            r7.a(activity, 50L);
        }
    }

    @Override // com.warefly.checkscan.presentation.scanner.view.ScannerView
    public final void showLastChequeInfo(String str) {
        str.getClass();
        ItemChequeWithCountBinding itemChequeWithCountBinding = n().tvChequeInfo;
        itemChequeWithCountBinding.tvTitle.setVisibility(0);
        itemChequeWithCountBinding.tvCount.setVisibility(8);
        itemChequeWithCountBinding.tvTitle.setText(str);
    }
}

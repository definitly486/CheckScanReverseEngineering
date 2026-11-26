package defpackage;

import android.content.Context;
import android.util.Size;
import android.view.Display;
import android.view.View;
import android.widget.Toast;
import androidx.camera.core.Camera;
import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.Preview;
import androidx.camera.core.resolutionselector.AspectRatioStrategy;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.camera.core.resolutionselector.ResolutionStrategy;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.camera.view.PreviewView;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;
import com.google.common.util.concurrent.ListenableFuture;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter;
import com.warefly.checkscan.presentation.scanner.view.ScannerFragment;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final class u11 {
    public final PreviewView a;
    public final ScannerFragment.d b;
    public final ScannerFragment.e c;
    public final ScannerFragment.f d;
    public final ScannerFragment.g e;
    public final ScannerPresenter f;
    public final lb5 g;
    public final la3 h;
    public final View i;
    public final nl3<Throwable, j59> j;
    public ExecutorService k;
    public Camera l;

    public static final class a implements Observer, mm3 {
        public final /* synthetic */ t11 b;

        public a(t11 t11Var) {
            this.b = t11Var;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof Observer) && (obj instanceof mm3)) {
                return this.b == ((mm3) obj).getFunctionDelegate();
            }
            return false;
        }

        @Override // defpackage.mm3
        public final cm3<?> getFunctionDelegate() {
            return this.b;
        }

        public final int hashCode() {
            return this.b.hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.b.invoke(obj);
        }
    }

    public u11(PreviewView previewView, ScannerFragment.d dVar, ScannerFragment.e eVar, ScannerFragment.f fVar, ScannerFragment.g gVar, ScannerPresenter scannerPresenter, lb5 lb5Var, la3 la3Var, View view, nl3 nl3Var) {
        previewView.getClass();
        view.getClass();
        nl3Var.getClass();
        this.a = previewView;
        this.b = dVar;
        this.c = eVar;
        this.d = fVar;
        this.e = gVar;
        this.f = scannerPresenter;
        this.g = lb5Var;
        this.h = la3Var;
        this.i = view;
        this.j = nl3Var;
        b();
    }

    public final void a(ImageAnalysis imageAnalysis) {
        PreviewView previewView = this.a;
        Context context = previewView.getContext();
        context.getClass();
        ImageAnalysis.Analyzer analyzerA = this.g.a(context, this.f, this.h);
        if (analyzerA == null) {
            Toast.makeText(previewView.getContext(), previewView.getContext().getString(R.string.scanner_analyze_error), 0).show();
            return;
        }
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        this.k = executorServiceNewSingleThreadExecutor;
        imageAnalysis.setAnalyzer(executorServiceNewSingleThreadExecutor, analyzerA);
    }

    public final void b() {
        PreviewView previewView = this.a;
        Context context = previewView.getContext();
        context.getClass();
        if (ContextCompat.checkSelfPermission(context, "android.permission.CAMERA") != 0) {
            this.d.invoke();
            return;
        }
        try {
            ff7.a aVar = ff7.a;
            Context context2 = previewView.getContext();
            context2.getClass();
            Size sizeA = ff7.a.a(context2);
            int width = sizeA.getWidth();
            int height = sizeA.getHeight();
            double dMax = ((double) Math.max(width, height)) / ((double) Math.min(width, height));
            final int i = Math.abs(dMax - 1.3333333333333333d) <= Math.abs(dMax - 1.7777777777777777d) ? 0 : 1;
            Display display = previewView.getDisplay();
            final int rotation = display != null ? display.getRotation() : 0;
            ProcessCameraProvider.Companion companion = ProcessCameraProvider.Companion;
            Context context3 = previewView.getContext();
            context3.getClass();
            final ListenableFuture<ProcessCameraProvider> companion2 = companion.getInstance(context3);
            companion2.addListener(new Runnable() { // from class: s11
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public final void run() {
                    int i2 = i;
                    int i3 = rotation;
                    ListenableFuture listenableFuture = companion2;
                    u11 u11Var = this;
                    PreviewView previewView2 = u11Var.a;
                    try {
                        Preview.Builder builder = new Preview.Builder();
                        ResolutionSelector.Builder builder2 = new ResolutionSelector.Builder();
                        ResolutionStrategy resolutionStrategy = ResolutionStrategy.HIGHEST_AVAILABLE_STRATEGY;
                        Preview previewBuild = builder.setResolutionSelector(builder2.setResolutionStrategy(resolutionStrategy).setAspectRatioStrategy(new AspectRatioStrategy(i2, 1)).build()).setTargetRotation(i3).build();
                        V v = listenableFuture.get();
                        v.getClass();
                        ProcessCameraProvider processCameraProvider = (ProcessCameraProvider) v;
                        processCameraProvider.unbindAll();
                        CameraSelector cameraSelectorBuild = new CameraSelector.Builder().requireLensFacing(1).build();
                        ImageAnalysis.Builder targetRotation = new ImageAnalysis.Builder().setResolutionSelector(new ResolutionSelector.Builder().setResolutionStrategy(resolutionStrategy).setAspectRatioStrategy(new AspectRatioStrategy(i2, 1)).build()).setTargetRotation(i3);
                        int i4 = 0;
                        ImageAnalysis imageAnalysisBuild = targetRotation.setBackpressureStrategy(0).build();
                        imageAnalysisBuild.getClass();
                        u11Var.a(imageAnalysisBuild);
                        ScannerFragment scannerFragment = ScannerFragment.this;
                        cameraSelectorBuild.getClass();
                        Camera cameraBindToLifecycle = processCameraProvider.bindToLifecycle(scannerFragment, cameraSelectorBuild, previewBuild, imageAnalysisBuild);
                        LifecycleOwner lifecycleOwner = (LifecycleOwner) u11Var.c.invoke();
                        if (lifecycleOwner != null) {
                            cameraBindToLifecycle.getCameraInfo().getTorchState().observe(lifecycleOwner, new u11.a(new t11(u11Var, i4)));
                        }
                        CameraControl cameraControl = cameraBindToLifecycle.getCameraControl();
                        cameraControl.getClass();
                        previewView2.getViewTreeObserver().addOnGlobalLayoutListener(new x11(previewView2, u11Var, cameraControl));
                        CameraControl cameraControl2 = cameraBindToLifecycle.getCameraControl();
                        cameraControl2.getClass();
                        previewView2.getViewTreeObserver().addOnGlobalLayoutListener(new v11(previewView2, previewView2, u11Var, cameraControl2));
                        u11Var.l = cameraBindToLifecycle;
                        previewBuild.setSurfaceProvider(previewView2.getSurfaceProvider());
                    } catch (Throwable th) {
                        u11Var.j.invoke(th);
                        Toast.makeText(previewView2.getContext(), "Не удается получить доступ к камере", 1).show();
                    }
                }
            }, ContextCompat.getMainExecutor(previewView.getContext()));
        } catch (Throwable th) {
            this.j.invoke(th);
            Toast.makeText(previewView.getContext(), "Не удается получить доступ к камере", 1).show();
        }
    }
}

package defpackage;

import android.content.Intent;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.PickVisualMediaRequest;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter;
import com.warefly.checkscan.presentation.scanner.view.ScannerFragment;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class g86 implements DefaultLifecycleObserver {
    public final ActivityResultRegistry b;
    public final ScannerFragment c;
    public final av6 d;
    public final ScannerPresenter e;
    public ActivityResultLauncher<PickVisualMediaRequest> f;
    public ActivityResultLauncher<Intent> g;

    /* JADX INFO: loaded from: classes5.dex */
    public interface a {
        void onCropError();

        void onQrCodesDetectedOnCroppedImage(hd3<? extends List<String>> hd3Var);
    }

    public g86(ActivityResultRegistry activityResultRegistry, ScannerFragment scannerFragment, av6 av6Var, ScannerPresenter scannerPresenter) {
        activityResultRegistry.getClass();
        this.b = activityResultRegistry;
        this.c = scannerFragment;
        this.d = av6Var;
        this.e = scannerPresenter;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onCreate(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
        super.onCreate(lifecycleOwner);
        ActivityResultContracts.PickVisualMedia pickVisualMedia = new ActivityResultContracts.PickVisualMedia();
        int i = 3;
        vq vqVar = new vq(this, i);
        ActivityResultRegistry activityResultRegistry = this.b;
        ActivityResultLauncher<PickVisualMediaRequest> activityResultLauncherRegister = activityResultRegistry.register("PICK_FROM_GALLERY", lifecycleOwner, pickVisualMedia, vqVar);
        activityResultLauncherRegister.getClass();
        this.f = activityResultLauncherRegister;
        ActivityResultLauncher<Intent> activityResultLauncherRegister2 = activityResultRegistry.register("START_UCROP_FOR_RESULT", lifecycleOwner, new ActivityResultContracts.StartActivityForResult(), new wq(this, i));
        activityResultLauncherRegister2.getClass();
        this.g = activityResultLauncherRegister2;
    }
}

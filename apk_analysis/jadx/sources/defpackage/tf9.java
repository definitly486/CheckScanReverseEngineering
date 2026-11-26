package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.webkit.ValueCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class tf9 {
    public final UniversalWebViewFragment a;
    public final UniversalWebViewFragment.d b;
    public ValueCallback<Uri[]> c;
    public Uri d;
    public final ActivityResultLauncher<Intent> e;

    public tf9(UniversalWebViewFragment universalWebViewFragment, UniversalWebViewFragment.d dVar) {
        this.a = universalWebViewFragment;
        this.b = dVar;
        ActivityResultLauncher<Intent> activityResultLauncherRegisterForActivityResult = universalWebViewFragment.registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new o61(this));
        activityResultLauncherRegisterForActivityResult.getClass();
        this.e = activityResultLauncherRegisterForActivityResult;
    }
}

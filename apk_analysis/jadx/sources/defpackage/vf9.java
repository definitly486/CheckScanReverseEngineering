package defpackage;

import android.content.Context;
import android.webkit.GeolocationPermissions;
import android.webkit.PermissionRequest;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.core.content.ContextCompat;
import com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewFragment;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class vf9 {
    public static final String[] f = {"android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"};
    public final UniversalWebViewFragment a;
    public PermissionRequest b;
    public String c;
    public GeolocationPermissions.Callback d;
    public final ActivityResultLauncher<String[]> e;

    public vf9(UniversalWebViewFragment universalWebViewFragment) {
        this.a = universalWebViewFragment;
        ActivityResultLauncher<String[]> activityResultLauncherRegisterForActivityResult = universalWebViewFragment.registerForActivityResult(new ActivityResultContracts.RequestMultiplePermissions(), new q3(this, 5));
        activityResultLauncherRegisterForActivityResult.getClass();
        this.e = activityResultLauncherRegisterForActivityResult;
    }

    public final void a(PermissionRequest permissionRequest) {
        String[] resources = permissionRequest.getResources();
        resources.getClass();
        ArrayList arrayList = new ArrayList();
        for (String str : resources) {
            str.getClass();
            String str2 = aa4.e(str, "android.webkit.resource.VIDEO_CAPTURE") ? "android.permission.CAMERA" : aa4.e(str, "android.webkit.resource.AUDIO_CAPTURE") ? "android.permission.RECORD_AUDIO" : null;
            if (str2 == null || c(str2)) {
                arrayList.add(str);
            }
        }
        try {
            if (arrayList.isEmpty()) {
                permissionRequest.deny();
            } else {
                permissionRequest.grant((String[]) arrayList.toArray(new String[0]));
            }
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
    }

    public final void b(String str, GeolocationPermissions.Callback callback) {
        boolean z;
        try {
            String[] strArr = f;
            for (int i = 0; i < 2; i++) {
                if (c(strArr[i])) {
                    z = true;
                    callback.invoke(str, z, false);
                    j59 j59Var = j59.a;
                }
            }
            z = false;
            callback.invoke(str, z, false);
            j59 j59Var2 = j59.a;
        } catch (Throwable unused) {
        }
    }

    public final boolean c(String str) {
        Context context = this.a.getContext();
        return context != null && ContextCompat.checkSelfPermission(context, str) == 0;
    }
}

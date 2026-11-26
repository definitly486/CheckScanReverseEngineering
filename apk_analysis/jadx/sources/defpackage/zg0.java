package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.util.DisplayMetrics;
import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.SheetState;
import androidx.compose.ui.unit.Density;
import androidx.paging.LivePagedList;
import androidx.webkit.UserAgentMetadata;
import com.google.firebase.sessions.ProcessDataManagerImpl;
import java.util.LinkedHashMap;
import yads.gf0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zg0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ zg0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:49:0x015a  */
    @Override // defpackage.ll3
    public final Object invoke() {
        String str;
        boolean z;
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Long.valueOf(((SelectionRegistrar) obj).nextSelectableId());
            case 1:
                return LivePagedList.callback$lambda$0((LivePagedList) obj);
            case 2:
                ua6 ua6Var = (ua6) obj;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Context context = ua6Var.a;
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                displayMetrics.getClass();
                linkedHashMap.put("$screen_density", Float.valueOf(displayMetrics.density));
                linkedHashMap.put("$screen_height", Integer.valueOf((int) (displayMetrics.heightPixels / displayMetrics.density)));
                linkedHashMap.put("$screen_width", Integer.valueOf((int) (displayMetrics.widthPixels / displayMetrics.density)));
                PackageInfo packageInfoB = za6.b(context, ua6Var.b);
                if (packageInfoB != null) {
                    String str2 = packageInfoB.versionName;
                    if (str2 != null) {
                        linkedHashMap.put("$app_version", str2);
                    }
                    linkedHashMap.put("$app_namespace", packageInfoB.packageName);
                    linkedHashMap.put("$app_build", Long.valueOf(za6.f(packageInfoB)));
                }
                linkedHashMap.put("$app_name", context.getApplicationInfo().loadLabel(context.getPackageManager()));
                String str3 = Build.MANUFACTURER;
                linkedHashMap.put("$device_manufacturer", str3);
                String str4 = Build.MODEL;
                linkedHashMap.put("$device_model", str4);
                String str5 = Build.DEVICE;
                linkedHashMap.put("$device_name", str5);
                String strA = wm2.a(context);
                if (strA == null) {
                    strA = UserAgentMetadata.FORM_FACTOR_MOBILE;
                }
                linkedHashMap.put("$device_type", strA);
                linkedHashMap.put("$os_name", "Android");
                linkedHashMap.put("$os_version", Build.VERSION.RELEASE);
                String str6 = Build.BRAND;
                str6.getClass();
                if (ra8.C(str6, "generic", false)) {
                    str5.getClass();
                    if (!ra8.C(str5, "generic", false)) {
                        str = Build.FINGERPRINT;
                        str.getClass();
                        if (ra8.C(str, "generic", false) && !ra8.C(str, "unknown", false)) {
                            String str7 = Build.HARDWARE;
                            str7.getClass();
                            if (!ta8.D(str7, "goldfish", false) && !ta8.D(str7, "ranchu", false)) {
                                str4.getClass();
                                if (!ta8.D(str4, "google_sdk", false) && !ta8.D(str4, "Emulator", false) && !ta8.D(str4, "Android SDK built for x86", false)) {
                                    str3.getClass();
                                    if (!ta8.D(str3, "Genymotion", false)) {
                                        String str8 = Build.PRODUCT;
                                        str8.getClass();
                                        z = ta8.D(str8, "sdk", false) || ta8.D(str8, "vbox86p", false) || ta8.D(str8, "emulator", false) || ta8.D(str8, "simulator", false);
                                    }
                                }
                            }
                        }
                    }
                } else {
                    str = Build.FINGERPRINT;
                    str.getClass();
                    if (ra8.C(str, "generic", false)) {
                    }
                }
                linkedHashMap.put("$is_emulator", Boolean.valueOf(z));
                return linkedHashMap;
            case 3:
                return ProcessDataManagerImpl.myProcessDetails_delegate$lambda$2((ProcessDataManagerImpl) obj);
            case 4:
                return Float.valueOf(ProgressIndicatorKt.CircularProgressIndicator_IyT6zlY$lambda$22$lambda$21((ll3) obj));
            case 5:
                return Float.valueOf(SheetState.Companion.Saver$lambda$5((Density) obj));
            default:
                return gf0.a((gf0) obj);
        }
    }
}

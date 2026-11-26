package yads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import defpackage.u96;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class cu4 {
    public static final List a = u96.i("android.permission.ACCESS_NETWORK_STATE", "android.permission.INTERNET");

    public static void a(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096);
            ArrayList arrayListV0 = defpackage.qn1.v0(a);
            String[] strArr = packageInfo.requestedPermissions;
            if (strArr != null) {
                arrayListV0.removeAll(yr.h0(strArr));
                if (arrayListV0.isEmpty()) {
                } else {
                    throw new vm3(String.format("Please, check %s permission in AndroidManifest file.", Arrays.copyOf(new Object[]{arrayListV0}, 1)));
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }
}

package yads;

import android.os.Build;
import com.yandex.mobile.ads.common.AdActivity;
import defpackage.k57;

/* JADX INFO: loaded from: classes6.dex */
public abstract class lq4 {
    public static iq4 a(AdActivity adActivity, d2 d2Var) {
        Object aVar;
        try {
            aVar = Build.VERSION.SDK_INT >= 33 ? new kq4(adActivity, d2Var) : new jq4();
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) != null) {
            aVar = new jq4();
        }
        return (iq4) aVar;
    }
}

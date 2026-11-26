package defpackage;

import android.util.Log;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzaix;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.tasks.OnFailureListener;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class p72 implements rxa, OnFailureListener {
    public static final ba8 c = new ba8("default_ok_http");
    public static final ba8 d = new ba8("authorized_retrofit");
    public static final ba8 e = new ba8("bonuses_retrofit");
    public static final ba8 f = new ba8("plain_retrofit");
    public static final ba8 g = new ba8("AUTHORISED_DISPOSABLES");
    public static final ba8 h = new ba8("DISPATCHER_IO");
    public static final ba8 i = new ba8("extra_interceptors");
    public static final /* synthetic */ p72 j = new p72(1);
    public static final /* synthetic */ p72 k = new p72(2);
    public final /* synthetic */ int b;

    public /* synthetic */ p72(int i2) {
        this.b = i2;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        Log.e("OptionalModuleUtils", "Failed to check feature availability", exc);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 1:
                List list = zzfy.a;
                return Long.valueOf(zzags.zzS());
            default:
                List list2 = zzfy.a;
                return Boolean.valueOf(zzaix.zza());
        }
    }
}

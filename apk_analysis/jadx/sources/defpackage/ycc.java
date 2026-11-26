package defpackage;

import android.os.Bundle;
import com.google.android.gms.cloudmessaging.zzt;

/* JADX INFO: loaded from: classes4.dex */
public final class ycc extends udc {
    @Override // defpackage.udc
    public final boolean a() {
        return true;
    }

    @Override // defpackage.udc
    public final void b(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            c(null);
        } else {
            d(new zzt("Invalid response to one way request", null));
        }
    }
}

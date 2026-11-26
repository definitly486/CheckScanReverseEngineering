package defpackage;

import android.os.Bundle;

/* JADX INFO: loaded from: classes4.dex */
public final class tec extends udc {
    @Override // defpackage.udc
    public final boolean a() {
        return false;
    }

    @Override // defpackage.udc
    public final void b(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        c(bundle2);
    }
}

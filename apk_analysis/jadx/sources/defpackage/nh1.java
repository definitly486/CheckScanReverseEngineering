package defpackage;

import android.net.Uri;
import com.warefly.checkscan.presentation.Deeplink;

/* JADX INFO: loaded from: classes5.dex */
public final class nh1 implements he2 {
    @Override // defpackage.he2
    public final Deeplink a(Uri uri) {
        uri.getClass();
        return Deeplink.Desktop.Cheques.c;
    }

    @Override // defpackage.he2
    public final String b() {
        return null;
    }

    @Override // defpackage.he2
    public final String c() {
        return "receipts_list";
    }
}

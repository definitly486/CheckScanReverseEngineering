package defpackage;

import android.net.Uri;
import com.warefly.checkscan.presentation.Deeplink;

/* JADX INFO: loaded from: classes5.dex */
public final class tn3 implements he2 {
    public final jf6 a;

    public tn3(jf6 jf6Var) {
        this.a = jf6Var;
    }

    @Override // defpackage.he2
    public final Deeplink a(Uri uri) {
        uri.getClass();
        if (this.a.Q0()) {
            return new Deeplink.Desktop.Games(uri.getBooleanQueryParameter("play", false));
        }
        return null;
    }

    @Override // defpackage.he2
    public final String b() {
        return null;
    }

    @Override // defpackage.he2
    public final String c() {
        return "games-tab";
    }
}

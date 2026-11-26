package yads;

import android.net.Uri;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class cs3 {
    public final pz a;

    public cs3(pz pzVar) {
        this.a = pzVar;
    }

    public final boolean a(View view, String str) {
        Uri uri = Uri.parse(str);
        if (!defpackage.aa4.e(uri.getScheme(), "light-bundles") || !defpackage.aa4.e(uri.getHost(), "click")) {
            return false;
        }
        String queryParameter = uri.getQueryParameter("assetName");
        if (queryParameter == null && (queryParameter = uri.getQueryParameter("asset")) == null) {
            return false;
        }
        this.a.a(view, queryParameter);
        return true;
    }
}

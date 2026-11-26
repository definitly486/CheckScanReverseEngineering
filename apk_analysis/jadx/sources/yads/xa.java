package yads;

import android.content.Context;
import android.net.Uri;

/* JADX INFO: loaded from: classes6.dex */
public final class xa implements t46 {
    public final mn2 a = new mn2();

    @Override // yads.t46
    public final String a(e4 e4Var) {
        String str = e4Var.b.a.e;
        if (str == null || str.length() <= 0) {
            return null;
        }
        return Uri.parse(str).buildUpon().appendEncodedPath("v4/ad").build().toString();
    }

    @Override // yads.t46
    public final String a(Context context, e4 e4Var, qi5 qi5Var) {
        return this.a.a(context, new uw2(tw2.a(context, e4Var, qi5Var)).toString());
    }

    @Override // yads.t46
    public final s46 a() {
        return s46.AD;
    }
}

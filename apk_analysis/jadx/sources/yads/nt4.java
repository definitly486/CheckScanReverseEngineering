package yads;

import android.content.Context;
import android.net.Uri;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class nt4 implements t46 {
    public final o54 a;
    public final mn2 b;

    public nt4(o54 o54Var) {
        mn2 mn2Var = new mn2();
        this.a = o54Var;
        this.b = mn2Var;
    }

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
        Map map = this.a.c;
        sw2 sw2VarA = tw2.a(context, e4Var, qi5Var);
        if (map != null) {
            sw2VarA.n.putAll(map);
        }
        return this.b.a(context, new uw2(sw2VarA).toString());
    }

    @Override // yads.t46
    public final s46 a() {
        return s46.PASSBACK;
    }
}

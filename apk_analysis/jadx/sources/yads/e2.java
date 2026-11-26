package yads;

import android.content.Intent;
import android.view.Window;
import android.widget.RelativeLayout;
import com.yandex.mobile.ads.common.AdActivity;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e2 {
    public static n2 a(AdActivity adActivity, RelativeLayout relativeLayout, i2 i2Var, f2 f2Var) {
        h9 h9Var;
        o2 o2Var;
        Window window = adActivity.getWindow();
        n2 n2VarA = null;
        if (f2Var != null) {
            try {
                h9Var = f2Var.c;
            } catch (Exception unused) {
                h9Var = null;
            }
        } else {
            h9Var = null;
        }
        x2 x2Var = new x2(adActivity, h9Var);
        q2 q2VarA = q2.b.a();
        synchronized (q2VarA) {
            try {
                Intent intent = adActivity.getIntent();
                String stringExtra = intent != null ? intent.getStringExtra("window_type") : null;
                if (stringExtra != null && (o2Var = (o2) q2VarA.a.get(stringExtra)) != null) {
                    n2VarA = o2Var.a(adActivity, relativeLayout, x2Var, i2Var, window, f2Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return n2VarA;
    }
}

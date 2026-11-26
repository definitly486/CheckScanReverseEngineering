package yads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;

/* JADX INFO: loaded from: classes6.dex */
public final class c66 {
    public static final String c = "The Yandex Mobile Ads SDK needs to be updated to the latest version. Details in the logs";
    public final Handler a = new Handler(Looper.getMainLooper());
    public final Context b;

    public c66(Context context) {
        this.b = context.getApplicationContext();
    }

    public static final void a(c66 c66Var) {
        Toast.makeText(c66Var.b, c, 1).show();
    }

    public final void a() {
        this.a.post(new defpackage.eb3(this, 2));
    }
}

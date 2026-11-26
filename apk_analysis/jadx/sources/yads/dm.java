package yads;

import android.content.Context;
import android.os.Handler;

/* JADX INFO: loaded from: classes6.dex */
public final class dm {
    public final Context a;
    public final bm b;
    public boolean c;

    public dm(Context context, Handler handler, cm cmVar) {
        this.a = context.getApplicationContext();
        this.b = new bm(this, handler, cmVar);
    }
}

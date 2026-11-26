package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class ej0 {
    public final Context a;

    public ej0(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext != null ? applicationContext : context;
    }
}

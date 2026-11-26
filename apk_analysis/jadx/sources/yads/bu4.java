package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class bu4 {
    public final Context a;

    public bu4(Context context) {
        this.a = context.getApplicationContext();
    }

    public final boolean a(String str) {
        try {
            return this.a.checkCallingOrSelfPermission(str) == 0;
        } catch (Throwable unused) {
            return false;
        }
    }
}

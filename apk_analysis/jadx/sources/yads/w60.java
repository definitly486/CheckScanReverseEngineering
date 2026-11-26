package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public abstract class w60 {
    public static final Context a(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    public static final yq4 b(Context context) {
        int i = context.getResources().getConfiguration().orientation;
        if (i != 1) {
            return i != 2 ? yq4.e : yq4.c;
        }
        return yq4.d;
    }
}

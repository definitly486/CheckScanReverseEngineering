package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public final class hfa {
    public final SharedPreferences a;

    public hfa(Context context, g gVar) {
        this.a = context.getSharedPreferences("install_referrer_fsa_sp", 0);
    }
}

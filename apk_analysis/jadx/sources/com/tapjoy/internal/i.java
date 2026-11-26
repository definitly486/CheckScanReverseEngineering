package com.tapjoy.internal;

import android.app.Application;
import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
public abstract class i {
    public static Context a;
    public static int b;
    public static final v2 c = new v2();

    public static synchronized void a(Context context) {
        if (context instanceof Application) {
            a = context;
        } else {
            a = context.getApplicationContext();
        }
    }
}

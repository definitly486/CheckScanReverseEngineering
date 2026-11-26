package com.tapjoy.internal;

import android.content.Context;
import com.tapjoy.TJPlacement;
import com.tapjoy.TapjoyConnectCore;

/* JADX INFO: loaded from: classes4.dex */
public abstract class v0 {
    public volatile u0 a;

    public abstract TJPlacement a(Context context, u0 u0Var);

    public final void a(u0 u0Var) {
        synchronized (this) {
            try {
                if (this.a == u0Var) {
                    this.a = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract String b();

    public final void c() {
        u0 u0Var;
        if (a()) {
            synchronized (this) {
                try {
                    if (this.a == null) {
                        u0Var = new u0(this);
                        this.a = u0Var;
                    } else {
                        u0Var = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (u0Var != null) {
                u0Var.a();
            }
        }
    }

    public boolean a() {
        return !TapjoyConnectCore.getInstance().isViewOpen();
    }
}

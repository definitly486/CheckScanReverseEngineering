package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.model.ScreenInfo;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.pj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1184pj implements InterfaceC1060l {
    public Cif a;
    public ScreenInfo b;
    public boolean c;
    public boolean d;
    public final C1158oj e = new C1158oj();
    public WeakReference f = new WeakReference(null);

    public final synchronized ScreenInfo a(Context context) {
        try {
            if (!this.d) {
                Cif cifB = this.a;
                if (cifB == null) {
                    cifB = C1169p4.l().b(context);
                    this.a = cifB;
                }
                cifB.getClass();
                this.b = cifB.p();
                Cif cifB2 = this.a;
                if (cifB2 == null) {
                    cifB2 = C1169p4.l().b(context);
                    this.a = cifB2;
                }
                cifB2.getClass();
                this.c = cifB2.t();
                this.d = true;
            }
            b((Context) this.f.get());
            if (this.b == null) {
                if (!AndroidUtils.isApiAchieved(30)) {
                    b(context);
                } else if (!this.c) {
                    b(context);
                    this.c = true;
                    Cif cifB3 = this.a;
                    if (cifB3 == null) {
                        cifB3 = C1169p4.l().b(context);
                        this.a = cifB3;
                    }
                    cifB3.getClass();
                    cifB3.v();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.b;
    }

    public final void b(Context context) {
        if (context != null) {
            this.e.getClass();
            ScreenInfo screenInfoA = C1158oj.a(context);
            if (screenInfoA == null || screenInfoA.equals(this.b)) {
                return;
            }
            this.b = screenInfoA;
            Cif cifB = this.a;
            if (cifB == null) {
                cifB = C1169p4.l().b(context);
                this.a = cifB;
            }
            cifB.getClass();
            cifB.a(this.b);
        }
    }

    public final synchronized void a(Activity activity) {
        try {
            this.f = new WeakReference(activity);
            if (!this.d) {
                Cif cifB = this.a;
                if (cifB == null) {
                    cifB = C1169p4.l().b(activity);
                    this.a = cifB;
                }
                cifB.getClass();
                this.b = cifB.p();
                Cif cifB2 = this.a;
                if (cifB2 == null) {
                    cifB2 = C1169p4.l().b(activity);
                    this.a = cifB2;
                }
                cifB2.getClass();
                this.c = cifB2.t();
                this.d = true;
            }
            if (this.b == null) {
                b(activity);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void a(Cif cif) {
        this.a = cif;
    }
}

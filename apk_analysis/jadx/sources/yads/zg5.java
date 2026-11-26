package yads;

import android.content.Context;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class zg5 {
    public static final Object k = new Object();
    public static volatile zg5 l;
    public volatile fe5 a;
    public Boolean b;
    public Boolean c;
    public boolean d;
    public boolean e;
    public boolean f;
    public boolean g = true;
    public boolean h = true;
    public Integer j;

    public final fe5 a(Context context) {
        fe5 fe5VarA;
        fe5 fe5Var = this.a;
        if (fe5Var != null) {
            return fe5Var;
        }
        synchronized (k) {
            fe5VarA = this.a;
            if (fe5VarA == null) {
                fe5VarA = q50.a(context).a();
                this.a = fe5VarA;
            }
        }
        return fe5VarA;
    }

    public final boolean b() {
        boolean z;
        synchronized (k) {
            z = this.d;
        }
        return z;
    }

    public final Boolean c() {
        Boolean bool;
        synchronized (k) {
            bool = this.c;
        }
        return bool;
    }

    public final boolean d() {
        boolean z;
        synchronized (k) {
            z = this.f;
        }
        return z;
    }

    public final Boolean e() {
        Boolean bool;
        synchronized (k) {
            bool = this.b;
        }
        return bool;
    }

    public final fb a() {
        synchronized (k) {
        }
        return null;
    }

    public final void a(Context context, fe5 fe5Var) {
        synchronized (k) {
            this.a = fe5Var;
            q50.a(context).a(fe5Var);
            j59 j59Var = j59.a;
        }
    }
}

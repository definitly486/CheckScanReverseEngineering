package yads;

import android.content.SharedPreferences;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public final class w10 {
    public static final Object i = new Object();
    public final x10 a;
    public final y10 b;
    public String c;
    public String d;
    public boolean e;
    public String f;
    public String g;
    public String h;

    public w10(x10 x10Var, y10 y10Var, zu3 zu3Var) {
        this.a = x10Var;
        this.b = y10Var;
        for (s10 s10Var : s10.values()) {
            this.b.getClass();
            av3 av3Var = (av3) zu3Var;
            f20 f20VarA = null;
            s10 s10Var2 = av3Var.a(s10Var.c) ? s10Var : null;
            f20 f20VarA2 = s10Var2 != null ? y10.a(av3Var, s10Var2) : null;
            if (f20VarA2 == null) {
                this.a.getClass();
                String str = s10Var.b;
                s10Var = (str == null || !av3Var.a(str)) ? null : s10Var;
                if (s10Var != null) {
                    f20VarA = x10.a(zu3Var, s10Var);
                }
            } else {
                f20VarA = f20VarA2;
            }
            a(f20VarA);
        }
        av3 av3Var2 = (av3) zu3Var;
        if (av3Var2.e.isEmpty()) {
            ((SharedPreferences) av3Var2.d.getValue()).registerOnSharedPreferenceChangeListener(av3Var2);
        }
        av3Var2.e.add(new WeakReference(this));
    }

    public final void a(f20 f20Var) {
        if (f20Var instanceof a20) {
            this.e = ((a20) f20Var).a;
            return;
        }
        if (f20Var instanceof b20) {
            this.c = ((b20) f20Var).a;
            return;
        }
        if (f20Var instanceof c20) {
            this.d = ((c20) f20Var).a;
            return;
        }
        if (f20Var instanceof d20) {
            this.f = ((d20) f20Var).a;
        } else if (f20Var instanceof e20) {
            this.g = ((e20) f20Var).a;
        } else if (f20Var instanceof z10) {
            this.h = ((z10) f20Var).a;
        }
    }

    public final String b() {
        String str;
        synchronized (i) {
            str = this.c;
        }
        return str;
    }

    public final String c() {
        String str;
        synchronized (i) {
            str = this.d;
        }
        return str;
    }

    public final String d() {
        String str;
        synchronized (i) {
            str = this.f;
        }
        return str;
    }

    public final String e() {
        String str;
        synchronized (i) {
            str = this.g;
        }
        return str;
    }

    public final boolean a() {
        boolean z;
        synchronized (i) {
            z = this.e;
        }
        return z;
    }
}

package yads;

import android.content.Context;
import android.content.SharedPreferences;
import defpackage.fh8;
import defpackage.j59;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class av3 implements zu3, SharedPreferences.OnSharedPreferenceChangeListener {
    public final String a;
    public final bk5 b;
    public final Context c;
    public final defpackage.cl4 d;
    public final LinkedHashSet e;

    public av3(Context context, String str, bk5 bk5Var) {
        this.a = str;
        this.b = bk5Var;
        Context applicationContext = context.getApplicationContext();
        this.c = applicationContext != null ? applicationContext : context;
        this.d = new fh8(new defpackage.m31(this, 2));
        this.e = new LinkedHashSet();
    }

    public final int a(int i, String str) {
        ((SharedPreferences) this.d.getValue()).contains(str);
        return ((SharedPreferences) this.d.getValue()).getInt(str, i);
    }

    public final void b(String str, boolean z) {
        ((SharedPreferences) this.d.getValue()).edit().putBoolean(str, z).apply();
    }

    public final String c(String str) {
        return ((SharedPreferences) this.d.getValue()).getString(str, null);
    }

    public final void d(String str) {
        ((SharedPreferences) this.d.getValue()).edit().remove(str).apply();
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        s10 s10Var;
        s10 s10Var2;
        if (str != null) {
            Iterator it = this.e.iterator();
            while (it.hasNext()) {
                w10 w10Var = (w10) ((WeakReference) it.next()).get();
                if (w10Var != null) {
                    synchronized (w10.i) {
                        try {
                            w10Var.b.getClass();
                            f20 f20VarA = null;
                            String str2 = a(str) ? str : null;
                            int i = 0;
                            if (str2 == null) {
                                s10Var = null;
                                break;
                            }
                            s10.d.getClass();
                            s10[] s10VarArrValues = s10.values();
                            int length = s10VarArrValues.length;
                            int i2 = 0;
                            while (true) {
                                if (i2 >= length) {
                                    s10Var = null;
                                    break;
                                }
                                s10Var = s10VarArrValues[i2];
                                if (defpackage.aa4.e(s10Var.c, str2)) {
                                    break;
                                } else {
                                    i2++;
                                }
                            }
                            f20 f20VarA2 = s10Var != null ? y10.a(this, s10Var) : null;
                            if (f20VarA2 == null) {
                                w10Var.a.getClass();
                                String str3 = a(str) ? str : null;
                                if (str3 == null) {
                                    s10Var2 = null;
                                    break;
                                }
                                s10.d.getClass();
                                s10[] s10VarArrValues2 = s10.values();
                                int length2 = s10VarArrValues2.length;
                                while (true) {
                                    if (i >= length2) {
                                        s10Var2 = null;
                                        break;
                                    }
                                    s10Var2 = s10VarArrValues2[i];
                                    if (defpackage.aa4.e(s10Var2.b, str3)) {
                                        break;
                                    } else {
                                        i++;
                                    }
                                }
                                if (s10Var2 != null) {
                                    f20VarA = x10.a(this, s10Var2);
                                }
                            } else {
                                f20VarA = f20VarA2;
                            }
                            if (f20VarA != null) {
                                w10Var.a(f20VarA);
                            }
                            j59 j59Var = j59.a;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
        }
    }

    public final long b(String str) {
        return ((SharedPreferences) this.d.getValue()).getLong(str, 0L);
    }

    public final void b(int i, String str) {
        ((SharedPreferences) this.d.getValue()).edit().putInt(str, i).apply();
    }

    public final boolean a(String str) {
        return ((SharedPreferences) this.d.getValue()).contains(str);
    }

    public final boolean a(String str, boolean z) {
        return ((SharedPreferences) this.d.getValue()).getBoolean(str, z);
    }

    public final void a() {
        ((SharedPreferences) this.d.getValue()).edit().clear().apply();
    }

    public final Set a(String str, Set set) {
        return ((SharedPreferences) this.d.getValue()).getStringSet(str, set);
    }

    public final void a(String str, long j) {
        ((SharedPreferences) this.d.getValue()).edit().putLong(str, j).apply();
    }

    public final void a(String str, String str2) {
        ((SharedPreferences) this.d.getValue()).edit().putString(str, str2).apply();
    }

    public final void a(String str, HashSet hashSet) {
        ((SharedPreferences) this.d.getValue()).edit().putStringSet(str, hashSet).apply();
    }

    public /* synthetic */ av3(Context context, String str) {
        this(context, str, new bk5());
    }

    public static final SharedPreferences a(av3 av3Var) {
        return bk5.a(av3Var.c, av3Var.a, av3Var.b);
    }
}

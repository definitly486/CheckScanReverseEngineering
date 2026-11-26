package yads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import defpackage.j59;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class uu4 extends BroadcastReceiver {
    public static final su4 h = new su4();
    public static volatile uu4 i;
    public final Context a;
    public final zg5 b;
    public final qu4 c;
    public final pu4 d;
    public final WeakHashMap e;
    public final Object f;
    public ou4 g;

    public uu4(Context context, defpackage.y22 y22Var) {
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        qu4 qu4Var = new qu4(context);
        pu4 pu4Var = new pu4();
        this.a = context;
        this.b = zg5Var2;
        this.c = qu4Var;
        this.d = pu4Var;
        this.e = new WeakHashMap();
        this.f = new Object();
        this.g = ou4.USER_PRESENT;
        defpackage.av0.c(y22Var, null, null, new ru4(this, null), 3);
    }

    public static final void c(uu4 uu4Var) {
        uu4Var.getClass();
        try {
            uu4Var.d.getClass();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            int i2 = Build.VERSION.SDK_INT;
            Context context = uu4Var.a;
            if (i2 >= 33) {
                context.registerReceiver(uu4Var, intentFilter, 2);
            } else {
                context.registerReceiver(uu4Var, intentFilter);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x001f A[Catch: all -> 0x001d, TRY_LEAVE, TryCatch #0 {all -> 0x001d, blocks: (B:6:0x000e, B:8:0x0012, B:10:0x0018, B:15:0x001f), top: B:23:0x000e }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0026  */
    public final boolean a() {
        boolean z;
        fe5 fe5VarA = this.b.a(this.a);
        synchronized (this.f) {
            z = true;
            if (fe5VarA != null) {
                try {
                    if (fe5VarA.h) {
                        ou4 ou4Var = this.g;
                        if (ou4Var != ou4.SCREEN_ON && ou4Var != ou4.USER_PRESENT) {
                            z = false;
                        }
                    } else if (this.g != ou4.USER_PRESENT) {
                        z = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } else if (this.g != ou4.USER_PRESENT) {
                z = false;
            }
        }
        return z;
    }

    public final void b(tu4 tu4Var) {
        synchronized (this.f) {
            this.e.remove(tu4Var);
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        ou4 ou4Var;
        boolean z;
        ou4 ou4Var2;
        HashSet hashSet;
        synchronized (this.f) {
            try {
                ou4 ou4Var3 = this.g;
                String action = intent.getAction();
                if (defpackage.aa4.e(action, "android.intent.action.SCREEN_OFF")) {
                    ou4Var = ou4.SCREEN_OFF;
                } else if (defpackage.aa4.e(action, "android.intent.action.USER_PRESENT")) {
                    ou4Var = ou4.USER_PRESENT;
                } else {
                    ou4Var = (this.g == ou4.USER_PRESENT || !defpackage.aa4.e(action, "android.intent.action.SCREEN_ON")) ? this.g : ou4.SCREEN_ON;
                }
                this.g = ou4Var;
                z = ou4Var3 != ou4Var;
                if (z) {
                    Objects.toString(ou4Var);
                }
                ou4Var2 = this.g;
                hashSet = new HashSet(this.e.keySet());
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ((tu4) it.next()).a(ou4Var2);
            }
        }
    }

    public final void a(tu4 tu4Var) {
        synchronized (this.f) {
            this.e.put(tu4Var, null);
            j59 j59Var = j59.a;
        }
    }
}

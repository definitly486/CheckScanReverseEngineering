package yads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class i06 extends Handler {
    public final io4 a;

    public i06(io4 io4Var) {
        super(Looper.getMainLooper());
        this.a = io4Var;
    }

    public final void a(a16 a16Var, hc4 hc4Var, g66 g66Var) {
        long jElapsedRealtime;
        Long l = a16Var.e;
        if (l != null) {
            jElapsedRealtime = l.longValue();
        } else {
            jElapsedRealtime = SystemClock.elapsedRealtime();
            a16Var.e = Long.valueOf(jElapsedRealtime);
        }
        if (SystemClock.elapsedRealtime() - jElapsedRealtime >= a16Var.b) {
            sendMessage(Message.obtain(this, 1, new h06(new WeakReference(hc4Var), a16Var, g66Var)));
        }
        if (!hc4Var.n) {
            hc4Var.n = true;
            we3 we3Var = hc4Var.m;
            if (we3Var != null) {
                we3Var.c();
            }
        }
        this.a.a(a16Var.d, g66Var);
    }

    public final void b() {
        removeMessages(2);
        removeMessages(1);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        i16 i16Var;
        int i = message.what;
        if (i != 1) {
            if (i != 2) {
                return;
            }
            Object obj = message.obj;
            obj.getClass();
            hc4 hc4Var = (hc4) ((WeakReference) obj).get();
            if (hc4Var != null) {
                List<a16> listT0 = defpackage.qn1.t0(hc4Var.p);
                listT0.size();
                int i2 = Integer.MIN_VALUE;
                for (a16 a16Var : listT0) {
                    if (a16Var.c > i2) {
                        i66 i66VarB = hc4Var.b(a16Var);
                        if (i66VarB instanceof g66) {
                            i2 = a16Var.c;
                            a(a16Var, hc4Var, (g66) i66VarB);
                        } else if (i66VarB instanceof f66) {
                            a16Var.e = null;
                            this.a.a(a16Var.d, (f66) i66VarB);
                        }
                    } else {
                        a(a16Var, hc4Var, new g66());
                    }
                }
                if (listT0.isEmpty()) {
                    return;
                }
                sendMessageDelayed(Message.obtain(this, 2, new WeakReference(hc4Var)), 200L);
                return;
            }
            return;
        }
        Object obj2 = message.obj;
        obj2.getClass();
        h06 h06Var = (h06) obj2;
        hc4 hc4Var2 = (hc4) h06Var.a.get();
        if (hc4Var2 != null) {
            a16 a16Var2 = h06Var.b;
            int iOrdinal = a16Var2.d.ordinal();
            if (iOrdinal == 0) {
                i16Var = i16.IMPRESSION;
            } else if (iOrdinal == 1) {
                i16Var = i16.DSP_IMPRESSION;
            } else {
                if (iOrdinal != 2) {
                    defpackage.me0.e();
                    return;
                }
                i16Var = i16.UNKNOWN;
            }
            ea.a(hc4Var2.h, a16Var2.a, i16Var, hc4Var2.l.a(hc4Var2.b, hc4Var2.c), 4);
            hc4Var2.p.remove(a16Var2);
            if (!hc4Var2.o && hc4Var2.p.isEmpty()) {
                hc4Var2.o = true;
                we3 we3Var = hc4Var2.m;
                if (we3Var != null) {
                    we3Var.g();
                }
            }
            io4 io4Var = this.a;
            dk5 dk5Var = h06Var.b.d;
            List listT1 = defpackage.qn1.t0(hc4Var2.p);
            ArrayList arrayList = new ArrayList(defpackage.kn1.q(listT1, 10));
            Iterator it = listT1.iterator();
            while (it.hasNext()) {
                arrayList.add(((a16) it.next()).d);
            }
            io4Var.a(dk5Var, arrayList, h06Var.c);
        }
    }

    public final boolean a() {
        return hasMessages(2);
    }

    public final void a(hc4 hc4Var) {
        sendMessage(Message.obtain(this, 2, new WeakReference(hc4Var)));
    }
}

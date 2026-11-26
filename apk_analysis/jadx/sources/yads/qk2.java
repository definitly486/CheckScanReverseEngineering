package yads;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes6.dex */
public final class qk2 {
    public static final o85 h = new o85(1);
    public final nk2 a;
    public final CopyOnWriteArraySet b;
    public int c;
    public boolean d;
    public int e;
    public boolean f;
    public List g;

    public qk2(Context context, ok0 ok0Var, pk0 pk0Var) {
        context.getApplicationContext();
        this.d = true;
        this.g = Collections.EMPTY_LIST;
        this.b = new CopyOnWriteArraySet();
        Handler handlerB = u56.b(new Handler.Callback() { // from class: j7a
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.b.a(message);
            }
        });
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:DownloadManager");
        handlerThread.start();
        nk2 nk2Var = new nk2(handlerThread, ok0Var, pk0Var, handlerB, this.d);
        this.a = nk2Var;
        int iC = new s85(context, new defpackage.zi4(this, 6)).c();
        this.e = iC;
        this.c = 1;
        nk2Var.obtainMessage(0, iC, 0).sendToTarget();
    }

    public final boolean a(Message message) {
        int i = message.what;
        if (i == 0) {
            this.g = Collections.unmodifiableList((List) message.obj);
            boolean zA = a();
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((ok2) it.next()).getClass();
            }
            if (zA) {
                Iterator it2 = this.b.iterator();
                while (it2.hasNext()) {
                    ((ok2) it2.next()).getClass();
                }
            }
        } else if (i == 1) {
            int i2 = message.arg1;
            int i3 = message.arg2;
            int i4 = this.c - i2;
            this.c = i4;
            if (i3 == 0 && i4 == 0) {
                Iterator it3 = this.b.iterator();
                while (it3.hasNext()) {
                    ((ok2) it3.next()).getClass();
                }
            }
        } else {
            if (i != 2) {
                defpackage.ud.g();
                return false;
            }
            mk2 mk2Var = (mk2) message.obj;
            this.g = Collections.unmodifiableList(mk2Var.c);
            kk2 kk2Var = mk2Var.a;
            boolean zA2 = a();
            boolean z = mk2Var.b;
            CopyOnWriteArraySet copyOnWriteArraySet = this.b;
            if (z) {
                Iterator it4 = copyOnWriteArraySet.iterator();
                while (it4.hasNext()) {
                    ((ok2) it4.next()).getClass();
                }
            } else {
                Iterator it5 = copyOnWriteArraySet.iterator();
                while (it5.hasNext()) {
                    vj6 vj6Var = (vj6) ((ok2) it5.next());
                    vj6Var.getClass();
                    if (defpackage.aa4.e(kk2Var.a.b, vj6Var.a)) {
                        if (vj6.d.contains(Integer.valueOf(kk2Var.b))) {
                            e55 e55Var = vj6Var.b;
                            defpackage.ze4 ze4Var = vj6.c[0];
                            vc6 vc6Var = (vc6) e55Var.a.get();
                            if (vc6Var != null) {
                                vc6Var.a();
                            }
                        }
                        if (vj6.e.contains(Integer.valueOf(kk2Var.b))) {
                            e55 e55Var2 = vj6Var.b;
                            defpackage.ze4 ze4Var2 = vj6.c[0];
                            vc6 vc6Var2 = (vc6) e55Var2.a.get();
                            if (vc6Var2 != null) {
                                vc6Var2.c();
                            }
                        }
                        if (vj6.f.contains(Integer.valueOf(kk2Var.b))) {
                            this.b.remove(vj6Var);
                        }
                    }
                }
            }
            if (zA2) {
                Iterator it6 = this.b.iterator();
                while (it6.hasNext()) {
                    ((ok2) it6.next()).getClass();
                }
            }
        }
        return true;
    }

    public final boolean a() {
        boolean z;
        if (!this.d && this.e != 0) {
            int i = 0;
            while (true) {
                if (i >= this.g.size()) {
                    z = false;
                    break;
                }
                if (((kk2) this.g.get(i)).b == 0) {
                    z = true;
                    break;
                }
                i++;
            }
        } else {
            z = false;
            break;
        }
        boolean z2 = this.f != z;
        this.f = z;
        return z2;
    }

    public final void a(s85 s85Var, int i) {
        o85 o85Var = s85Var.c;
        if (this.e != i) {
            this.e = i;
            this.c++;
            this.a.obtainMessage(2, i, 0).sendToTarget();
        }
        boolean zA = a();
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((ok2) it.next()).getClass();
        }
        if (zA) {
            Iterator it2 = this.b.iterator();
            while (it2.hasNext()) {
                ((ok2) it2.next()).getClass();
            }
        }
    }
}

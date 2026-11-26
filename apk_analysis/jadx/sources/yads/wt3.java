package yads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import yads.wt3;

/* JADX INFO: loaded from: classes6.dex */
public final class wt3 {
    public final x00 a;
    public final gu5 b;
    public final ut3 c;
    public final CopyOnWriteArraySet d;
    public final ArrayDeque e = new ArrayDeque();
    public final ArrayDeque f = new ArrayDeque();
    public boolean g;

    public wt3(CopyOnWriteArraySet copyOnWriteArraySet, Looper looper, x00 x00Var, ut3 ut3Var) {
        this.a = x00Var;
        this.d = copyOnWriteArraySet;
        this.c = ut3Var;
        defpackage.zu1 zu1Var = new defpackage.zu1(this, 1);
        ((du5) x00Var).getClass();
        this.b = new gu5(new Handler(looper, zu1Var));
    }

    public final void a() {
        if (this.f.isEmpty()) {
            return;
        }
        if (!this.b.a.hasMessages(0)) {
            gu5 gu5Var = this.b;
            gu5Var.getClass();
            fu5 fu5VarA = gu5.a();
            Message messageObtainMessage = gu5Var.a.obtainMessage(0);
            fu5VarA.a = messageObtainMessage;
            Handler handler = gu5Var.a;
            messageObtainMessage.getClass();
            handler.sendMessageAtFrontOfQueue(messageObtainMessage);
            fu5VarA.a();
        }
        boolean zIsEmpty = this.e.isEmpty();
        this.e.addAll(this.f);
        this.f.clear();
        if (zIsEmpty) {
            while (!this.e.isEmpty()) {
                ((Runnable) this.e.peekFirst()).run();
                this.e.removeFirst();
            }
        }
    }

    public static void a(CopyOnWriteArraySet copyOnWriteArraySet, int i, tt3 tt3Var) {
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            vt3 vt3Var = (vt3) it.next();
            if (!vt3Var.d) {
                if (i != -1) {
                    vt3Var.b.a(i);
                }
                vt3Var.c = true;
                tt3Var.invoke(vt3Var.a);
            }
        }
    }

    public final void a(final int i, final tt3 tt3Var) {
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.d);
        this.f.add(new Runnable() { // from class: yga
            @Override // java.lang.Runnable
            public final void run() {
                wt3.a(copyOnWriteArraySet, i, tt3Var);
            }
        });
    }

    public final boolean a(Message message) {
        for (vt3 vt3Var : this.d) {
            ut3 ut3Var = this.c;
            if (!vt3Var.d && vt3Var.c) {
                my2 my2VarA = vt3Var.b.a();
                vt3Var.b = new ly2();
                vt3Var.c = false;
                ut3Var.a(vt3Var.a, my2VarA);
            }
            if (this.b.a.hasMessages(0)) {
                return true;
            }
        }
        return true;
    }
}

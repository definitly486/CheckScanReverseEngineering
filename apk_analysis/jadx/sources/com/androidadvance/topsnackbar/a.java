package com.androidadvance.topsnackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public final class a {
    public static a e;
    public final Object a = new Object();
    public final Handler b = new Handler(Looper.getMainLooper(), new C0126a());
    public c c;
    public c d;

    /* JADX INFO: renamed from: com.androidadvance.topsnackbar.a$a, reason: collision with other inner class name */
    public class C0126a implements Handler.Callback {
        public C0126a() {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            a aVar = a.this;
            c cVar = (c) message.obj;
            synchronized (aVar.a) {
                try {
                    if (aVar.c == cVar || aVar.d == cVar) {
                        a.a(cVar, 2);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return true;
        }
    }

    public interface b {
        void dismiss(int i);

        void show();
    }

    public static class c {
        public final WeakReference<b> a;
        public int b;

        public c(int i, TSnackbar.b bVar) {
            this.a = new WeakReference<>(bVar);
            this.b = i;
        }
    }

    public static boolean a(c cVar, int i) {
        b bVar = cVar.a.get();
        if (bVar == null) {
            return false;
        }
        bVar.dismiss(i);
        return true;
    }

    public static a c() {
        a aVar = e;
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a();
        e = aVar2;
        return aVar2;
    }

    public final void b(TSnackbar.b bVar) {
        synchronized (this.a) {
            try {
                if (d(bVar)) {
                    this.b.removeCallbacksAndMessages(this.c);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean d(b bVar) {
        c cVar = this.c;
        return (cVar == null || bVar == null || cVar.a.get() != bVar) ? false : true;
    }

    public final void e(c cVar) {
        int i = cVar.b;
        if (i == -2) {
            return;
        }
        if (i <= 0) {
            i = i == -1 ? 1500 : 2750;
        }
        Handler handler = this.b;
        handler.removeCallbacksAndMessages(cVar);
        handler.sendMessageDelayed(Message.obtain(handler, 0, cVar), i);
    }
}

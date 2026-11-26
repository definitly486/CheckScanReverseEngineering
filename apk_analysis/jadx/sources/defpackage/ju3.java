package defpackage;

import android.os.Handler;
import android.os.Message;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class ju3 extends he7 {
    public final Handler c;

    public static final class a extends he7.c {
        public final Handler b;
        public volatile boolean c;

        public a(Handler handler) {
            this.b = handler;
        }

        @Override // he7.c
        public final cp2 b(Runnable runnable, long j, TimeUnit timeUnit) {
            if (timeUnit == null) {
                o2.d("unit == null");
                return null;
            }
            if (this.c) {
                return hx2.INSTANCE;
            }
            Handler handler = this.b;
            b bVar = new b(handler, runnable);
            Message messageObtain = Message.obtain(handler, bVar);
            messageObtain.obj = this;
            this.b.sendMessageDelayed(messageObtain, timeUnit.toMillis(j));
            if (!this.c) {
                return bVar;
            }
            this.b.removeCallbacks(bVar);
            return hx2.INSTANCE;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.c = true;
            this.b.removeCallbacksAndMessages(this);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.c;
        }
    }

    public static final class b implements Runnable, cp2 {
        public final Handler b;
        public final Runnable c;
        public volatile boolean d;

        public b(Handler handler, Runnable runnable) {
            this.b = handler;
            this.c = runnable;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.b.removeCallbacks(this);
            this.d = true;
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.d;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.c.run();
            } catch (Throwable th) {
                d97.b(th);
            }
        }
    }

    public ju3(Handler handler) {
        this.c = handler;
    }

    @Override // defpackage.he7
    public final he7.c b() {
        return new a(this.c);
    }

    @Override // defpackage.he7
    public final cp2 d(Runnable runnable, long j, TimeUnit timeUnit) {
        if (timeUnit == null) {
            o2.d("unit == null");
            return null;
        }
        Handler handler = this.c;
        b bVar = new b(handler, runnable);
        handler.sendMessageDelayed(Message.obtain(handler, bVar), timeUnit.toMillis(j));
        return bVar;
    }
}

package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class zp3 {
    public final u68 a;
    public final Handler b;
    public final ArrayList c;
    public final p37 d;
    public final ij0 e;
    public boolean f;
    public boolean g;
    public h37<Bitmap> h;
    public a i;
    public boolean j;
    public a k;
    public Bitmap l;
    public s19<Bitmap> m;
    public a n;
    public int o;
    public int p;
    public int q;

    public static class a extends j72<Bitmap> {
        public final Handler b;
        public final int c;
        public final long d;
        public Bitmap e;

        public a(Handler handler, int i, long j) {
            this.b = handler;
            this.c = i;
            this.d = j;
        }

        @Override // defpackage.wk8
        public final void onLoadCleared(Drawable drawable) {
            this.e = null;
        }

        @Override // defpackage.wk8
        public final void onResourceReady(Object obj, k29 k29Var) {
            this.e = (Bitmap) obj;
            Handler handler = this.b;
            handler.sendMessageAtTime(handler.obtainMessage(1, this), this.d);
        }
    }

    public interface b {
        void a();
    }

    public class c implements Handler.Callback {
        public c() {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i = message.what;
            zp3 zp3Var = zp3.this;
            if (i == 1) {
                zp3Var.b((a) message.obj);
                return true;
            }
            if (i != 2) {
                return false;
            }
            zp3Var.d.c((a) message.obj);
            return false;
        }
    }

    public zp3(com.bumptech.glide.a aVar, u68 u68Var, int i, int i2, p59 p59Var, Bitmap bitmap) {
        ij0 ij0Var = aVar.b;
        wq3 wq3Var = aVar.d;
        p37 p37VarD = com.bumptech.glide.a.d(wq3Var.getBaseContext());
        h37<Bitmap> h37VarG = com.bumptech.glide.a.d(wq3Var.getBaseContext()).b().b(((s37) ((s37) new s37().g(sn2.b).E()).y()).p(i, i2));
        this.c = new ArrayList();
        this.d = p37VarD;
        Handler handler = new Handler(Looper.getMainLooper(), new c());
        this.e = ij0Var;
        this.b = handler;
        this.h = h37VarG;
        this.a = u68Var;
        c(p59Var, bitmap);
    }

    public final void a() {
        int i;
        int i2;
        if (!this.f || this.g) {
            return;
        }
        a aVar = this.n;
        if (aVar != null) {
            this.n = null;
            b(aVar);
            return;
        }
        this.g = true;
        u68 u68Var = this.a;
        bq3 bq3Var = u68Var.l;
        int i3 = bq3Var.c;
        if (i3 <= 0 || (i2 = u68Var.k) < 0) {
            i = 0;
        } else {
            i = (i2 < 0 || i2 >= i3) ? -1 : ((yp3) bq3Var.e.get(i2)).i;
        }
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) i);
        u68Var.b();
        this.k = new a(this.b, u68Var.k, jUptimeMillis);
        h37<Bitmap> h37VarN = this.h.b(new s37().x(new oq5(Double.valueOf(Math.random())))).N(u68Var);
        h37VarN.K(this.k, h37VarN);
    }

    public final void b(a aVar) {
        this.g = false;
        boolean z = this.j;
        Handler handler = this.b;
        if (z) {
            handler.obtainMessage(2, aVar).sendToTarget();
            return;
        }
        if (!this.f) {
            this.n = aVar;
            return;
        }
        if (aVar.e != null) {
            Bitmap bitmap = this.l;
            if (bitmap != null) {
                this.e.c(bitmap);
                this.l = null;
            }
            a aVar2 = this.i;
            this.i = aVar;
            ArrayList arrayList = this.c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((b) arrayList.get(size)).a();
            }
            if (aVar2 != null) {
                handler.obtainMessage(2, aVar2).sendToTarget();
            }
        }
        a();
    }

    public final void c(s19<Bitmap> s19Var, Bitmap bitmap) {
        r96.c(s19Var, "Argument must not be null");
        this.m = s19Var;
        r96.c(bitmap, "Argument must not be null");
        this.l = bitmap;
        this.h = this.h.b(new s37().B(s19Var, true));
        this.o = eb9.c(bitmap);
        this.p = bitmap.getWidth();
        this.q = bitmap.getHeight();
    }
}

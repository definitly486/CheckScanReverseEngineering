package defpackage;

import android.graphics.Bitmap;
import android.os.Looper;
import androidx.media3.common.PlaybackException;
import com.my.target.zh;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.WeakHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class s0a {
    public static final WeakHashMap c = new WeakHashMap();
    public final ArrayList a;
    public b b;

    public interface b {
        void a();
    }

    public s0a(ArrayList arrayList) {
        this.a = arrayList;
    }

    public static s0a a(ArrayList arrayList, pp9 pp9Var) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new ifa((h14) it.next(), pp9Var));
        }
        return new s0a(arrayList2);
    }

    public static void c(h14 h14Var, zh zhVar) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            y14.u(null, "ImageLoaderUtils: Method loadAndDisplay called from worker thread");
            return;
        }
        WeakHashMap weakHashMap = c;
        if (weakHashMap.get(zhVar) == h14Var) {
            return;
        }
        weakHashMap.remove(zhVar);
        Bitmap bitmap = (Bitmap) h14Var.d;
        if (bitmap != null) {
            if (zhVar != null) {
                zhVar.setImageBitmap(bitmap, true);
                return;
            } else {
                zhVar.setImageBitmap(bitmap);
                return;
            }
        }
        weakHashMap.put(zhVar, h14Var);
        WeakReference weakReference = new WeakReference(zhVar);
        pp9 pp9Var = pp9.d;
        ArrayList arrayList = new ArrayList();
        arrayList.add(h14Var);
        s0a s0aVarA = a(arrayList, pp9Var);
        s0aVarA.b = new b21(weakReference, h14Var);
        if (!s0aVarA.a.isEmpty()) {
            s0aVarA.b(new a4(s0aVarA));
        } else {
            if (s0aVarA.b == null) {
                return;
            }
            w4a.c(new kc2(s0aVarA, 4));
        }
    }

    public final void b(b bVar) {
        AtomicInteger atomicInteger = new AtomicInteger(this.a.size());
        int i = 0;
        for (ifa ifaVar : this.a) {
            h14 h14Var = (h14) ifaVar.a;
            if (((Bitmap) h14Var.d) != null) {
                atomicInteger.decrementAndGet();
                i++;
            } else {
                String str = h14Var.a;
                b bVar2 = bVar;
                a aVar = new a(h14Var, ifaVar, str, atomicInteger, bVar2);
                mz9 mz9Var = mz9.b;
                if (mz9Var == null) {
                    synchronized (mz9.class) {
                        try {
                            mz9Var = mz9.b;
                            if (mz9Var == null) {
                                mz9Var = new mz9();
                                mz9.b = mz9Var;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                w4a.a.execute(new vz0(mz9Var, str, aVar, 1));
                bVar = bVar2;
            }
        }
        b bVar3 = bVar;
        if (i == this.a.size()) {
            bVar3.a();
        }
    }

    public final void d() {
        if (w4a.b()) {
            y14.u(null, "ImageLoaderUtils: Method load called from main thread");
            return;
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        b(new c21(countDownLatch, 5));
        try {
            countDownLatch.await();
            y14.r(null, "ImageLoaderUtils: success media loading");
        } catch (InterruptedException unused) {
            y14.r(null, "ImageLoaderUtils: awaiting media files load failed");
        }
    }

    public class a implements lma.a {
        public final /* synthetic */ h14 a;
        public final /* synthetic */ ifa b;
        public final /* synthetic */ String c;
        public final /* synthetic */ AtomicInteger d;
        public final /* synthetic */ b e;

        public a(h14 h14Var, ifa ifaVar, String str, AtomicInteger atomicInteger, b bVar) {
            this.a = h14Var;
            this.b = ifaVar;
            this.c = str;
            this.d = atomicInteger;
            this.e = bVar;
        }

        @Override // lma.a
        public final void a(Object obj) {
            int i;
            Bitmap bitmap = (Bitmap) obj;
            h14 h14Var = this.a;
            h14Var.d = bitmap;
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int i2 = h14Var.c;
            if (i2 == 0 || (i = h14Var.b) == 0) {
                h14Var.c = height;
                h14Var.b = width;
                i2 = height;
                i = width;
            }
            if (i != width || i2 != height) {
                y14.w(null, String.format(Locale.getDefault(), "JSON image params (%d x %d) differ than loaded bitmap params (%d x %d)", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(width), Integer.valueOf(height)));
            }
            if (this.d.decrementAndGet() == 0) {
                this.e.a();
            }
        }

        @Override // lma.a
        public final void a() {
            this.b.b.d(0, PlaybackException.ERROR_CODE_DECODER_INIT_FAILED, "imageUrl=" + this.c);
            if (this.d.decrementAndGet() == 0) {
                this.e.a();
            }
        }
    }
}

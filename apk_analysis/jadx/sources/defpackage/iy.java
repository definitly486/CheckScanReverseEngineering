package defpackage;

import android.hardware.Camera;
import android.os.AsyncTask;
import android.util.Log;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes3.dex */
public final class iy implements Camera.AutoFocusCallback {
    public static final ArrayList g;
    public long a = 5000;
    public boolean b;
    public boolean c;
    public final boolean d;
    public final Camera e;
    public a f;

    public final class a extends AsyncTask<Object, Object, Object> {
        public a() {
        }

        @Override // android.os.AsyncTask
        public final Object doInBackground(Object... objArr) {
            iy iyVar = iy.this;
            try {
                Thread.sleep(iyVar.a);
            } catch (InterruptedException unused) {
            }
            iyVar.b();
            return null;
        }
    }

    static {
        ArrayList arrayList = new ArrayList(2);
        g = arrayList;
        arrayList.add(TtmlNode.TEXT_EMPHASIS_AUTO);
        arrayList.add("macro");
    }

    public iy(Camera camera) {
        this.e = camera;
        String focusMode = camera.getParameters().getFocusMode();
        boolean zContains = g.contains(focusMode);
        this.d = zContains;
        Log.i("iy", "Current focus mode '" + focusMode + "'; use auto focus? " + zContains);
        b();
    }

    public final synchronized void a() {
        if (!this.b && this.f == null) {
            a aVar = new a();
            try {
                aVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
                this.f = aVar;
            } catch (RejectedExecutionException e) {
                Log.w("iy", "Could not request auto focus", e);
            }
        }
    }

    public final synchronized void b() {
        try {
            if (this.d) {
                this.f = null;
                if (!this.b && !this.c) {
                    try {
                        this.e.autoFocus(this);
                        this.c = true;
                    } catch (RuntimeException e) {
                        Log.w("iy", "Unexpected exception while focusing", e);
                        a();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c() {
        try {
            this.b = true;
            if (this.d) {
                synchronized (this) {
                    try {
                        a aVar = this.f;
                        if (aVar != null) {
                            if (aVar.getStatus() != AsyncTask.Status.FINISHED) {
                                this.f.cancel(true);
                            }
                            this.f = null;
                        }
                        try {
                            this.e.cancelAutoFocus();
                        } catch (RuntimeException e) {
                            Log.w("iy", "Unexpected exception while cancelling focusing", e);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // android.hardware.Camera.AutoFocusCallback
    public final synchronized void onAutoFocus(boolean z, Camera camera) {
        this.c = false;
        a();
    }
}

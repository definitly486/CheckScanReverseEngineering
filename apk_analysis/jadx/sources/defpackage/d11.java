package defpackage;

import android.content.Context;
import android.hardware.Camera;
import android.util.Log;
import android.view.SurfaceHolder;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class d11 {
    public final l01 a;
    public hy5 b;
    public iy c;
    public boolean d;
    public boolean e;
    public Camera.PreviewCallback f;
    public int g = 0;
    public int h = -1;
    public long i = 5000;

    public d11(Context context) {
        this.a = new l01(context);
    }

    public final synchronized void a() {
        if (b()) {
            this.b.b.release();
            this.b = null;
        }
    }

    public final synchronized boolean b() {
        return this.b != null;
    }

    public final synchronized void c(SurfaceHolder surfaceHolder, int i, int i2) {
        try {
            hy5 hy5VarA = this.b;
            if (!b()) {
                hy5VarA = iy5.a(this.h);
                if (hy5VarA == null) {
                    throw new IOException("Camera.open() failed to return object from driver");
                }
                this.b = hy5VarA;
            }
            hy5VarA.b.setPreviewDisplay(surfaceHolder);
            hy5VarA.b.setPreviewCallback(this.f);
            hy5VarA.b.setDisplayOrientation(this.g);
            if (!this.d) {
                this.d = true;
                this.a.c(hy5VarA, i, i2);
            }
            Camera camera = hy5VarA.b;
            Camera.Parameters parameters = camera.getParameters();
            String strFlatten = parameters == null ? null : parameters.flatten();
            try {
                this.a.d(hy5VarA, false);
            } catch (RuntimeException unused) {
                Log.w("d11", "Camera rejected parameters. Setting only minimal safe-mode parameters");
                Log.i("d11", "Resetting to saved camera params: " + strFlatten);
                if (strFlatten != null) {
                    Camera.Parameters parameters2 = camera.getParameters();
                    parameters2.unflatten(strFlatten);
                    try {
                        camera.setParameters(parameters2);
                        this.a.d(hy5VarA, true);
                    } catch (RuntimeException unused2) {
                        Log.w("d11", "Camera rejected even safe-mode parameters! No configuration");
                    }
                }
            }
            camera.setPreviewDisplay(surfaceHolder);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void d() {
        hy5 hy5Var = this.b;
        if (hy5Var != null && !this.e) {
            hy5Var.b.startPreview();
            this.e = true;
            iy iyVar = new iy(hy5Var.b);
            this.c = iyVar;
            long j = this.i;
            if (j <= 0) {
                throw new IllegalArgumentException("AutoFocusInterval must be greater than 0.");
            }
            iyVar.a = j;
        }
    }

    public final synchronized void e() {
        try {
            iy iyVar = this.c;
            if (iyVar != null) {
                iyVar.c();
                this.c = null;
            }
            hy5 hy5Var = this.b;
            if (hy5Var != null && this.e) {
                hy5Var.b.stopPreview();
                this.e = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}

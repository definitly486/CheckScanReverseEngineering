package yads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import android.view.WindowManager;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class bp5 extends GLSurfaceView {
    public final CopyOnWriteArrayList a;
    public final SensorManager b;
    public final Sensor c;
    public final br4 d;
    public final Handler e;
    public final xc5 f;
    public SurfaceTexture g;
    public Surface h;
    public boolean i;
    public boolean j;
    public boolean k;

    public bp5(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new CopyOnWriteArrayList();
        this.e = new Handler(Looper.getMainLooper());
        Object systemService = context.getSystemService("sensor");
        systemService.getClass();
        SensorManager sensorManager = (SensorManager) systemService;
        this.b = sensorManager;
        Sensor defaultSensor = u56.a >= 18 ? sensorManager.getDefaultSensor(15) : null;
        this.c = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        xc5 xc5Var = new xc5();
        this.f = xc5Var;
        zo5 zo5Var = new zo5(this, xc5Var);
        View.OnTouchListener a06Var = new a06(context, zo5Var);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        windowManager.getClass();
        this.d = new br4(windowManager.getDefaultDisplay(), a06Var, zo5Var);
        this.i = true;
        setEGLContextClientVersion(2);
        setRenderer(zo5Var);
        setOnTouchListener(a06Var);
    }

    public final void a(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.g;
        Surface surface = this.h;
        Surface surface2 = new Surface(surfaceTexture);
        this.g = surfaceTexture;
        this.h = surface2;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((bq2) ((ap5) it.next())).a.a(surface2);
        }
        if (surfaceTexture2 != null) {
            surfaceTexture2.release();
        }
        if (surface != null) {
            surface.release();
        }
    }

    public final void b() {
        boolean z = this.i && this.j;
        Sensor sensor = this.c;
        if (sensor == null || z == this.k) {
            return;
        }
        SensorManager sensorManager = this.b;
        if (z) {
            sensorManager.registerListener(this.d, sensor, 0);
        } else {
            sensorManager.unregisterListener(this.d);
        }
        this.k = z;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.e.post(new defpackage.j00(this, 3));
    }

    @Override // android.opengl.GLSurfaceView
    public final void onPause() {
        this.j = false;
        b();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public final void onResume() {
        super.onResume();
        this.j = true;
        b();
    }

    public void setDefaultStereoMode(int i) {
        this.f.l = i;
    }

    public void setUseSensorRotation(boolean z) {
        this.i = z;
        b();
    }

    public final void b(SurfaceTexture surfaceTexture) {
        this.e.post(new defpackage.du(3, this, surfaceTexture));
    }

    public final void a() {
        Surface surface = this.h;
        if (surface != null) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                ((bq2) ((ap5) it.next())).a.a((Surface) null);
            }
        }
        SurfaceTexture surfaceTexture = this.g;
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        if (surface != null) {
            surface.release();
        }
        this.g = null;
        this.h = null;
    }

    public bp5(Context context) {
        this(context, null);
    }
}

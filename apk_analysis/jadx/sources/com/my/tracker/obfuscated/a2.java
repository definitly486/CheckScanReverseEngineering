package com.my.tracker.obfuscated;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import androidx.media3.common.PlaybackException;
import com.my.tracker.config.AntiFraudConfig;
import defpackage.bn9;
import defpackage.u8;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class a2 {
    final i0 b;
    final AntiFraudConfig c;
    final Context d;
    a e;
    Runnable f;
    Runnable g;
    final AtomicInteger a = new AtomicInteger();
    long h = -1;

    public a2(i0 i0Var, AntiFraudConfig antiFraudConfig, Context context) {
        this.b = i0Var;
        this.c = antiFraudConfig;
        this.d = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(long j) {
        if (!this.a.compareAndSet(1, 2)) {
            b3.a("SensorHandler: handler can't start, current state: " + this.a.get());
        } else if (this.e == null) {
            b3.a("SensorHandler: handler can't start, sensor event listener is null");
        } else if (z2.a() - j > 259200) {
            b3.a("SensorHandler: more than 259200 seconds passed since the app was installed");
        } else {
            this.e.a();
            m.a.postDelayed(this.f, 20000L);
        }
    }

    public void a(final long j) {
        if (j <= 0) {
            b3.a("SensorHandler: install timestamp is empty, do nothing");
            return;
        }
        if (!this.a.compareAndSet(0, 1)) {
            b3.a("SensorHandler: handler has already been initialized");
            return;
        }
        a aVarA = a.a(this.b, this.d.getApplicationContext(), this.c);
        this.e = aVarA;
        if (aVarA == null) {
            b3.a("SensorHandler: sensor event listener is null");
            return;
        }
        this.f = new bn9(this, 0);
        this.g = new Runnable() { // from class: cn9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.b(j);
            }
        };
        this.h = j;
        b3.a("SensorHandler: initialized");
        this.g.run();
    }

    public void c() {
        Runnable runnable = this.g;
        if (runnable == null) {
            b3.a("SensorHandler: can't start, startRunnable is null");
        } else {
            m.a(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        m.a(new u8(this, 3));
    }

    public static a2 a(i0 i0Var, AntiFraudConfig antiFraudConfig, Context context) {
        return new a2(i0Var, antiFraudConfig, context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        if (!this.a.compareAndSet(2, 1)) {
            b3.a("SensorHandler: handle isn't running");
        } else {
            this.e.b();
            this.b.a();
        }
    }

    public static final class a implements SensorEventListener {
        private final i0 a;
        private final SensorManager b;
        private final AntiFraudConfig c;
        private final ArrayList d = new ArrayList();

        public a(i0 i0Var, SensorManager sensorManager, AntiFraudConfig antiFraudConfig) {
            this.a = i0Var;
            this.b = sensorManager;
            this.c = antiFraudConfig;
        }

        public void a() {
            b3.a("SensorEventListenerImpl: start()");
            int[] iArr = {5, 2, 4, 6, 8};
            for (int i = 0; i < 5; i++) {
                int i2 = iArr[i];
                if ((i2 != 5 || this.c.useLightSensor) && ((i2 != 2 || this.c.useMagneticFieldSensor) && ((i2 != 4 || this.c.useGyroscope) && ((i2 != 6 || this.c.usePressureSensor) && (i2 != 8 || this.c.useProximitySensor))))) {
                    try {
                        Sensor defaultSensor = this.b.getDefaultSensor(i2);
                        if (defaultSensor != null) {
                            this.b.registerListener(this, defaultSensor, PlaybackException.CUSTOM_ERROR_CODE_BASE);
                            this.d.add(defaultSensor);
                        }
                    } catch (Throwable th) {
                        b3.a("SensorEventListenerImpl: exception at register listener: " + th);
                    }
                }
            }
        }

        public void b() {
            b3.a("SensorEventListenerImpl: stop()");
            ArrayList arrayList = this.d;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                try {
                    this.b.unregisterListener(this, (Sensor) obj);
                } catch (Throwable th) {
                    b3.a("SensorEventListenerImpl: exception at unregister listener: " + th);
                }
            }
            this.d.clear();
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            int type = sensorEvent.sensor.getType();
            if (type == 2) {
                i0 i0Var = this.a;
                float[] fArr = sensorEvent.values;
                i0Var.b(fArr[0], fArr[1], fArr[2]);
                b3.a("SensorHandler: magnetometer - " + sensorEvent.values[0] + ", " + sensorEvent.values[1] + ", " + sensorEvent.values[2]);
                return;
            }
            if (type == 8) {
                this.a.c(sensorEvent.values[0]);
                b3.a("SensorHandler: proximity - " + sensorEvent.values[0]);
                return;
            }
            if (type == 4) {
                i0 i0Var2 = this.a;
                float[] fArr2 = sensorEvent.values;
                i0Var2.a(fArr2[0], fArr2[1], fArr2[2]);
                b3.a("SensorHandler: gyroscope - " + sensorEvent.values[0] + ", " + sensorEvent.values[1] + ", " + sensorEvent.values[2]);
                return;
            }
            if (type == 5) {
                this.a.a(sensorEvent.values[0]);
                b3.a("SensorHandler: light - " + sensorEvent.values[0]);
                return;
            }
            if (type != 6) {
                return;
            }
            this.a.b(sensorEvent.values[0]);
            b3.a("SensorHandler: pressure - " + sensorEvent.values[0]);
        }

        public static a a(i0 i0Var, Context context, AntiFraudConfig antiFraudConfig) {
            SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
            if (sensorManager == null) {
                return null;
            }
            return new a(i0Var, sensorManager, antiFraudConfig);
        }
    }
}

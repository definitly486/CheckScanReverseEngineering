package defpackage;

import android.hardware.Camera;

/* JADX INFO: loaded from: classes3.dex */
public final class hy5 {
    public final int a;
    public final Camera b;
    public final w01 c;
    public final int d;

    public hy5(int i, Camera camera, w01 w01Var, int i2) {
        this.a = i;
        this.b = camera;
        this.c = w01Var;
        this.d = i2;
    }

    public final String toString() {
        return "Camera #" + this.a + " : " + this.c + ',' + this.d;
    }
}

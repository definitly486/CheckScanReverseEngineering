package androidx.camera.camera2.impl;

import androidx.camera.camera2.compat.ZoomCompat;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class ZoomControl_Factory implements xs6 {
    private final xs6<ZoomCompat> zoomCompatProvider;

    private ZoomControl_Factory(xs6<ZoomCompat> xs6Var) {
        this.zoomCompatProvider = xs6Var;
    }

    public static ZoomControl_Factory create(xs6<ZoomCompat> xs6Var) {
        return new ZoomControl_Factory(xs6Var);
    }

    public static ZoomControl newInstance(ZoomCompat zoomCompat) {
        return new ZoomControl(zoomCompat);
    }

    @Override // defpackage.ws6
    public ZoomControl get() {
        return newInstance(this.zoomCompatProvider.get());
    }
}

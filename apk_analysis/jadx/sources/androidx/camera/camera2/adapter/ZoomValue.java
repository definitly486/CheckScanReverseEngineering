package androidx.camera.camera2.adapter;

import androidx.camera.camera2.internal.ZoomMath;
import androidx.camera.core.ZoomState;
import defpackage.jn;
import defpackage.js2;

/* JADX INFO: loaded from: classes.dex */
public final class ZoomValue implements ZoomState {
    private Float linearZoom;
    private final float maxZoomRatio;
    private final float minZoomRatio;
    private final float zoomRatio;

    public static final class LinearZoom {
        private final float value;

        public LinearZoom(float f) {
            this.value = f;
        }

        public static /* synthetic */ LinearZoom copy$default(LinearZoom linearZoom, float f, int i, Object obj) {
            if ((i & 1) != 0) {
                f = linearZoom.value;
            }
            return linearZoom.copy(f);
        }

        public final float component1() {
            return this.value;
        }

        public final LinearZoom copy(float f) {
            return new LinearZoom(f);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LinearZoom) && Float.compare(this.value, ((LinearZoom) obj).value) == 0;
        }

        public final float getValue() {
            return this.value;
        }

        public int hashCode() {
            return Float.hashCode(this.value);
        }

        public String toString() {
            return js2.b(new StringBuilder("LinearZoom(value="), this.value, ')');
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ZoomValue(LinearZoom linearZoom, float f, float f2) {
        this(ZoomMath.INSTANCE.getZoomRatioFromLinearZoom(linearZoom.getValue(), f, f2), f, f2);
        linearZoom.getClass();
        this.linearZoom = Float.valueOf(linearZoom.getValue());
    }

    private final float component1() {
        return this.zoomRatio;
    }

    private final float component2() {
        return this.minZoomRatio;
    }

    private final float component3() {
        return this.maxZoomRatio;
    }

    public static /* synthetic */ ZoomValue copy$default(ZoomValue zoomValue, float f, float f2, float f3, int i, Object obj) {
        if ((i & 1) != 0) {
            f = zoomValue.zoomRatio;
        }
        if ((i & 2) != 0) {
            f2 = zoomValue.minZoomRatio;
        }
        if ((i & 4) != 0) {
            f3 = zoomValue.maxZoomRatio;
        }
        return zoomValue.copy(f, f2, f3);
    }

    public final ZoomValue copy(float f, float f2, float f3) {
        return new ZoomValue(f, f2, f3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ZoomValue)) {
            return false;
        }
        ZoomValue zoomValue = (ZoomValue) obj;
        return Float.compare(this.zoomRatio, zoomValue.zoomRatio) == 0 && Float.compare(this.minZoomRatio, zoomValue.minZoomRatio) == 0 && Float.compare(this.maxZoomRatio, zoomValue.maxZoomRatio) == 0;
    }

    @Override // androidx.camera.core.ZoomState
    public float getLinearZoom() {
        Float f = this.linearZoom;
        return f != null ? f.floatValue() : ZoomMath.INSTANCE.getLinearZoomFromZoomRatio(this.zoomRatio, this.minZoomRatio, this.maxZoomRatio);
    }

    @Override // androidx.camera.core.ZoomState
    public float getMaxZoomRatio() {
        return this.maxZoomRatio;
    }

    @Override // androidx.camera.core.ZoomState
    public float getMinZoomRatio() {
        return this.minZoomRatio;
    }

    @Override // androidx.camera.core.ZoomState
    public float getZoomRatio() {
        return this.zoomRatio;
    }

    public int hashCode() {
        return Float.hashCode(this.maxZoomRatio) + jn.b(this.minZoomRatio, Float.hashCode(this.zoomRatio) * 31, 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ZoomValue(zoomRatio=");
        sb.append(this.zoomRatio);
        sb.append(", minZoomRatio=");
        sb.append(this.minZoomRatio);
        sb.append(", maxZoomRatio=");
        return js2.b(sb, this.maxZoomRatio, ')');
    }

    public ZoomValue(float f, float f2, float f3) {
        this.zoomRatio = f;
        this.minZoomRatio = f2;
        this.maxZoomRatio = f3;
    }
}

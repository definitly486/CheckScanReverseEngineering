package androidx.camera.viewfinder.core;

import defpackage.aa4;
import defpackage.ej0;
import defpackage.jh2;
import defpackage.xp;

/* JADX INFO: loaded from: classes.dex */
public final class ViewfinderSurfaceRequest {
    private final int height;
    private final ImplementationMode implementationMode;
    private final String requestId;
    private final int width;

    public /* synthetic */ ViewfinderSurfaceRequest(int i, int i2, ImplementationMode implementationMode, String str, int i3, jh2 jh2Var) {
        this(i, i2, (i3 & 4) != 0 ? null : implementationMode, (i3 & 8) != 0 ? null : str);
    }

    public static /* synthetic */ ViewfinderSurfaceRequest copy$default(ViewfinderSurfaceRequest viewfinderSurfaceRequest, int i, int i2, ImplementationMode implementationMode, String str, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = viewfinderSurfaceRequest.width;
        }
        if ((i3 & 2) != 0) {
            i2 = viewfinderSurfaceRequest.height;
        }
        if ((i3 & 4) != 0) {
            implementationMode = viewfinderSurfaceRequest.implementationMode;
        }
        if ((i3 & 8) != 0) {
            str = viewfinderSurfaceRequest.requestId;
        }
        return viewfinderSurfaceRequest.copy(i, i2, implementationMode, str);
    }

    public final /* synthetic */ ViewfinderSurfaceRequest copy(int i, int i2, ImplementationMode implementationMode, String str) {
        return new ViewfinderSurfaceRequest(i, i2, implementationMode, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ViewfinderSurfaceRequest)) {
            return false;
        }
        ViewfinderSurfaceRequest viewfinderSurfaceRequest = (ViewfinderSurfaceRequest) obj;
        return this.width == viewfinderSurfaceRequest.width && this.height == viewfinderSurfaceRequest.height && this.implementationMode == viewfinderSurfaceRequest.implementationMode && aa4.e(this.requestId, viewfinderSurfaceRequest.requestId);
    }

    public final int getHeight() {
        return this.height;
    }

    public final ImplementationMode getImplementationMode() {
        return this.implementationMode;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        int iB = ej0.b(this.height, Integer.hashCode(this.width) * 31, 31);
        ImplementationMode implementationMode = this.implementationMode;
        int iHashCode = (iB + (implementationMode != null ? implementationMode.hashCode() : 0)) * 31;
        String str = this.requestId;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ViewfinderSurfaceRequest(width=");
        sb.append(this.width);
        sb.append(", height=");
        sb.append(this.height);
        sb.append(", implementationMode=");
        sb.append(this.implementationMode);
        sb.append(", requestId=");
        return xp.e(sb, this.requestId, ')');
    }

    public ViewfinderSurfaceRequest(int i, int i2, ImplementationMode implementationMode) {
        this(i, i2, implementationMode, null, 8, null);
    }

    public ViewfinderSurfaceRequest(int i, int i2, ImplementationMode implementationMode, String str) {
        this.width = i;
        this.height = i2;
        this.implementationMode = implementationMode;
        this.requestId = str;
    }

    public ViewfinderSurfaceRequest(int i, int i2) {
        this(i, i2, null, null, 12, null);
    }
}

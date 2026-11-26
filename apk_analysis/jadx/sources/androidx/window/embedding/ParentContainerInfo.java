package androidx.window.embedding;

import android.content.res.Configuration;
import androidx.window.core.Bounds;
import androidx.window.layout.WindowLayoutInfo;
import defpackage.aa4;
import defpackage.js2;

/* JADX INFO: loaded from: classes3.dex */
public final class ParentContainerInfo {
    private final Configuration configuration;
    private final float density;
    private final Bounds windowBounds;
    private final WindowLayoutInfo windowLayoutInfo;

    public ParentContainerInfo(Bounds bounds, WindowLayoutInfo windowLayoutInfo, Configuration configuration, float f) {
        bounds.getClass();
        windowLayoutInfo.getClass();
        configuration.getClass();
        this.windowBounds = bounds;
        this.windowLayoutInfo = windowLayoutInfo;
        this.configuration = configuration;
        this.density = f;
    }

    public static /* synthetic */ ParentContainerInfo copy$default(ParentContainerInfo parentContainerInfo, Bounds bounds, WindowLayoutInfo windowLayoutInfo, Configuration configuration, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            bounds = parentContainerInfo.windowBounds;
        }
        if ((i & 2) != 0) {
            windowLayoutInfo = parentContainerInfo.windowLayoutInfo;
        }
        if ((i & 4) != 0) {
            configuration = parentContainerInfo.configuration;
        }
        if ((i & 8) != 0) {
            f = parentContainerInfo.density;
        }
        return parentContainerInfo.copy(bounds, windowLayoutInfo, configuration, f);
    }

    public final Bounds component1() {
        return this.windowBounds;
    }

    public final WindowLayoutInfo component2() {
        return this.windowLayoutInfo;
    }

    public final Configuration component3() {
        return this.configuration;
    }

    public final float component4() {
        return this.density;
    }

    public final ParentContainerInfo copy(Bounds bounds, WindowLayoutInfo windowLayoutInfo, Configuration configuration, float f) {
        bounds.getClass();
        windowLayoutInfo.getClass();
        configuration.getClass();
        return new ParentContainerInfo(bounds, windowLayoutInfo, configuration, f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParentContainerInfo)) {
            return false;
        }
        ParentContainerInfo parentContainerInfo = (ParentContainerInfo) obj;
        return aa4.e(this.windowBounds, parentContainerInfo.windowBounds) && aa4.e(this.windowLayoutInfo, parentContainerInfo.windowLayoutInfo) && aa4.e(this.configuration, parentContainerInfo.configuration) && Float.compare(this.density, parentContainerInfo.density) == 0;
    }

    public final Configuration getConfiguration() {
        return this.configuration;
    }

    public final float getDensity() {
        return this.density;
    }

    public final Bounds getWindowBounds() {
        return this.windowBounds;
    }

    public final WindowLayoutInfo getWindowLayoutInfo() {
        return this.windowLayoutInfo;
    }

    public int hashCode() {
        return Float.hashCode(this.density) + ((this.configuration.hashCode() + ((this.windowLayoutInfo.hashCode() + (this.windowBounds.hashCode() * 31)) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ParentContainerInfo(windowBounds=");
        sb.append(this.windowBounds);
        sb.append(", windowLayoutInfo=");
        sb.append(this.windowLayoutInfo);
        sb.append(", configuration=");
        sb.append(this.configuration);
        sb.append(", density=");
        return js2.b(sb, this.density, ')');
    }
}

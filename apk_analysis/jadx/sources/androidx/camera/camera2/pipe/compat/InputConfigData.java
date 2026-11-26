package androidx.camera.camera2.pipe.compat;

import defpackage.ej0;
import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class InputConfigData {
    private final int format;
    private final int height;
    private final int width;

    public InputConfigData(int i, int i2, int i3) {
        this.width = i;
        this.height = i2;
        this.format = i3;
    }

    public static /* synthetic */ InputConfigData copy$default(InputConfigData inputConfigData, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = inputConfigData.width;
        }
        if ((i4 & 2) != 0) {
            i2 = inputConfigData.height;
        }
        if ((i4 & 4) != 0) {
            i3 = inputConfigData.format;
        }
        return inputConfigData.copy(i, i2, i3);
    }

    public final int component1() {
        return this.width;
    }

    public final int component2() {
        return this.height;
    }

    public final int component3() {
        return this.format;
    }

    public final InputConfigData copy(int i, int i2, int i3) {
        return new InputConfigData(i, i2, i3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InputConfigData)) {
            return false;
        }
        InputConfigData inputConfigData = (InputConfigData) obj;
        return this.width == inputConfigData.width && this.height == inputConfigData.height && this.format == inputConfigData.format;
    }

    public final int getFormat() {
        return this.format;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return Integer.hashCode(this.format) + ej0.b(this.height, Integer.hashCode(this.width) * 31, 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("InputConfigData(width=");
        sb.append(this.width);
        sb.append(", height=");
        sb.append(this.height);
        sb.append(", format=");
        return rg.h(sb, this.format, ')');
    }
}

package androidx.camera.video;

import android.util.Size;
import defpackage.bg;
import defpackage.o2;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_Quality_ConstantQuality extends Quality.ConstantQuality {
    private final int highSpeedValue;
    private final String name;
    private final List<Size> typicalSizes;
    private final int value;

    public AutoValue_Quality_ConstantQuality(int i, int i2, String str, List<Size> list) {
        this.value = i;
        this.highSpeedValue = i2;
        if (str == null) {
            o2.d("Null name");
            throw null;
        }
        this.name = str;
        if (list != null) {
            this.typicalSizes = list;
        } else {
            o2.d("Null typicalSizes");
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Quality.ConstantQuality) {
            Quality.ConstantQuality constantQuality = (Quality.ConstantQuality) obj;
            if (this.value == constantQuality.getValue() && this.highSpeedValue == constantQuality.getHighSpeedValue() && this.name.equals(constantQuality.getName()) && this.typicalSizes.equals(constantQuality.getTypicalSizes())) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.video.Quality.ConstantQuality
    public int getHighSpeedValue() {
        return this.highSpeedValue;
    }

    @Override // androidx.camera.video.Quality.ConstantQuality
    public String getName() {
        return this.name;
    }

    @Override // androidx.camera.video.Quality.ConstantQuality
    public List<Size> getTypicalSizes() {
        return this.typicalSizes;
    }

    @Override // androidx.camera.video.Quality.ConstantQuality
    public int getValue() {
        return this.value;
    }

    public int hashCode() {
        return this.typicalSizes.hashCode() ^ ((((((this.value ^ 1000003) * 1000003) ^ this.highSpeedValue) * 1000003) ^ this.name.hashCode()) * 1000003);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ConstantQuality{value=");
        sb.append(this.value);
        sb.append(", highSpeedValue=");
        sb.append(this.highSpeedValue);
        sb.append(", name=");
        sb.append(this.name);
        sb.append(", typicalSizes=");
        return bg.e("}", this.typicalSizes, sb);
    }
}

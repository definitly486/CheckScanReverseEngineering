package androidx.camera.viewfinder.core;

import android.util.SizeF;
import androidx.camera.viewfinder.core.impl.Alignment;
import androidx.camera.viewfinder.core.impl.TransformationsKt;
import defpackage.js2;

/* JADX INFO: loaded from: classes.dex */
final class BiasAlignment implements Alignment {
    private final float horizontalBias;
    private final float verticalBias;

    public BiasAlignment(float f, float f2) {
        this.horizontalBias = f;
        this.verticalBias = f2;
    }

    public static /* synthetic */ BiasAlignment copy$default(BiasAlignment biasAlignment, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = biasAlignment.horizontalBias;
        }
        if ((i & 2) != 0) {
            f2 = biasAlignment.verticalBias;
        }
        return biasAlignment.copy(f, f2);
    }

    @Override // androidx.camera.viewfinder.core.impl.Alignment
    /* JADX INFO: renamed from: align-41g9ag8, reason: not valid java name */
    public long mo993align41g9ag8(SizeF sizeF, SizeF sizeF2, int i) {
        sizeF.getClass();
        sizeF2.getClass();
        float width = (sizeF2.getWidth() - sizeF.getWidth()) / 2.0f;
        float height = (sizeF2.getHeight() - sizeF.getHeight()) / 2.0f;
        float f = this.horizontalBias;
        if (i != 0) {
            f *= -1.0f;
        }
        return TransformationsKt.OffsetF((f + 1.0f) * width, (1.0f + this.verticalBias) * height);
    }

    public final float component1() {
        return this.horizontalBias;
    }

    public final float component2() {
        return this.verticalBias;
    }

    public final BiasAlignment copy(float f, float f2) {
        return new BiasAlignment(f, f2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BiasAlignment)) {
            return false;
        }
        BiasAlignment biasAlignment = (BiasAlignment) obj;
        return Float.compare(this.horizontalBias, biasAlignment.horizontalBias) == 0 && Float.compare(this.verticalBias, biasAlignment.verticalBias) == 0;
    }

    public final float getHorizontalBias() {
        return this.horizontalBias;
    }

    public final float getVerticalBias() {
        return this.verticalBias;
    }

    public int hashCode() {
        return Float.hashCode(this.verticalBias) + (Float.hashCode(this.horizontalBias) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BiasAlignment(horizontalBias=");
        sb.append(this.horizontalBias);
        sb.append(", verticalBias=");
        return js2.b(sb, this.verticalBias, ')');
    }
}

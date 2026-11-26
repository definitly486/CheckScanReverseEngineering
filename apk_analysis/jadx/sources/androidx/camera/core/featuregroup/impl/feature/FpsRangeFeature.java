package androidx.camera.core.featuregroup.impl.feature;

import android.util.Range;
import androidx.camera.core.featuregroup.GroupableFeature;
import defpackage.jh2;
import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class FpsRangeFeature extends GroupableFeature {
    public static final Companion Companion = new Companion(null);
    public static final Range<Integer> DEFAULT_FPS_RANGE = new Range<>(30, 30);
    private final FeatureTypeInternal featureTypeInternal = FeatureTypeInternal.FPS_RANGE;
    private final int maxFps;
    private final int minFps;

    public FpsRangeFeature(int i, int i2) {
        this.minFps = i;
        this.maxFps = i2;
    }

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    public FeatureTypeInternal getFeatureTypeInternal() {
        return this.featureTypeInternal;
    }

    public final int getMaxFps() {
        return this.maxFps;
    }

    public final int getMinFps() {
        return this.minFps;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FpsRangeFeature(minFps=");
        sb.append(this.minFps);
        sb.append(", maxFps=");
        return rg.h(sb, this.maxFps, ')');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}

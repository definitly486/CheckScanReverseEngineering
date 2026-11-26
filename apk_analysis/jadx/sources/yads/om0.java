package yads;

import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;

/* JADX INFO: loaded from: classes6.dex */
public final class om0 implements Spatializer$OnSpatializerStateChangedListener {
    public final /* synthetic */ um0 a;

    public om0(um0 um0Var) {
        this.a = um0Var;
    }

    public final void onSpatializerAvailableChanged(Spatializer spatializer, boolean z) {
        this.a.b();
    }

    public final void onSpatializerEnabledChanged(Spatializer spatializer, boolean z) {
        this.a.b();
    }
}

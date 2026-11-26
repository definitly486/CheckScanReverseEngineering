package defpackage;

import android.hardware.camera2.params.InputConfiguration;
import android.media.metrics.PlaybackMetrics;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gn {
    public static /* synthetic */ InputConfiguration a(int i, ArrayList arrayList) {
        return new InputConfiguration(arrayList, i);
    }

    public static /* synthetic */ PlaybackMetrics.Builder b() {
        return new PlaybackMetrics.Builder();
    }
}

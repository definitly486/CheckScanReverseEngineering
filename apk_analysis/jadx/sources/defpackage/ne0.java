package defpackage;

import androidx.media3.common.Format;
import androidx.media3.exoplayer.trackselection.BaseTrackSelection;
import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ne0 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return BaseTrackSelection.lambda$new$0((Format) obj, (Format) obj2);
    }
}

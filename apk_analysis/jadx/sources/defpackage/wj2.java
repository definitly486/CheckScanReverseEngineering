package defpackage;

import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import java.io.File;
import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class wj2 implements Comparator {
    public final /* synthetic */ int b;

    public /* synthetic */ wj2(int i) {
        this.b = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                return DefaultTrackSelector.lambda$static$0((Integer) obj, (Integer) obj2);
            default:
                return Long.compare(((File) obj2).lastModified(), ((File) obj).lastModified());
        }
    }
}

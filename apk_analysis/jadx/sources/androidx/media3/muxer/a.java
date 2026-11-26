package androidx.media3.muxer;

import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class a implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return Mp4Writer.lambda$addAuxiliaryTrack$1((Track) obj, (Track) obj2);
    }
}

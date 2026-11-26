package androidx.media3.extractor.text.webvtt;

import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class b implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return WebvttSubtitle.lambda$getCues$0((WebvttCueInfo) obj, (WebvttCueInfo) obj2);
    }
}

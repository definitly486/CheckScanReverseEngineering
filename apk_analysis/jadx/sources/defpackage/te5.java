package defpackage;

import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.mp3.Mp3Extractor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class te5 implements ExtractorsFactory {
    @Override // androidx.media3.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        return Mp3Extractor.lambda$static$0();
    }
}

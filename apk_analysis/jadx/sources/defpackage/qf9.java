package defpackage;

import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.wav.WavExtractor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class qf9 implements ExtractorsFactory {
    @Override // androidx.media3.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        return WavExtractor.lambda$static$0();
    }
}

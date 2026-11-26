package defpackage;

import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.ogg.OggExtractor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class dv5 implements ExtractorsFactory {
    @Override // androidx.media3.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        return OggExtractor.lambda$static$0();
    }
}

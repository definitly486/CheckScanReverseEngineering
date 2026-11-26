package defpackage;

import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.flac.FlacExtractor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class kc3 implements ExtractorsFactory {
    @Override // androidx.media3.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        return FlacExtractor.lambda$static$0();
    }
}

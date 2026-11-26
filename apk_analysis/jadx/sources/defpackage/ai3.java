package defpackage;

import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.flv.FlvExtractor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ai3 implements ExtractorsFactory {
    @Override // androidx.media3.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        return FlvExtractor.lambda$static$0();
    }
}

package defpackage;

import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.ts.AdtsExtractor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ma implements ExtractorsFactory {
    @Override // androidx.media3.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        return AdtsExtractor.lambda$static$0();
    }
}

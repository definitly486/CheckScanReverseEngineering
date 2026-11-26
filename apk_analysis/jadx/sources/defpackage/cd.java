package defpackage;

import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.amr.AmrExtractor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class cd implements ExtractorsFactory {
    @Override // androidx.media3.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        return AmrExtractor.lambda$static$0();
    }
}

package defpackage;

import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.mkv.MatroskaExtractor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class z65 implements ExtractorsFactory {
    @Override // androidx.media3.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        return MatroskaExtractor.lambda$static$1();
    }
}

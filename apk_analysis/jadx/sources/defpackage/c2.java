package defpackage;

import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.ts.Ac3Extractor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class c2 implements ExtractorsFactory {
    @Override // androidx.media3.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        return Ac3Extractor.lambda$static$0();
    }
}

package defpackage;

import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class pk3 implements ExtractorsFactory {
    @Override // androidx.media3.extractor.ExtractorsFactory
    public final Extractor[] createExtractors() {
        return FragmentedMp4Extractor.lambda$static$1();
    }
}

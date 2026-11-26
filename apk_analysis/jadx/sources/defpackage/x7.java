package defpackage;

import androidx.media3.common.Format;
import androidx.media3.exoplayer.source.chunk.BundledChunkExtractor;
import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import org.conscrypt.OpenSSLProvider;
import yads.l62;
import yads.l66;
import yads.sa1;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class x7 implements BundledChunkExtractor.ManifestFormatMerger, ze6, l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ x7(int i) {
        this.b = i;
    }

    public static void b(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        str3.getClass();
    }

    public static void c(StringBuilder sb, String str, String str2, OpenSSLProvider openSSLProvider, String str3) {
        sb.append(str);
        sb.append(str2);
        openSSLProvider.put(str3, sb.toString());
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 6:
                return l62.a(((Long) obj).longValue());
            default:
                return sa1.a(((Double) obj).doubleValue());
        }
    }

    @Override // androidx.media3.exoplayer.source.chunk.BundledChunkExtractor.ManifestFormatMerger
    public Format merge(Format format, Format format2) {
        return BundledChunkExtractor.ManifestFormatMerger.lambda$static$0(format, format2);
    }

    @Override // defpackage.ze6
    public boolean test(Object obj) {
        return InAppMessageStreamManager.lambda$createFirebaseInAppMessageStream$9((Boolean) obj);
    }
}

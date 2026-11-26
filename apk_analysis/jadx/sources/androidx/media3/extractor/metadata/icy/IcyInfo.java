package androidx.media3.extractor.metadata.icy;

import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import defpackage.ad2;
import defpackage.l2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class IcyInfo implements Metadata.Entry {
    public final byte[] rawMetadata;
    public final String title;
    public final String url;

    public IcyInfo(byte[] bArr, String str, String str2) {
        this.rawMetadata = bArr;
        this.title = str;
        this.url = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || IcyInfo.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.rawMetadata, ((IcyInfo) obj).rawMetadata);
    }

    public int hashCode() {
        return Arrays.hashCode(this.rawMetadata);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public void populateMediaMetadata(MediaMetadata.Builder builder) {
        String str = this.title;
        if (str != null) {
            builder.setTitle(str);
        }
    }

    public String toString() {
        String str = this.title;
        String str2 = this.url;
        return l2.e(ad2.d("ICY: title=\"", str, "\", url=\"", str2, "\", rawMetadata.length=\""), "\"", this.rawMetadata.length);
    }
}

package defpackage;

import androidx.media3.common.MimeTypes;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class j23 implements k23 {
    @Override // defpackage.k23
    public final boolean a(String str) {
        if (str != null) {
            return str.equals(MimeTypes.IMAGE_JPEG) || str.equals(MimeTypes.IMAGE_WEBP) || str.equals(MimeTypes.IMAGE_HEIC) || str.equals(MimeTypes.IMAGE_HEIF);
        }
        return false;
    }
}

package defpackage;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class k93 extends cu4<ParcelFileDescriptor> {
    @Override // defpackage.s82
    public final Class<ParcelFileDescriptor> a() {
        return ParcelFileDescriptor.class;
    }

    @Override // defpackage.cu4
    public final void d(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }

    @Override // defpackage.cu4
    public final Object e(ContentResolver contentResolver, Uri uri) throws FileNotFoundException {
        boolean z = this.b;
        ContentResolver contentResolver2 = this.d;
        AssetFileDescriptor assetFileDescriptorC = (z && f95.b(uri) && f95.a()) ? f95.c(contentResolver2, uri) : contentResolver2.openAssetFileDescriptor(uri, "r");
        if (assetFileDescriptorC != null) {
            return assetFileDescriptorC.getParcelFileDescriptor();
        }
        throw new FileNotFoundException(rk3.c(uri, "FileDescriptor is null for: "));
    }
}

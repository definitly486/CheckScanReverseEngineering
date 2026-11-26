package defpackage;

import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class p93 implements o93.d<ParcelFileDescriptor> {
    @Override // o93.d
    public final Class<ParcelFileDescriptor> a() {
        return ParcelFileDescriptor.class;
    }

    @Override // o93.d
    public final void b(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }

    @Override // o93.d
    public final ParcelFileDescriptor c(File file) {
        return ParcelFileDescriptor.open(file, 268435456);
    }
}

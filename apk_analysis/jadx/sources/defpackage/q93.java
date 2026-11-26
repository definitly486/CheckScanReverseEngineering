package defpackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class q93 implements o93.d<InputStream> {
    @Override // o93.d
    public final Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // o93.d
    public final void b(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override // o93.d
    public final InputStream c(File file) {
        return new FileInputStream(file);
    }
}

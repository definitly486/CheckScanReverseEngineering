package defpackage;

import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class f98 extends es<InputStream> {
    @Override // defpackage.s82
    public final Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // defpackage.es
    public final void d(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override // defpackage.es
    public final InputStream e(AssetManager assetManager, String str) {
        return assetManager.open(str);
    }
}

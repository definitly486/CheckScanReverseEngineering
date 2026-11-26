package defpackage;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class i93 extends es<AssetFileDescriptor> {
    @Override // defpackage.s82
    public final Class<AssetFileDescriptor> a() {
        return AssetFileDescriptor.class;
    }

    @Override // defpackage.es
    public final void d(AssetFileDescriptor assetFileDescriptor) throws IOException {
        assetFileDescriptor.close();
    }

    @Override // defpackage.es
    public final AssetFileDescriptor e(AssetManager assetManager, String str) {
        return assetManager.openFd(str);
    }
}

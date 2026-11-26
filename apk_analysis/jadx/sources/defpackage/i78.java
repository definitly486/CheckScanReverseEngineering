package defpackage;

import android.content.res.AssetFileDescriptor;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class i78 {
    public static final ImageDecoder.Source a(h24 h24Var, zz5 zz5Var) {
        j46 j46VarJ;
        if (h24Var.getFileSystem() == w93.b && (j46VarJ = h24Var.J()) != null) {
            return ImageDecoder.createSource(j46VarJ.toFile());
        }
        h24.a metadata = h24Var.getMetadata();
        if (metadata instanceof ds) {
            return ImageDecoder.createSource(zz5Var.a.getAssets(), ((ds) metadata).a);
        }
        if ((metadata instanceof cy1) && Build.VERSION.SDK_INT >= 29) {
            try {
                final AssetFileDescriptor assetFileDescriptor = ((cy1) metadata).a;
                Os.lseek(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), OsConstants.SEEK_SET);
                return ImageDecoder.createSource((Callable<AssetFileDescriptor>) new Callable() { // from class: h78
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return assetFileDescriptor;
                    }
                });
            } catch (ErrnoException unused) {
                return null;
            }
        }
        if (metadata instanceof r47) {
            r47 r47Var = (r47) metadata;
            if (aa4.e(r47Var.a, zz5Var.a.getPackageName())) {
                return ImageDecoder.createSource(zz5Var.a.getResources(), r47Var.b);
            }
        }
        if (metadata instanceof yw0) {
            return ImageDecoder.createSource(((yw0) metadata).a);
        }
        return null;
    }
}

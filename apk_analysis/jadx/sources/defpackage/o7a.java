package defpackage;

import android.graphics.BitmapFactory;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: loaded from: classes4.dex */
public final class o7a extends y14 {
    public final vda o = new vda();

    public final void U(uy9 uy9Var, InputStream inputStream, String str) {
        File fileB;
        synchronized (uy9Var) {
            uy9Var.k();
            File fileC = uy9Var.c(str, ".img");
            y14.r(null, "DiskCache: Save image - " + fileC.getPath());
            fileB = uy9.b(inputStream, fileC);
        }
        vda vdaVar = this.o;
        if (fileB != null) {
            vdaVar.c = BitmapFactory.decodeFile(fileB.getAbsolutePath());
            return;
        }
        vdaVar.a = false;
        vdaVar.d = "Image request error - can't save image to disk cache";
        i01.d(new StringBuilder("HttpImageRequest: Load in cache error - "), this.o.d, null);
    }
}

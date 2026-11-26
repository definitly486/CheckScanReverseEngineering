package defpackage;

import android.os.StatFs;
import java.io.File;
import yads.jx4;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class lb9 implements ll3 {
    public final /* synthetic */ int b;

    @Override // defpackage.ll3
    public final Object invoke() {
        long jH;
        switch (this.b) {
            case 0:
                qn2.a aVar = new qn2.a();
                j46 j46VarF = w93.c.f("coil3_disk_cache");
                double d = aVar.b;
                if (d > 0.0d) {
                    try {
                        File file = j46VarF.toFile();
                        file.mkdir();
                        StatFs statFs = new StatFs(file.getAbsolutePath());
                        jH = kx6.h((long) (d * statFs.getBlockSizeLong() * statFs.getBlockCountLong()), aVar.c, aVar.d);
                    } catch (Exception unused) {
                        jH = aVar.c;
                    }
                    break;
                } else {
                    jH = 0;
                }
                return new qy6(jH, aVar.e, aVar.a, j46VarF);
            default:
                return jx4.a();
        }
    }
}

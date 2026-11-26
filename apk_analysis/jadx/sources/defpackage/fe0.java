package defpackage;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.internal.measurement.zzada;
import java.util.List;
import yads.az1;
import yads.gl1;
import yads.l66;
import yads.st3;
import yads.vg2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class fe0 implements br3, l66, st3 {
    public final /* synthetic */ int b;

    public static int b(int i, int i2, int i3, int i4) {
        return zzada.zzE(i) + i2 + i3 + i4;
    }

    public static /* synthetic */ void c(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 2:
                return az1.b(l.longValue());
            default:
                return vg2.b(l.longValue());
        }
    }

    @Override // defpackage.br3
    public Object get() {
        boolean z = false;
        if (Build.VERSION.SDK_INT == 34) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);
            Bitmap bitmapCopy = bitmapCreateBitmap.copy(Bitmap.Config.HARDWARE, false);
            bitmapCreateBitmap.recycle();
            z = bitmapCopy == null;
            if (Log.isLoggable("GainmapWorkaroundCalc", 2)) {
                Log.v("GainmapWorkaroundCalc", "calculateNeedsGainmapDecodeWorkaround=" + z);
            }
            if (bitmapCopy != null) {
                bitmapCopy.recycle();
            }
        }
        return Boolean.valueOf(z);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return gl1.a(list);
    }
}

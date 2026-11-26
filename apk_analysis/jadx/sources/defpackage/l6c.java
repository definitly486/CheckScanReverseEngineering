package defpackage;

import android.graphics.Point;
import android.graphics.Rect;
import com.google.android.gms.internal.mlkit_vision_barcode.zzyb;

/* JADX INFO: loaded from: classes4.dex */
public final class l6c implements uc0 {
    public final zzyb a;

    public l6c(zzyb zzybVar) {
        this.a = zzybVar;
    }

    @Override // defpackage.uc0
    public final int a() {
        return this.a.zzb();
    }

    @Override // defpackage.uc0
    public final Rect b() {
        Point[] pointArrZzo = this.a.zzo();
        if (pointArrZzo == null) {
            return null;
        }
        int iMax = Integer.MIN_VALUE;
        int iMin = Integer.MAX_VALUE;
        int iMin2 = Integer.MAX_VALUE;
        int iMax2 = Integer.MIN_VALUE;
        for (Point point : pointArrZzo) {
            iMin = Math.min(iMin, point.x);
            iMax = Math.max(iMax, point.x);
            iMin2 = Math.min(iMin2, point.y);
            iMax2 = Math.max(iMax2, point.y);
        }
        return new Rect(iMin, iMin2, iMax, iMax2);
    }

    @Override // defpackage.uc0
    public final String c() {
        return this.a.zzm();
    }

    @Override // defpackage.uc0
    public final Point[] d() {
        return this.a.zzo();
    }

    @Override // defpackage.uc0
    public final int getFormat() {
        return this.a.zza();
    }
}

package defpackage;

import android.graphics.Point;
import android.graphics.Rect;
import com.google.android.gms.internal.mlkit_vision_barcode.zzu;

/* JADX INFO: loaded from: classes4.dex */
public final class gbc implements uc0 {
    public final zzu a;

    public gbc(zzu zzuVar) {
        this.a = zzuVar;
    }

    @Override // defpackage.uc0
    public final int a() {
        return this.a.zzd;
    }

    @Override // defpackage.uc0
    public final Rect b() {
        zzu zzuVar = this.a;
        if (zzuVar.zze == null) {
            return null;
        }
        int i = 0;
        int iMax = Integer.MIN_VALUE;
        int iMin = Integer.MAX_VALUE;
        int iMin2 = Integer.MAX_VALUE;
        int iMax2 = Integer.MIN_VALUE;
        while (true) {
            Point[] pointArr = zzuVar.zze;
            if (i >= pointArr.length) {
                return new Rect(iMin, iMin2, iMax, iMax2);
            }
            Point point = pointArr[i];
            iMin = Math.min(iMin, point.x);
            iMax = Math.max(iMax, point.x);
            iMin2 = Math.min(iMin2, point.y);
            iMax2 = Math.max(iMax2, point.y);
            i++;
        }
    }

    @Override // defpackage.uc0
    public final String c() {
        return this.a.zzb;
    }

    @Override // defpackage.uc0
    public final Point[] d() {
        return this.a.zze;
    }

    @Override // defpackage.uc0
    public final int getFormat() {
        return this.a.zza;
    }
}

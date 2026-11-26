package defpackage;

import androidx.exifinterface.media.ExifInterface;

/* JADX INFO: loaded from: classes5.dex */
public final class zt2 implements df4<wt2> {
    public static final zt2 a = new zt2();
    public static final fg6 b = new fg6("kotlin.time.Duration", dg6.i.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        wt2.a aVar = wt2.c;
        String strDecodeString = ud2Var.decodeString();
        strDecodeString.getClass();
        try {
            long jD = yt2.d(strDecodeString);
            if (jD == wt2.f) {
                throw new IllegalStateException("invariant failed");
            }
            return new wt2(jD);
        } catch (IllegalArgumentException e) {
            cc.e(me0.c("Invalid ISO duration string format: '", strDecodeString, "'."), e);
            return null;
        }
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        long j = ((wt2) obj).b;
        wt2.a aVar = wt2.c;
        StringBuilder sb = new StringBuilder();
        if (wt2.i(j)) {
            sb.append('-');
        }
        sb.append("PT");
        long jN = wt2.i(j) ? wt2.n(j) : j;
        long jK = wt2.k(jN, au2.HOURS);
        boolean z = false;
        int iK = wt2.h(jN) ? 0 : (int) (wt2.k(jN, au2.MINUTES) % 60);
        int iK2 = wt2.h(jN) ? 0 : (int) (wt2.k(jN, au2.SECONDS) % 60);
        int iG = wt2.g(jN);
        if (wt2.h(j)) {
            jK = 9999999999999L;
        }
        boolean z2 = jK != 0;
        boolean z3 = (iK2 == 0 && iG == 0) ? false : true;
        if (iK != 0 || (z3 && z2)) {
            z = true;
        }
        if (z2) {
            sb.append(jK);
            sb.append('H');
        }
        if (z) {
            sb.append(iK);
            sb.append('M');
        }
        if (z3 || (!z2 && !z)) {
            wt2.c(sb, iK2, iG, 9, ExifInterface.LATITUDE_SOUTH, true);
        }
        ux2Var.encodeString(sb.toString());
    }
}

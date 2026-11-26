package defpackage;

import android.graphics.PointF;
import androidx.media3.exoplayer.upstream.CmcdData;
import io.appmetrica.analytics.push.coreutils.internal.CoreConstants;

/* JADX INFO: loaded from: classes3.dex */
public final class cq2 implements cc9<bq2> {
    public static final cq2 b = new cq2();
    public static final td4.a c = td4.a.a("t", "f", CmcdData.STREAMING_FORMAT_SS, CoreConstants.PushMessage.PROCESSING_MIN_TIME, "tr", "lh", "ls", "fc", "sc", "sw", "of", "ps", "sz");

    @Override // defpackage.cc9
    public final bq2 e(td4 td4Var, float f) {
        bq2.a aVar = bq2.a.CENTER;
        td4Var.n();
        String strQ = null;
        float fE = 0.0f;
        float fE2 = 0.0f;
        float fE3 = 0.0f;
        float fE4 = 0.0f;
        int iP = 0;
        int iA = 0;
        int iA2 = 0;
        boolean zY = true;
        String strQ2 = null;
        PointF pointF = null;
        PointF pointF2 = null;
        while (td4Var.v()) {
            switch (td4Var.X(c)) {
                case 0:
                    strQ = td4Var.Q();
                    break;
                case 1:
                    strQ2 = td4Var.Q();
                    break;
                case 2:
                    fE = (float) td4Var.E();
                    break;
                case 3:
                    int iP2 = td4Var.P();
                    bq2.a aVar2 = bq2.a.CENTER;
                    aVar = (iP2 <= aVar2.ordinal() && iP2 >= 0) ? bq2.a.values()[iP2] : aVar2;
                    break;
                case 4:
                    iP = td4Var.P();
                    break;
                case 5:
                    fE2 = (float) td4Var.E();
                    break;
                case 6:
                    fE3 = (float) td4Var.E();
                    break;
                case 7:
                    iA = ie4.a(td4Var);
                    break;
                case 8:
                    iA2 = ie4.a(td4Var);
                    break;
                case 9:
                    fE4 = (float) td4Var.E();
                    break;
                case 10:
                    zY = td4Var.y();
                    break;
                case 11:
                    td4Var.m();
                    pointF = new PointF(((float) td4Var.E()) * f, ((float) td4Var.E()) * f);
                    td4Var.o();
                    break;
                case 12:
                    td4Var.m();
                    pointF2 = new PointF(((float) td4Var.E()) * f, ((float) td4Var.E()) * f);
                    td4Var.o();
                    break;
                default:
                    td4Var.Z();
                    td4Var.e0();
                    break;
            }
        }
        td4Var.p();
        bq2 bq2Var = new bq2();
        bq2Var.a = strQ;
        bq2Var.b = strQ2;
        bq2Var.c = fE;
        bq2Var.d = aVar;
        bq2Var.e = iP;
        bq2Var.f = fE2;
        bq2Var.g = fE3;
        bq2Var.h = iA;
        bq2Var.i = iA2;
        bq2Var.j = fE4;
        bq2Var.k = zY;
        bq2Var.l = pointF;
        bq2Var.m = pointF2;
        return bq2Var;
    }
}

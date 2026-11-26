package com.dlazaro66.qrcodereaderview;

import android.graphics.Point;
import android.graphics.PointF;
import defpackage.w57;

/* JADX INFO: loaded from: classes3.dex */
public class QRToViewPointTransformer {
    public PointF transform(w57 w57Var, boolean z, Orientation orientation, Point point, Point point2) {
        float f = point2.x;
        float f2 = point2.y;
        if (orientation == Orientation.PORTRAIT) {
            PointF pointF = new PointF((f2 - w57Var.b) * (point.x / f2), w57Var.a * (point.y / f));
            if (z) {
                pointF.y = point.y - pointF.y;
            }
            return pointF;
        }
        if (orientation != Orientation.LANDSCAPE) {
            return null;
        }
        PointF pointF2 = new PointF(point.x - (w57Var.a * (point.x / f)), point.y - (w57Var.b * (point.y / f2)));
        if (z) {
            pointF2.x = point.x - pointF2.x;
        }
        return pointF2;
    }

    public PointF[] transform(w57[] w57VarArr, boolean z, Orientation orientation, Point point, Point point2) {
        PointF[] pointFArr = new PointF[w57VarArr.length];
        int length = w57VarArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            QRToViewPointTransformer qRToViewPointTransformer = this;
            pointFArr[i2] = qRToViewPointTransformer.transform(w57VarArr[i], z, orientation, point, point2);
            i2++;
            i++;
            this = qRToViewPointTransformer;
        }
        return pointFArr;
    }
}

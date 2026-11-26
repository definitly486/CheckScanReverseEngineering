package yads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class gm2 extends xk5 {
    public final pm2 m;

    public gm2(List list) {
        byte[] bArr = (byte[]) list.get(0);
        int length = bArr.length;
        this.m = new pm2(((bArr[0] & 255) << 8) | (bArr[1] & 255), (bArr[3] & 255) | ((bArr[2] & 255) << 8));
    }

    @Override // yads.xk5
    public final mt5 a(byte[] bArr, int i, boolean z) {
        boolean z2;
        List listUnmodifiableList;
        mm2 mm2Var;
        int iA;
        int iA2;
        int i2;
        int iA3;
        if (z) {
            om2 om2Var = this.m.f;
            om2Var.c.clear();
            om2Var.d.clear();
            om2Var.e.clear();
            om2Var.f.clear();
            om2Var.g.clear();
            om2Var.h = null;
            om2Var.i = null;
        }
        pm2 pm2Var = this.m;
        pm2Var.getClass();
        ns4 ns4Var = new ns4(bArr, i);
        while (true) {
            z2 = true;
            if (ns4Var.b() >= 48 && ns4Var.a(8) == 15) {
                om2 om2Var2 = pm2Var.f;
                int iA4 = ns4Var.a(8);
                int i3 = 16;
                int iA5 = ns4Var.a(16);
                int iA6 = ns4Var.a(16);
                int iC = ns4Var.c() + iA6;
                if (iA6 * 8 > ns4Var.b()) {
                    sv3.d("DvbParser", "Data field length exceeds limit");
                    ns4Var.c(ns4Var.b());
                } else {
                    switch (iA4) {
                        case 16:
                            if (iA5 == om2Var2.a) {
                                km2 km2Var = om2Var2.i;
                                ns4Var.a(8);
                                int iA7 = ns4Var.a(4);
                                int iA8 = ns4Var.a(2);
                                ns4Var.c(2);
                                int i4 = iA6 - 2;
                                SparseArray sparseArray = new SparseArray();
                                while (i4 > 0) {
                                    int iA9 = ns4Var.a(8);
                                    ns4Var.c(8);
                                    i4 -= 6;
                                    sparseArray.put(iA9, new lm2(ns4Var.a(16), ns4Var.a(16)));
                                }
                                km2 km2Var2 = new km2(iA7, iA8, sparseArray);
                                if (iA8 != 0) {
                                    om2Var2.i = km2Var2;
                                    om2Var2.c.clear();
                                    om2Var2.d.clear();
                                    om2Var2.e.clear();
                                } else if (km2Var != null && km2Var.a != iA7) {
                                    om2Var2.i = km2Var2;
                                }
                            }
                            break;
                        case 17:
                            km2 km2Var3 = om2Var2.i;
                            if (iA5 == om2Var2.a && km2Var3 != null) {
                                int iA10 = ns4Var.a(8);
                                ns4Var.c(4);
                                boolean zE = ns4Var.e();
                                ns4Var.c(3);
                                int iA11 = ns4Var.a(16);
                                int iA12 = ns4Var.a(16);
                                ns4Var.a(3);
                                int iA13 = ns4Var.a(3);
                                ns4Var.c(2);
                                int iA14 = ns4Var.a(8);
                                int iA15 = ns4Var.a(8);
                                int iA16 = ns4Var.a(4);
                                int iA17 = ns4Var.a(2);
                                ns4Var.c(2);
                                int i5 = iA6 - 10;
                                SparseArray sparseArray2 = new SparseArray();
                                while (i5 > 0) {
                                    int iA18 = ns4Var.a(i3);
                                    int iA19 = ns4Var.a(2);
                                    ns4Var.a(2);
                                    int iA20 = ns4Var.a(12);
                                    ns4Var.c(4);
                                    int iA21 = ns4Var.a(12);
                                    int i6 = i5 - 6;
                                    if (iA19 == 1 || iA19 == 2) {
                                        ns4Var.a(8);
                                        ns4Var.a(8);
                                        i5 -= 8;
                                    } else {
                                        i5 = i6;
                                    }
                                    sparseArray2.put(iA18, new nm2(iA20, iA21));
                                    i3 = 16;
                                }
                                mm2 mm2Var2 = new mm2(iA10, zE, iA11, iA12, iA13, iA14, iA15, iA16, iA17, sparseArray2);
                                if (km2Var3.b == 0 && (mm2Var = (mm2) om2Var2.c.get(iA10)) != null) {
                                    SparseArray sparseArray3 = mm2Var.j;
                                    for (int i7 = 0; i7 < sparseArray3.size(); i7++) {
                                        mm2Var2.j.put(sparseArray3.keyAt(i7), (nm2) sparseArray3.valueAt(i7));
                                    }
                                }
                                om2Var2.c.put(mm2Var2.a, mm2Var2);
                            }
                            break;
                        case 18:
                            if (iA5 == om2Var2.a) {
                                hm2 hm2VarA = pm2.a(ns4Var, iA6);
                                om2Var2.d.put(hm2VarA.a, hm2VarA);
                            } else if (iA5 == om2Var2.b) {
                                hm2 hm2VarA2 = pm2.a(ns4Var, iA6);
                                om2Var2.f.put(hm2VarA2.a, hm2VarA2);
                            }
                            break;
                        case 19:
                            if (iA5 == om2Var2.a) {
                                jm2 jm2VarA = pm2.a(ns4Var);
                                om2Var2.e.put(jm2VarA.a, jm2VarA);
                            } else if (iA5 == om2Var2.b) {
                                jm2 jm2VarA2 = pm2.a(ns4Var);
                                om2Var2.g.put(jm2VarA2.a, jm2VarA2);
                            }
                            break;
                        case 20:
                            if (iA5 == om2Var2.a) {
                                ns4Var.c(4);
                                boolean zE2 = ns4Var.e();
                                ns4Var.c(3);
                                int iA22 = ns4Var.a(16);
                                int iA23 = ns4Var.a(16);
                                if (zE2) {
                                    int iA24 = ns4Var.a(16);
                                    iA = ns4Var.a(16);
                                    iA3 = ns4Var.a(16);
                                    i2 = iA24;
                                    iA2 = ns4Var.a(16);
                                } else {
                                    iA = iA22;
                                    iA2 = iA23;
                                    i2 = 0;
                                    iA3 = 0;
                                }
                                om2Var2.h = new im2(iA22, iA23, i2, iA, iA3, iA2);
                            }
                            break;
                    }
                    ns4Var.d(iC - ns4Var.c());
                }
            }
        }
        om2 om2Var3 = pm2Var.f;
        km2 km2Var4 = om2Var3.i;
        if (km2Var4 == null) {
            listUnmodifiableList = Collections.EMPTY_LIST;
        } else {
            im2 im2Var = om2Var3.h;
            if (im2Var == null) {
                im2Var = pm2Var.d;
            }
            Bitmap bitmap = pm2Var.g;
            if (bitmap == null || im2Var.a + 1 != bitmap.getWidth() || im2Var.b + 1 != pm2Var.g.getHeight()) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(im2Var.a + 1, im2Var.b + 1, Bitmap.Config.ARGB_8888);
                pm2Var.g = bitmapCreateBitmap;
                pm2Var.c.setBitmap(bitmapCreateBitmap);
            }
            ArrayList arrayList = new ArrayList();
            SparseArray sparseArray4 = km2Var4.c;
            int i8 = 0;
            while (i8 < sparseArray4.size()) {
                pm2Var.c.save();
                lm2 lm2Var = (lm2) sparseArray4.valueAt(i8);
                mm2 mm2Var3 = (mm2) pm2Var.f.c.get(sparseArray4.keyAt(i8));
                int i9 = lm2Var.a + im2Var.c;
                int i10 = lm2Var.b + im2Var.e;
                pm2Var.c.clipRect(i9, i10, Math.min(mm2Var3.c + i9, im2Var.d), Math.min(mm2Var3.d + i10, im2Var.f));
                hm2 hm2Var = (hm2) pm2Var.f.d.get(mm2Var3.f);
                if (hm2Var == null && (hm2Var = (hm2) pm2Var.f.f.get(mm2Var3.f)) == null) {
                    hm2Var = pm2Var.e;
                }
                SparseArray sparseArray5 = mm2Var3.j;
                int i11 = 0;
                while (i11 < sparseArray5.size()) {
                    int iKeyAt = sparseArray5.keyAt(i11);
                    boolean z3 = z2;
                    nm2 nm2Var = (nm2) sparseArray5.valueAt(i11);
                    jm2 jm2Var = (jm2) pm2Var.f.e.get(iKeyAt);
                    if (jm2Var == null) {
                        jm2Var = (jm2) pm2Var.f.g.get(iKeyAt);
                    }
                    if (jm2Var != null) {
                        Paint paint = jm2Var.b ? null : pm2Var.a;
                        int i12 = mm2Var3.e;
                        int i13 = i9 + nm2Var.a;
                        int i14 = i10 + nm2Var.b;
                        Canvas canvas = pm2Var.c;
                        int[] iArr = i12 == 3 ? hm2Var.d : i12 == 2 ? hm2Var.c : hm2Var.b;
                        pm2.a(jm2Var.c, iArr, i12, i13, i14, paint, canvas);
                        pm2.a(jm2Var.d, iArr, i12, i13, i14 + 1, paint, canvas);
                    }
                    i11++;
                    z2 = z3;
                }
                boolean z4 = z2;
                if (mm2Var3.b) {
                    int i15 = mm2Var3.e;
                    pm2Var.b.setColor(i15 == 3 ? hm2Var.d[mm2Var3.g] : i15 == 2 ? hm2Var.c[mm2Var3.h] : hm2Var.b[mm2Var3.i]);
                    pm2Var.c.drawRect(i9, i10, mm2Var3.c + i9, mm2Var3.d + i10, pm2Var.b);
                }
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(pm2Var.g, i9, i10, mm2Var3.c, mm2Var3.d);
                float f = im2Var.a;
                float f2 = im2Var.b;
                arrayList.add(new sb0(null, null, null, bitmapCreateBitmap2, i10 / f2, 0, 0, i9 / f, 0, Integer.MIN_VALUE, -3.4028235E38f, mm2Var3.c / f, mm2Var3.d / f2, false, -16777216, Integer.MIN_VALUE, 0.0f));
                pm2Var.c.drawColor(0, PorterDuff.Mode.CLEAR);
                pm2Var.c.restore();
                i8++;
                z2 = z4;
            }
            listUnmodifiableList = Collections.unmodifiableList(arrayList);
        }
        return new qm2(listUnmodifiableList);
    }
}

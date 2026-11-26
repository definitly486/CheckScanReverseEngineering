package defpackage;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class xw4 {
    public static final td4.a a = td4.a.a("w", CmcdData.STREAMING_FORMAT_HLS, "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");
    public static final td4.a b = td4.a.a(TtmlNode.ATTR_ID, "layers", "w", CmcdData.STREAMING_FORMAT_HLS, TtmlNode.TAG_P, "u");
    public static final td4.a c = td4.a.a("list");
    public static final td4.a d = td4.a.a("cm", "tm", "dr");

    public static nw4 a(he4 he4Var) throws xc4, EOFException {
        float f;
        float f2;
        float f3;
        float f4;
        float fC = ib9.c();
        LongSparseArray<xk4> longSparseArray = new LongSparseArray<>();
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        SparseArrayCompat<gi3> sparseArrayCompat = new SparseArrayCompat<>();
        nw4 nw4Var = new nw4();
        he4Var.n();
        float fE = 0.0f;
        int iE = 0;
        int iE2 = 0;
        float fE2 = 0.0f;
        float fE3 = 0.0f;
        while (he4Var.v()) {
            fC = fC;
            switch (he4Var.X(a)) {
                case 0:
                    iE = (int) he4Var.E();
                    fE = fE;
                    break;
                case 1:
                    iE2 = (int) he4Var.E();
                    fE = fE;
                    break;
                case 2:
                    fE2 = (float) he4Var.E();
                    fE = fE;
                    break;
                case 3:
                    fE3 = ((float) he4Var.E()) - 0.01f;
                    fE = fE;
                    break;
                case 4:
                    fE = (float) he4Var.E();
                    fC = fC;
                    break;
                case 5:
                    fE = fE;
                    f = fE2;
                    f2 = fE3;
                    String[] strArrSplit = he4Var.Q().split("\\.");
                    int i = Integer.parseInt(strArrSplit[0]);
                    int i2 = Integer.parseInt(strArrSplit[1]);
                    int i3 = Integer.parseInt(strArrSplit[2]);
                    if (i < 4 || (i <= 4 && (i2 < 4 || (i2 <= 4 && i3 < 0)))) {
                        nw4Var.a("Lottie only supports bodymovin >= 4.4.0");
                    }
                    fE2 = f;
                    fE3 = f2;
                    fE = fE;
                    break;
                case 6:
                    fE = fE;
                    f = fE2;
                    f2 = fE3;
                    he4Var.m();
                    int i4 = 0;
                    while (he4Var.v()) {
                        xk4 xk4VarA = yk4.a(he4Var, nw4Var);
                        if (xk4VarA.e == xk4.a.IMAGE) {
                            i4++;
                        }
                        arrayList.add(xk4VarA);
                        longSparseArray.put(xk4VarA.d, xk4VarA);
                        if (i4 > 4) {
                            gv4.b("You have " + i4 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
                        }
                    }
                    he4Var.o();
                    fE2 = f;
                    fE3 = f2;
                    fE = fE;
                    break;
                case 7:
                    fE = fE;
                    f = fE2;
                    f2 = fE3;
                    he4Var.m();
                    while (he4Var.v()) {
                        ArrayList arrayList3 = new ArrayList();
                        LongSparseArray longSparseArray2 = new LongSparseArray();
                        he4Var.n();
                        String strQ = null;
                        String strQ2 = null;
                        String strQ3 = null;
                        int iP = 0;
                        int iP2 = 0;
                        while (he4Var.v()) {
                            int iX = he4Var.X(b);
                            if (iX == 0) {
                                strQ = he4Var.Q();
                            } else if (iX == 1) {
                                he4Var.m();
                                while (he4Var.v()) {
                                    xk4 xk4VarA2 = yk4.a(he4Var, nw4Var);
                                    longSparseArray2.put(xk4VarA2.d, xk4VarA2);
                                    arrayList3.add(xk4VarA2);
                                }
                                he4Var.o();
                            } else if (iX == 2) {
                                iP = he4Var.P();
                            } else if (iX == 3) {
                                iP2 = he4Var.P();
                            } else if (iX == 4) {
                                strQ2 = he4Var.Q();
                            } else if (iX != 5) {
                                he4Var.Z();
                                he4Var.e0();
                            } else {
                                strQ3 = he4Var.Q();
                            }
                        }
                        he4Var.p();
                        if (strQ2 != null) {
                            map2.put(strQ, new sx4(iP, iP2, strQ, strQ2, strQ3));
                        } else {
                            map.put(strQ, arrayList3);
                        }
                    }
                    he4Var.o();
                    fE2 = f;
                    fE3 = f2;
                    fE = fE;
                    break;
                case 8:
                    fE = fE;
                    f = fE2;
                    float f5 = fE3;
                    he4Var.n();
                    while (he4Var.v()) {
                        if (he4Var.X(c) != 0) {
                            he4Var.Z();
                            he4Var.e0();
                        } else {
                            he4Var.m();
                            while (he4Var.v()) {
                                td4.a aVar = li3.a;
                                he4Var.n();
                                String strQ4 = null;
                                String strQ5 = null;
                                String strQ6 = null;
                                while (he4Var.v()) {
                                    int iX2 = he4Var.X(li3.a);
                                    if (iX2 != 0) {
                                        float f6 = f5;
                                        if (iX2 == 1) {
                                            strQ5 = he4Var.Q();
                                        } else if (iX2 == 2) {
                                            strQ6 = he4Var.Q();
                                        } else if (iX2 != 3) {
                                            he4Var.Z();
                                            he4Var.e0();
                                        } else {
                                            he4Var.E();
                                        }
                                        f5 = f6;
                                    } else {
                                        strQ4 = he4Var.Q();
                                    }
                                }
                                he4Var.p();
                                map3.put(strQ5, new di3(strQ4, strQ5, strQ6));
                                f5 = f5;
                            }
                            he4Var.o();
                        }
                    }
                    f2 = f5;
                    he4Var.p();
                    fE2 = f;
                    fE3 = f2;
                    fE = fE;
                    break;
                case 9:
                    fE = fE;
                    f = fE2;
                    f3 = fE3;
                    he4Var.m();
                    while (he4Var.v()) {
                        td4.a aVar2 = hi3.a;
                        ArrayList arrayList4 = new ArrayList();
                        he4Var.n();
                        double dE = 0.0d;
                        String strQ7 = null;
                        String strQ8 = null;
                        char cCharAt = 0;
                        while (he4Var.v()) {
                            int iX3 = he4Var.X(hi3.a);
                            if (iX3 == 0) {
                                cCharAt = he4Var.Q().charAt(0);
                            } else if (iX3 == 1) {
                                he4Var.E();
                            } else if (iX3 == 2) {
                                dE = he4Var.E();
                            } else if (iX3 == 3) {
                                strQ7 = he4Var.Q();
                            } else if (iX3 == 4) {
                                strQ8 = he4Var.Q();
                            } else if (iX3 != 5) {
                                he4Var.Z();
                                he4Var.e0();
                            } else {
                                he4Var.n();
                                while (he4Var.v()) {
                                    if (he4Var.X(hi3.b) != 0) {
                                        he4Var.Z();
                                        he4Var.e0();
                                    } else {
                                        he4Var.m();
                                        while (he4Var.v()) {
                                            arrayList4.add((wr7) ey1.a(he4Var, nw4Var));
                                        }
                                        he4Var.o();
                                    }
                                }
                                he4Var.p();
                            }
                        }
                        he4Var.p();
                        gi3 gi3Var = new gi3(arrayList4, cCharAt, dE, strQ7, strQ8);
                        sparseArrayCompat.put(gi3Var.hashCode(), gi3Var);
                    }
                    he4Var.o();
                    f2 = f3;
                    fE2 = f;
                    fE3 = f2;
                    fE = fE;
                    break;
                case 10:
                    he4Var.m();
                    while (he4Var.v()) {
                        he4Var.n();
                        String strQ9 = null;
                        float fE4 = 0.0f;
                        float fE5 = 0.0f;
                        while (he4Var.v()) {
                            int iX4 = he4Var.X(d);
                            if (iX4 != 0) {
                                f4 = fE;
                                if (iX4 == 1) {
                                    fE3 = fE3;
                                    fE4 = (float) he4Var.E();
                                } else if (iX4 != 2) {
                                    he4Var.Z();
                                    he4Var.e0();
                                } else {
                                    fE3 = fE3;
                                    fE5 = (float) he4Var.E();
                                }
                                fE = f4;
                                fE2 = fE2;
                            } else {
                                f4 = fE;
                                strQ9 = he4Var.Q();
                            }
                            fE = f4;
                        }
                        he4Var.p();
                        arrayList2.add(new u05(strQ9, fE4, fE5));
                        fE3 = fE3;
                        fE2 = fE2;
                        fE = fE;
                    }
                    fE = fE;
                    f = fE2;
                    f3 = fE3;
                    he4Var.o();
                    f2 = f3;
                    fE2 = f;
                    fE3 = f2;
                    fE = fE;
                    break;
                default:
                    he4Var.Z();
                    he4Var.e0();
                    fE = fE;
                    f = fE2;
                    f2 = fE3;
                    fE2 = f;
                    fE3 = f2;
                    fE = fE;
                    break;
            }
        }
        float f7 = fC;
        float f8 = fE;
        Rect rect = new Rect(0, 0, (int) (iE * f7), (int) (iE2 * f7));
        float fC2 = ib9.c();
        nw4Var.k = rect;
        nw4Var.l = fE2;
        nw4Var.m = fE3;
        nw4Var.n = f8;
        nw4Var.j = arrayList;
        nw4Var.i = longSparseArray;
        nw4Var.c = map;
        nw4Var.d = map2;
        nw4Var.e = fC2;
        nw4Var.h = sparseArrayCompat;
        nw4Var.f = map3;
        nw4Var.g = arrayList2;
        return nw4Var;
    }
}

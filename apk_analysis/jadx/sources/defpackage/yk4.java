package defpackage;

import android.graphics.Color;
import android.view.animation.Interpolator;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
public final class yk4 {
    public static final td4.a a = td4.a.a("nm", "ind", "refId", "ty", "parent", "sw", "sh", "sc", "ks", TtmlNode.TAG_TT, "masksProperties", "shapes", "t", "ef", "sr", "st", "w", CmcdData.STREAMING_FORMAT_HLS, "ip", "op", "tm", "cl", "hd", "ao", "bm");
    public static final td4.a b = td4.a.a("d", CmcdData.OBJECT_TYPE_AUDIO_ONLY);
    public static final td4.a c = td4.a.a("ty", "nm");

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[xk4.b.values().length];
            a = iArr;
            try {
                iArr[xk4.b.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[xk4.b.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:196:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:198:0x03a7  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v37 */
    /* JADX WARN: Type inference failed for: r15v38 */
    /* JADX WARN: Type inference failed for: r15v41 */
    /* JADX WARN: Type inference failed for: r15v42 */
    /* JADX WARN: Type inference failed for: r15v45 */
    /* JADX WARN: Type inference failed for: r15v46 */
    /* JADX WARN: Type inference failed for: r15v49 */
    /* JADX WARN: Type inference failed for: r15v50 */
    /* JADX WARN: Type inference failed for: r15v53 */
    /* JADX WARN: Type inference failed for: r15v54 */
    /* JADX WARN: Type inference failed for: r15v55 */
    /* JADX WARN: Type inference failed for: r15v61 */
    public static xk4 a(he4 he4Var, nw4 nw4Var) throws xc4, EOFException {
        boolean z;
        Float f;
        String str;
        float f2;
        Float f3;
        String str2;
        ts8 ts8Var;
        Float f4;
        dl dlVar;
        dl dlVar2;
        dl dlVar3;
        ?? r15;
        Float fValueOf = Float.valueOf(0.0f);
        Float fValueOf2 = Float.valueOf(1.0f);
        xk4.b bVar = xk4.b.NONE;
        bh4 bh4Var = bh4.NORMAL;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        he4Var.n();
        boolean z2 = false;
        xk4.b bVar2 = bVar;
        bh4 bh4Var2 = bh4Var;
        float fE = 0.0f;
        float fE2 = 0.0f;
        float fE3 = 0.0f;
        float fE4 = 0.0f;
        float fE5 = 0.0f;
        boolean z3 = false;
        int iC = 0;
        int iC2 = 0;
        int color = 0;
        boolean zY = false;
        ql qlVarC = null;
        xk4.a aVar = null;
        String strQ = null;
        ik0 ik0Var = null;
        ft2 ft2Var = null;
        ll llVar = null;
        ml mlVar = null;
        dl dlVarD = null;
        float fE6 = 1.0f;
        long jP = 0;
        String strQ2 = null;
        String strQ3 = "UNSET";
        long jP2 = -1;
        while (he4Var.v()) {
            boolean z4 = true;
            switch (he4Var.X(a)) {
                case 0:
                    strQ3 = he4Var.Q();
                    break;
                case 1:
                    f = fValueOf;
                    str = strQ2;
                    jP = he4Var.P();
                    strQ2 = str;
                    fValueOf = f;
                    break;
                case 2:
                    strQ = he4Var.Q();
                    break;
                case 3:
                    f = fValueOf;
                    str = strQ2;
                    f2 = fE6;
                    int iP = he4Var.P();
                    aVar = xk4.a.UNKNOWN;
                    if (iP < aVar.ordinal()) {
                        aVar = xk4.a.values()[iP];
                    }
                    fE6 = f2;
                    strQ2 = str;
                    fValueOf = f;
                    break;
                case 4:
                    f = fValueOf;
                    jP2 = he4Var.P();
                    fValueOf = f;
                    break;
                case 5:
                    f = fValueOf;
                    str = strQ2;
                    iC = (int) (ib9.c() * he4Var.P());
                    strQ2 = str;
                    fValueOf = f;
                    break;
                case 6:
                    f = fValueOf;
                    str = strQ2;
                    iC2 = (int) (ib9.c() * he4Var.P());
                    strQ2 = str;
                    fValueOf = f;
                    break;
                case 7:
                    f = fValueOf;
                    color = Color.parseColor(he4Var.Q());
                    fValueOf = f;
                    break;
                case 8:
                    qlVarC = rl.c(he4Var, nw4Var);
                    break;
                case 9:
                    f = fValueOf;
                    str = strQ2;
                    f2 = fE6;
                    int iP2 = he4Var.P();
                    if (iP2 >= xk4.b.values().length) {
                        nw4Var.a("Unsupported matte type: " + iP2);
                    } else {
                        bVar2 = xk4.b.values()[iP2];
                        int i = a.a[bVar2.ordinal()];
                        if (i == 1) {
                            nw4Var.a("Unsupported matte type: Luma");
                        } else if (i == 2) {
                            nw4Var.a("Unsupported matte type: Luma Inverted");
                        }
                        nw4Var.p++;
                    }
                    fE6 = f2;
                    strQ2 = str;
                    fValueOf = f;
                    break;
                case 10:
                    f = fValueOf;
                    str = strQ2;
                    f2 = fE6;
                    he4Var.m();
                    while (he4Var.v()) {
                        he4Var.n();
                        i15.a aVar2 = null;
                        jl jlVar = null;
                        fl flVarF = null;
                        boolean zY2 = false;
                        while (he4Var.v()) {
                            String strX0 = he4Var.x0();
                            strX0.getClass();
                            switch (strX0) {
                                case "o":
                                    flVarF = tl.f(he4Var, nw4Var);
                                    break;
                                case "pt":
                                    jlVar = new jl(zf4.a(he4Var, nw4Var, ib9.c(), tr7.b, false));
                                    break;
                                case "inv":
                                    zY2 = he4Var.y();
                                    break;
                                case "mode":
                                    String strQ4 = he4Var.Q();
                                    strQ4.getClass();
                                    switch (strQ4) {
                                        case "a":
                                            aVar2 = i15.a.MASK_MODE_ADD;
                                            break;
                                        case "i":
                                            nw4Var.a("Animation contains intersect masks. They are not supported but will be treated like add masks.");
                                            aVar2 = i15.a.MASK_MODE_INTERSECT;
                                            break;
                                        case "n":
                                            aVar2 = i15.a.MASK_MODE_NONE;
                                            break;
                                        case "s":
                                            aVar2 = i15.a.MASK_MODE_SUBTRACT;
                                            break;
                                        default:
                                            gv4.b("Unknown mask mode " + strX0 + ". Defaulting to Add.");
                                            aVar2 = i15.a.MASK_MODE_ADD;
                                            break;
                                    }
                                    break;
                                default:
                                    he4Var.e0();
                                    break;
                            }
                        }
                        he4Var.p();
                        arrayList.add(new i15(aVar2, jlVar, flVarF, zY2));
                    }
                    z2 = false;
                    nw4Var.p += arrayList.size();
                    he4Var.o();
                    fE6 = f2;
                    strQ2 = str;
                    fValueOf = f;
                    break;
                case 11:
                    f = fValueOf;
                    str = strQ2;
                    f2 = fE6;
                    he4Var.m();
                    while (he4Var.v()) {
                        dy1 dy1VarA = ey1.a(he4Var, nw4Var);
                        if (dy1VarA != null) {
                            arrayList2.add(dy1VarA);
                        }
                    }
                    he4Var.o();
                    z2 = false;
                    fE6 = f2;
                    strQ2 = str;
                    fValueOf = f;
                    break;
                case 12:
                    f3 = fValueOf;
                    he4Var.n();
                    while (he4Var.v()) {
                        int iX = he4Var.X(b);
                        if (iX == 0) {
                            str2 = strQ2;
                            llVar = new ll(zf4.a(he4Var, nw4Var, ib9.c(), cq2.b, false));
                        } else if (iX != 1) {
                            he4Var.Z();
                            he4Var.e0();
                        } else {
                            he4Var.m();
                            if (he4Var.v()) {
                                td4.a aVar3 = nl.a;
                                he4Var.n();
                                pl plVar = null;
                                ol olVar = null;
                                while (he4Var.v()) {
                                    int iX2 = he4Var.X(nl.a);
                                    if (iX2 != 0) {
                                        boolean z5 = true;
                                        if (iX2 != 1) {
                                            he4Var.Z();
                                            he4Var.e0();
                                        } else {
                                            he4Var.n();
                                            cl clVarC = null;
                                            cl clVarC2 = null;
                                            dl dlVarD2 = null;
                                            dl dlVarD3 = null;
                                            fl flVarF2 = null;
                                            while (he4Var.v()) {
                                                int iX3 = he4Var.X(nl.c);
                                                if (iX3 == 0) {
                                                    clVarC = tl.c(he4Var, nw4Var);
                                                } else if (iX3 == z5) {
                                                    clVarC2 = tl.c(he4Var, nw4Var);
                                                } else if (iX3 == 2) {
                                                    dlVarD2 = tl.d(he4Var, nw4Var, z5);
                                                } else if (iX3 == 3) {
                                                    dlVarD3 = tl.d(he4Var, nw4Var, z5);
                                                } else if (iX3 != 4) {
                                                    he4Var.Z();
                                                    he4Var.e0();
                                                } else {
                                                    flVarF2 = tl.f(he4Var, nw4Var);
                                                }
                                                z5 = true;
                                            }
                                            he4Var.p();
                                            plVar = new pl(clVarC, clVarC2, dlVarD2, dlVarD3, flVarF2);
                                        }
                                    } else {
                                        he4Var.n();
                                        fl flVar = null;
                                        fl flVarF3 = null;
                                        fl flVarF4 = null;
                                        ts8 ts8Var2 = null;
                                        while (he4Var.v()) {
                                            int iX4 = he4Var.X(nl.b);
                                            if (iX4 != 0) {
                                                String str3 = strQ2;
                                                if (iX4 == 1) {
                                                    flVarF3 = tl.f(he4Var, nw4Var);
                                                } else if (iX4 == 2) {
                                                    flVarF4 = tl.f(he4Var, nw4Var);
                                                } else if (iX4 != 3) {
                                                    he4Var.Z();
                                                    he4Var.e0();
                                                } else {
                                                    int iP3 = he4Var.P();
                                                    int i2 = 1;
                                                    if (iP3 == 1) {
                                                        if (iP3 == i2) {
                                                            ts8Var = ts8.PERCENT;
                                                        } else {
                                                            ts8Var = ts8.INDEX;
                                                        }
                                                        ts8Var2 = ts8Var;
                                                    } else if (iP3 != 2) {
                                                        nw4Var.a("Unsupported text range units: " + iP3);
                                                        ts8Var2 = ts8.INDEX;
                                                    } else {
                                                        i2 = 1;
                                                        if (iP3 == i2) {
                                                            ts8Var = ts8.PERCENT;
                                                        } else {
                                                            ts8Var = ts8.INDEX;
                                                        }
                                                        ts8Var2 = ts8Var;
                                                    }
                                                }
                                                strQ2 = str3;
                                            } else {
                                                flVar = tl.f(he4Var, nw4Var);
                                            }
                                        }
                                        String str4 = strQ2;
                                        he4Var.p();
                                        if (flVar == null && flVarF3 != null) {
                                            flVar = new fl(Collections.singletonList(new vf4(0)));
                                        }
                                        olVar = new ol(flVar, flVarF3, flVarF4, ts8Var2);
                                        strQ2 = str4;
                                    }
                                }
                                str2 = strQ2;
                                he4Var.p();
                                mlVar = new ml(plVar, olVar);
                            } else {
                                str2 = strQ2;
                            }
                            while (he4Var.v()) {
                                he4Var.e0();
                            }
                            he4Var.o();
                        }
                        strQ2 = str2;
                    }
                    he4Var.p();
                    fE6 = fE6;
                    fValueOf = f3;
                    z2 = false;
                    break;
                case 13:
                    he4Var.m();
                    ArrayList arrayList3 = new ArrayList();
                    while (he4Var.v()) {
                        he4Var.n();
                        while (he4Var.v()) {
                            int iX5 = he4Var.X(c);
                            if (iX5 == 0) {
                                int iP4 = he4Var.P();
                                if (iP4 == 29) {
                                    td4.a aVar4 = jk0.a;
                                    ik0Var = null;
                                    while (he4Var.v()) {
                                        if (he4Var.X(jk0.a) != 0) {
                                            he4Var.Z();
                                            he4Var.e0();
                                        } else {
                                            he4Var.m();
                                            while (he4Var.v()) {
                                                he4Var.n();
                                                boolean z6 = false;
                                                ik0 ik0Var2 = null;
                                                while (he4Var.v()) {
                                                    int iX6 = he4Var.X(jk0.b);
                                                    if (iX6 == 0) {
                                                        z6 = he4Var.P() == 0 ? z4 : false;
                                                    } else if (iX6 != z4) {
                                                        he4Var.Z();
                                                        he4Var.e0();
                                                    } else if (z6) {
                                                        ik0Var2 = new ik0(tl.d(he4Var, nw4Var, z4));
                                                    } else {
                                                        he4Var.e0();
                                                    }
                                                }
                                                he4Var.p();
                                                if (ik0Var2 != null) {
                                                    ik0Var = ik0Var2;
                                                }
                                            }
                                            he4Var.o();
                                        }
                                    }
                                } else {
                                    if (iP4 == 25) {
                                        gt2 gt2Var = new gt2();
                                        while (he4Var.v()) {
                                            if (he4Var.X(gt2.f) != 0) {
                                                he4Var.Z();
                                                he4Var.e0();
                                            } else {
                                                he4Var.m();
                                                while (he4Var.v()) {
                                                    he4Var.n();
                                                    String strQ5 = "";
                                                    while (he4Var.v()) {
                                                        int iX7 = he4Var.X(gt2.g);
                                                        if (iX7 == 0) {
                                                            strQ5 = he4Var.Q();
                                                        } else if (iX7 == z4) {
                                                            strQ5.getClass();
                                                            switch (strQ5.hashCode()) {
                                                                case 353103893:
                                                                    r15 = !strQ5.equals("Distance") ? -1 : 0;
                                                                    break;
                                                                case 397447147:
                                                                    r15 = !strQ5.equals("Opacity") ? -1 : z4;
                                                                    break;
                                                                case 1041377119:
                                                                    r15 = !strQ5.equals("Direction") ? -1 : 2;
                                                                    break;
                                                                case 1379387491:
                                                                    r15 = !strQ5.equals("Shadow Color") ? -1 : 3;
                                                                    break;
                                                                case 1383710113:
                                                                    r15 = !strQ5.equals("Softness") ? -1 : 4;
                                                                    break;
                                                                default:
                                                                    r15 = -1;
                                                                    break;
                                                            }
                                                            switch (r15) {
                                                                case 0:
                                                                    gt2Var.d = tl.d(he4Var, nw4Var, z4);
                                                                    break;
                                                                case 1:
                                                                    gt2Var.b = tl.d(he4Var, nw4Var, false);
                                                                    break;
                                                                case 2:
                                                                    gt2Var.c = tl.d(he4Var, nw4Var, false);
                                                                    break;
                                                                case 3:
                                                                    gt2Var.a = tl.c(he4Var, nw4Var);
                                                                    break;
                                                                case 4:
                                                                    gt2Var.e = tl.d(he4Var, nw4Var, z4);
                                                                    break;
                                                                default:
                                                                    he4Var.e0();
                                                                    break;
                                                            }
                                                        } else {
                                                            he4Var.Z();
                                                            he4Var.e0();
                                                        }
                                                        z4 = true;
                                                    }
                                                    he4Var.p();
                                                    z4 = true;
                                                }
                                                he4Var.o();
                                                z4 = true;
                                            }
                                        }
                                        cl clVar = gt2Var.a;
                                        if (clVar == null || (dlVar = gt2Var.b) == null || (dlVar2 = gt2Var.c) == null) {
                                            f4 = fValueOf;
                                        } else {
                                            f4 = fValueOf;
                                            dl dlVar4 = gt2Var.d;
                                            if (dlVar4 != null && (dlVar3 = gt2Var.e) != null) {
                                                ft2Var = new ft2(clVar, dlVar, dlVar2, dlVar4, dlVar3);
                                            }
                                        }
                                        ft2Var = null;
                                    }
                                    fValueOf = f4;
                                    z4 = true;
                                }
                            } else if (iX5 != z4) {
                                he4Var.Z();
                                he4Var.e0();
                            } else {
                                arrayList3.add(he4Var.Q());
                            }
                            f4 = fValueOf;
                            fValueOf = f4;
                            z4 = true;
                        }
                        he4Var.p();
                        z4 = true;
                    }
                    f3 = fValueOf;
                    he4Var.o();
                    nw4Var.a("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList3);
                    fE6 = fE6;
                    fValueOf = f3;
                    z2 = false;
                    break;
                case 14:
                    fE6 = (float) he4Var.E();
                    z2 = false;
                    break;
                case 15:
                    fE5 = (float) he4Var.E();
                    z2 = false;
                    break;
                case 16:
                    fE3 = (float) (he4Var.E() * ((double) ib9.c()));
                    fE6 = fE6;
                    z2 = false;
                    break;
                case 17:
                    fE4 = (float) (he4Var.E() * ((double) ib9.c()));
                    fE6 = fE6;
                    z2 = false;
                    break;
                case 18:
                    fE = (float) he4Var.E();
                    break;
                case 19:
                    fE2 = (float) he4Var.E();
                    break;
                case 20:
                    dlVarD = tl.d(he4Var, nw4Var, z2);
                    break;
                case 21:
                    strQ2 = he4Var.Q();
                    break;
                case 22:
                    zY = he4Var.y();
                    break;
                case 23:
                    z3 = he4Var.P() != 1 ? z2 : true;
                    break;
                case 24:
                    int iP5 = he4Var.P();
                    if (iP5 < bh4.values().length) {
                        bh4Var2 = bh4.values()[iP5];
                    } else {
                        nw4Var.a("Unsupported Blend Mode: " + iP5);
                        bh4Var2 = bh4.NORMAL;
                    }
                    break;
                default:
                    he4Var.Z();
                    he4Var.e0();
                    f = fValueOf;
                    str = strQ2;
                    f2 = fE6;
                    fE6 = f2;
                    strQ2 = str;
                    fValueOf = f;
                    break;
            }
        }
        Float f5 = fValueOf;
        String str5 = strQ2;
        float f6 = fE6;
        he4Var.p();
        ArrayList arrayList4 = new ArrayList();
        if (fE > 0.0f) {
            z = z3;
            arrayList4.add(new vf4(nw4Var, f5, f5, (Interpolator) null, 0.0f, Float.valueOf(fE)));
        } else {
            z = z3;
        }
        if (fE2 <= 0.0f) {
            fE2 = nw4Var.m;
        }
        arrayList4.add(new vf4(nw4Var, fValueOf2, fValueOf2, (Interpolator) null, fE, Float.valueOf(fE2)));
        arrayList4.add(new vf4(nw4Var, f5, f5, (Interpolator) null, fE2, Float.valueOf(Float.MAX_VALUE)));
        if (strQ3.endsWith(".ai") || "ai".equals(str5)) {
            nw4Var.a("Convert your Illustrator layers to shape layers.");
        }
        if (z) {
            ql qlVar = qlVarC == null ? new ql() : qlVarC;
            qlVar.m = z;
            qlVarC = qlVar;
        }
        return new xk4(arrayList2, nw4Var, strQ3, jP, aVar, jP2, strQ, arrayList, qlVarC, iC, iC2, color, f6, fE5, fE3, fE4, llVar, mlVar, arrayList4, bVar2, dlVarD, zY, ik0Var, ft2Var, bh4Var2);
    }
}

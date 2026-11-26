package defpackage;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
public final class ey1 {
    public static final td4.a a = td4.a.a("ty", "d");

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:124:0x01da  */
    /* JADX WARN: Code duplicated, block: B:16:0x0041  */
    /* JADX WARN: Code duplicated, block: B:429:0x0739 A[LOOP:1: B:427:0x0733->B:429:0x0739, LOOP_END] */
    public static dy1 a(he4 he4Var, nw4 nw4Var) {
        String strQ;
        dy1 ck1Var;
        dy1 ur7Var;
        dy1 nr3Var;
        dy1 wr7Var;
        fs7.a aVar;
        he4Var.n();
        int iP = 2;
        while (true) {
            if (!he4Var.v()) {
                strQ = null;
                break;
            }
            int iX = he4Var.X(a);
            if (iX == 0) {
                strQ = he4Var.Q();
                break;
            }
            if (iX != 1) {
                he4Var.Z();
                he4Var.e0();
            } else {
                iP = he4Var.P();
            }
        }
        if (strQ == null) {
            return null;
        }
        boolean zY = false;
        switch (strQ) {
            case "el":
                td4.a aVar2 = dk1.a;
                boolean z = iP == 3;
                boolean zY2 = false;
                String strQ2 = null;
                sl slVarB = null;
                hl hlVarG = null;
                while (he4Var.v()) {
                    int iX2 = he4Var.X(dk1.a);
                    if (iX2 == 0) {
                        strQ2 = he4Var.Q();
                    } else if (iX2 == 1) {
                        slVarB = gl.b(he4Var, nw4Var);
                    } else if (iX2 == 2) {
                        hlVarG = tl.g(he4Var, nw4Var);
                    } else if (iX2 == 3) {
                        zY2 = he4Var.y();
                    } else if (iX2 != 4) {
                        he4Var.Z();
                        he4Var.e0();
                    } else {
                        z = he4Var.P() == 3;
                    }
                }
                ck1Var = new ck1(strQ2, slVarB, hlVarG, z, zY2);
                ur7Var = ck1Var;
                while (he4Var.v()) {
                    he4Var.e0();
                }
                he4Var.p();
                return ur7Var;
            case "fl":
                td4.a aVar3 = vr7.a;
                int iP2 = 1;
                boolean zY3 = false;
                boolean zY4 = false;
                fl flVar = null;
                String strQ3 = null;
                cl clVarC = null;
                while (he4Var.v()) {
                    int iX3 = he4Var.X(vr7.a);
                    if (iX3 == 0) {
                        strQ3 = he4Var.Q();
                    } else if (iX3 == 1) {
                        clVarC = tl.c(he4Var, nw4Var);
                    } else if (iX3 == 2) {
                        flVar = tl.f(he4Var, nw4Var);
                    } else if (iX3 == 3) {
                        zY3 = he4Var.y();
                    } else if (iX3 == 4) {
                        iP2 = he4Var.P();
                    } else if (iX3 != 5) {
                        he4Var.Z();
                        he4Var.e0();
                    } else {
                        zY4 = he4Var.y();
                    }
                }
                if (flVar == null) {
                    flVar = new fl(Collections.singletonList(new vf4(100)));
                }
                ur7Var = new ur7(strQ3, zY3, iP2 == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, clVarC, flVar, zY4);
                while (he4Var.v()) {
                    he4Var.e0();
                }
                he4Var.p();
                return ur7Var;
            case "gf":
                td4.a aVar4 = pr3.a;
                Path.FillType fillType = Path.FillType.WINDING;
                boolean zY5 = false;
                fl flVar2 = null;
                String strQ4 = null;
                tr3 tr3Var = null;
                el elVarE = null;
                hl hlVarG2 = null;
                hl hlVarG3 = null;
                while (he4Var.v()) {
                    switch (he4Var.X(pr3.a)) {
                        case 0:
                            strQ4 = he4Var.Q();
                            break;
                        case 1:
                            he4Var.n();
                            int iP3 = -1;
                            while (he4Var.v()) {
                                int iX4 = he4Var.X(pr3.b);
                                if (iX4 == 0) {
                                    iP3 = he4Var.P();
                                } else if (iX4 != 1) {
                                    he4Var.Z();
                                    he4Var.e0();
                                } else {
                                    elVarE = tl.e(he4Var, nw4Var, iP3);
                                }
                            }
                            he4Var.p();
                            break;
                        case 2:
                            flVar2 = tl.f(he4Var, nw4Var);
                            break;
                        case 3:
                            tr3Var = he4Var.P() == 1 ? tr3.LINEAR : tr3.RADIAL;
                            break;
                        case 4:
                            hlVarG2 = tl.g(he4Var, nw4Var);
                            break;
                        case 5:
                            hlVarG3 = tl.g(he4Var, nw4Var);
                            break;
                        case 6:
                            fillType = he4Var.P() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                            break;
                        case 7:
                            zY5 = he4Var.y();
                            break;
                        default:
                            he4Var.Z();
                            he4Var.e0();
                            break;
                    }
                }
                if (flVar2 == null) {
                    flVar2 = new fl(Collections.singletonList(new vf4(100)));
                }
                nr3Var = new nr3(strQ4, tr3Var, fillType, elVarE, flVar2, hlVarG2, hlVarG3, zY5);
                ur7Var = nr3Var;
                while (he4Var.v()) {
                    he4Var.e0();
                }
                he4Var.p();
                return ur7Var;
            case "gr":
                td4.a aVar5 = xr7.a;
                ArrayList arrayList = new ArrayList();
                String strQ5 = null;
                while (he4Var.v()) {
                    int iX5 = he4Var.X(xr7.a);
                    if (iX5 == 0) {
                        strQ5 = he4Var.Q();
                    } else if (iX5 == 1) {
                        zY = he4Var.y();
                    } else if (iX5 != 2) {
                        he4Var.e0();
                    } else {
                        he4Var.m();
                        while (he4Var.v()) {
                            dy1 dy1VarA = a(he4Var, nw4Var);
                            if (dy1VarA != null) {
                                arrayList.add(dy1VarA);
                            }
                        }
                        he4Var.o();
                    }
                }
                wr7Var = new wr7(strQ5, arrayList, zY);
                ur7Var = wr7Var;
                while (he4Var.v()) {
                    he4Var.e0();
                }
                he4Var.p();
                return ur7Var;
            case "gs":
                td4.a aVar6 = sr3.a;
                ArrayList arrayList2 = new ArrayList();
                boolean zY6 = false;
                fl flVar3 = null;
                String strQ6 = null;
                tr3 tr3Var2 = null;
                el elVarE2 = null;
                hl hlVarG4 = null;
                hl hlVarG5 = null;
                dl dlVarD = null;
                ds7.b bVar = null;
                ds7.c cVar = null;
                dl dlVar = null;
                float fE = 0.0f;
                while (he4Var.v()) {
                    switch (he4Var.X(sr3.a)) {
                        case 0:
                            strQ6 = he4Var.Q();
                            break;
                        case 1:
                            he4Var.n();
                            int iP4 = -1;
                            while (he4Var.v()) {
                                int iX6 = he4Var.X(sr3.b);
                                if (iX6 == 0) {
                                    iP4 = he4Var.P();
                                } else if (iX6 != 1) {
                                    he4Var.Z();
                                    he4Var.e0();
                                } else {
                                    elVarE2 = tl.e(he4Var, nw4Var, iP4);
                                }
                            }
                            he4Var.p();
                            break;
                        case 2:
                            flVar3 = tl.f(he4Var, nw4Var);
                            break;
                        case 3:
                            tr3Var2 = he4Var.P() == 1 ? tr3.LINEAR : tr3.RADIAL;
                            break;
                        case 4:
                            hlVarG4 = tl.g(he4Var, nw4Var);
                            break;
                        case 5:
                            hlVarG5 = tl.g(he4Var, nw4Var);
                            break;
                        case 6:
                            dlVarD = tl.d(he4Var, nw4Var, true);
                            break;
                        case 7:
                            bVar = ds7.b.values()[he4Var.P() - 1];
                            break;
                        case 8:
                            cVar = ds7.c.values()[he4Var.P() - 1];
                            break;
                        case 9:
                            fE = (float) he4Var.E();
                            break;
                        case 10:
                            zY6 = he4Var.y();
                            break;
                        case 11:
                            he4Var.m();
                            while (he4Var.v()) {
                                he4Var.n();
                                String strQ7 = null;
                                dl dlVarD2 = null;
                                while (he4Var.v()) {
                                    int iX7 = he4Var.X(sr3.c);
                                    if (iX7 == 0) {
                                        strQ7 = he4Var.Q();
                                    } else if (iX7 != 1) {
                                        he4Var.Z();
                                        he4Var.e0();
                                    } else {
                                        dlVarD2 = tl.d(he4Var, nw4Var, true);
                                    }
                                }
                                he4Var.p();
                                if (strQ7.equals("o")) {
                                    dlVar = dlVarD2;
                                } else if (strQ7.equals("d") || strQ7.equals("g")) {
                                    nw4Var.o = true;
                                    arrayList2.add(dlVarD2);
                                }
                            }
                            he4Var.o();
                            if (arrayList2.size() == 1) {
                                arrayList2.add((dl) arrayList2.get(0));
                            }
                            break;
                        default:
                            he4Var.Z();
                            he4Var.e0();
                            break;
                    }
                }
                if (flVar3 == null) {
                    flVar3 = new fl(Collections.singletonList(new vf4(100)));
                }
                nr3Var = new qr3(strQ6, tr3Var2, elVarE2, flVar3, hlVarG4, hlVarG5, dlVarD, bVar, cVar, fE, arrayList2, dlVar, zY6);
                ur7Var = nr3Var;
                while (he4Var.v()) {
                    he4Var.e0();
                }
                he4Var.p();
                return ur7Var;
            case "mm":
                td4.a aVar7 = ca5.a;
                aa5.a aVar8 = null;
                String strQ8 = null;
                while (he4Var.v()) {
                    int iX8 = he4Var.X(ca5.a);
                    if (iX8 == 0) {
                        strQ8 = he4Var.Q();
                    } else if (iX8 == 1) {
                        int iP5 = he4Var.P();
                        if (iP5 == 1) {
                            aVar8 = aa5.a.MERGE;
                        } else if (iP5 == 2) {
                            aVar8 = aa5.a.ADD;
                        } else if (iP5 == 3) {
                            aVar8 = aa5.a.SUBTRACT;
                        } else if (iP5 != 4) {
                            aVar8 = iP5 != 5 ? aa5.a.MERGE : aa5.a.EXCLUDE_INTERSECTIONS;
                        } else {
                            aVar8 = aa5.a.INTERSECT;
                        }
                    } else if (iX8 != 2) {
                        he4Var.Z();
                        he4Var.e0();
                    } else {
                        zY = he4Var.y();
                    }
                }
                aa5 aa5Var = new aa5(strQ8, aVar8, zY);
                nw4Var.a("Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove().");
                ur7Var = aa5Var;
                while (he4Var.v()) {
                    he4Var.e0();
                }
                he4Var.p();
                return ur7Var;
            case "rc":
                td4.a aVar9 = h07.a;
                boolean zY7 = false;
                String strQ9 = null;
                sl slVarB2 = null;
                hl hlVarG6 = null;
                dl dlVarD3 = null;
                while (he4Var.v()) {
                    int iX9 = he4Var.X(h07.a);
                    if (iX9 == 0) {
                        strQ9 = he4Var.Q();
                    } else if (iX9 == 1) {
                        slVarB2 = gl.b(he4Var, nw4Var);
                    } else if (iX9 == 2) {
                        hlVarG6 = tl.g(he4Var, nw4Var);
                    } else if (iX9 == 3) {
                        dlVarD3 = tl.d(he4Var, nw4Var, true);
                    } else if (iX9 != 4) {
                        he4Var.e0();
                    } else {
                        zY7 = he4Var.y();
                    }
                }
                ck1Var = new g07(strQ9, slVarB2, hlVarG6, dlVarD3, zY7);
                ur7Var = ck1Var;
                while (he4Var.v()) {
                    he4Var.e0();
                }
                he4Var.p();
                return ur7Var;
            case "rd":
                td4.a aVar10 = h87.a;
                String strQ10 = null;
                dl dlVarD4 = null;
                while (he4Var.v()) {
                    int iX10 = he4Var.X(h87.a);
                    if (iX10 == 0) {
                        strQ10 = he4Var.Q();
                    } else if (iX10 == 1) {
                        dlVarD4 = tl.d(he4Var, nw4Var, true);
                    } else if (iX10 != 2) {
                        he4Var.e0();
                    } else {
                        zY = he4Var.y();
                    }
                }
                ur7Var = zY ? null : new f87(strQ10, dlVarD4);
                while (he4Var.v()) {
                    he4Var.e0();
                }
                he4Var.p();
                return ur7Var;
            case "rp":
                td4.a aVar11 = k27.a;
                boolean zY8 = false;
                String strQ11 = null;
                dl dlVarD5 = null;
                dl dlVarD6 = null;
                ql qlVarC = null;
                while (he4Var.v()) {
                    int iX11 = he4Var.X(k27.a);
                    if (iX11 == 0) {
                        strQ11 = he4Var.Q();
                    } else if (iX11 == 1) {
                        dlVarD5 = tl.d(he4Var, nw4Var, false);
                    } else if (iX11 == 2) {
                        dlVarD6 = tl.d(he4Var, nw4Var, false);
                    } else if (iX11 == 3) {
                        qlVarC = rl.c(he4Var, nw4Var);
                    } else if (iX11 != 4) {
                        he4Var.e0();
                    } else {
                        zY8 = he4Var.y();
                    }
                }
                ck1Var = new i27(strQ11, dlVarD5, dlVarD6, qlVarC, zY8);
                ur7Var = ck1Var;
                while (he4Var.v()) {
                    he4Var.e0();
                }
                he4Var.p();
                return ur7Var;
            case "sh":
                td4.a aVar12 = cs7.a;
                int iP6 = 0;
                boolean zY9 = false;
                jl jlVar = null;
                String strQ12 = null;
                while (he4Var.v()) {
                    int iX12 = he4Var.X(cs7.a);
                    if (iX12 == 0) {
                        strQ12 = he4Var.Q();
                    } else if (iX12 == 1) {
                        iP6 = he4Var.P();
                    } else if (iX12 == 2) {
                        jlVar = new jl(zf4.a(he4Var, nw4Var, ib9.c(), tr7.b, false));
                    } else if (iX12 != 3) {
                        he4Var.e0();
                    } else {
                        zY9 = he4Var.y();
                    }
                }
                wr7Var = new bs7(strQ12, iP6, jlVar, zY9);
                ur7Var = wr7Var;
                while (he4Var.v()) {
                    he4Var.e0();
                }
                he4Var.p();
                return ur7Var;
            case "sr":
                td4.a aVar13 = ha6.a;
                boolean z2 = iP == 3;
                boolean zY10 = false;
                String strQ13 = null;
                ga6.a aVarA = null;
                dl dlVarD7 = null;
                sl slVarB3 = null;
                dl dlVarD8 = null;
                dl dlVarD9 = null;
                dl dlVarD10 = null;
                dl dlVarD11 = null;
                dl dlVarD12 = null;
                while (he4Var.v()) {
                    switch (he4Var.X(ha6.a)) {
                        case 0:
                            strQ13 = he4Var.Q();
                            break;
                        case 1:
                            aVarA = ga6.a.a(he4Var.P());
                            break;
                        case 2:
                            dlVarD7 = tl.d(he4Var, nw4Var, false);
                            break;
                        case 3:
                            slVarB3 = gl.b(he4Var, nw4Var);
                            break;
                        case 4:
                            dlVarD8 = tl.d(he4Var, nw4Var, false);
                            break;
                        case 5:
                            dlVarD10 = tl.d(he4Var, nw4Var, true);
                            break;
                        case 6:
                            dlVarD12 = tl.d(he4Var, nw4Var, false);
                            break;
                        case 7:
                            dlVarD9 = tl.d(he4Var, nw4Var, true);
                            break;
                        case 8:
                            dlVarD11 = tl.d(he4Var, nw4Var, false);
                            break;
                        case 9:
                            zY10 = he4Var.y();
                            break;
                        case 10:
                            z2 = he4Var.P() == 3;
                            break;
                        default:
                            he4Var.Z();
                            he4Var.e0();
                            break;
                    }
                }
                ck1Var = new ga6(strQ13, aVarA, dlVarD7, slVarB3, dlVarD8, dlVarD9, dlVarD10, dlVarD11, dlVarD12, zY10, z2);
                ur7Var = ck1Var;
                while (he4Var.v()) {
                    he4Var.e0();
                }
                he4Var.p();
                return ur7Var;
            case "st":
                td4.a aVar14 = es7.a;
                ArrayList arrayList3 = new ArrayList();
                boolean zY11 = false;
                fl flVar4 = null;
                ds7.b bVar2 = null;
                ds7.c cVar2 = null;
                String strQ14 = null;
                dl dlVar2 = null;
                cl clVarC2 = null;
                dl dlVarD13 = null;
                float fE2 = 0.0f;
                while (he4Var.v()) {
                    switch (he4Var.X(es7.a)) {
                        case 0:
                            strQ14 = he4Var.Q();
                            break;
                        case 1:
                            clVarC2 = tl.c(he4Var, nw4Var);
                            break;
                        case 2:
                            dlVarD13 = tl.d(he4Var, nw4Var, true);
                            break;
                        case 3:
                            flVar4 = tl.f(he4Var, nw4Var);
                            break;
                        case 4:
                            bVar2 = ds7.b.values()[he4Var.P() - 1];
                            break;
                        case 5:
                            cVar2 = ds7.c.values()[he4Var.P() - 1];
                            break;
                        case 6:
                            fE2 = (float) he4Var.E();
                            break;
                        case 7:
                            zY11 = he4Var.y();
                            break;
                        case 8:
                            he4Var.m();
                            while (he4Var.v()) {
                                he4Var.n();
                                String strQ15 = null;
                                dl dlVarD14 = null;
                                while (he4Var.v()) {
                                    int iX13 = he4Var.X(es7.b);
                                    if (iX13 == 0) {
                                        strQ15 = he4Var.Q();
                                    } else if (iX13 != 1) {
                                        he4Var.Z();
                                        he4Var.e0();
                                    } else {
                                        dlVarD14 = tl.d(he4Var, nw4Var, true);
                                    }
                                }
                                he4Var.p();
                                strQ15.getClass();
                                switch (strQ15) {
                                    case "d":
                                    case "g":
                                        nw4Var.o = true;
                                        arrayList3.add(dlVarD14);
                                        break;
                                    case "o":
                                        dlVar2 = dlVarD14;
                                        break;
                                }
                            }
                            he4Var.o();
                            if (arrayList3.size() == 1) {
                                arrayList3.add((dl) arrayList3.get(0));
                            }
                            break;
                        default:
                            he4Var.e0();
                            break;
                    }
                }
                if (flVar4 == null) {
                    flVar4 = new fl(Collections.singletonList(new vf4(100)));
                }
                fl flVar5 = flVar4;
                if (bVar2 == null) {
                    bVar2 = ds7.b.BUTT;
                }
                ds7.b bVar3 = bVar2;
                if (cVar2 == null) {
                    cVar2 = ds7.c.MITER;
                }
                ur7Var = new ds7(strQ14, dlVar2, arrayList3, clVarC2, flVar5, dlVarD13, bVar3, cVar2, fE2, zY11);
                while (he4Var.v()) {
                    he4Var.e0();
                }
                he4Var.p();
                return ur7Var;
            case "tm":
                td4.a aVar15 = gs7.a;
                boolean zY12 = false;
                String strQ16 = null;
                fs7.a aVar16 = null;
                dl dlVarD15 = null;
                dl dlVarD16 = null;
                dl dlVarD17 = null;
                while (he4Var.v()) {
                    int iX14 = he4Var.X(gs7.a);
                    if (iX14 == 0) {
                        dlVarD15 = tl.d(he4Var, nw4Var, false);
                    } else if (iX14 == 1) {
                        dlVarD16 = tl.d(he4Var, nw4Var, false);
                    } else if (iX14 == 2) {
                        dlVarD17 = tl.d(he4Var, nw4Var, false);
                    } else if (iX14 == 3) {
                        strQ16 = he4Var.Q();
                    } else if (iX14 == 4) {
                        int iP7 = he4Var.P();
                        if (iP7 == 1) {
                            aVar = fs7.a.SIMULTANEOUSLY;
                        } else {
                            if (iP7 != 2) {
                                fg.c(jh.b(iP7, "Unknown trim path type "));
                                return null;
                            }
                            aVar = fs7.a.INDIVIDUALLY;
                        }
                        aVar16 = aVar;
                    } else if (iX14 != 5) {
                        he4Var.e0();
                    } else {
                        zY12 = he4Var.y();
                    }
                }
                ck1Var = new fs7(strQ16, aVar16, dlVarD15, dlVarD16, dlVarD17, zY12);
                ur7Var = ck1Var;
                while (he4Var.v()) {
                    he4Var.e0();
                }
                he4Var.p();
                return ur7Var;
            case "tr":
                ur7Var = rl.c(he4Var, nw4Var);
                while (he4Var.v()) {
                    he4Var.e0();
                }
                he4Var.p();
                return ur7Var;
            default:
                gv4.b("Unknown shape type ".concat(strQ));
                while (he4Var.v()) {
                    he4Var.e0();
                }
                he4Var.p();
                return ur7Var;
        }
    }
}

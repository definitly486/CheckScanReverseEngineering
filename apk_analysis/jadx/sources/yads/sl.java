package yads;

import android.util.Pair;
import androidx.collection.SieveCacheKt;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.container.Mp4Box;
import androidx.media3.extractor.OpusUtil;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.tracing.Trace;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class sl {
    public static final byte[] a = u56.c("OpusHead");

    /* JADX WARN: Code duplicated, block: B:229:0x0394  */
    /* JADX WARN: Code duplicated, block: B:231:0x039f  */
    /* JADX WARN: Code duplicated, block: B:232:0x03a1  */
    /* JADX WARN: Code duplicated, block: B:235:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:237:0x03d1  */
    /* JADX WARN: Code duplicated, block: B:239:0x03d6  */
    /* JADX WARN: Code duplicated, block: B:243:0x03e0 A[PHI: r13
      0x03e0: PHI (r13v62 int) = (r13v61 int), (r13v100 int) binds: [B:238:0x03d4, B:242:0x03dd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:246:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:248:0x0415  */
    /* JADX WARN: Code duplicated, block: B:251:0x043e  */
    /* JADX WARN: Code duplicated, block: B:253:0x0447  */
    /* JADX WARN: Code duplicated, block: B:255:0x0477  */
    /* JADX WARN: Code duplicated, block: B:267:0x04a8  */
    /* JADX WARN: Code duplicated, block: B:269:0x04c5  */
    /* JADX WARN: Code duplicated, block: B:271:0x04cc  */
    /* JADX WARN: Code duplicated, block: B:273:0x04e6  */
    /* JADX WARN: Code duplicated, block: B:274:0x04ea  */
    /* JADX WARN: Code duplicated, block: B:276:0x050a  */
    /* JADX WARN: Code duplicated, block: B:278:0x050f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:279:0x0511  */
    /* JADX WARN: Code duplicated, block: B:282:0x0528  */
    /* JADX WARN: Code duplicated, block: B:284:0x052d  */
    /* JADX WARN: Code duplicated, block: B:285:0x054b  */
    /* JADX WARN: Code duplicated, block: B:287:0x0550  */
    /* JADX WARN: Code duplicated, block: B:289:0x056a  */
    /* JADX WARN: Code duplicated, block: B:291:0x056f  */
    /* JADX WARN: Code duplicated, block: B:292:0x059e  */
    /* JADX WARN: Code duplicated, block: B:294:0x05a3  */
    /* JADX WARN: Code duplicated, block: B:296:0x05f4  */
    /* JADX WARN: Code duplicated, block: B:298:0x05f7  */
    /* JADX WARN: Code duplicated, block: B:300:0x05fb  */
    /* JADX WARN: Code duplicated, block: B:302:0x05fe  */
    /* JADX WARN: Code duplicated, block: B:306:0x0607  */
    /* JADX WARN: Code duplicated, block: B:308:0x0610  */
    /* JADX WARN: Code duplicated, block: B:309:0x0612  */
    /* JADX WARN: Code duplicated, block: B:313:0x0620 A[LOOP:2: B:304:0x0603->B:313:0x0620, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:316:0x0626  */
    /* JADX WARN: Code duplicated, block: B:318:0x0630  */
    /* JADX WARN: Code duplicated, block: B:320:0x0638  */
    /* JADX WARN: Code duplicated, block: B:322:0x0658  */
    /* JADX WARN: Code duplicated, block: B:324:0x065d A[PHI: r26 r27 r28
      0x065d: PHI (r26v12 java.util.List) = (r26v10 java.util.List), (r26v13 java.util.List), (r26v14 java.util.List) binds: [B:315:0x0624, B:293:0x05a1, B:250:0x0439] A[DONT_GENERATE, DONT_INLINE]
      0x065d: PHI (r27v9 int) = (r27v7 int), (r27v10 int), (r27v11 int) binds: [B:315:0x0624, B:293:0x05a1, B:250:0x0439] A[DONT_GENERATE, DONT_INLINE]
      0x065d: PHI (r28v10 java.lang.String) = (r28v6 java.lang.String), (r28v11 java.lang.String), (r28v16 java.lang.String) binds: [B:315:0x0624, B:293:0x05a1, B:250:0x0439] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:331:0x06a0  */
    /* JADX WARN: Code duplicated, block: B:546:0x0b64  */
    /* JADX WARN: Code duplicated, block: B:553:0x051c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:564:0x0622 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:565:0x05f5 A[EDGE_INSN: B:565:0x05f5->B:297:0x05f5 BREAK  A[LOOP:2: B:304:0x0603->B:313:0x0620], SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.lang.Exception, yads.pl] */
    public static pl a(os4 os4Var, int i, int i2, String str, ql2 ql2Var, boolean z) throws xs4 {
        int i3;
        int i4;
        boolean z2;
        ql2 ql2Var2;
        String str2;
        int i5;
        ql2 ql2Var3;
        int i6;
        int i7;
        int i8;
        List list;
        int i9;
        List list2;
        String str3;
        String str4;
        int iP;
        int iP2;
        int iRound;
        int iA;
        ql2 ql2Var4;
        String str5;
        int i10;
        int iIntValue;
        int i11;
        String str6;
        nl nlVar;
        List listA;
        String str7;
        int i12;
        nl nlVar2;
        List list3;
        uz2 uz2Var;
        int iA2;
        boolean z3;
        int iA3;
        nl nlVar3;
        int i13;
        String str8;
        int i14;
        List list4;
        int i15;
        boolean z4;
        int iA4;
        boolean z5;
        nl nlVarA;
        String str9;
        byte[] bArr;
        List listA2;
        int i16;
        int iK;
        int i17;
        String str10;
        int iK2;
        int i18;
        String str11;
        k55 k55VarA;
        String str12;
        os4Var.e(12);
        int iA5 = os4Var.a();
        pl plVar = new pl(iA5);
        int i19 = 0;
        while (i19 < iA5) {
            int i20 = os4Var.b;
            int iA6 = os4Var.a();
            String str13 = "childAtomSize must be positive";
            at2.a("childAtomSize must be positive", iA6 > 0);
            int iA7 = os4Var.a();
            int i21 = 4;
            int i22 = 3;
            int i23 = 6;
            int i24 = 16;
            if (iA7 == 1635148593 || iA7 == 1635148595 || iA7 == 1701733238 || iA7 == 1831958048 || iA7 == 1836070006 || iA7 == 1752589105 || iA7 == 1751479857 || iA7 == 1932670515 || iA7 == 1211250227 || iA7 == 1987063864 || iA7 == 1987063865 || iA7 == 1635135537 || iA7 == 1685479798 || iA7 == 1685479729 || iA7 == 1685481573 || iA7 == 1685481521) {
                iA5 = iA5;
                i19 = i19;
                os4Var.e(i20 + 16);
                os4Var.e(os4Var.b + 16);
                int iP3 = os4Var.p();
                int iP4 = os4Var.p();
                os4Var.e(os4Var.b + 50);
                int i25 = os4Var.b;
                if (iA7 == 1701733238) {
                    i3 = i20;
                    i4 = iA6;
                    Pair pairA = a(os4Var, i3, i4);
                    if (pairA != null) {
                        iA7 = ((Integer) pairA.first).intValue();
                        if (ql2Var == null) {
                            ql2Var2 = null;
                        } else {
                            String str14 = ((d06) pairA.second).b;
                            if (u56.a(ql2Var.d, str14)) {
                                ql2Var2 = ql2Var;
                            } else {
                                z2 = false;
                                ql2Var2 = new ql2(str14, false, ql2Var.b);
                            }
                            plVar.a[i19] = (d06) pairA.second;
                        }
                        z2 = false;
                        plVar.a[i19] = (d06) pairA.second;
                    } else {
                        z2 = false;
                        ql2Var2 = ql2Var;
                    }
                    os4Var.e(i25);
                } else {
                    i3 = i20;
                    i4 = iA6;
                    z2 = false;
                    ql2Var2 = ql2Var;
                }
                if (iA7 == 1831958048) {
                    str2 = MimeTypes.VIDEO_MPEG;
                } else {
                    str2 = iA7 == 1211250227 ? MimeTypes.VIDEO_H263 : null;
                }
                int i26 = i25;
                i5 = i3;
                String str15 = str2;
                boolean z6 = z2;
                List list5 = null;
                String str16 = null;
                int i27 = -1;
                ByteBuffer byteBuffer = null;
                nl nlVar4 = null;
                int i28 = -1;
                int i29 = -1;
                int i30 = -1;
                float fN = 1.0f;
                byte[] bArrCopyOfRange = null;
                while (true) {
                    if (i26 - i5 >= i4) {
                        ql2Var3 = ql2Var2;
                        break;
                    }
                    os4Var.e(i26);
                    int i31 = os4Var.b;
                    int i32 = i26;
                    int iA8 = os4Var.a();
                    ql2Var3 = ql2Var2;
                    if (iA8 == 0 && os4Var.b - i5 == i4) {
                        break;
                    }
                    at2.a(str13, iA8 > 0);
                    int iA9 = os4Var.a();
                    int i33 = i4;
                    if (iA9 == 1635148611) {
                        at2.a(null, str15 == null);
                        os4Var.e(i31 + 8);
                        dn dnVarA = dn.a(os4Var);
                        list2 = dnVarA.a;
                        plVar.c = dnVarA.b;
                        if (!z6) {
                            fN = dnVarA.e;
                        }
                        str3 = dnVarA.f;
                        str4 = "video/avc";
                    } else {
                        if (iA9 == 1752589123) {
                            at2.a(null, str15 == null);
                            os4Var.e(i31 + 8);
                            b93 b93VarA = b93.a(os4Var);
                            list2 = b93VarA.a;
                            plVar.c = b93VarA.b;
                            if (!z6) {
                                fN = b93VarA.c;
                            }
                            str3 = b93VarA.d;
                            str4 = MimeTypes.VIDEO_H265;
                        } else {
                            if (iA9 == 1685480259 || iA9 == 1685485123) {
                                plVar = plVar;
                                list = list5;
                                bArrCopyOfRange = bArrCopyOfRange;
                                iA7 = iA7;
                                str13 = str13;
                                i27 = i27;
                                fN = fN;
                                i22 = i22;
                                i23 = i23;
                                i24 = i24;
                                rj2 rj2VarA = rj2.a(os4Var);
                                if (rj2VarA != null) {
                                    str16 = rj2VarA.a;
                                    str15 = MimeTypes.VIDEO_DOLBY_VISION;
                                }
                            } else if (iA9 == 1987076931) {
                                at2.a(null, str15 == null);
                                plVar = plVar;
                                bArrCopyOfRange = bArrCopyOfRange;
                                iA7 = iA7;
                                str13 = str13;
                                str15 = iA7 == 1987063864 ? MimeTypes.VIDEO_VP8 : MimeTypes.VIDEO_VP9;
                                i27 = i27;
                                fN = fN;
                                i22 = i22;
                                i23 = i23;
                                i24 = i24;
                            } else if (iA9 == 1635135811) {
                                at2.a(null, str15 == null);
                                str15 = MimeTypes.VIDEO_AV1;
                            } else if (iA9 == 1668050025) {
                                ByteBuffer byteBufferOrder = byteBuffer == null ? ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN) : byteBuffer;
                                byteBufferOrder.position(21);
                                byteBufferOrder.putShort(os4Var.i());
                                byteBufferOrder.putShort(os4Var.i());
                                byteBuffer = byteBufferOrder;
                            } else if (iA9 == 1835295606) {
                                ByteBuffer byteBufferOrder2 = byteBuffer == null ? ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN) : byteBuffer;
                                short sI = os4Var.i();
                                short sI2 = os4Var.i();
                                short sI3 = os4Var.i();
                                short sI4 = os4Var.i();
                                plVar = plVar;
                                short sI5 = os4Var.i();
                                List list6 = list5;
                                short sI6 = os4Var.i();
                                short sI7 = os4Var.i();
                                short sI8 = os4Var.i();
                                long jL = os4Var.l();
                                long jL2 = os4Var.l();
                                byteBufferOrder2.position(1);
                                byteBufferOrder2.putShort(sI5);
                                byteBufferOrder2.putShort(sI6);
                                byteBufferOrder2.putShort(sI);
                                byteBufferOrder2.putShort(sI2);
                                byteBufferOrder2.putShort(sI3);
                                byteBufferOrder2.putShort(sI4);
                                byteBufferOrder2.putShort(sI7);
                                byteBufferOrder2.putShort(sI8);
                                byteBufferOrder2.putShort((short) (jL / 10000));
                                byteBufferOrder2.putShort((short) (jL2 / 10000));
                                byteBuffer = byteBufferOrder2;
                                list5 = list6;
                            } else {
                                plVar = plVar;
                                list = list5;
                                bArrCopyOfRange = bArrCopyOfRange;
                                iA7 = iA7;
                                str13 = str13;
                                i27 = i27;
                                fN = fN;
                                if (iA9 == 1681012275) {
                                    at2.a(null, str15 == null);
                                    str15 = MimeTypes.VIDEO_H263;
                                    i22 = i22;
                                    i23 = i23;
                                    i24 = i24;
                                    list5 = list;
                                } else if (iA9 == 1702061171) {
                                    at2.a(null, str15 == null);
                                    nl nlVarA2 = a(i31, os4Var);
                                    String str17 = nlVarA2.a;
                                    byte[] bArr2 = nlVarA2.b;
                                    List listA3 = bArr2 != null ? oe3.a(bArr2) : list;
                                    str15 = str17;
                                    list5 = listA3;
                                    nlVar4 = nlVarA2;
                                    i22 = i22;
                                } else if (iA9 == 1885434736) {
                                    os4Var.e(i31 + 8);
                                    fN = os4Var.n() / os4Var.n();
                                    i22 = i22;
                                    i23 = i23;
                                    i24 = i24;
                                    list5 = list;
                                    z6 = true;
                                } else {
                                    if (iA9 == 1937126244) {
                                        int i34 = i31 + 8;
                                        while (true) {
                                            if (i34 - i31 >= iA8) {
                                                bArrCopyOfRange = null;
                                                break;
                                            }
                                            os4Var.e(i34);
                                            int iA10 = os4Var.a();
                                            if (os4Var.a() == 1886547818) {
                                                bArrCopyOfRange = Arrays.copyOfRange(os4Var.a, i34, iA10 + i34);
                                                break;
                                            }
                                            i34 += iA10;
                                        }
                                        i22 = i22;
                                    } else {
                                        if (iA9 == 1936995172) {
                                            int iK3 = os4Var.k();
                                            os4Var.e(os4Var.b + 3);
                                            if (iK3 == 0) {
                                                int iK4 = os4Var.k();
                                                if (iK4 == 0) {
                                                    i22 = i22;
                                                    i23 = i23;
                                                    i24 = i24;
                                                    list5 = list;
                                                    i27 = 0;
                                                } else if (iK4 != 1) {
                                                    i22 = i22;
                                                    if (iK4 == 2) {
                                                        i23 = i23;
                                                        i24 = i24;
                                                        list5 = list;
                                                        i27 = 2;
                                                    } else if (iK4 == i22) {
                                                        i27 = i22;
                                                    }
                                                } else {
                                                    i22 = i22;
                                                    i23 = i23;
                                                    i24 = i24;
                                                    list5 = list;
                                                    i27 = 1;
                                                }
                                            } else {
                                                i22 = i22;
                                            }
                                        } else {
                                            i22 = i22;
                                            if (iA9 == 1668246642) {
                                                int iA11 = os4Var.a();
                                                if (iA11 == 1852009592 || iA11 == 1852009571) {
                                                    int iP5 = os4Var.p();
                                                    int iP6 = os4Var.p();
                                                    os4Var.e(os4Var.b + 2);
                                                    boolean z7 = iA8 == 19 && (os4Var.k() & 128) != 0;
                                                    int i35 = 7;
                                                    if (iP5 == 1) {
                                                        i9 = 1;
                                                    } else if (iP5 != 9) {
                                                        i9 = (iP5 == 4 || iP5 == 5 || iP5 == i23 || iP5 == 7) ? 2 : -1;
                                                    } else {
                                                        i9 = 6;
                                                    }
                                                    int i36 = z7 ? 1 : 2;
                                                    i24 = i24;
                                                    if (iP6 != 1) {
                                                        if (iP6 == i24) {
                                                            i23 = 6;
                                                            i35 = 6;
                                                        } else if (iP6 != 18) {
                                                            i23 = 6;
                                                            if (iP6 != 6 && iP6 != 7) {
                                                                i35 = -1;
                                                            }
                                                        } else {
                                                            i23 = 6;
                                                        }
                                                        i30 = i9;
                                                        i28 = i35;
                                                        i29 = i36;
                                                    } else {
                                                        i23 = 6;
                                                    }
                                                    i35 = i22;
                                                    i30 = i9;
                                                    i28 = i35;
                                                    i29 = i36;
                                                } else {
                                                    sv3.d("AtomParsers", "Unsupported color type: " + ll.a(iA11));
                                                }
                                            }
                                        }
                                        i23 = i23;
                                        i24 = i24;
                                    }
                                    list5 = list;
                                }
                            }
                            list5 = list;
                        }
                        i26 = i32 + iA8;
                        i24 = i24;
                        i22 = i22;
                        i23 = i23;
                        ql2Var2 = ql2Var3;
                        i4 = i33;
                        iA7 = iA7;
                        str13 = str13;
                        plVar = plVar;
                        i27 = i27;
                        bArrCopyOfRange = bArrCopyOfRange;
                        fN = fN;
                    }
                    plVar = plVar;
                    str16 = str3;
                    list5 = list2;
                    str15 = str4;
                    bArrCopyOfRange = bArrCopyOfRange;
                    iA7 = iA7;
                    str13 = str13;
                    i27 = i27;
                    fN = fN;
                    i22 = i22;
                    i23 = i23;
                    i24 = i24;
                    i26 = i32 + iA8;
                    i24 = i24;
                    i22 = i22;
                    i23 = i23;
                    ql2Var2 = ql2Var3;
                    i4 = i33;
                    iA7 = iA7;
                    str13 = str13;
                    plVar = plVar;
                    i27 = i27;
                    bArrCopyOfRange = bArrCopyOfRange;
                    fN = fN;
                }
                pl plVar2 = plVar;
                List list7 = list5;
                i6 = i4;
                byte[] bArr3 = bArrCopyOfRange;
                int i37 = i27;
                float f = fN;
                if (str15 == null) {
                    plVar = plVar2;
                } else {
                    uz2 uz2Var2 = new uz2();
                    uz2Var2.a = Integer.toString(i);
                    uz2Var2.k = str15;
                    uz2Var2.h = str16;
                    uz2Var2.p = iP3;
                    uz2Var2.q = iP4;
                    uz2Var2.t = f;
                    uz2Var2.s = i2;
                    uz2Var2.u = bArr3;
                    uz2Var2.v = i37;
                    uz2Var2.m = list7;
                    uz2Var2.n = ql2Var3;
                    int i38 = i30;
                    if (i38 == -1) {
                        i8 = i29;
                        i7 = i28;
                        if (i8 != -1 || i7 != -1 || byteBuffer != null) {
                        }
                        if (nlVar4 != null) {
                            nl nlVar5 = nlVar4;
                            uz2Var2.f = bq3.b(nlVar5.c);
                            uz2Var2.g = bq3.b(nlVar5.d);
                        }
                        vz2 vz2Var = new vz2(uz2Var2);
                        plVar = plVar2;
                        plVar.b = vz2Var;
                    } else {
                        i7 = i28;
                        i8 = i29;
                    }
                    uz2Var2.w = new x20(i38, i8, i7, byteBuffer != null ? byteBuffer.array() : null);
                    if (nlVar4 != null) {
                        nl nlVar6 = nlVar4;
                        uz2Var2.f = bq3.b(nlVar6.c);
                        uz2Var2.g = bq3.b(nlVar6.d);
                    }
                    vz2 vz2Var2 = new vz2(uz2Var2);
                    plVar = plVar2;
                    plVar.b = vz2Var2;
                }
            } else {
                Object obj = null;
                if (iA7 == 1836069985 || iA7 == 1701733217 || iA7 == 1633889587 || iA7 == 1700998451 || iA7 == 1633889588 || iA7 == 1835823201 || iA7 == 1685353315 || iA7 == 1685353317 || iA7 == 1685353320 || iA7 == 1685353324 || iA7 == 1685353336 || iA7 == 1935764850 || iA7 == 1935767394 || iA7 == 1819304813 || iA7 == 1936684916 || iA7 == 1953984371 || iA7 == 778924082 || iA7 == 778924083 || iA7 == 1835557169 || iA7 == 1835560241 || iA7 == 1634492771 || iA7 == 1634492791 || iA7 == 1970037111 || iA7 == 1332770163 || iA7 == 1716281667) {
                    os4Var.e(i20 + 16);
                    if (z) {
                        iP = os4Var.p();
                        os4Var.e(os4Var.b + 6);
                    } else {
                        os4Var.e(os4Var.b + 8);
                        iP = 0;
                    }
                    if (iP == 0 || iP == 1) {
                        i19 = i19;
                        iP2 = os4Var.p();
                        os4Var.e(os4Var.b + 6);
                        byte[] bArr4 = os4Var.a;
                        int i39 = os4Var.b;
                        int i40 = i39 + 1;
                        os4Var.b = i40;
                        int i41 = (bArr4[i39] & 255) << 8;
                        os4Var.b = i39 + 2;
                        iRound = (bArr4[i40] & 255) | i41;
                        os4Var.b = i39 + 4;
                        os4Var.e(i39);
                        iA = os4Var.a();
                        if (iP == 1) {
                            os4Var.e(os4Var.b + 16);
                        }
                    } else if (iP == 2) {
                        os4Var.e(os4Var.b + 16);
                        i19 = i19;
                        iRound = (int) Math.round(Double.longBitsToDouble(os4Var.g()));
                        iP2 = os4Var.n();
                        os4Var.e(os4Var.b + 20);
                        iA = 0;
                    }
                    int i42 = os4Var.b;
                    if (iA7 == 1701733217) {
                        Pair pairA2 = a(os4Var, i20, iA6);
                        if (pairA2 != null) {
                            iA7 = ((Integer) pairA2.first).intValue();
                            if (ql2Var == 0) {
                                ql2Var4 = null;
                            } else {
                                String str18 = ((d06) pairA2.second).b;
                                ql2Var4 = u56.a(ql2Var.d, str18) ? ql2Var : new ql2(str18, false, ql2Var.b);
                            }
                            plVar.a[i19] = (d06) pairA2.second;
                        } else {
                            iA5 = iA5;
                            iRound = iRound;
                            ql2Var4 = ql2Var;
                        }
                        os4Var.e(i42);
                    } else {
                        iA5 = iA5;
                        iRound = iRound;
                        ql2Var4 = ql2Var;
                    }
                    if (iA7 == 1633889587) {
                        str5 = MimeTypes.AUDIO_AC3;
                    } else if (iA7 == 1700998451) {
                        str5 = MimeTypes.AUDIO_E_AC3;
                    } else if (iA7 == 1633889588) {
                        str5 = MimeTypes.AUDIO_AC4;
                    } else if (iA7 == 1685353315) {
                        str5 = MimeTypes.AUDIO_DTS;
                    } else if (iA7 == 1685353320 || iA7 == 1685353324) {
                        str5 = MimeTypes.AUDIO_DTS_HD;
                    } else if (iA7 == 1685353317) {
                        str5 = MimeTypes.AUDIO_DTS_EXPRESS;
                    } else if (iA7 == 1685353336) {
                        str5 = MimeTypes.AUDIO_DTS_X;
                    } else if (iA7 == 1935764850) {
                        str5 = MimeTypes.AUDIO_AMR_NB;
                    } else if (iA7 == 1935767394) {
                        str5 = MimeTypes.AUDIO_AMR_WB;
                    } else {
                        if (iA7 == 1819304813 || iA7 == 1936684916) {
                            str5 = MimeTypes.AUDIO_RAW;
                            i10 = 2;
                        } else if (iA7 == 1953984371) {
                            str5 = MimeTypes.AUDIO_RAW;
                            i10 = 268435456;
                        } else if (iA7 == 778924082 || iA7 == 778924083) {
                            str5 = MimeTypes.AUDIO_MPEG;
                        } else if (iA7 == 1835557169) {
                            str5 = MimeTypes.AUDIO_MPEGH_MHA1;
                        } else if (iA7 == 1835560241) {
                            str5 = MimeTypes.AUDIO_MPEGH_MHM1;
                        } else if (iA7 == 1634492771) {
                            str5 = MimeTypes.AUDIO_ALAC;
                        } else if (iA7 == 1634492791) {
                            str5 = MimeTypes.AUDIO_ALAW;
                        } else if (iA7 == 1970037111) {
                            str5 = MimeTypes.AUDIO_MLAW;
                        } else if (iA7 == 1332770163) {
                            str5 = MimeTypes.AUDIO_OPUS;
                        } else if (iA7 == 1716281667) {
                            str5 = MimeTypes.AUDIO_FLAC;
                        } else {
                            str5 = iA7 == 1835823201 ? MimeTypes.AUDIO_TRUEHD : null;
                        }
                        iIntValue = iP2;
                        i11 = iRound;
                        str6 = null;
                        nlVar = null;
                        listA = null;
                        while (i42 - i20 < iA6) {
                            os4Var.e(i42);
                            iA2 = os4Var.a();
                            int i43 = iA6;
                            if (iA2 > 0) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            at2.a("childAtomSize must be positive", z3);
                            iA3 = os4Var.a();
                            nlVar3 = nlVar;
                            if (iA3 == 1835557187) {
                                int i44 = iA2 - 13;
                                byte[] bArr5 = new byte[i44];
                                os4Var.e(i42 + 13);
                                os4Var.a(bArr5, 0, i44);
                                str8 = str6;
                                i14 = i10;
                                listA = oe3.a(bArr5);
                            } else {
                                i13 = Mp4Box.TYPE_esds;
                                if (iA3 == 1702061171) {
                                    str8 = str6;
                                    i14 = i10;
                                    list4 = listA;
                                    if (iA3 != i13) {
                                        i15 = os4Var.b;
                                        if (i15 >= i42) {
                                            z4 = true;
                                        } else {
                                            z4 = false;
                                        }
                                        at2.a(null, z4);
                                        while (true) {
                                            if (i15 - i42 >= iA2) {
                                                i15 = -1;
                                                break;
                                            }
                                            os4Var.e(i15);
                                            iA4 = os4Var.a();
                                            if (iA4 > 0) {
                                                z5 = true;
                                            } else {
                                                z5 = false;
                                            }
                                            at2.a("childAtomSize must be positive", z5);
                                            if (os4Var.a() == 1702061171) {
                                                break;
                                            }
                                            i15 += iA4;
                                        }
                                    } else {
                                        i15 = i42;
                                    }
                                    if (i15 != -1) {
                                        nlVarA = a(i15, os4Var);
                                        str9 = nlVarA.a;
                                        bArr = nlVarA.b;
                                        if (bArr != null) {
                                            if ("audio/mp4a-latm".equals(str9)) {
                                                a aVarA = b.a(new ns4(bArr), false);
                                                int i45 = aVarA.a;
                                                int i46 = aVarA.b;
                                                str8 = aVarA.c;
                                                i11 = i45;
                                                iIntValue = i46;
                                            }
                                            nlVar = nlVarA;
                                            str5 = str9;
                                            listA = oe3.a(bArr);
                                        } else {
                                            nlVar = nlVarA;
                                            str5 = str9;
                                        }
                                    } else {
                                        nlVar = nlVar3;
                                    }
                                    listA = list4;
                                } else if (z || iA3 != 2002876005) {
                                    if (iA3 == 1684103987) {
                                        os4Var.e(i42 + 8);
                                        String string = Integer.toString(i);
                                        int i47 = f0.b[(os4Var.k() & PsExtractor.AUDIO_STREAM) >> 6];
                                        iK2 = os4Var.k();
                                        i18 = f0.d[(iK2 & 56) >> 3];
                                        if ((iK2 & 4) != 0) {
                                            i18++;
                                        }
                                        list4 = listA;
                                        int i48 = i18;
                                        i14 = i10;
                                        uz2 uz2Var3 = new uz2();
                                        uz2Var3.a = string;
                                        uz2Var3.k = MimeTypes.AUDIO_AC3;
                                        uz2Var3.x = i48;
                                        uz2Var3.y = i47;
                                        uz2Var3.n = ql2Var4;
                                        uz2Var3.c = str;
                                        plVar.b = new vz2(uz2Var3);
                                        str8 = str6;
                                    } else {
                                        i14 = i10;
                                        list4 = listA;
                                        if (iA3 == 1684366131) {
                                            os4Var.e(i42 + 8);
                                            String string2 = Integer.toString(i);
                                            os4Var.e(os4Var.b + 2);
                                            int i49 = f0.b[(os4Var.k() & PsExtractor.AUDIO_STREAM) >> 6];
                                            iK = os4Var.k();
                                            i17 = f0.d[(iK & 14) >> 1];
                                            if ((iK & 1) != 0) {
                                                i17++;
                                            }
                                            if (((os4Var.k() & 30) >> 1) > 0 && (os4Var.k() & 2) != 0) {
                                                i17 += 2;
                                            }
                                            if (os4Var.c - os4Var.b > 0 || (os4Var.k() & 1) == 0) {
                                                str10 = MimeTypes.AUDIO_E_AC3;
                                            } else {
                                                str10 = MimeTypes.AUDIO_E_AC3_JOC;
                                            }
                                            str8 = str6;
                                            uz2 uz2Var4 = new uz2();
                                            uz2Var4.a = string2;
                                            uz2Var4.k = str10;
                                            uz2Var4.x = i17;
                                            uz2Var4.y = i49;
                                            uz2Var4.n = ql2Var4;
                                            uz2Var4.c = str;
                                            plVar.b = new vz2(uz2Var4);
                                        } else {
                                            str8 = str6;
                                            if (iA3 == 1684103988) {
                                                os4Var.e(i42 + 8);
                                                String string3 = Integer.toString(i);
                                                os4Var.e(os4Var.b + 1);
                                                if (((os4Var.k() & 32) >> 5) == 1) {
                                                    i16 = OpusUtil.SAMPLE_RATE;
                                                } else {
                                                    i16 = 44100;
                                                }
                                                uz2 uz2Var5 = new uz2();
                                                uz2Var5.a = string3;
                                                uz2Var5.k = MimeTypes.AUDIO_AC4;
                                                uz2Var5.x = 2;
                                                uz2Var5.y = i16;
                                                uz2Var5.n = ql2Var4;
                                                uz2Var5.c = str;
                                                plVar.b = new vz2(uz2Var5);
                                            } else if (iA3 == 1684892784) {
                                                if (iA > 0) {
                                                    ?? r1 = obj;
                                                    defpackage.e2.h(vx4.a(iA, "Invalid sample rate for Dolby TrueHD MLP stream: "), r1);
                                                    return r1;
                                                }
                                                i11 = iA;
                                                nlVar = nlVar3;
                                                listA = list4;
                                                iIntValue = 2;
                                            } else if (iA3 == 1684305011) {
                                                uz2 uz2Var6 = new uz2();
                                                uz2Var6.a = Integer.toString(i);
                                                uz2Var6.k = str5;
                                                uz2Var6.x = iIntValue;
                                                uz2Var6.y = i11;
                                                uz2Var6.n = ql2Var4;
                                                uz2Var6.c = str;
                                                plVar.b = new vz2(uz2Var6);
                                            } else {
                                                if (iA3 == 1682927731) {
                                                    int i50 = iA2 - 8;
                                                    byte[] bArr6 = a;
                                                    byte[] bArrCopyOf = Arrays.copyOf(bArr6, bArr6.length + i50);
                                                    os4Var.e(i42 + 8);
                                                    os4Var.a(bArrCopyOf, bArr6.length, i50);
                                                    listA2 = wq4.a(bArrCopyOf);
                                                } else if (iA3 == 1684425825) {
                                                    byte[] bArr7 = new byte[iA2 - 8];
                                                    bArr7[0] = 102;
                                                    bArr7[1] = 76;
                                                    bArr7[2] = 97;
                                                    bArr7[3] = 67;
                                                    os4Var.e(i42 + 12);
                                                    os4Var.a(bArr7, i21, iA2 - 12);
                                                    listA2 = oe3.a(bArr7);
                                                } else if (iA3 == 1634492771) {
                                                    int i51 = iA2 - 12;
                                                    byte[] bArr8 = new byte[i51];
                                                    os4Var.e(i42 + 12);
                                                    os4Var.a(bArr8, 0, i51);
                                                    os4 os4Var2 = new os4(bArr8);
                                                    os4Var2.e(9);
                                                    int iK5 = os4Var2.k();
                                                    os4Var2.e(20);
                                                    Pair pairCreate = Pair.create(Integer.valueOf(os4Var2.n()), Integer.valueOf(iK5));
                                                    int iIntValue2 = ((Integer) pairCreate.first).intValue();
                                                    iIntValue = ((Integer) pairCreate.second).intValue();
                                                    listA = oe3.a(bArr8);
                                                    i11 = iIntValue2;
                                                    nlVar = nlVar3;
                                                } else {
                                                    nlVar = nlVar3;
                                                    listA = list4;
                                                }
                                                listA = listA2;
                                            }
                                        }
                                    }
                                    nlVar = nlVar3;
                                    listA = list4;
                                } else {
                                    i13 = Mp4Box.TYPE_esds;
                                    str8 = str6;
                                    i14 = i10;
                                    list4 = listA;
                                    if (iA3 != i13) {
                                        i15 = os4Var.b;
                                        if (i15 >= i42) {
                                            z4 = true;
                                        } else {
                                            z4 = false;
                                        }
                                        at2.a(null, z4);
                                        while (true) {
                                            if (i15 - i42 >= iA2) {
                                                i15 = -1;
                                                break;
                                            }
                                            os4Var.e(i15);
                                            iA4 = os4Var.a();
                                            if (iA4 > 0) {
                                                z5 = true;
                                            } else {
                                                z5 = false;
                                            }
                                            at2.a("childAtomSize must be positive", z5);
                                            if (os4Var.a() == 1702061171) {
                                                break;
                                                break;
                                            }
                                            i15 += iA4;
                                        }
                                    } else {
                                        i15 = i42;
                                    }
                                    if (i15 != -1) {
                                        nlVarA = a(i15, os4Var);
                                        str9 = nlVarA.a;
                                        bArr = nlVarA.b;
                                        if (bArr != null) {
                                            if ("audio/mp4a-latm".equals(str9)) {
                                                a aVarA2 = b.a(new ns4(bArr), false);
                                                int i410 = aVarA2.a;
                                                int i411 = aVarA2.b;
                                                str8 = aVarA2.c;
                                                i11 = i410;
                                                iIntValue = i411;
                                            }
                                            nlVar = nlVarA;
                                            str5 = str9;
                                            listA = oe3.a(bArr);
                                        } else {
                                            nlVar = nlVarA;
                                            str5 = str9;
                                        }
                                    } else {
                                        nlVar = nlVar3;
                                    }
                                    listA = list4;
                                }
                                i42 += iA2;
                                iA6 = i43;
                                i10 = i14;
                                str6 = str8;
                                i21 = 4;
                                obj = null;
                            }
                            nlVar = nlVar3;
                            i42 += iA2;
                            iA6 = i43;
                            i10 = i14;
                            str6 = str8;
                            i21 = 4;
                            obj = null;
                        }
                        str7 = str6;
                        i12 = i10;
                        int i52 = iA6;
                        nlVar2 = nlVar;
                        list3 = listA;
                        if (plVar.b == null && str5 != null) {
                            uz2Var = new uz2();
                            uz2Var.a = Integer.toString(i);
                            uz2Var.k = str5;
                            uz2Var.h = str7;
                            uz2Var.x = iIntValue;
                            uz2Var.y = i11;
                            uz2Var.z = i12;
                            uz2Var.m = list3;
                            uz2Var.n = ql2Var4;
                            uz2Var.c = str;
                            if (nlVar2 != null) {
                                uz2Var.f = bq3.b(nlVar2.c);
                                uz2Var.g = bq3.b(nlVar2.d);
                            }
                            plVar.b = new vz2(uz2Var);
                        }
                        plVar = plVar;
                        i6 = i52;
                        i5 = i20;
                    }
                    i10 = -1;
                    iIntValue = iP2;
                    i11 = iRound;
                    str6 = null;
                    nlVar = null;
                    listA = null;
                    while (i42 - i20 < iA6) {
                        os4Var.e(i42);
                        iA2 = os4Var.a();
                        int i412 = iA6;
                        if (iA2 > 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        at2.a("childAtomSize must be positive", z3);
                        iA3 = os4Var.a();
                        nlVar3 = nlVar;
                        if (iA3 == 1835557187) {
                            int i413 = iA2 - 13;
                            byte[] bArr9 = new byte[i413];
                            os4Var.e(i42 + 13);
                            os4Var.a(bArr9, 0, i413);
                            str8 = str6;
                            i14 = i10;
                            listA = oe3.a(bArr9);
                        } else {
                            i13 = Mp4Box.TYPE_esds;
                            if (iA3 == 1702061171) {
                                str8 = str6;
                                i14 = i10;
                                list4 = listA;
                                if (iA3 != i13) {
                                    i15 = os4Var.b;
                                    if (i15 >= i42) {
                                        z4 = true;
                                    } else {
                                        z4 = false;
                                    }
                                    at2.a(null, z4);
                                    while (true) {
                                        if (i15 - i42 >= iA2) {
                                            i15 = -1;
                                            break;
                                        }
                                        os4Var.e(i15);
                                        iA4 = os4Var.a();
                                        if (iA4 > 0) {
                                            z5 = true;
                                        } else {
                                            z5 = false;
                                        }
                                        at2.a("childAtomSize must be positive", z5);
                                        if (os4Var.a() == 1702061171) {
                                            break;
                                            break;
                                        }
                                        i15 += iA4;
                                    }
                                } else {
                                    i15 = i42;
                                }
                                if (i15 != -1) {
                                    nlVarA = a(i15, os4Var);
                                    str9 = nlVarA.a;
                                    bArr = nlVarA.b;
                                    if (bArr != null) {
                                        if ("audio/mp4a-latm".equals(str9)) {
                                            a aVarA3 = b.a(new ns4(bArr), false);
                                            int i414 = aVarA3.a;
                                            int i415 = aVarA3.b;
                                            str8 = aVarA3.c;
                                            i11 = i414;
                                            iIntValue = i415;
                                        }
                                        nlVar = nlVarA;
                                        str5 = str9;
                                        listA = oe3.a(bArr);
                                    } else {
                                        nlVar = nlVarA;
                                        str5 = str9;
                                    }
                                } else {
                                    nlVar = nlVar3;
                                }
                                listA = list4;
                            } else {
                                if (z) {
                                }
                                if (iA3 == 1684103987) {
                                    os4Var.e(i42 + 8);
                                    String string4 = Integer.toString(i);
                                    int i416 = f0.b[(os4Var.k() & PsExtractor.AUDIO_STREAM) >> 6];
                                    iK2 = os4Var.k();
                                    i18 = f0.d[(iK2 & 56) >> 3];
                                    if ((iK2 & 4) != 0) {
                                        i18++;
                                    }
                                    list4 = listA;
                                    int i417 = i18;
                                    i14 = i10;
                                    uz2 uz2Var7 = new uz2();
                                    uz2Var7.a = string4;
                                    uz2Var7.k = MimeTypes.AUDIO_AC3;
                                    uz2Var7.x = i417;
                                    uz2Var7.y = i416;
                                    uz2Var7.n = ql2Var4;
                                    uz2Var7.c = str;
                                    plVar.b = new vz2(uz2Var7);
                                    str8 = str6;
                                } else {
                                    i14 = i10;
                                    list4 = listA;
                                    if (iA3 == 1684366131) {
                                        os4Var.e(i42 + 8);
                                        String string5 = Integer.toString(i);
                                        os4Var.e(os4Var.b + 2);
                                        int i418 = f0.b[(os4Var.k() & PsExtractor.AUDIO_STREAM) >> 6];
                                        iK = os4Var.k();
                                        i17 = f0.d[(iK & 14) >> 1];
                                        if ((iK & 1) != 0) {
                                            i17++;
                                        }
                                        if (((os4Var.k() & 30) >> 1) > 0) {
                                            i17 += 2;
                                        }
                                        if (os4Var.c - os4Var.b > 0) {
                                            str10 = MimeTypes.AUDIO_E_AC3;
                                        } else {
                                            str10 = MimeTypes.AUDIO_E_AC3;
                                        }
                                        str8 = str6;
                                        uz2 uz2Var8 = new uz2();
                                        uz2Var8.a = string5;
                                        uz2Var8.k = str10;
                                        uz2Var8.x = i17;
                                        uz2Var8.y = i418;
                                        uz2Var8.n = ql2Var4;
                                        uz2Var8.c = str;
                                        plVar.b = new vz2(uz2Var8);
                                    } else {
                                        str8 = str6;
                                        if (iA3 == 1684103988) {
                                            os4Var.e(i42 + 8);
                                            String string6 = Integer.toString(i);
                                            os4Var.e(os4Var.b + 1);
                                            if (((os4Var.k() & 32) >> 5) == 1) {
                                                i16 = OpusUtil.SAMPLE_RATE;
                                            } else {
                                                i16 = 44100;
                                            }
                                            uz2 uz2Var9 = new uz2();
                                            uz2Var9.a = string6;
                                            uz2Var9.k = MimeTypes.AUDIO_AC4;
                                            uz2Var9.x = 2;
                                            uz2Var9.y = i16;
                                            uz2Var9.n = ql2Var4;
                                            uz2Var9.c = str;
                                            plVar.b = new vz2(uz2Var9);
                                        } else if (iA3 == 1684892784) {
                                            if (iA > 0) {
                                                ?? r2 = obj;
                                                defpackage.e2.h(vx4.a(iA, "Invalid sample rate for Dolby TrueHD MLP stream: "), r2);
                                                return r2;
                                            }
                                            i11 = iA;
                                            nlVar = nlVar3;
                                            listA = list4;
                                            iIntValue = 2;
                                        } else if (iA3 == 1684305011) {
                                            uz2 uz2Var10 = new uz2();
                                            uz2Var10.a = Integer.toString(i);
                                            uz2Var10.k = str5;
                                            uz2Var10.x = iIntValue;
                                            uz2Var10.y = i11;
                                            uz2Var10.n = ql2Var4;
                                            uz2Var10.c = str;
                                            plVar.b = new vz2(uz2Var10);
                                        } else {
                                            if (iA3 == 1682927731) {
                                                int i53 = iA2 - 8;
                                                byte[] bArr10 = a;
                                                byte[] bArrCopyOf2 = Arrays.copyOf(bArr10, bArr10.length + i53);
                                                os4Var.e(i42 + 8);
                                                os4Var.a(bArrCopyOf2, bArr10.length, i53);
                                                listA2 = wq4.a(bArrCopyOf2);
                                            } else if (iA3 == 1684425825) {
                                                byte[] bArr11 = new byte[iA2 - 8];
                                                bArr11[0] = 102;
                                                bArr11[1] = 76;
                                                bArr11[2] = 97;
                                                bArr11[3] = 67;
                                                os4Var.e(i42 + 12);
                                                os4Var.a(bArr11, i21, iA2 - 12);
                                                listA2 = oe3.a(bArr11);
                                            } else if (iA3 == 1634492771) {
                                                int i54 = iA2 - 12;
                                                byte[] bArr12 = new byte[i54];
                                                os4Var.e(i42 + 12);
                                                os4Var.a(bArr12, 0, i54);
                                                os4 os4Var3 = new os4(bArr12);
                                                os4Var3.e(9);
                                                int iK6 = os4Var3.k();
                                                os4Var3.e(20);
                                                Pair pairCreate2 = Pair.create(Integer.valueOf(os4Var3.n()), Integer.valueOf(iK6));
                                                int iIntValue3 = ((Integer) pairCreate2.first).intValue();
                                                iIntValue = ((Integer) pairCreate2.second).intValue();
                                                listA = oe3.a(bArr12);
                                                i11 = iIntValue3;
                                                nlVar = nlVar3;
                                            } else {
                                                nlVar = nlVar3;
                                                listA = list4;
                                            }
                                            listA = listA2;
                                        }
                                    }
                                }
                                nlVar = nlVar3;
                                listA = list4;
                            }
                            i42 += iA2;
                            iA6 = i412;
                            i10 = i14;
                            str6 = str8;
                            i21 = 4;
                            obj = null;
                        }
                        nlVar = nlVar3;
                        i42 += iA2;
                        iA6 = i412;
                        i10 = i14;
                        str6 = str8;
                        i21 = 4;
                        obj = null;
                    }
                    str7 = str6;
                    i12 = i10;
                    int i55 = iA6;
                    nlVar2 = nlVar;
                    list3 = listA;
                    if (plVar.b == null) {
                        uz2Var = new uz2();
                        uz2Var.a = Integer.toString(i);
                        uz2Var.k = str5;
                        uz2Var.h = str7;
                        uz2Var.x = iIntValue;
                        uz2Var.y = i11;
                        uz2Var.z = i12;
                        uz2Var.m = list3;
                        uz2Var.n = ql2Var4;
                        uz2Var.c = str;
                        if (nlVar2 != null) {
                            uz2Var.f = bq3.b(nlVar2.c);
                            uz2Var.g = bq3.b(nlVar2.d);
                        }
                        plVar.b = new vz2(uz2Var);
                    }
                    plVar = plVar;
                    i6 = i55;
                    i5 = i20;
                } else if (iA7 == 1414810956 || iA7 == 1954034535 || iA7 == 2004251764 || iA7 == 1937010800 || iA7 == 1664495672) {
                    os4Var.e(i20 + 16);
                    long j = Long.MAX_VALUE;
                    if (iA7 == 1414810956) {
                        str11 = MimeTypes.APPLICATION_TTML;
                    } else {
                        if (iA7 == 1954034535) {
                            int i56 = iA6 - 16;
                            byte[] bArr13 = new byte[i56];
                            os4Var.a(bArr13, 0, i56);
                            k55VarA = oe3.a(bArr13);
                            str12 = MimeTypes.APPLICATION_TX3G;
                        } else if (iA7 == 2004251764) {
                            str11 = MimeTypes.APPLICATION_MP4VTT;
                        } else if (iA7 == 1937010800) {
                            str11 = MimeTypes.APPLICATION_TTML;
                            j = 0;
                        } else {
                            if (iA7 != 1664495672) {
                                defpackage.ud.g();
                                return null;
                            }
                            plVar.d = 1;
                            str11 = MimeTypes.APPLICATION_MP4CEA608;
                        }
                        uz2 uz2Var11 = new uz2();
                        uz2Var11.a = Integer.toString(i);
                        uz2Var11.k = str12;
                        uz2Var11.c = str;
                        uz2Var11.o = j;
                        uz2Var11.m = k55VarA;
                        plVar.b = new vz2(uz2Var11);
                    }
                    str12 = str11;
                    k55VarA = null;
                    uz2 uz2Var12 = new uz2();
                    uz2Var12.a = Integer.toString(i);
                    uz2Var12.k = str12;
                    uz2Var12.c = str;
                    uz2Var12.o = j;
                    uz2Var12.m = k55VarA;
                    plVar.b = new vz2(uz2Var12);
                } else if (iA7 == 1835365492) {
                    os4Var.e(i20 + 16);
                    if (iA7 == 1835365492) {
                        os4Var.h();
                        String strH = os4Var.h();
                        if (strH != null) {
                            uz2 uz2Var13 = new uz2();
                            uz2Var13.a = Integer.toString(i);
                            uz2Var13.k = strH;
                            plVar.b = new vz2(uz2Var13);
                        }
                    }
                } else if (iA7 == 1667329389) {
                    uz2 uz2Var14 = new uz2();
                    uz2Var14.a = Integer.toString(i);
                    uz2Var14.k = MimeTypes.APPLICATION_CAMERA_MOTION;
                    plVar.b = new vz2(uz2Var14);
                }
                i5 = i20;
                i6 = iA6;
            }
            os4Var.e(i5 + i6);
            i19++;
            plVar = plVar;
            iA5 = iA5;
        }
        return plVar;
    }

    public static Pair a(os4 os4Var, int i, int i2) throws xs4 {
        d06 d06Var;
        Pair pairCreate;
        int i3;
        int i4;
        int i5 = os4Var.b;
        while (i5 - i < i2) {
            os4Var.e(i5);
            int iA = os4Var.a();
            at2.a("childAtomSize must be positive", iA > 0);
            if (os4Var.a() == 1936289382) {
                int i6 = i5 + 8;
                int i7 = 0;
                int i8 = -1;
                Integer numValueOf = null;
                String strA = null;
                while (i6 - i5 < iA) {
                    os4Var.e(i6);
                    int iA2 = os4Var.a();
                    int iA3 = os4Var.a();
                    if (iA3 == 1718775137) {
                        numValueOf = Integer.valueOf(os4Var.a());
                    } else if (iA3 == 1935894637) {
                        os4Var.e(os4Var.b + 4);
                        strA = os4Var.a(4, az.c);
                    } else if (iA3 == 1935894633) {
                        i8 = i6;
                        i7 = iA2;
                    }
                    i6 += iA2;
                }
                byte[] bArr = null;
                if (C.CENC_TYPE_cenc.equals(strA) || C.CENC_TYPE_cbc1.equals(strA) || C.CENC_TYPE_cens.equals(strA) || C.CENC_TYPE_cbcs.equals(strA)) {
                    at2.a("frma atom is mandatory", numValueOf != null);
                    at2.a("schi atom is mandatory", i8 != -1);
                    int i9 = i8 + 8;
                    while (true) {
                        if (i9 - i8 >= i7) {
                            d06Var = null;
                            break;
                        }
                        os4Var.e(i9);
                        int iA4 = os4Var.a();
                        if (os4Var.a() == 1952804451) {
                            int iA5 = (os4Var.a() >> 24) & 255;
                            os4Var.e(os4Var.b + 1);
                            if (iA5 == 0) {
                                os4Var.e(os4Var.b + 1);
                                i4 = 0;
                                i3 = 0;
                            } else {
                                int iK = os4Var.k();
                                i3 = iK & 15;
                                i4 = (iK & PsExtractor.VIDEO_STREAM_MASK) >> 4;
                            }
                            boolean z = os4Var.k() == 1;
                            int iK2 = os4Var.k();
                            byte[] bArr2 = new byte[16];
                            os4Var.a(bArr2, 0, 16);
                            if (z && iK2 == 0) {
                                int iK3 = os4Var.k();
                                byte[] bArr3 = new byte[iK3];
                                os4Var.a(bArr3, 0, iK3);
                                bArr = bArr3;
                            }
                            d06Var = new d06(z, strA, iK2, bArr2, i4, i3, bArr);
                            break;
                        }
                        i9 += iA4;
                    }
                    at2.a("tenc atom is mandatory", d06Var != null);
                    int i10 = u56.a;
                    pairCreate = Pair.create(numValueOf, d06Var);
                } else {
                    pairCreate = null;
                }
                if (pairCreate != null) {
                    return pairCreate;
                }
            }
            i5 += iA;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:116:0x0298  */
    /* JADX WARN: Code duplicated, block: B:122:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:125:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:126:0x02df  */
    /* JADX WARN: Code duplicated, block: B:128:0x0303  */
    /* JADX WARN: Code duplicated, block: B:129:0x030b  */
    /* JADX WARN: Code duplicated, block: B:131:0x0314  */
    /* JADX WARN: Code duplicated, block: B:134:0x031f  */
    /* JADX WARN: Code duplicated, block: B:136:0x033a  */
    /* JADX WARN: Code duplicated, block: B:138:0x0343  */
    /* JADX WARN: Code duplicated, block: B:139:0x034f  */
    /* JADX WARN: Code duplicated, block: B:142:0x0373  */
    /* JADX WARN: Code duplicated, block: B:143:0x0376  */
    /* JADX WARN: Code duplicated, block: B:146:0x0381  */
    /* JADX WARN: Code duplicated, block: B:147:0x0384  */
    /* JADX WARN: Code duplicated, block: B:150:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:151:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:153:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:155:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:156:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:158:0x03c4  */
    /* JADX WARN: Code duplicated, block: B:161:0x03d5  */
    /* JADX WARN: Code duplicated, block: B:171:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:173:0x03f8  */
    /* JADX WARN: Code duplicated, block: B:176:0x0404 A[LOOP:1: B:174:0x03fe->B:176:0x0404, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:179:0x0417 A[LOOP:2: B:178:0x0415->B:179:0x0417, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:182:0x0437  */
    /* JADX WARN: Code duplicated, block: B:184:0x044b A[LOOP:4: B:183:0x0449->B:184:0x044b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:187:0x048e  */
    /* JADX WARN: Code duplicated, block: B:190:0x04bb  */
    /* JADX WARN: Code duplicated, block: B:192:0x04bf  */
    /* JADX WARN: Code duplicated, block: B:194:0x04c5 A[LOOP:11: B:191:0x04bd->B:194:0x04c5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:199:0x0500 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:200:0x0502  */
    /* JADX WARN: Code duplicated, block: B:202:0x0506 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:207:0x0521  */
    /* JADX WARN: Code duplicated, block: B:210:0x0529  */
    /* JADX WARN: Code duplicated, block: B:211:0x052b  */
    /* JADX WARN: Code duplicated, block: B:214:0x0530  */
    /* JADX WARN: Code duplicated, block: B:216:0x0538  */
    /* JADX WARN: Code duplicated, block: B:217:0x0544  */
    /* JADX WARN: Code duplicated, block: B:218:0x0546  */
    /* JADX WARN: Code duplicated, block: B:221:0x0550 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:223:0x055f  */
    /* JADX WARN: Code duplicated, block: B:228:0x0582 A[DONT_INVERT, LOOP:13: B:228:0x0582->B:232:0x058c, LOOP_START, PHI: r16
      0x0582: PHI (r16v12 int) = (r16v7 int), (r16v13 int) binds: [B:227:0x0580, B:232:0x058c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:229:0x0584  */
    /* JADX WARN: Code duplicated, block: B:232:0x058c A[LOOP:13: B:228:0x0582->B:232:0x058c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:233:0x0592 A[EDGE_INSN: B:233:0x0592->B:234:0x0593 BREAK  A[LOOP:13: B:228:0x0582->B:232:0x058c]] */
    /* JADX WARN: Code duplicated, block: B:235:0x0595 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:242:0x05a5  */
    /* JADX WARN: Code duplicated, block: B:244:0x05d3  */
    /* JADX WARN: Code duplicated, block: B:245:0x05d6  */
    /* JADX WARN: Code duplicated, block: B:250:0x05f8  */
    /* JADX WARN: Code duplicated, block: B:252:0x0608  */
    /* JADX WARN: Code duplicated, block: B:254:0x060e  */
    /* JADX WARN: Code duplicated, block: B:260:0x064f  */
    /* JADX WARN: Code duplicated, block: B:268:0x0685  */
    /* JADX WARN: Code duplicated, block: B:272:0x068d  */
    /* JADX WARN: Code duplicated, block: B:279:0x06c6  */
    /* JADX WARN: Code duplicated, block: B:287:0x0705  */
    /* JADX WARN: Code duplicated, block: B:289:0x070e  */
    /* JADX WARN: Code duplicated, block: B:290:0x0710  */
    /* JADX WARN: Code duplicated, block: B:294:0x0729  */
    /* JADX WARN: Code duplicated, block: B:296:0x0731  */
    /* JADX WARN: Code duplicated, block: B:299:0x0759  */
    /* JADX WARN: Code duplicated, block: B:304:0x0768  */
    /* JADX WARN: Code duplicated, block: B:305:0x076a  */
    /* JADX WARN: Code duplicated, block: B:307:0x0771  */
    /* JADX WARN: Code duplicated, block: B:312:0x0784  */
    /* JADX WARN: Code duplicated, block: B:315:0x078a  */
    /* JADX WARN: Code duplicated, block: B:316:0x078d  */
    /* JADX WARN: Code duplicated, block: B:318:0x0790  */
    /* JADX WARN: Code duplicated, block: B:319:0x0793  */
    /* JADX WARN: Code duplicated, block: B:321:0x0796  */
    /* JADX WARN: Code duplicated, block: B:323:0x079a  */
    /* JADX WARN: Code duplicated, block: B:324:0x079d  */
    /* JADX WARN: Code duplicated, block: B:328:0x07aa  */
    /* JADX WARN: Code duplicated, block: B:330:0x07b8  */
    /* JADX WARN: Code duplicated, block: B:333:0x07c7  */
    /* JADX WARN: Code duplicated, block: B:335:0x07f7  */
    /* JADX WARN: Code duplicated, block: B:349:0x0854 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:357:0x077f A[EDGE_INSN: B:357:0x077f->B:309:0x077f BREAK  A[LOOP:6: B:292:0x0722->B:308:0x0775], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:360:0x0763 A[ADDED_TO_REGION, EDGE_INSN: B:360:0x0763->B:302:0x0763 BREAK  A[LOOP:7: B:297:0x0753->B:301:0x075e], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:365:0x07fd A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:367:0x04e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:368:0x056f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:371:0x04da A[EDGE_INSN: B:371:0x04da->B:195:0x04da BREAK  A[LOOP:11: B:191:0x04bd->B:194:0x04c5], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:375:0x0592 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:376:0x058a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x0147  */
    /* JADX WARN: Code duplicated, block: B:75:0x014a  */
    /* JADX WARN: Code duplicated, block: B:78:0x015d  */
    /* JADX WARN: Code duplicated, block: B:79:0x0160  */
    /* JADX WARN: Code duplicated, block: B:83:0x0174  */
    /* JADX WARN: Code duplicated, block: B:86:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:89:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:90:0x01ba  */
    public static ArrayList a(jl jlVar, f23 f23Var, long j, ql2 ql2Var, boolean z, boolean z2, v13 v13Var) {
        int i;
        int i2;
        long j2;
        long jL;
        long jA;
        int i3;
        int i4;
        long j3;
        os4 os4Var;
        int i5;
        long jL2;
        int iA;
        int i6;
        Pair pairCreate;
        pl plVarA;
        long j4;
        long[] jArr;
        long[] jArr2;
        c06 c06Var;
        int i7;
        jl jlVarB;
        Pair pairCreate2;
        c06 c06Var2;
        jl jlVarB2;
        kl klVarC;
        kl klVarC2;
        ol rlVar;
        int iB;
        kl klVarC3;
        boolean z3;
        kl klVarC4;
        os4 os4Var2;
        kl klVarC5;
        os4 os4Var3;
        ml mlVar;
        int iN;
        int iN2;
        int iN3;
        int iN4;
        int iN5;
        int iN6;
        int iA2;
        os4 os4Var4;
        ol olVar;
        boolean z4;
        long[] jArr3;
        int[] iArrCopyOf;
        long[] jArr4;
        int[] iArr;
        int i8;
        int i9;
        int iN7;
        int i10;
        int iA3;
        int iN8;
        os4 os4Var5;
        long j5;
        long j6;
        int i11;
        int i12;
        int iA4;
        int i13;
        int i14;
        int i15;
        int i16;
        long[] jArr5;
        long[] jArr6;
        int[] iArrCopyOf2;
        int i17;
        boolean z5;
        String str;
        int[] iArr2;
        long[] jArr7;
        int i18;
        long j7;
        long[] jArr8;
        int[] iArr3;
        boolean zA;
        int i19;
        int iC;
        int i20;
        int iN9;
        long jA2;
        long[] jArr9;
        long[] jArr10;
        long[] jArr11;
        long[] jArr12;
        long[] jArr13;
        int[] iArr4;
        boolean z6;
        int[] iArr5;
        int[] iArr6;
        long[] jArr14;
        int i21;
        int i22;
        boolean z7;
        int i23;
        long[] jArr15;
        int[] iArr7;
        int[] iArr8;
        boolean z8;
        long[] jArr16;
        int[] iArr9;
        int[] iArr10;
        long[] jArr17;
        int i24;
        int i25;
        long j8;
        l06 l06Var;
        long j9;
        int i26;
        boolean z9;
        int i27;
        long[] jArr18;
        long j10;
        int[] iArr11;
        int i28;
        int i29;
        boolean z10;
        long j11;
        long jA3;
        long j12;
        long jA4;
        long jA5;
        int i30;
        long[] jArr19;
        int[] iArr12;
        long j13;
        int i31;
        int i32;
        int i33;
        long[] jArr20;
        int[] iArr13;
        long[] jArr21;
        int[] iArr14;
        int i34;
        int i35;
        int i36;
        long j14;
        int iMax;
        int i37;
        int i38;
        ArrayList arrayList = new ArrayList();
        int i39 = 0;
        while (i39 < jlVar.d.size()) {
            jl jlVar2 = (jl) jlVar.d.get(i39);
            if (jlVar2.a != 1953653099) {
                i2 = i39;
            } else {
                kl klVarC6 = jlVar.c(Mp4Box.TYPE_mvhd);
                klVarC6.getClass();
                jl jlVarB3 = jlVar2.b(Mp4Box.TYPE_mdia);
                jlVarB3.getClass();
                kl klVarC7 = jlVarB3.c(Mp4Box.TYPE_hdlr);
                klVarC7.getClass();
                os4 os4Var6 = klVarC7.b;
                os4Var6.e(16);
                int iA5 = os4Var6.a();
                if (iA5 == 1936684398) {
                    i = 1;
                } else if (iA5 == 1986618469) {
                    i = 2;
                } else if (iA5 == 1952807028 || iA5 == 1935832172 || iA5 == 1937072756 || iA5 == 1668047728) {
                    i = 3;
                } else {
                    i = iA5 == 1835365473 ? 5 : -1;
                }
                i2 = i39;
                if (i == -1) {
                    j2 = 0;
                } else {
                    kl klVarC8 = jlVar2.c(Mp4Box.TYPE_tkhd);
                    klVarC8.getClass();
                    os4 os4Var7 = klVarC8.b;
                    j2 = 0;
                    os4Var7.e(8);
                    int iA6 = (os4Var7.a() >> 24) & 255;
                    os4Var7.e(os4Var7.b + (iA6 == 0 ? 8 : 16));
                    int iA7 = os4Var7.a();
                    os4Var7.e(os4Var7.b + 4);
                    int i40 = os4Var7.b;
                    int i41 = iA6 == 0 ? 4 : 8;
                    int i42 = 0;
                    while (true) {
                        if (i42 < i41) {
                            if (os4Var7.a[i40 + i42] != -1) {
                                jL = iA6 == 0 ? os4Var7.l() : os4Var7.o();
                                if (jL != 0) {
                                    break;
                                }
                                break;
                            }
                            i42++;
                        } else {
                            os4Var7.e(os4Var7.b + i41);
                        }
                        jL = -9223372036854775807L;
                        break;
                    }
                    os4Var7.e(os4Var7.b + 16);
                    int iA8 = os4Var7.a();
                    int iA9 = os4Var7.a();
                    os4Var7.e(os4Var7.b + 4);
                    int iA10 = os4Var7.a();
                    int iA11 = os4Var7.a();
                    if (iA8 == 0 && iA9 == 65536 && iA10 == -65536 && iA11 == 0) {
                        i4 = 90;
                    } else if (iA8 == 0 && iA9 == -65536 && iA10 == 65536 && iA11 == 0) {
                        i4 = 270;
                    } else {
                        if (iA8 == -65536 && iA9 == 0 && iA10 == 0 && iA11 == -65536) {
                            i4 = 180;
                        } else {
                            jA = -9223372036854775807L;
                            i3 = 0;
                        }
                        if (j == jA) {
                            j3 = jL;
                        } else {
                            j3 = j;
                        }
                        os4Var = klVarC6.b;
                        os4Var.e(8);
                        if (((os4Var.a() >> 24) & 255) == 0) {
                            i5 = 8;
                        } else {
                            i5 = 16;
                        }
                        os4Var.e(os4Var.b + i5);
                        jL2 = os4Var.l();
                        if (j3 != jA) {
                            jA = u56.a(j3, 1000000L, jL2);
                        }
                        jl jlVarB4 = jlVarB3.b(Mp4Box.TYPE_minf);
                        jlVarB4.getClass();
                        jl jlVarB5 = jlVarB4.b(Mp4Box.TYPE_stbl);
                        jlVarB5.getClass();
                        kl klVarC9 = jlVarB3.c(Mp4Box.TYPE_mdhd);
                        klVarC9.getClass();
                        os4 os4Var8 = klVarC9.b;
                        os4Var8.e(8);
                        iA = (os4Var8.a() >> 24) & 255;
                        os4Var8.e(os4Var8.b + (iA == 0 ? 8 : 16));
                        long jL3 = os4Var8.l();
                        if (iA == 0) {
                            i6 = 4;
                        } else {
                            i6 = 8;
                        }
                        os4Var8.e(os4Var8.b + i6);
                        int iP = os4Var8.p();
                        pairCreate = Pair.create(Long.valueOf(jL3), "" + ((char) (((iP >> 10) & 31) + 96)) + ((char) (((iP >> 5) & 31) + 96)) + ((char) ((iP & 31) + 96)));
                        kl klVarC10 = jlVarB5.c(Mp4Box.TYPE_stsd);
                        klVarC10.getClass();
                        plVarA = a(klVarC10.b, iA7, i3, (String) pairCreate.second, ql2Var, z2);
                        if (!z || (jlVarB = jlVar2.b(Mp4Box.TYPE_edts)) == null) {
                            j4 = jA;
                        } else {
                            kl klVarC11 = jlVarB.c(Mp4Box.TYPE_elst);
                            if (klVarC11 == null) {
                                j4 = jA;
                                pairCreate2 = null;
                            } else {
                                os4 os4Var9 = klVarC11.b;
                                os4Var9.e(8);
                                int iA12 = (os4Var9.a() >> 24) & 255;
                                int iN10 = os4Var9.n();
                                long[] jArr22 = new long[iN10];
                                long[] jArr23 = new long[iN10];
                                int i43 = 0;
                                while (i43 < iN10) {
                                    jArr22[i43] = iA12 == 1 ? os4Var9.o() : os4Var9.l();
                                    jArr23[i43] = iA12 == 1 ? os4Var9.g() : os4Var9.a();
                                    if (os4Var9.i() == 1) {
                                        os4Var9.e(os4Var9.b + 2);
                                        i43++;
                                        jA = jA;
                                    } else {
                                        defpackage.fg.c("Unsupported media rate.");
                                        return null;
                                    }
                                }
                                j4 = jA;
                                pairCreate2 = Pair.create(jArr22, jArr23);
                            }
                            if (pairCreate2 != null) {
                                long[] jArr24 = (long[]) pairCreate2.first;
                                jArr2 = (long[]) pairCreate2.second;
                                jArr = jArr24;
                            }
                            if (plVarA.b != null) {
                                long jLongValue = ((Long) pairCreate.first).longValue();
                                vz2 vz2Var = plVarA.b;
                                int i44 = plVarA.d;
                                d06[] d06VarArr = plVarA.a;
                                int i45 = plVarA.c;
                                i7 = Mp4Box.TYPE_stbl;
                                c06Var = new c06(iA7, i, jLongValue, jL2, j4, vz2Var, i44, d06VarArr, i45, jArr, jArr2);
                            }
                            c06Var2 = (c06) v13Var.apply(c06Var);
                            if (c06Var2 == null) {
                                jl jlVarB6 = jlVar2.b(Mp4Box.TYPE_mdia);
                                jlVarB6.getClass();
                                jl jlVarB7 = jlVarB6.b(Mp4Box.TYPE_minf);
                                jlVarB7.getClass();
                                jlVarB2 = jlVarB7.b(i7);
                                jlVarB2.getClass();
                                klVarC = jlVarB2.c(Mp4Box.TYPE_stsz);
                                if (klVarC != null) {
                                    rlVar = new ql(klVarC, c06Var2.f);
                                } else {
                                    klVarC2 = jlVarB2.c(Mp4Box.TYPE_stz2);
                                    if (klVarC2 != null) {
                                        rlVar = new rl(klVarC2);
                                    } else {
                                        defpackage.e2.h("Track has no sample table size information", null);
                                        return null;
                                    }
                                }
                                iB = rlVar.b();
                                if (iB == 0) {
                                    l06Var = new l06(c06Var2, new long[0], new int[0], 0, new long[0], new int[0], 0L);
                                } else {
                                    klVarC3 = jlVarB2.c(Mp4Box.TYPE_stco);
                                    if (klVarC3 == null) {
                                        klVarC3 = jlVarB2.c(Mp4Box.TYPE_co64);
                                        klVarC3.getClass();
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                    os4 os4Var10 = klVarC3.b;
                                    kl klVarC12 = jlVarB2.c(Mp4Box.TYPE_stsc);
                                    klVarC12.getClass();
                                    os4 os4Var11 = klVarC12.b;
                                    kl klVarC13 = jlVarB2.c(Mp4Box.TYPE_stts);
                                    klVarC13.getClass();
                                    os4 os4Var12 = klVarC13.b;
                                    klVarC4 = jlVarB2.c(Mp4Box.TYPE_stss);
                                    if (klVarC4 != null) {
                                        os4Var2 = klVarC4.b;
                                    } else {
                                        os4Var2 = null;
                                    }
                                    klVarC5 = jlVarB2.c(Mp4Box.TYPE_ctts);
                                    if (klVarC5 != null) {
                                        os4Var3 = klVarC5.b;
                                    } else {
                                        os4Var3 = null;
                                    }
                                    mlVar = new ml(os4Var11, os4Var10, z3);
                                    os4Var12.e(12);
                                    iN = os4Var12.n() - 1;
                                    iN2 = os4Var12.n();
                                    iN3 = os4Var12.n();
                                    if (os4Var3 != null) {
                                        os4Var3.e(12);
                                        iN4 = os4Var3.n();
                                    } else {
                                        iN4 = 0;
                                    }
                                    if (os4Var2 != null) {
                                        os4Var2.e(12);
                                        iN5 = os4Var2.n();
                                        if (iN5 > 0) {
                                            iN6 = os4Var2.n() - 1;
                                        } else {
                                            os4Var2 = null;
                                        }
                                        iA2 = rlVar.a();
                                        os4Var4 = os4Var3;
                                        String str2 = c06Var2.f.m;
                                        olVar = rlVar;
                                        if (iA2 == -1 && ((MimeTypes.AUDIO_RAW.equals(str2) || MimeTypes.AUDIO_MLAW.equals(str2) || MimeTypes.AUDIO_ALAW.equals(str2)) && iN == 0 && iN4 == 0 && iN5 == 0)) {
                                            z4 = true;
                                        } else {
                                            z4 = false;
                                        }
                                        if (z4) {
                                            i30 = mlVar.a;
                                            jArr19 = new long[i30];
                                            iArr12 = new int[i30];
                                            while (mlVar.a()) {
                                                int i46 = mlVar.b;
                                                jArr19[i46] = mlVar.d;
                                                iArr12[i46] = mlVar.c;
                                            }
                                            j13 = iN3;
                                            i31 = 8192 / iA2;
                                            i33 = 0;
                                            for (i32 = 0; i32 < i30; i32++) {
                                                int i47 = iArr12[i32];
                                                int i48 = u56.a;
                                                i33 += ((i47 + i31) - 1) / i31;
                                            }
                                            jArr20 = new long[i33];
                                            iArr13 = new int[i33];
                                            jArr21 = new long[i33];
                                            iArr14 = new int[i33];
                                            i34 = 0;
                                            i35 = 0;
                                            i18 = 0;
                                            i36 = 0;
                                            while (i35 < i30) {
                                                int i49 = iArr12[i35];
                                                j14 = jArr19[i35];
                                                int i50 = i36;
                                                int i51 = i30;
                                                iMax = i18;
                                                i37 = i50;
                                                long[] jArr25 = jArr19;
                                                i38 = i49;
                                                while (i38 > 0) {
                                                    int iMin = Math.min(i31, i38);
                                                    jArr20[i37] = j14;
                                                    int i52 = i38;
                                                    int i53 = iA2 * iMin;
                                                    iArr13[i37] = i53;
                                                    iMax = Math.max(iMax, i53);
                                                    jArr21[i37] = ((long) i34) * j13;
                                                    iArr14[i37] = 1;
                                                    j14 += (long) iArr13[i37];
                                                    i34 += iMin;
                                                    i38 = i52 - iMin;
                                                    i37++;
                                                    iArr12 = iArr12;
                                                }
                                                i35++;
                                                int i54 = i37;
                                                i18 = iMax;
                                                i30 = i51;
                                                i36 = i54;
                                                jArr19 = jArr25;
                                            }
                                            long j15 = j13 * ((long) i34);
                                            iArr2 = iArr14;
                                            jArr7 = jArr21;
                                            j7 = j15;
                                            iArr3 = iArr13;
                                            jArr8 = jArr20;
                                        } else {
                                            jArr3 = new long[iB];
                                            iArrCopyOf = new int[iB];
                                            jArr4 = new long[iB];
                                            int i55 = iN5;
                                            iArr = new int[iB];
                                            i8 = iN;
                                            i9 = i55;
                                            iN7 = iN6;
                                            i10 = iN4;
                                            iA3 = iN3;
                                            iN8 = iN2;
                                            os4Var5 = os4Var2;
                                            j5 = j2;
                                            j6 = j5;
                                            i11 = 0;
                                            i12 = 0;
                                            iA4 = 0;
                                            i13 = 0;
                                            i14 = 0;
                                            while (true) {
                                                if (i12 < iB) {
                                                    i15 = i9;
                                                    i16 = i8;
                                                    jArr5 = jArr3;
                                                    jArr6 = jArr4;
                                                    iArrCopyOf2 = iArr;
                                                    iB = iB;
                                                    break;
                                                }
                                                zA = true;
                                                while (i13 == 0) {
                                                    zA = mlVar.a();
                                                    if (zA) {
                                                        break;
                                                    }
                                                    int i56 = i9;
                                                    long j16 = mlVar.d;
                                                    i13 = mlVar.c;
                                                    j6 = j16;
                                                    i9 = i56;
                                                    i8 = i8;
                                                    iB = iB;
                                                }
                                                i19 = iB;
                                                i15 = i9;
                                                i16 = i8;
                                                if (!zA) {
                                                    sv3.d("AtomParsers", "Unexpected end of chunk data");
                                                    long[] jArrCopyOf = Arrays.copyOf(jArr3, i12);
                                                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i12);
                                                    long[] jArrCopyOf2 = Arrays.copyOf(jArr4, i12);
                                                    iArrCopyOf2 = Arrays.copyOf(iArr, i12);
                                                    int i57 = i12;
                                                    jArr5 = jArrCopyOf;
                                                    jArr6 = jArrCopyOf2;
                                                    iB = i57;
                                                    break;
                                                }
                                                if (os4Var4 != null) {
                                                    iN9 = i14;
                                                    while (iN9 == 0 && i10 > 0) {
                                                        iN9 = os4Var4.n();
                                                        iA4 = os4Var4.a();
                                                        i10--;
                                                    }
                                                    i14 = iN9 - 1;
                                                }
                                                jArr3[i12] = j6;
                                                iC = olVar.c();
                                                iArrCopyOf[i12] = iC;
                                                if (iC > i11) {
                                                    i11 = iC;
                                                }
                                                jArr4[i12] = j5 + ((long) iA4);
                                                if (os4Var5 == null) {
                                                    i20 = 1;
                                                } else {
                                                    i20 = 0;
                                                }
                                                iArr[i12] = i20;
                                                if (i12 == iN7) {
                                                    iArr[i12] = 1;
                                                    i9 = i15 - 1;
                                                    if (i9 > 0) {
                                                        os4Var5.getClass();
                                                        iN7 = os4Var5.n() - 1;
                                                    }
                                                } else {
                                                    i9 = i15;
                                                }
                                                j5 += (long) iA3;
                                                iN8--;
                                                if (iN8 == 0 || i16 <= 0) {
                                                    i8 = i16;
                                                } else {
                                                    i8 = i16 - 1;
                                                    iN8 = os4Var12.n();
                                                    iA3 = os4Var12.a();
                                                }
                                                j6 += (long) iArrCopyOf[i12];
                                                i13--;
                                                i12++;
                                                jArr3 = jArr3;
                                                iB = i19;
                                            }
                                            int[] iArr15 = iArrCopyOf;
                                            i17 = i13;
                                            long j17 = j5 + ((long) iA4);
                                            if (os4Var4 != null) {
                                                z5 = true;
                                                break;
                                            }
                                            while (true) {
                                                if (i10 > 0) {
                                                    z5 = true;
                                                    break;
                                                }
                                                if (os4Var4.n() != 0) {
                                                    z5 = false;
                                                    break;
                                                }
                                                os4Var4.a();
                                                i10--;
                                            }
                                            if (i15 == 0 || iN8 != 0 || i17 != 0 || i16 != 0 || i14 != 0 || !z5) {
                                                StringBuilder sb = new StringBuilder("Inconsistent stbl box for track ");
                                                defpackage.gg.e(sb, c06Var2.a, ": remainingSynchronizationSamples ", i15, ", remainingSamplesAtTimestampDelta ");
                                                defpackage.gg.e(sb, iN8, ", remainingSamplesInChunk ", i17, ", remainingTimestampDeltaChanges ");
                                                sb.append(i16);
                                                sb.append(", remainingSamplesAtTimestampOffset ");
                                                sb.append(i14);
                                                if (z5) {
                                                    str = "";
                                                } else {
                                                    str = ", ctts invalid";
                                                }
                                                sb.append(str);
                                                sv3.d("AtomParsers", sb.toString());
                                            }
                                            iArr2 = iArrCopyOf2;
                                            jArr7 = jArr6;
                                            i18 = i11;
                                            j7 = j17;
                                            jArr8 = jArr5;
                                            iArr3 = iArr15;
                                        }
                                        jA2 = u56.a(j7, 1000000L, c06Var2.c);
                                        jArr9 = c06Var2.h;
                                        if (jArr9 == null) {
                                            u56.a(jArr7, c06Var2.c);
                                            l06Var = new l06(c06Var2, jArr8, iArr3, i18, jArr7, iArr2, jA2);
                                        } else {
                                            jArr10 = jArr8;
                                            jArr11 = jArr7;
                                            if (jArr9.length == 1 && c06Var2.b == 1 && jArr11.length >= 2) {
                                                long[] jArr26 = c06Var2.i;
                                                jArr26.getClass();
                                                j11 = jArr26[0];
                                                jA3 = u56.a(c06Var2.h[0], c06Var2.c, c06Var2.d) + j11;
                                                int length = jArr11.length - 1;
                                                int iMax2 = Math.max(0, Math.min(4, length));
                                                int iMax3 = Math.max(0, Math.min(jArr11.length - 4, length));
                                                j12 = jArr11[0];
                                                if (j12 <= j11 && j11 < jArr11[iMax2] && jArr11[iMax3] < jA3 && jA3 <= j7) {
                                                    jA4 = u56.a(j11 - j12, c06Var2.f.A, c06Var2.c);
                                                    jA5 = u56.a(j7 - jA3, c06Var2.f.A, c06Var2.c);
                                                    if ((jA4 == j2 || jA5 != j2) && jA4 <= SieveCacheKt.NodeLinkMask && jA5 <= SieveCacheKt.NodeLinkMask) {
                                                        f23Var.a = (int) jA4;
                                                        f23Var.b = (int) jA5;
                                                        u56.a(jArr11, c06Var2.c);
                                                        l06Var = new l06(c06Var2, jArr10, iArr3, i18, jArr11, iArr2, u56.a(c06Var2.h[0], 1000000L, c06Var2.d));
                                                    }
                                                    arrayList.add(l06Var);
                                                }
                                            }
                                            jArr12 = c06Var2.h;
                                            if (jArr12.length != 1 && jArr12[0] == j2) {
                                                long[] jArr27 = c06Var2.i;
                                                jArr27.getClass();
                                                long j18 = jArr27[0];
                                                for (int i58 = 0; i58 < jArr11.length; i58++) {
                                                    jArr11[i58] = u56.a(jArr11[i58] - j18, 1000000L, c06Var2.c);
                                                }
                                                l06Var = new l06(c06Var2, jArr10, iArr3, i18, jArr11, iArr2, u56.a(j7 - j18, 1000000L, c06Var2.c));
                                            } else {
                                                jArr13 = jArr11;
                                                iArr4 = iArr2;
                                                if (c06Var2.b == 1) {
                                                    z6 = true;
                                                } else {
                                                    z6 = false;
                                                }
                                                iArr5 = new int[jArr12.length];
                                                iArr6 = new int[jArr12.length];
                                                jArr14 = c06Var2.i;
                                                jArr14.getClass();
                                                i21 = 0;
                                                i22 = 0;
                                                z7 = false;
                                                i23 = 0;
                                                while (true) {
                                                    jArr15 = c06Var2.h;
                                                    iArr7 = iArr6;
                                                    if (i21 >= jArr15.length) {
                                                        break;
                                                    }
                                                    j10 = jArr14[i21];
                                                    if (j10 != -1) {
                                                        long j19 = jArr15[i21];
                                                        iArr11 = iArr5;
                                                        long jA6 = u56.a(j19, c06Var2.c, c06Var2.d);
                                                        iArr11[i21] = u56.b(jArr13, j10, true);
                                                        iArr7[i21] = u56.a(jArr13, j10 + jA6, z6);
                                                        while (true) {
                                                            i28 = iArr11[i21];
                                                            i29 = iArr7[i21];
                                                            if (i28 < i29 || (iArr4[i28] & 1) != 0) {
                                                                break;
                                                            }
                                                            iArr11[i21] = i28 + 1;
                                                        }
                                                        int i59 = (i29 - i28) + i22;
                                                        if (i23 != i28) {
                                                            z10 = true;
                                                        } else {
                                                            z10 = false;
                                                        }
                                                        z7 = z10 | z7;
                                                        i23 = i29;
                                                        i22 = i59;
                                                    } else {
                                                        iArr11 = iArr5;
                                                    }
                                                    i21++;
                                                    iArr5 = iArr11;
                                                    iArr6 = iArr7;
                                                    jArr14 = jArr14;
                                                }
                                                iArr8 = iArr5;
                                                z8 = z7 | (i22 != iB);
                                                if (z8) {
                                                    jArr16 = new long[i22];
                                                } else {
                                                    jArr16 = jArr10;
                                                }
                                                if (z8) {
                                                    iArr9 = new int[i22];
                                                } else {
                                                    iArr9 = iArr3;
                                                }
                                                if (z8) {
                                                    i18 = 0;
                                                }
                                                if (z8) {
                                                    iArr10 = new int[i22];
                                                } else {
                                                    iArr10 = iArr4;
                                                }
                                                jArr17 = new long[i22];
                                                i24 = 0;
                                                i25 = 0;
                                                j8 = j2;
                                                while (i24 < c06Var2.h.length) {
                                                    j9 = c06Var2.i[i24];
                                                    i26 = iArr8[i24];
                                                    z9 = z8;
                                                    i27 = iArr7[i24];
                                                    jArr18 = jArr13;
                                                    if (z9) {
                                                        int i60 = i27 - i26;
                                                        System.arraycopy(jArr10, i26, jArr16, i25, i60);
                                                        System.arraycopy(iArr3, i26, iArr9, i25, i60);
                                                        System.arraycopy(iArr4, i26, iArr10, i25, i60);
                                                    }
                                                    int i61 = i18;
                                                    while (i26 < i27) {
                                                        int i62 = i27;
                                                        long[] jArr28 = jArr16;
                                                        int[] iArr16 = iArr9;
                                                        int[] iArr17 = iArr10;
                                                        long j20 = j2;
                                                        jArr17[i25] = u56.a(j8, 1000000L, c06Var2.d) + u56.a(Math.max(j20, jArr18[i26] - j9), 1000000L, c06Var2.c);
                                                        if (!z9 && iArr16[i25] > i61) {
                                                            i61 = iArr3[i26];
                                                        }
                                                        i25++;
                                                        i26++;
                                                        j2 = j20;
                                                        jArr16 = jArr28;
                                                        i27 = i62;
                                                        iArr9 = iArr16;
                                                        iArr10 = iArr17;
                                                    }
                                                    j8 += c06Var2.h[i24];
                                                    i24++;
                                                    i18 = i61;
                                                    z8 = z9;
                                                    jArr13 = jArr18;
                                                    iArr9 = iArr9;
                                                    iArr10 = iArr10;
                                                }
                                                l06Var = new l06(c06Var2, jArr16, iArr9, i18, jArr17, iArr10, u56.a(j8, 1000000L, c06Var2.d));
                                            }
                                            arrayList = arrayList;
                                            arrayList.add(l06Var);
                                        }
                                    } else {
                                        iN5 = 0;
                                    }
                                    iN6 = -1;
                                    iA2 = rlVar.a();
                                    os4Var4 = os4Var3;
                                    String str3 = c06Var2.f.m;
                                    olVar = rlVar;
                                    if (iA2 == -1) {
                                        z4 = false;
                                    } else {
                                        z4 = false;
                                    }
                                    if (z4) {
                                        i30 = mlVar.a;
                                        jArr19 = new long[i30];
                                        iArr12 = new int[i30];
                                        while (mlVar.a()) {
                                            int i410 = mlVar.b;
                                            jArr19[i410] = mlVar.d;
                                            iArr12[i410] = mlVar.c;
                                        }
                                        j13 = iN3;
                                        i31 = 8192 / iA2;
                                        i33 = 0;
                                        while (i32 < i30) {
                                            int i411 = iArr12[i32];
                                            int i412 = u56.a;
                                            i33 += ((i411 + i31) - 1) / i31;
                                        }
                                        jArr20 = new long[i33];
                                        iArr13 = new int[i33];
                                        jArr21 = new long[i33];
                                        iArr14 = new int[i33];
                                        i34 = 0;
                                        i35 = 0;
                                        i18 = 0;
                                        i36 = 0;
                                        while (i35 < i30) {
                                            int i413 = iArr12[i35];
                                            j14 = jArr19[i35];
                                            int i510 = i36;
                                            int i511 = i30;
                                            iMax = i18;
                                            i37 = i510;
                                            long[] jArr29 = jArr19;
                                            i38 = i413;
                                            while (i38 > 0) {
                                                int iMin2 = Math.min(i31, i38);
                                                jArr20[i37] = j14;
                                                int i512 = i38;
                                                int i513 = iA2 * iMin2;
                                                iArr13[i37] = i513;
                                                iMax = Math.max(iMax, i513);
                                                jArr21[i37] = ((long) i34) * j13;
                                                iArr14[i37] = 1;
                                                j14 += (long) iArr13[i37];
                                                i34 += iMin2;
                                                i38 = i512 - iMin2;
                                                i37++;
                                                iArr12 = iArr12;
                                            }
                                            i35++;
                                            int i514 = i37;
                                            i18 = iMax;
                                            i30 = i511;
                                            i36 = i514;
                                            jArr19 = jArr29;
                                        }
                                        long j110 = j13 * ((long) i34);
                                        iArr2 = iArr14;
                                        jArr7 = jArr21;
                                        j7 = j110;
                                        iArr3 = iArr13;
                                        jArr8 = jArr20;
                                    } else {
                                        jArr3 = new long[iB];
                                        iArrCopyOf = new int[iB];
                                        jArr4 = new long[iB];
                                        int i515 = iN5;
                                        iArr = new int[iB];
                                        i8 = iN;
                                        i9 = i515;
                                        iN7 = iN6;
                                        i10 = iN4;
                                        iA3 = iN3;
                                        iN8 = iN2;
                                        os4Var5 = os4Var2;
                                        j5 = j2;
                                        j6 = j5;
                                        i11 = 0;
                                        i12 = 0;
                                        iA4 = 0;
                                        i13 = 0;
                                        i14 = 0;
                                        while (true) {
                                            if (i12 < iB) {
                                                i15 = i9;
                                                i16 = i8;
                                                jArr5 = jArr3;
                                                jArr6 = jArr4;
                                                iArrCopyOf2 = iArr;
                                                iB = iB;
                                                break;
                                            }
                                            zA = true;
                                            while (i13 == 0) {
                                                zA = mlVar.a();
                                                if (zA) {
                                                    break;
                                                    break;
                                                }
                                                int i516 = i9;
                                                long j111 = mlVar.d;
                                                i13 = mlVar.c;
                                                j6 = j111;
                                                i9 = i516;
                                                i8 = i8;
                                                iB = iB;
                                            }
                                            i19 = iB;
                                            i15 = i9;
                                            i16 = i8;
                                            if (!zA) {
                                                sv3.d("AtomParsers", "Unexpected end of chunk data");
                                                long[] jArrCopyOf3 = Arrays.copyOf(jArr3, i12);
                                                iArrCopyOf = Arrays.copyOf(iArrCopyOf, i12);
                                                long[] jArrCopyOf4 = Arrays.copyOf(jArr4, i12);
                                                iArrCopyOf2 = Arrays.copyOf(iArr, i12);
                                                int i517 = i12;
                                                jArr5 = jArrCopyOf3;
                                                jArr6 = jArrCopyOf4;
                                                iB = i517;
                                                break;
                                            }
                                            if (os4Var4 != null) {
                                                iN9 = i14;
                                                while (iN9 == 0) {
                                                    iN9 = os4Var4.n();
                                                    iA4 = os4Var4.a();
                                                    i10--;
                                                }
                                                i14 = iN9 - 1;
                                            }
                                            jArr3[i12] = j6;
                                            iC = olVar.c();
                                            iArrCopyOf[i12] = iC;
                                            if (iC > i11) {
                                                i11 = iC;
                                            }
                                            jArr4[i12] = j5 + ((long) iA4);
                                            if (os4Var5 == null) {
                                                i20 = 1;
                                            } else {
                                                i20 = 0;
                                            }
                                            iArr[i12] = i20;
                                            if (i12 == iN7) {
                                                iArr[i12] = 1;
                                                i9 = i15 - 1;
                                                if (i9 > 0) {
                                                    os4Var5.getClass();
                                                    iN7 = os4Var5.n() - 1;
                                                }
                                            } else {
                                                i9 = i15;
                                            }
                                            j5 += (long) iA3;
                                            iN8--;
                                            if (iN8 == 0) {
                                                i8 = i16;
                                            } else {
                                                i8 = i16;
                                            }
                                            j6 += (long) iArrCopyOf[i12];
                                            i13--;
                                            i12++;
                                            jArr3 = jArr3;
                                            iB = i19;
                                        }
                                        int[] iArr18 = iArrCopyOf;
                                        i17 = i13;
                                        long j112 = j5 + ((long) iA4);
                                        if (os4Var4 != null) {
                                            z5 = true;
                                            break;
                                        }
                                        while (true) {
                                            if (i10 > 0) {
                                                z5 = true;
                                                break;
                                            }
                                            if (os4Var4.n() != 0) {
                                                z5 = false;
                                                break;
                                            }
                                            os4Var4.a();
                                            i10--;
                                        }
                                        if (i15 == 0) {
                                            StringBuilder sb2 = new StringBuilder("Inconsistent stbl box for track ");
                                            defpackage.gg.e(sb2, c06Var2.a, ": remainingSynchronizationSamples ", i15, ", remainingSamplesAtTimestampDelta ");
                                            defpackage.gg.e(sb2, iN8, ", remainingSamplesInChunk ", i17, ", remainingTimestampDeltaChanges ");
                                            sb2.append(i16);
                                            sb2.append(", remainingSamplesAtTimestampOffset ");
                                            sb2.append(i14);
                                            if (z5) {
                                                str = ", ctts invalid";
                                            } else {
                                                str = "";
                                            }
                                            sb2.append(str);
                                            sv3.d("AtomParsers", sb2.toString());
                                        } else {
                                            StringBuilder sb3 = new StringBuilder("Inconsistent stbl box for track ");
                                            defpackage.gg.e(sb3, c06Var2.a, ": remainingSynchronizationSamples ", i15, ", remainingSamplesAtTimestampDelta ");
                                            defpackage.gg.e(sb3, iN8, ", remainingSamplesInChunk ", i17, ", remainingTimestampDeltaChanges ");
                                            sb3.append(i16);
                                            sb3.append(", remainingSamplesAtTimestampOffset ");
                                            sb3.append(i14);
                                            if (z5) {
                                                str = ", ctts invalid";
                                            } else {
                                                str = "";
                                            }
                                            sb3.append(str);
                                            sv3.d("AtomParsers", sb3.toString());
                                        }
                                        iArr2 = iArrCopyOf2;
                                        jArr7 = jArr6;
                                        i18 = i11;
                                        j7 = j112;
                                        jArr8 = jArr5;
                                        iArr3 = iArr18;
                                    }
                                    jA2 = u56.a(j7, 1000000L, c06Var2.c);
                                    jArr9 = c06Var2.h;
                                    if (jArr9 == null) {
                                        u56.a(jArr7, c06Var2.c);
                                        l06Var = new l06(c06Var2, jArr8, iArr3, i18, jArr7, iArr2, jA2);
                                    } else {
                                        jArr10 = jArr8;
                                        jArr11 = jArr7;
                                        if (jArr9.length == 1) {
                                            long[] jArr210 = c06Var2.i;
                                            jArr210.getClass();
                                            j11 = jArr210[0];
                                            jA3 = u56.a(c06Var2.h[0], c06Var2.c, c06Var2.d) + j11;
                                            int length2 = jArr11.length - 1;
                                            int iMax4 = Math.max(0, Math.min(4, length2));
                                            int iMax5 = Math.max(0, Math.min(jArr11.length - 4, length2));
                                            j12 = jArr11[0];
                                            if (j12 <= j11) {
                                                jA4 = u56.a(j11 - j12, c06Var2.f.A, c06Var2.c);
                                                jA5 = u56.a(j7 - jA3, c06Var2.f.A, c06Var2.c);
                                                if (jA4 == j2) {
                                                    f23Var.a = (int) jA4;
                                                    f23Var.b = (int) jA5;
                                                    u56.a(jArr11, c06Var2.c);
                                                    l06Var = new l06(c06Var2, jArr10, iArr3, i18, jArr11, iArr2, u56.a(c06Var2.h[0], 1000000L, c06Var2.d));
                                                } else {
                                                    f23Var.a = (int) jA4;
                                                    f23Var.b = (int) jA5;
                                                    u56.a(jArr11, c06Var2.c);
                                                    l06Var = new l06(c06Var2, jArr10, iArr3, i18, jArr11, iArr2, u56.a(c06Var2.h[0], 1000000L, c06Var2.d));
                                                }
                                            }
                                        }
                                        jArr12 = c06Var2.h;
                                        if (jArr12.length != 1) {
                                            jArr13 = jArr11;
                                            iArr4 = iArr2;
                                            if (c06Var2.b == 1) {
                                                z6 = true;
                                            } else {
                                                z6 = false;
                                            }
                                            iArr5 = new int[jArr12.length];
                                            iArr6 = new int[jArr12.length];
                                            jArr14 = c06Var2.i;
                                            jArr14.getClass();
                                            i21 = 0;
                                            i22 = 0;
                                            z7 = false;
                                            i23 = 0;
                                            while (true) {
                                                jArr15 = c06Var2.h;
                                                iArr7 = iArr6;
                                                if (i21 >= jArr15.length) {
                                                    break;
                                                    break;
                                                }
                                                j10 = jArr14[i21];
                                                if (j10 != -1) {
                                                    long j113 = jArr15[i21];
                                                    iArr11 = iArr5;
                                                    long jA7 = u56.a(j113, c06Var2.c, c06Var2.d);
                                                    iArr11[i21] = u56.b(jArr13, j10, true);
                                                    iArr7[i21] = u56.a(jArr13, j10 + jA7, z6);
                                                    while (true) {
                                                        i28 = iArr11[i21];
                                                        i29 = iArr7[i21];
                                                        if (i28 < i29) {
                                                            break;
                                                        }
                                                        break;
                                                        break;
                                                        iArr11[i21] = i28 + 1;
                                                    }
                                                    int i518 = (i29 - i28) + i22;
                                                    if (i23 != i28) {
                                                        z10 = true;
                                                    } else {
                                                        z10 = false;
                                                    }
                                                    z7 = z10 | z7;
                                                    i23 = i29;
                                                    i22 = i518;
                                                } else {
                                                    iArr11 = iArr5;
                                                }
                                                i21++;
                                                iArr5 = iArr11;
                                                iArr6 = iArr7;
                                                jArr14 = jArr14;
                                            }
                                            iArr8 = iArr5;
                                            z8 = z7 | (i22 != iB);
                                            if (z8) {
                                                jArr16 = new long[i22];
                                            } else {
                                                jArr16 = jArr10;
                                            }
                                            if (z8) {
                                                iArr9 = new int[i22];
                                            } else {
                                                iArr9 = iArr3;
                                            }
                                            if (z8) {
                                                i18 = 0;
                                            }
                                            if (z8) {
                                                iArr10 = new int[i22];
                                            } else {
                                                iArr10 = iArr4;
                                            }
                                            jArr17 = new long[i22];
                                            i24 = 0;
                                            i25 = 0;
                                            j8 = j2;
                                            while (i24 < c06Var2.h.length) {
                                                j9 = c06Var2.i[i24];
                                                i26 = iArr8[i24];
                                                z9 = z8;
                                                i27 = iArr7[i24];
                                                jArr18 = jArr13;
                                                if (z9) {
                                                    int i63 = i27 - i26;
                                                    System.arraycopy(jArr10, i26, jArr16, i25, i63);
                                                    System.arraycopy(iArr3, i26, iArr9, i25, i63);
                                                    System.arraycopy(iArr4, i26, iArr10, i25, i63);
                                                }
                                                int i64 = i18;
                                                while (i26 < i27) {
                                                    int i65 = i27;
                                                    long[] jArr211 = jArr16;
                                                    int[] iArr19 = iArr9;
                                                    int[] iArr110 = iArr10;
                                                    long j21 = j2;
                                                    jArr17[i25] = u56.a(j8, 1000000L, c06Var2.d) + u56.a(Math.max(j21, jArr18[i26] - j9), 1000000L, c06Var2.c);
                                                    if (!z9) {
                                                    }
                                                    i25++;
                                                    i26++;
                                                    j2 = j21;
                                                    jArr16 = jArr211;
                                                    i27 = i65;
                                                    iArr9 = iArr19;
                                                    iArr10 = iArr110;
                                                }
                                                j8 += c06Var2.h[i24];
                                                i24++;
                                                i18 = i64;
                                                z8 = z9;
                                                jArr13 = jArr18;
                                                iArr9 = iArr9;
                                                iArr10 = iArr10;
                                            }
                                            l06Var = new l06(c06Var2, jArr16, iArr9, i18, jArr17, iArr10, u56.a(j8, 1000000L, c06Var2.d));
                                        } else {
                                            jArr13 = jArr11;
                                            iArr4 = iArr2;
                                            if (c06Var2.b == 1) {
                                                z6 = true;
                                            } else {
                                                z6 = false;
                                            }
                                            iArr5 = new int[jArr12.length];
                                            iArr6 = new int[jArr12.length];
                                            jArr14 = c06Var2.i;
                                            jArr14.getClass();
                                            i21 = 0;
                                            i22 = 0;
                                            z7 = false;
                                            i23 = 0;
                                            while (true) {
                                                jArr15 = c06Var2.h;
                                                iArr7 = iArr6;
                                                if (i21 >= jArr15.length) {
                                                    break;
                                                    break;
                                                }
                                                j10 = jArr14[i21];
                                                if (j10 != -1) {
                                                    long j114 = jArr15[i21];
                                                    iArr11 = iArr5;
                                                    long jA8 = u56.a(j114, c06Var2.c, c06Var2.d);
                                                    iArr11[i21] = u56.b(jArr13, j10, true);
                                                    iArr7[i21] = u56.a(jArr13, j10 + jA8, z6);
                                                    while (true) {
                                                        i28 = iArr11[i21];
                                                        i29 = iArr7[i21];
                                                        if (i28 < i29) {
                                                            break;
                                                            break;
                                                        }
                                                        break;
                                                        break;
                                                        iArr11[i21] = i28 + 1;
                                                    }
                                                    int i519 = (i29 - i28) + i22;
                                                    if (i23 != i28) {
                                                        z10 = true;
                                                    } else {
                                                        z10 = false;
                                                    }
                                                    z7 = z10 | z7;
                                                    i23 = i29;
                                                    i22 = i519;
                                                } else {
                                                    iArr11 = iArr5;
                                                }
                                                i21++;
                                                iArr5 = iArr11;
                                                iArr6 = iArr7;
                                                jArr14 = jArr14;
                                            }
                                            iArr8 = iArr5;
                                            z8 = z7 | (i22 != iB);
                                            if (z8) {
                                                jArr16 = new long[i22];
                                            } else {
                                                jArr16 = jArr10;
                                            }
                                            if (z8) {
                                                iArr9 = new int[i22];
                                            } else {
                                                iArr9 = iArr3;
                                            }
                                            if (z8) {
                                                i18 = 0;
                                            }
                                            if (z8) {
                                                iArr10 = new int[i22];
                                            } else {
                                                iArr10 = iArr4;
                                            }
                                            jArr17 = new long[i22];
                                            i24 = 0;
                                            i25 = 0;
                                            j8 = j2;
                                            while (i24 < c06Var2.h.length) {
                                                j9 = c06Var2.i[i24];
                                                i26 = iArr8[i24];
                                                z9 = z8;
                                                i27 = iArr7[i24];
                                                jArr18 = jArr13;
                                                if (z9) {
                                                    int i66 = i27 - i26;
                                                    System.arraycopy(jArr10, i26, jArr16, i25, i66);
                                                    System.arraycopy(iArr3, i26, iArr9, i25, i66);
                                                    System.arraycopy(iArr4, i26, iArr10, i25, i66);
                                                }
                                                int i67 = i18;
                                                while (i26 < i27) {
                                                    int i68 = i27;
                                                    long[] jArr212 = jArr16;
                                                    int[] iArr111 = iArr9;
                                                    int[] iArr112 = iArr10;
                                                    long j22 = j2;
                                                    jArr17[i25] = u56.a(j8, 1000000L, c06Var2.d) + u56.a(Math.max(j22, jArr18[i26] - j9), 1000000L, c06Var2.c);
                                                    if (!z9) {
                                                    }
                                                    i25++;
                                                    i26++;
                                                    j2 = j22;
                                                    jArr16 = jArr212;
                                                    i27 = i68;
                                                    iArr9 = iArr111;
                                                    iArr10 = iArr112;
                                                }
                                                j8 += c06Var2.h[i24];
                                                i24++;
                                                i18 = i67;
                                                z8 = z9;
                                                jArr13 = jArr18;
                                                iArr9 = iArr9;
                                                iArr10 = iArr10;
                                            }
                                            l06Var = new l06(c06Var2, jArr16, iArr9, i18, jArr17, iArr10, u56.a(j8, 1000000L, c06Var2.d));
                                        }
                                        arrayList = arrayList;
                                        arrayList.add(l06Var);
                                    }
                                }
                                arrayList.add(l06Var);
                            }
                            i39 = i2 + 1;
                            arrayList = arrayList;
                        }
                        jArr = null;
                        jArr2 = null;
                        if (plVarA.b != null) {
                            long jLongValue2 = ((Long) pairCreate.first).longValue();
                            vz2 vz2Var2 = plVarA.b;
                            int i414 = plVarA.d;
                            d06[] d06VarArr2 = plVarA.a;
                            int i415 = plVarA.c;
                            i7 = Mp4Box.TYPE_stbl;
                            c06Var = new c06(iA7, i, jLongValue2, jL2, j4, vz2Var2, i414, d06VarArr2, i415, jArr, jArr2);
                        }
                        c06Var2 = (c06) v13Var.apply(c06Var);
                        if (c06Var2 == null) {
                            jl jlVarB8 = jlVar2.b(Mp4Box.TYPE_mdia);
                            jlVarB8.getClass();
                            jl jlVarB9 = jlVarB8.b(Mp4Box.TYPE_minf);
                            jlVarB9.getClass();
                            jlVarB2 = jlVarB9.b(i7);
                            jlVarB2.getClass();
                            klVarC = jlVarB2.c(Mp4Box.TYPE_stsz);
                            if (klVarC != null) {
                                rlVar = new ql(klVarC, c06Var2.f);
                            } else {
                                klVarC2 = jlVarB2.c(Mp4Box.TYPE_stz2);
                                if (klVarC2 != null) {
                                    rlVar = new rl(klVarC2);
                                } else {
                                    defpackage.e2.h("Track has no sample table size information", null);
                                    return null;
                                }
                            }
                            iB = rlVar.b();
                            if (iB == 0) {
                                l06Var = new l06(c06Var2, new long[0], new int[0], 0, new long[0], new int[0], 0L);
                            } else {
                                klVarC3 = jlVarB2.c(Mp4Box.TYPE_stco);
                                if (klVarC3 == null) {
                                    klVarC3 = jlVarB2.c(Mp4Box.TYPE_co64);
                                    klVarC3.getClass();
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                os4 os4Var13 = klVarC3.b;
                                kl klVarC14 = jlVarB2.c(Mp4Box.TYPE_stsc);
                                klVarC14.getClass();
                                os4 os4Var14 = klVarC14.b;
                                kl klVarC15 = jlVarB2.c(Mp4Box.TYPE_stts);
                                klVarC15.getClass();
                                os4 os4Var15 = klVarC15.b;
                                klVarC4 = jlVarB2.c(Mp4Box.TYPE_stss);
                                if (klVarC4 != null) {
                                    os4Var2 = klVarC4.b;
                                } else {
                                    os4Var2 = null;
                                }
                                klVarC5 = jlVarB2.c(Mp4Box.TYPE_ctts);
                                if (klVarC5 != null) {
                                    os4Var3 = klVarC5.b;
                                } else {
                                    os4Var3 = null;
                                }
                                mlVar = new ml(os4Var14, os4Var13, z3);
                                os4Var15.e(12);
                                iN = os4Var15.n() - 1;
                                iN2 = os4Var15.n();
                                iN3 = os4Var15.n();
                                if (os4Var3 != null) {
                                    os4Var3.e(12);
                                    iN4 = os4Var3.n();
                                } else {
                                    iN4 = 0;
                                }
                                if (os4Var2 != null) {
                                    os4Var2.e(12);
                                    iN5 = os4Var2.n();
                                    if (iN5 > 0) {
                                        iN6 = os4Var2.n() - 1;
                                    } else {
                                        os4Var2 = null;
                                    }
                                    iA2 = rlVar.a();
                                    os4Var4 = os4Var3;
                                    String str4 = c06Var2.f.m;
                                    olVar = rlVar;
                                    if (iA2 == -1) {
                                        z4 = false;
                                    } else {
                                        z4 = false;
                                    }
                                    if (z4) {
                                        i30 = mlVar.a;
                                        jArr19 = new long[i30];
                                        iArr12 = new int[i30];
                                        while (mlVar.a()) {
                                            int i416 = mlVar.b;
                                            jArr19[i416] = mlVar.d;
                                            iArr12[i416] = mlVar.c;
                                        }
                                        j13 = iN3;
                                        i31 = 8192 / iA2;
                                        i33 = 0;
                                        while (i32 < i30) {
                                            int i417 = iArr12[i32];
                                            int i418 = u56.a;
                                            i33 += ((i417 + i31) - 1) / i31;
                                        }
                                        jArr20 = new long[i33];
                                        iArr13 = new int[i33];
                                        jArr21 = new long[i33];
                                        iArr14 = new int[i33];
                                        i34 = 0;
                                        i35 = 0;
                                        i18 = 0;
                                        i36 = 0;
                                        while (i35 < i30) {
                                            int i419 = iArr12[i35];
                                            j14 = jArr19[i35];
                                            int i5110 = i36;
                                            int i5111 = i30;
                                            iMax = i18;
                                            i37 = i5110;
                                            long[] jArr213 = jArr19;
                                            i38 = i419;
                                            while (i38 > 0) {
                                                int iMin3 = Math.min(i31, i38);
                                                jArr20[i37] = j14;
                                                int i5112 = i38;
                                                int i5113 = iA2 * iMin3;
                                                iArr13[i37] = i5113;
                                                iMax = Math.max(iMax, i5113);
                                                jArr21[i37] = ((long) i34) * j13;
                                                iArr14[i37] = 1;
                                                j14 += (long) iArr13[i37];
                                                i34 += iMin3;
                                                i38 = i5112 - iMin3;
                                                i37++;
                                                iArr12 = iArr12;
                                            }
                                            i35++;
                                            int i5114 = i37;
                                            i18 = iMax;
                                            i30 = i5111;
                                            i36 = i5114;
                                            jArr19 = jArr213;
                                        }
                                        long j115 = j13 * ((long) i34);
                                        iArr2 = iArr14;
                                        jArr7 = jArr21;
                                        j7 = j115;
                                        iArr3 = iArr13;
                                        jArr8 = jArr20;
                                    } else {
                                        jArr3 = new long[iB];
                                        iArrCopyOf = new int[iB];
                                        jArr4 = new long[iB];
                                        int i5115 = iN5;
                                        iArr = new int[iB];
                                        i8 = iN;
                                        i9 = i5115;
                                        iN7 = iN6;
                                        i10 = iN4;
                                        iA3 = iN3;
                                        iN8 = iN2;
                                        os4Var5 = os4Var2;
                                        j5 = j2;
                                        j6 = j5;
                                        i11 = 0;
                                        i12 = 0;
                                        iA4 = 0;
                                        i13 = 0;
                                        i14 = 0;
                                        while (true) {
                                            if (i12 < iB) {
                                                i15 = i9;
                                                i16 = i8;
                                                jArr5 = jArr3;
                                                jArr6 = jArr4;
                                                iArrCopyOf2 = iArr;
                                                iB = iB;
                                                break;
                                            }
                                            zA = true;
                                            while (i13 == 0) {
                                                zA = mlVar.a();
                                                if (zA) {
                                                    break;
                                                    break;
                                                }
                                                int i5116 = i9;
                                                long j116 = mlVar.d;
                                                i13 = mlVar.c;
                                                j6 = j116;
                                                i9 = i5116;
                                                i8 = i8;
                                                iB = iB;
                                            }
                                            i19 = iB;
                                            i15 = i9;
                                            i16 = i8;
                                            if (!zA) {
                                                sv3.d("AtomParsers", "Unexpected end of chunk data");
                                                long[] jArrCopyOf5 = Arrays.copyOf(jArr3, i12);
                                                iArrCopyOf = Arrays.copyOf(iArrCopyOf, i12);
                                                long[] jArrCopyOf6 = Arrays.copyOf(jArr4, i12);
                                                iArrCopyOf2 = Arrays.copyOf(iArr, i12);
                                                int i5117 = i12;
                                                jArr5 = jArrCopyOf5;
                                                jArr6 = jArrCopyOf6;
                                                iB = i5117;
                                                break;
                                            }
                                            if (os4Var4 != null) {
                                                iN9 = i14;
                                                while (iN9 == 0) {
                                                    iN9 = os4Var4.n();
                                                    iA4 = os4Var4.a();
                                                    i10--;
                                                }
                                                i14 = iN9 - 1;
                                            }
                                            jArr3[i12] = j6;
                                            iC = olVar.c();
                                            iArrCopyOf[i12] = iC;
                                            if (iC > i11) {
                                                i11 = iC;
                                            }
                                            jArr4[i12] = j5 + ((long) iA4);
                                            if (os4Var5 == null) {
                                                i20 = 1;
                                            } else {
                                                i20 = 0;
                                            }
                                            iArr[i12] = i20;
                                            if (i12 == iN7) {
                                                iArr[i12] = 1;
                                                i9 = i15 - 1;
                                                if (i9 > 0) {
                                                    os4Var5.getClass();
                                                    iN7 = os4Var5.n() - 1;
                                                }
                                            } else {
                                                i9 = i15;
                                            }
                                            j5 += (long) iA3;
                                            iN8--;
                                            if (iN8 == 0) {
                                                i8 = i16;
                                            } else {
                                                i8 = i16;
                                            }
                                            j6 += (long) iArrCopyOf[i12];
                                            i13--;
                                            i12++;
                                            jArr3 = jArr3;
                                            iB = i19;
                                        }
                                        int[] iArr113 = iArrCopyOf;
                                        i17 = i13;
                                        long j117 = j5 + ((long) iA4);
                                        if (os4Var4 != null) {
                                            z5 = true;
                                            break;
                                        }
                                        while (true) {
                                            if (i10 > 0) {
                                                z5 = true;
                                                break;
                                            }
                                            if (os4Var4.n() != 0) {
                                                z5 = false;
                                                break;
                                            }
                                            os4Var4.a();
                                            i10--;
                                        }
                                        if (i15 == 0) {
                                            StringBuilder sb4 = new StringBuilder("Inconsistent stbl box for track ");
                                            defpackage.gg.e(sb4, c06Var2.a, ": remainingSynchronizationSamples ", i15, ", remainingSamplesAtTimestampDelta ");
                                            defpackage.gg.e(sb4, iN8, ", remainingSamplesInChunk ", i17, ", remainingTimestampDeltaChanges ");
                                            sb4.append(i16);
                                            sb4.append(", remainingSamplesAtTimestampOffset ");
                                            sb4.append(i14);
                                            if (z5) {
                                                str = ", ctts invalid";
                                            } else {
                                                str = "";
                                            }
                                            sb4.append(str);
                                            sv3.d("AtomParsers", sb4.toString());
                                        } else {
                                            StringBuilder sb5 = new StringBuilder("Inconsistent stbl box for track ");
                                            defpackage.gg.e(sb5, c06Var2.a, ": remainingSynchronizationSamples ", i15, ", remainingSamplesAtTimestampDelta ");
                                            defpackage.gg.e(sb5, iN8, ", remainingSamplesInChunk ", i17, ", remainingTimestampDeltaChanges ");
                                            sb5.append(i16);
                                            sb5.append(", remainingSamplesAtTimestampOffset ");
                                            sb5.append(i14);
                                            if (z5) {
                                                str = ", ctts invalid";
                                            } else {
                                                str = "";
                                            }
                                            sb5.append(str);
                                            sv3.d("AtomParsers", sb5.toString());
                                        }
                                        iArr2 = iArrCopyOf2;
                                        jArr7 = jArr6;
                                        i18 = i11;
                                        j7 = j117;
                                        jArr8 = jArr5;
                                        iArr3 = iArr113;
                                    }
                                    jA2 = u56.a(j7, 1000000L, c06Var2.c);
                                    jArr9 = c06Var2.h;
                                    if (jArr9 == null) {
                                        u56.a(jArr7, c06Var2.c);
                                        l06Var = new l06(c06Var2, jArr8, iArr3, i18, jArr7, iArr2, jA2);
                                    } else {
                                        jArr10 = jArr8;
                                        jArr11 = jArr7;
                                        if (jArr9.length == 1) {
                                            long[] jArr214 = c06Var2.i;
                                            jArr214.getClass();
                                            j11 = jArr214[0];
                                            jA3 = u56.a(c06Var2.h[0], c06Var2.c, c06Var2.d) + j11;
                                            int length3 = jArr11.length - 1;
                                            int iMax6 = Math.max(0, Math.min(4, length3));
                                            int iMax7 = Math.max(0, Math.min(jArr11.length - 4, length3));
                                            j12 = jArr11[0];
                                            if (j12 <= j11) {
                                                jA4 = u56.a(j11 - j12, c06Var2.f.A, c06Var2.c);
                                                jA5 = u56.a(j7 - jA3, c06Var2.f.A, c06Var2.c);
                                                if (jA4 == j2) {
                                                    f23Var.a = (int) jA4;
                                                    f23Var.b = (int) jA5;
                                                    u56.a(jArr11, c06Var2.c);
                                                    l06Var = new l06(c06Var2, jArr10, iArr3, i18, jArr11, iArr2, u56.a(c06Var2.h[0], 1000000L, c06Var2.d));
                                                } else {
                                                    f23Var.a = (int) jA4;
                                                    f23Var.b = (int) jA5;
                                                    u56.a(jArr11, c06Var2.c);
                                                    l06Var = new l06(c06Var2, jArr10, iArr3, i18, jArr11, iArr2, u56.a(c06Var2.h[0], 1000000L, c06Var2.d));
                                                }
                                            }
                                        }
                                        jArr12 = c06Var2.h;
                                        if (jArr12.length != 1) {
                                            jArr13 = jArr11;
                                            iArr4 = iArr2;
                                            if (c06Var2.b == 1) {
                                                z6 = true;
                                            } else {
                                                z6 = false;
                                            }
                                            iArr5 = new int[jArr12.length];
                                            iArr6 = new int[jArr12.length];
                                            jArr14 = c06Var2.i;
                                            jArr14.getClass();
                                            i21 = 0;
                                            i22 = 0;
                                            z7 = false;
                                            i23 = 0;
                                            while (true) {
                                                jArr15 = c06Var2.h;
                                                iArr7 = iArr6;
                                                if (i21 >= jArr15.length) {
                                                    break;
                                                    break;
                                                }
                                                j10 = jArr14[i21];
                                                if (j10 != -1) {
                                                    long j118 = jArr15[i21];
                                                    iArr11 = iArr5;
                                                    long jA9 = u56.a(j118, c06Var2.c, c06Var2.d);
                                                    iArr11[i21] = u56.b(jArr13, j10, true);
                                                    iArr7[i21] = u56.a(jArr13, j10 + jA9, z6);
                                                    while (true) {
                                                        i28 = iArr11[i21];
                                                        i29 = iArr7[i21];
                                                        if (i28 < i29) {
                                                            break;
                                                            break;
                                                        }
                                                        break;
                                                        break;
                                                        iArr11[i21] = i28 + 1;
                                                    }
                                                    int i5118 = (i29 - i28) + i22;
                                                    if (i23 != i28) {
                                                        z10 = true;
                                                    } else {
                                                        z10 = false;
                                                    }
                                                    z7 = z10 | z7;
                                                    i23 = i29;
                                                    i22 = i5118;
                                                } else {
                                                    iArr11 = iArr5;
                                                }
                                                i21++;
                                                iArr5 = iArr11;
                                                iArr6 = iArr7;
                                                jArr14 = jArr14;
                                            }
                                            iArr8 = iArr5;
                                            z8 = z7 | (i22 != iB);
                                            if (z8) {
                                                jArr16 = new long[i22];
                                            } else {
                                                jArr16 = jArr10;
                                            }
                                            if (z8) {
                                                iArr9 = new int[i22];
                                            } else {
                                                iArr9 = iArr3;
                                            }
                                            if (z8) {
                                                i18 = 0;
                                            }
                                            if (z8) {
                                                iArr10 = new int[i22];
                                            } else {
                                                iArr10 = iArr4;
                                            }
                                            jArr17 = new long[i22];
                                            i24 = 0;
                                            i25 = 0;
                                            j8 = j2;
                                            while (i24 < c06Var2.h.length) {
                                                j9 = c06Var2.i[i24];
                                                i26 = iArr8[i24];
                                                z9 = z8;
                                                i27 = iArr7[i24];
                                                jArr18 = jArr13;
                                                if (z9) {
                                                    int i69 = i27 - i26;
                                                    System.arraycopy(jArr10, i26, jArr16, i25, i69);
                                                    System.arraycopy(iArr3, i26, iArr9, i25, i69);
                                                    System.arraycopy(iArr4, i26, iArr10, i25, i69);
                                                }
                                                int i610 = i18;
                                                while (i26 < i27) {
                                                    int i611 = i27;
                                                    long[] jArr215 = jArr16;
                                                    int[] iArr114 = iArr9;
                                                    int[] iArr115 = iArr10;
                                                    long j23 = j2;
                                                    jArr17[i25] = u56.a(j8, 1000000L, c06Var2.d) + u56.a(Math.max(j23, jArr18[i26] - j9), 1000000L, c06Var2.c);
                                                    if (!z9) {
                                                    }
                                                    i25++;
                                                    i26++;
                                                    j2 = j23;
                                                    jArr16 = jArr215;
                                                    i27 = i611;
                                                    iArr9 = iArr114;
                                                    iArr10 = iArr115;
                                                }
                                                j8 += c06Var2.h[i24];
                                                i24++;
                                                i18 = i610;
                                                z8 = z9;
                                                jArr13 = jArr18;
                                                iArr9 = iArr9;
                                                iArr10 = iArr10;
                                            }
                                            l06Var = new l06(c06Var2, jArr16, iArr9, i18, jArr17, iArr10, u56.a(j8, 1000000L, c06Var2.d));
                                        } else {
                                            jArr13 = jArr11;
                                            iArr4 = iArr2;
                                            if (c06Var2.b == 1) {
                                                z6 = true;
                                            } else {
                                                z6 = false;
                                            }
                                            iArr5 = new int[jArr12.length];
                                            iArr6 = new int[jArr12.length];
                                            jArr14 = c06Var2.i;
                                            jArr14.getClass();
                                            i21 = 0;
                                            i22 = 0;
                                            z7 = false;
                                            i23 = 0;
                                            while (true) {
                                                jArr15 = c06Var2.h;
                                                iArr7 = iArr6;
                                                if (i21 >= jArr15.length) {
                                                    break;
                                                    break;
                                                }
                                                j10 = jArr14[i21];
                                                if (j10 != -1) {
                                                    long j119 = jArr15[i21];
                                                    iArr11 = iArr5;
                                                    long jA10 = u56.a(j119, c06Var2.c, c06Var2.d);
                                                    iArr11[i21] = u56.b(jArr13, j10, true);
                                                    iArr7[i21] = u56.a(jArr13, j10 + jA10, z6);
                                                    while (true) {
                                                        i28 = iArr11[i21];
                                                        i29 = iArr7[i21];
                                                        if (i28 < i29) {
                                                            break;
                                                            break;
                                                        }
                                                        break;
                                                        break;
                                                        iArr11[i21] = i28 + 1;
                                                    }
                                                    int i5119 = (i29 - i28) + i22;
                                                    if (i23 != i28) {
                                                        z10 = true;
                                                    } else {
                                                        z10 = false;
                                                    }
                                                    z7 = z10 | z7;
                                                    i23 = i29;
                                                    i22 = i5119;
                                                } else {
                                                    iArr11 = iArr5;
                                                }
                                                i21++;
                                                iArr5 = iArr11;
                                                iArr6 = iArr7;
                                                jArr14 = jArr14;
                                            }
                                            iArr8 = iArr5;
                                            z8 = z7 | (i22 != iB);
                                            if (z8) {
                                                jArr16 = new long[i22];
                                            } else {
                                                jArr16 = jArr10;
                                            }
                                            if (z8) {
                                                iArr9 = new int[i22];
                                            } else {
                                                iArr9 = iArr3;
                                            }
                                            if (z8) {
                                                i18 = 0;
                                            }
                                            if (z8) {
                                                iArr10 = new int[i22];
                                            } else {
                                                iArr10 = iArr4;
                                            }
                                            jArr17 = new long[i22];
                                            i24 = 0;
                                            i25 = 0;
                                            j8 = j2;
                                            while (i24 < c06Var2.h.length) {
                                                j9 = c06Var2.i[i24];
                                                i26 = iArr8[i24];
                                                z9 = z8;
                                                i27 = iArr7[i24];
                                                jArr18 = jArr13;
                                                if (z9) {
                                                    int i612 = i27 - i26;
                                                    System.arraycopy(jArr10, i26, jArr16, i25, i612);
                                                    System.arraycopy(iArr3, i26, iArr9, i25, i612);
                                                    System.arraycopy(iArr4, i26, iArr10, i25, i612);
                                                }
                                                int i613 = i18;
                                                while (i26 < i27) {
                                                    int i614 = i27;
                                                    long[] jArr216 = jArr16;
                                                    int[] iArr116 = iArr9;
                                                    int[] iArr117 = iArr10;
                                                    long j24 = j2;
                                                    jArr17[i25] = u56.a(j8, 1000000L, c06Var2.d) + u56.a(Math.max(j24, jArr18[i26] - j9), 1000000L, c06Var2.c);
                                                    if (!z9) {
                                                    }
                                                    i25++;
                                                    i26++;
                                                    j2 = j24;
                                                    jArr16 = jArr216;
                                                    i27 = i614;
                                                    iArr9 = iArr116;
                                                    iArr10 = iArr117;
                                                }
                                                j8 += c06Var2.h[i24];
                                                i24++;
                                                i18 = i613;
                                                z8 = z9;
                                                jArr13 = jArr18;
                                                iArr9 = iArr9;
                                                iArr10 = iArr10;
                                            }
                                            l06Var = new l06(c06Var2, jArr16, iArr9, i18, jArr17, iArr10, u56.a(j8, 1000000L, c06Var2.d));
                                        }
                                        arrayList = arrayList;
                                        arrayList.add(l06Var);
                                    }
                                } else {
                                    iN5 = 0;
                                }
                                iN6 = -1;
                                iA2 = rlVar.a();
                                os4Var4 = os4Var3;
                                String str5 = c06Var2.f.m;
                                olVar = rlVar;
                                if (iA2 == -1) {
                                    z4 = false;
                                } else {
                                    z4 = false;
                                }
                                if (z4) {
                                    i30 = mlVar.a;
                                    jArr19 = new long[i30];
                                    iArr12 = new int[i30];
                                    while (mlVar.a()) {
                                        int i4110 = mlVar.b;
                                        jArr19[i4110] = mlVar.d;
                                        iArr12[i4110] = mlVar.c;
                                    }
                                    j13 = iN3;
                                    i31 = 8192 / iA2;
                                    i33 = 0;
                                    while (i32 < i30) {
                                        int i4111 = iArr12[i32];
                                        int i4112 = u56.a;
                                        i33 += ((i4111 + i31) - 1) / i31;
                                    }
                                    jArr20 = new long[i33];
                                    iArr13 = new int[i33];
                                    jArr21 = new long[i33];
                                    iArr14 = new int[i33];
                                    i34 = 0;
                                    i35 = 0;
                                    i18 = 0;
                                    i36 = 0;
                                    while (i35 < i30) {
                                        int i4113 = iArr12[i35];
                                        j14 = jArr19[i35];
                                        int i51110 = i36;
                                        int i51111 = i30;
                                        iMax = i18;
                                        i37 = i51110;
                                        long[] jArr217 = jArr19;
                                        i38 = i4113;
                                        while (i38 > 0) {
                                            int iMin4 = Math.min(i31, i38);
                                            jArr20[i37] = j14;
                                            int i51112 = i38;
                                            int i51113 = iA2 * iMin4;
                                            iArr13[i37] = i51113;
                                            iMax = Math.max(iMax, i51113);
                                            jArr21[i37] = ((long) i34) * j13;
                                            iArr14[i37] = 1;
                                            j14 += (long) iArr13[i37];
                                            i34 += iMin4;
                                            i38 = i51112 - iMin4;
                                            i37++;
                                            iArr12 = iArr12;
                                        }
                                        i35++;
                                        int i51114 = i37;
                                        i18 = iMax;
                                        i30 = i51111;
                                        i36 = i51114;
                                        jArr19 = jArr217;
                                    }
                                    long j1110 = j13 * ((long) i34);
                                    iArr2 = iArr14;
                                    jArr7 = jArr21;
                                    j7 = j1110;
                                    iArr3 = iArr13;
                                    jArr8 = jArr20;
                                } else {
                                    jArr3 = new long[iB];
                                    iArrCopyOf = new int[iB];
                                    jArr4 = new long[iB];
                                    int i51115 = iN5;
                                    iArr = new int[iB];
                                    i8 = iN;
                                    i9 = i51115;
                                    iN7 = iN6;
                                    i10 = iN4;
                                    iA3 = iN3;
                                    iN8 = iN2;
                                    os4Var5 = os4Var2;
                                    j5 = j2;
                                    j6 = j5;
                                    i11 = 0;
                                    i12 = 0;
                                    iA4 = 0;
                                    i13 = 0;
                                    i14 = 0;
                                    while (true) {
                                        if (i12 < iB) {
                                            i15 = i9;
                                            i16 = i8;
                                            jArr5 = jArr3;
                                            jArr6 = jArr4;
                                            iArrCopyOf2 = iArr;
                                            iB = iB;
                                            break;
                                        }
                                        zA = true;
                                        while (i13 == 0) {
                                            zA = mlVar.a();
                                            if (zA) {
                                                break;
                                                break;
                                            }
                                            int i51116 = i9;
                                            long j1111 = mlVar.d;
                                            i13 = mlVar.c;
                                            j6 = j1111;
                                            i9 = i51116;
                                            i8 = i8;
                                            iB = iB;
                                        }
                                        i19 = iB;
                                        i15 = i9;
                                        i16 = i8;
                                        if (!zA) {
                                            sv3.d("AtomParsers", "Unexpected end of chunk data");
                                            long[] jArrCopyOf7 = Arrays.copyOf(jArr3, i12);
                                            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i12);
                                            long[] jArrCopyOf8 = Arrays.copyOf(jArr4, i12);
                                            iArrCopyOf2 = Arrays.copyOf(iArr, i12);
                                            int i51117 = i12;
                                            jArr5 = jArrCopyOf7;
                                            jArr6 = jArrCopyOf8;
                                            iB = i51117;
                                            break;
                                        }
                                        if (os4Var4 != null) {
                                            iN9 = i14;
                                            while (iN9 == 0) {
                                                iN9 = os4Var4.n();
                                                iA4 = os4Var4.a();
                                                i10--;
                                            }
                                            i14 = iN9 - 1;
                                        }
                                        jArr3[i12] = j6;
                                        iC = olVar.c();
                                        iArrCopyOf[i12] = iC;
                                        if (iC > i11) {
                                            i11 = iC;
                                        }
                                        jArr4[i12] = j5 + ((long) iA4);
                                        if (os4Var5 == null) {
                                            i20 = 1;
                                        } else {
                                            i20 = 0;
                                        }
                                        iArr[i12] = i20;
                                        if (i12 == iN7) {
                                            iArr[i12] = 1;
                                            i9 = i15 - 1;
                                            if (i9 > 0) {
                                                os4Var5.getClass();
                                                iN7 = os4Var5.n() - 1;
                                            }
                                        } else {
                                            i9 = i15;
                                        }
                                        j5 += (long) iA3;
                                        iN8--;
                                        if (iN8 == 0) {
                                            i8 = i16;
                                        } else {
                                            i8 = i16;
                                        }
                                        j6 += (long) iArrCopyOf[i12];
                                        i13--;
                                        i12++;
                                        jArr3 = jArr3;
                                        iB = i19;
                                    }
                                    int[] iArr118 = iArrCopyOf;
                                    i17 = i13;
                                    long j1112 = j5 + ((long) iA4);
                                    if (os4Var4 != null) {
                                        z5 = true;
                                        break;
                                    }
                                    while (true) {
                                        if (i10 > 0) {
                                            z5 = true;
                                            break;
                                        }
                                        if (os4Var4.n() != 0) {
                                            z5 = false;
                                            break;
                                        }
                                        os4Var4.a();
                                        i10--;
                                    }
                                    if (i15 == 0) {
                                        StringBuilder sb6 = new StringBuilder("Inconsistent stbl box for track ");
                                        defpackage.gg.e(sb6, c06Var2.a, ": remainingSynchronizationSamples ", i15, ", remainingSamplesAtTimestampDelta ");
                                        defpackage.gg.e(sb6, iN8, ", remainingSamplesInChunk ", i17, ", remainingTimestampDeltaChanges ");
                                        sb6.append(i16);
                                        sb6.append(", remainingSamplesAtTimestampOffset ");
                                        sb6.append(i14);
                                        if (z5) {
                                            str = ", ctts invalid";
                                        } else {
                                            str = "";
                                        }
                                        sb6.append(str);
                                        sv3.d("AtomParsers", sb6.toString());
                                    } else {
                                        StringBuilder sb7 = new StringBuilder("Inconsistent stbl box for track ");
                                        defpackage.gg.e(sb7, c06Var2.a, ": remainingSynchronizationSamples ", i15, ", remainingSamplesAtTimestampDelta ");
                                        defpackage.gg.e(sb7, iN8, ", remainingSamplesInChunk ", i17, ", remainingTimestampDeltaChanges ");
                                        sb7.append(i16);
                                        sb7.append(", remainingSamplesAtTimestampOffset ");
                                        sb7.append(i14);
                                        if (z5) {
                                            str = ", ctts invalid";
                                        } else {
                                            str = "";
                                        }
                                        sb7.append(str);
                                        sv3.d("AtomParsers", sb7.toString());
                                    }
                                    iArr2 = iArrCopyOf2;
                                    jArr7 = jArr6;
                                    i18 = i11;
                                    j7 = j1112;
                                    jArr8 = jArr5;
                                    iArr3 = iArr118;
                                }
                                jA2 = u56.a(j7, 1000000L, c06Var2.c);
                                jArr9 = c06Var2.h;
                                if (jArr9 == null) {
                                    u56.a(jArr7, c06Var2.c);
                                    l06Var = new l06(c06Var2, jArr8, iArr3, i18, jArr7, iArr2, jA2);
                                } else {
                                    jArr10 = jArr8;
                                    jArr11 = jArr7;
                                    if (jArr9.length == 1) {
                                        long[] jArr218 = c06Var2.i;
                                        jArr218.getClass();
                                        j11 = jArr218[0];
                                        jA3 = u56.a(c06Var2.h[0], c06Var2.c, c06Var2.d) + j11;
                                        int length4 = jArr11.length - 1;
                                        int iMax8 = Math.max(0, Math.min(4, length4));
                                        int iMax9 = Math.max(0, Math.min(jArr11.length - 4, length4));
                                        j12 = jArr11[0];
                                        if (j12 <= j11) {
                                            jA4 = u56.a(j11 - j12, c06Var2.f.A, c06Var2.c);
                                            jA5 = u56.a(j7 - jA3, c06Var2.f.A, c06Var2.c);
                                            if (jA4 == j2) {
                                                f23Var.a = (int) jA4;
                                                f23Var.b = (int) jA5;
                                                u56.a(jArr11, c06Var2.c);
                                                l06Var = new l06(c06Var2, jArr10, iArr3, i18, jArr11, iArr2, u56.a(c06Var2.h[0], 1000000L, c06Var2.d));
                                            } else {
                                                f23Var.a = (int) jA4;
                                                f23Var.b = (int) jA5;
                                                u56.a(jArr11, c06Var2.c);
                                                l06Var = new l06(c06Var2, jArr10, iArr3, i18, jArr11, iArr2, u56.a(c06Var2.h[0], 1000000L, c06Var2.d));
                                            }
                                        }
                                    }
                                    jArr12 = c06Var2.h;
                                    if (jArr12.length != 1) {
                                        jArr13 = jArr11;
                                        iArr4 = iArr2;
                                        if (c06Var2.b == 1) {
                                            z6 = true;
                                        } else {
                                            z6 = false;
                                        }
                                        iArr5 = new int[jArr12.length];
                                        iArr6 = new int[jArr12.length];
                                        jArr14 = c06Var2.i;
                                        jArr14.getClass();
                                        i21 = 0;
                                        i22 = 0;
                                        z7 = false;
                                        i23 = 0;
                                        while (true) {
                                            jArr15 = c06Var2.h;
                                            iArr7 = iArr6;
                                            if (i21 >= jArr15.length) {
                                                break;
                                                break;
                                            }
                                            j10 = jArr14[i21];
                                            if (j10 != -1) {
                                                long j1113 = jArr15[i21];
                                                iArr11 = iArr5;
                                                long jA11 = u56.a(j1113, c06Var2.c, c06Var2.d);
                                                iArr11[i21] = u56.b(jArr13, j10, true);
                                                iArr7[i21] = u56.a(jArr13, j10 + jA11, z6);
                                                while (true) {
                                                    i28 = iArr11[i21];
                                                    i29 = iArr7[i21];
                                                    if (i28 < i29) {
                                                        break;
                                                        break;
                                                    }
                                                    break;
                                                    break;
                                                    iArr11[i21] = i28 + 1;
                                                }
                                                int i51118 = (i29 - i28) + i22;
                                                if (i23 != i28) {
                                                    z10 = true;
                                                } else {
                                                    z10 = false;
                                                }
                                                z7 = z10 | z7;
                                                i23 = i29;
                                                i22 = i51118;
                                            } else {
                                                iArr11 = iArr5;
                                            }
                                            i21++;
                                            iArr5 = iArr11;
                                            iArr6 = iArr7;
                                            jArr14 = jArr14;
                                        }
                                        iArr8 = iArr5;
                                        z8 = z7 | (i22 != iB);
                                        if (z8) {
                                            jArr16 = new long[i22];
                                        } else {
                                            jArr16 = jArr10;
                                        }
                                        if (z8) {
                                            iArr9 = new int[i22];
                                        } else {
                                            iArr9 = iArr3;
                                        }
                                        if (z8) {
                                            i18 = 0;
                                        }
                                        if (z8) {
                                            iArr10 = new int[i22];
                                        } else {
                                            iArr10 = iArr4;
                                        }
                                        jArr17 = new long[i22];
                                        i24 = 0;
                                        i25 = 0;
                                        j8 = j2;
                                        while (i24 < c06Var2.h.length) {
                                            j9 = c06Var2.i[i24];
                                            i26 = iArr8[i24];
                                            z9 = z8;
                                            i27 = iArr7[i24];
                                            jArr18 = jArr13;
                                            if (z9) {
                                                int i615 = i27 - i26;
                                                System.arraycopy(jArr10, i26, jArr16, i25, i615);
                                                System.arraycopy(iArr3, i26, iArr9, i25, i615);
                                                System.arraycopy(iArr4, i26, iArr10, i25, i615);
                                            }
                                            int i616 = i18;
                                            while (i26 < i27) {
                                                int i617 = i27;
                                                long[] jArr219 = jArr16;
                                                int[] iArr119 = iArr9;
                                                int[] iArr1110 = iArr10;
                                                long j25 = j2;
                                                jArr17[i25] = u56.a(j8, 1000000L, c06Var2.d) + u56.a(Math.max(j25, jArr18[i26] - j9), 1000000L, c06Var2.c);
                                                if (!z9) {
                                                }
                                                i25++;
                                                i26++;
                                                j2 = j25;
                                                jArr16 = jArr219;
                                                i27 = i617;
                                                iArr9 = iArr119;
                                                iArr10 = iArr1110;
                                            }
                                            j8 += c06Var2.h[i24];
                                            i24++;
                                            i18 = i616;
                                            z8 = z9;
                                            jArr13 = jArr18;
                                            iArr9 = iArr9;
                                            iArr10 = iArr10;
                                        }
                                        l06Var = new l06(c06Var2, jArr16, iArr9, i18, jArr17, iArr10, u56.a(j8, 1000000L, c06Var2.d));
                                    } else {
                                        jArr13 = jArr11;
                                        iArr4 = iArr2;
                                        if (c06Var2.b == 1) {
                                            z6 = true;
                                        } else {
                                            z6 = false;
                                        }
                                        iArr5 = new int[jArr12.length];
                                        iArr6 = new int[jArr12.length];
                                        jArr14 = c06Var2.i;
                                        jArr14.getClass();
                                        i21 = 0;
                                        i22 = 0;
                                        z7 = false;
                                        i23 = 0;
                                        while (true) {
                                            jArr15 = c06Var2.h;
                                            iArr7 = iArr6;
                                            if (i21 >= jArr15.length) {
                                                break;
                                                break;
                                            }
                                            j10 = jArr14[i21];
                                            if (j10 != -1) {
                                                long j1114 = jArr15[i21];
                                                iArr11 = iArr5;
                                                long jA12 = u56.a(j1114, c06Var2.c, c06Var2.d);
                                                iArr11[i21] = u56.b(jArr13, j10, true);
                                                iArr7[i21] = u56.a(jArr13, j10 + jA12, z6);
                                                while (true) {
                                                    i28 = iArr11[i21];
                                                    i29 = iArr7[i21];
                                                    if (i28 < i29) {
                                                        break;
                                                        break;
                                                    }
                                                    break;
                                                    break;
                                                    iArr11[i21] = i28 + 1;
                                                }
                                                int i51119 = (i29 - i28) + i22;
                                                if (i23 != i28) {
                                                    z10 = true;
                                                } else {
                                                    z10 = false;
                                                }
                                                z7 = z10 | z7;
                                                i23 = i29;
                                                i22 = i51119;
                                            } else {
                                                iArr11 = iArr5;
                                            }
                                            i21++;
                                            iArr5 = iArr11;
                                            iArr6 = iArr7;
                                            jArr14 = jArr14;
                                        }
                                        iArr8 = iArr5;
                                        z8 = z7 | (i22 != iB);
                                        if (z8) {
                                            jArr16 = new long[i22];
                                        } else {
                                            jArr16 = jArr10;
                                        }
                                        if (z8) {
                                            iArr9 = new int[i22];
                                        } else {
                                            iArr9 = iArr3;
                                        }
                                        if (z8) {
                                            i18 = 0;
                                        }
                                        if (z8) {
                                            iArr10 = new int[i22];
                                        } else {
                                            iArr10 = iArr4;
                                        }
                                        jArr17 = new long[i22];
                                        i24 = 0;
                                        i25 = 0;
                                        j8 = j2;
                                        while (i24 < c06Var2.h.length) {
                                            j9 = c06Var2.i[i24];
                                            i26 = iArr8[i24];
                                            z9 = z8;
                                            i27 = iArr7[i24];
                                            jArr18 = jArr13;
                                            if (z9) {
                                                int i618 = i27 - i26;
                                                System.arraycopy(jArr10, i26, jArr16, i25, i618);
                                                System.arraycopy(iArr3, i26, iArr9, i25, i618);
                                                System.arraycopy(iArr4, i26, iArr10, i25, i618);
                                            }
                                            int i619 = i18;
                                            while (i26 < i27) {
                                                int i6110 = i27;
                                                long[] jArr2110 = jArr16;
                                                int[] iArr1111 = iArr9;
                                                int[] iArr1112 = iArr10;
                                                long j26 = j2;
                                                jArr17[i25] = u56.a(j8, 1000000L, c06Var2.d) + u56.a(Math.max(j26, jArr18[i26] - j9), 1000000L, c06Var2.c);
                                                if (!z9) {
                                                }
                                                i25++;
                                                i26++;
                                                j2 = j26;
                                                jArr16 = jArr2110;
                                                i27 = i6110;
                                                iArr9 = iArr1111;
                                                iArr10 = iArr1112;
                                            }
                                            j8 += c06Var2.h[i24];
                                            i24++;
                                            i18 = i619;
                                            z8 = z9;
                                            jArr13 = jArr18;
                                            iArr9 = iArr9;
                                            iArr10 = iArr10;
                                        }
                                        l06Var = new l06(c06Var2, jArr16, iArr9, i18, jArr17, iArr10, u56.a(j8, 1000000L, c06Var2.d));
                                    }
                                    arrayList = arrayList;
                                    arrayList.add(l06Var);
                                }
                            }
                            arrayList.add(l06Var);
                        }
                        i39 = i2 + 1;
                        arrayList = arrayList;
                    }
                    i3 = i4;
                    jA = -9223372036854775807L;
                    if (j == jA) {
                        j3 = jL;
                    } else {
                        j3 = j;
                    }
                    os4Var = klVarC6.b;
                    os4Var.e(8);
                    if (((os4Var.a() >> 24) & 255) == 0) {
                        i5 = 8;
                    } else {
                        i5 = 16;
                    }
                    os4Var.e(os4Var.b + i5);
                    jL2 = os4Var.l();
                    if (j3 != jA) {
                        jA = u56.a(j3, 1000000L, jL2);
                    }
                    jl jlVarB10 = jlVarB3.b(Mp4Box.TYPE_minf);
                    jlVarB10.getClass();
                    jl jlVarB11 = jlVarB10.b(Mp4Box.TYPE_stbl);
                    jlVarB11.getClass();
                    kl klVarC16 = jlVarB3.c(Mp4Box.TYPE_mdhd);
                    klVarC16.getClass();
                    os4 os4Var16 = klVarC16.b;
                    os4Var16.e(8);
                    iA = (os4Var16.a() >> 24) & 255;
                    if (iA == 0) {
                    }
                    os4Var16.e(os4Var16.b + (iA == 0 ? 8 : 16));
                    long jL4 = os4Var16.l();
                    if (iA == 0) {
                        i6 = 4;
                    } else {
                        i6 = 8;
                    }
                    os4Var16.e(os4Var16.b + i6);
                    int iP2 = os4Var16.p();
                    pairCreate = Pair.create(Long.valueOf(jL4), "" + ((char) (((iP2 >> 10) & 31) + 96)) + ((char) (((iP2 >> 5) & 31) + 96)) + ((char) ((iP2 & 31) + 96)));
                    kl klVarC17 = jlVarB11.c(Mp4Box.TYPE_stsd);
                    klVarC17.getClass();
                    plVarA = a(klVarC17.b, iA7, i3, (String) pairCreate.second, ql2Var, z2);
                    if (z) {
                        j4 = jA;
                        jArr = null;
                        jArr2 = null;
                    } else {
                        j4 = jA;
                        jArr = null;
                        jArr2 = null;
                    }
                    if (plVarA.b != null) {
                        long jLongValue3 = ((Long) pairCreate.first).longValue();
                        vz2 vz2Var3 = plVarA.b;
                        int i4114 = plVarA.d;
                        d06[] d06VarArr3 = plVarA.a;
                        int i4115 = plVarA.c;
                        i7 = Mp4Box.TYPE_stbl;
                        c06Var = new c06(iA7, i, jLongValue3, jL2, j4, vz2Var3, i4114, d06VarArr3, i4115, jArr, jArr2);
                    }
                    c06Var2 = (c06) v13Var.apply(c06Var);
                    if (c06Var2 == null) {
                        jl jlVarB12 = jlVar2.b(Mp4Box.TYPE_mdia);
                        jlVarB12.getClass();
                        jl jlVarB13 = jlVarB12.b(Mp4Box.TYPE_minf);
                        jlVarB13.getClass();
                        jlVarB2 = jlVarB13.b(i7);
                        jlVarB2.getClass();
                        klVarC = jlVarB2.c(Mp4Box.TYPE_stsz);
                        if (klVarC != null) {
                            rlVar = new ql(klVarC, c06Var2.f);
                        } else {
                            klVarC2 = jlVarB2.c(Mp4Box.TYPE_stz2);
                            if (klVarC2 != null) {
                                rlVar = new rl(klVarC2);
                            } else {
                                defpackage.e2.h("Track has no sample table size information", null);
                                return null;
                            }
                        }
                        iB = rlVar.b();
                        if (iB == 0) {
                            l06Var = new l06(c06Var2, new long[0], new int[0], 0, new long[0], new int[0], 0L);
                        } else {
                            klVarC3 = jlVarB2.c(Mp4Box.TYPE_stco);
                            if (klVarC3 == null) {
                                klVarC3 = jlVarB2.c(Mp4Box.TYPE_co64);
                                klVarC3.getClass();
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            os4 os4Var17 = klVarC3.b;
                            kl klVarC18 = jlVarB2.c(Mp4Box.TYPE_stsc);
                            klVarC18.getClass();
                            os4 os4Var18 = klVarC18.b;
                            kl klVarC19 = jlVarB2.c(Mp4Box.TYPE_stts);
                            klVarC19.getClass();
                            os4 os4Var19 = klVarC19.b;
                            klVarC4 = jlVarB2.c(Mp4Box.TYPE_stss);
                            if (klVarC4 != null) {
                                os4Var2 = klVarC4.b;
                            } else {
                                os4Var2 = null;
                            }
                            klVarC5 = jlVarB2.c(Mp4Box.TYPE_ctts);
                            if (klVarC5 != null) {
                                os4Var3 = klVarC5.b;
                            } else {
                                os4Var3 = null;
                            }
                            mlVar = new ml(os4Var18, os4Var17, z3);
                            os4Var19.e(12);
                            iN = os4Var19.n() - 1;
                            iN2 = os4Var19.n();
                            iN3 = os4Var19.n();
                            if (os4Var3 != null) {
                                os4Var3.e(12);
                                iN4 = os4Var3.n();
                            } else {
                                iN4 = 0;
                            }
                            if (os4Var2 != null) {
                                os4Var2.e(12);
                                iN5 = os4Var2.n();
                                if (iN5 > 0) {
                                    iN6 = os4Var2.n() - 1;
                                } else {
                                    os4Var2 = null;
                                }
                                iA2 = rlVar.a();
                                os4Var4 = os4Var3;
                                String str6 = c06Var2.f.m;
                                olVar = rlVar;
                                if (iA2 == -1) {
                                    z4 = false;
                                } else {
                                    z4 = false;
                                }
                                if (z4) {
                                    i30 = mlVar.a;
                                    jArr19 = new long[i30];
                                    iArr12 = new int[i30];
                                    while (mlVar.a()) {
                                        int i4116 = mlVar.b;
                                        jArr19[i4116] = mlVar.d;
                                        iArr12[i4116] = mlVar.c;
                                    }
                                    j13 = iN3;
                                    i31 = 8192 / iA2;
                                    i33 = 0;
                                    while (i32 < i30) {
                                        int i4117 = iArr12[i32];
                                        int i4118 = u56.a;
                                        i33 += ((i4117 + i31) - 1) / i31;
                                    }
                                    jArr20 = new long[i33];
                                    iArr13 = new int[i33];
                                    jArr21 = new long[i33];
                                    iArr14 = new int[i33];
                                    i34 = 0;
                                    i35 = 0;
                                    i18 = 0;
                                    i36 = 0;
                                    while (i35 < i30) {
                                        int i4119 = iArr12[i35];
                                        j14 = jArr19[i35];
                                        int i511110 = i36;
                                        int i511111 = i30;
                                        iMax = i18;
                                        i37 = i511110;
                                        long[] jArr2111 = jArr19;
                                        i38 = i4119;
                                        while (i38 > 0) {
                                            int iMin5 = Math.min(i31, i38);
                                            jArr20[i37] = j14;
                                            int i511112 = i38;
                                            int i511113 = iA2 * iMin5;
                                            iArr13[i37] = i511113;
                                            iMax = Math.max(iMax, i511113);
                                            jArr21[i37] = ((long) i34) * j13;
                                            iArr14[i37] = 1;
                                            j14 += (long) iArr13[i37];
                                            i34 += iMin5;
                                            i38 = i511112 - iMin5;
                                            i37++;
                                            iArr12 = iArr12;
                                        }
                                        i35++;
                                        int i511114 = i37;
                                        i18 = iMax;
                                        i30 = i511111;
                                        i36 = i511114;
                                        jArr19 = jArr2111;
                                    }
                                    long j1115 = j13 * ((long) i34);
                                    iArr2 = iArr14;
                                    jArr7 = jArr21;
                                    j7 = j1115;
                                    iArr3 = iArr13;
                                    jArr8 = jArr20;
                                } else {
                                    jArr3 = new long[iB];
                                    iArrCopyOf = new int[iB];
                                    jArr4 = new long[iB];
                                    int i511115 = iN5;
                                    iArr = new int[iB];
                                    i8 = iN;
                                    i9 = i511115;
                                    iN7 = iN6;
                                    i10 = iN4;
                                    iA3 = iN3;
                                    iN8 = iN2;
                                    os4Var5 = os4Var2;
                                    j5 = j2;
                                    j6 = j5;
                                    i11 = 0;
                                    i12 = 0;
                                    iA4 = 0;
                                    i13 = 0;
                                    i14 = 0;
                                    while (true) {
                                        if (i12 < iB) {
                                            i15 = i9;
                                            i16 = i8;
                                            jArr5 = jArr3;
                                            jArr6 = jArr4;
                                            iArrCopyOf2 = iArr;
                                            iB = iB;
                                            break;
                                        }
                                        zA = true;
                                        while (i13 == 0) {
                                            zA = mlVar.a();
                                            if (zA) {
                                                break;
                                                break;
                                            }
                                            int i511116 = i9;
                                            long j1116 = mlVar.d;
                                            i13 = mlVar.c;
                                            j6 = j1116;
                                            i9 = i511116;
                                            i8 = i8;
                                            iB = iB;
                                        }
                                        i19 = iB;
                                        i15 = i9;
                                        i16 = i8;
                                        if (!zA) {
                                            sv3.d("AtomParsers", "Unexpected end of chunk data");
                                            long[] jArrCopyOf9 = Arrays.copyOf(jArr3, i12);
                                            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i12);
                                            long[] jArrCopyOf10 = Arrays.copyOf(jArr4, i12);
                                            iArrCopyOf2 = Arrays.copyOf(iArr, i12);
                                            int i511117 = i12;
                                            jArr5 = jArrCopyOf9;
                                            jArr6 = jArrCopyOf10;
                                            iB = i511117;
                                            break;
                                        }
                                        if (os4Var4 != null) {
                                            iN9 = i14;
                                            while (iN9 == 0) {
                                                iN9 = os4Var4.n();
                                                iA4 = os4Var4.a();
                                                i10--;
                                            }
                                            i14 = iN9 - 1;
                                        }
                                        jArr3[i12] = j6;
                                        iC = olVar.c();
                                        iArrCopyOf[i12] = iC;
                                        if (iC > i11) {
                                            i11 = iC;
                                        }
                                        jArr4[i12] = j5 + ((long) iA4);
                                        if (os4Var5 == null) {
                                            i20 = 1;
                                        } else {
                                            i20 = 0;
                                        }
                                        iArr[i12] = i20;
                                        if (i12 == iN7) {
                                            iArr[i12] = 1;
                                            i9 = i15 - 1;
                                            if (i9 > 0) {
                                                os4Var5.getClass();
                                                iN7 = os4Var5.n() - 1;
                                            }
                                        } else {
                                            i9 = i15;
                                        }
                                        j5 += (long) iA3;
                                        iN8--;
                                        if (iN8 == 0) {
                                            i8 = i16;
                                        } else {
                                            i8 = i16;
                                        }
                                        j6 += (long) iArrCopyOf[i12];
                                        i13--;
                                        i12++;
                                        jArr3 = jArr3;
                                        iB = i19;
                                    }
                                    int[] iArr1113 = iArrCopyOf;
                                    i17 = i13;
                                    long j1117 = j5 + ((long) iA4);
                                    if (os4Var4 != null) {
                                        z5 = true;
                                        break;
                                    }
                                    while (true) {
                                        if (i10 > 0) {
                                            z5 = true;
                                            break;
                                        }
                                        if (os4Var4.n() != 0) {
                                            z5 = false;
                                            break;
                                        }
                                        os4Var4.a();
                                        i10--;
                                    }
                                    if (i15 == 0) {
                                        StringBuilder sb8 = new StringBuilder("Inconsistent stbl box for track ");
                                        defpackage.gg.e(sb8, c06Var2.a, ": remainingSynchronizationSamples ", i15, ", remainingSamplesAtTimestampDelta ");
                                        defpackage.gg.e(sb8, iN8, ", remainingSamplesInChunk ", i17, ", remainingTimestampDeltaChanges ");
                                        sb8.append(i16);
                                        sb8.append(", remainingSamplesAtTimestampOffset ");
                                        sb8.append(i14);
                                        if (z5) {
                                            str = ", ctts invalid";
                                        } else {
                                            str = "";
                                        }
                                        sb8.append(str);
                                        sv3.d("AtomParsers", sb8.toString());
                                    } else {
                                        StringBuilder sb9 = new StringBuilder("Inconsistent stbl box for track ");
                                        defpackage.gg.e(sb9, c06Var2.a, ": remainingSynchronizationSamples ", i15, ", remainingSamplesAtTimestampDelta ");
                                        defpackage.gg.e(sb9, iN8, ", remainingSamplesInChunk ", i17, ", remainingTimestampDeltaChanges ");
                                        sb9.append(i16);
                                        sb9.append(", remainingSamplesAtTimestampOffset ");
                                        sb9.append(i14);
                                        if (z5) {
                                            str = ", ctts invalid";
                                        } else {
                                            str = "";
                                        }
                                        sb9.append(str);
                                        sv3.d("AtomParsers", sb9.toString());
                                    }
                                    iArr2 = iArrCopyOf2;
                                    jArr7 = jArr6;
                                    i18 = i11;
                                    j7 = j1117;
                                    jArr8 = jArr5;
                                    iArr3 = iArr1113;
                                }
                                jA2 = u56.a(j7, 1000000L, c06Var2.c);
                                jArr9 = c06Var2.h;
                                if (jArr9 == null) {
                                    u56.a(jArr7, c06Var2.c);
                                    l06Var = new l06(c06Var2, jArr8, iArr3, i18, jArr7, iArr2, jA2);
                                } else {
                                    jArr10 = jArr8;
                                    jArr11 = jArr7;
                                    if (jArr9.length == 1) {
                                        long[] jArr2112 = c06Var2.i;
                                        jArr2112.getClass();
                                        j11 = jArr2112[0];
                                        jA3 = u56.a(c06Var2.h[0], c06Var2.c, c06Var2.d) + j11;
                                        int length5 = jArr11.length - 1;
                                        int iMax10 = Math.max(0, Math.min(4, length5));
                                        int iMax11 = Math.max(0, Math.min(jArr11.length - 4, length5));
                                        j12 = jArr11[0];
                                        if (j12 <= j11) {
                                            jA4 = u56.a(j11 - j12, c06Var2.f.A, c06Var2.c);
                                            jA5 = u56.a(j7 - jA3, c06Var2.f.A, c06Var2.c);
                                            if (jA4 == j2) {
                                                f23Var.a = (int) jA4;
                                                f23Var.b = (int) jA5;
                                                u56.a(jArr11, c06Var2.c);
                                                l06Var = new l06(c06Var2, jArr10, iArr3, i18, jArr11, iArr2, u56.a(c06Var2.h[0], 1000000L, c06Var2.d));
                                            } else {
                                                f23Var.a = (int) jA4;
                                                f23Var.b = (int) jA5;
                                                u56.a(jArr11, c06Var2.c);
                                                l06Var = new l06(c06Var2, jArr10, iArr3, i18, jArr11, iArr2, u56.a(c06Var2.h[0], 1000000L, c06Var2.d));
                                            }
                                        }
                                    }
                                    jArr12 = c06Var2.h;
                                    if (jArr12.length != 1) {
                                        jArr13 = jArr11;
                                        iArr4 = iArr2;
                                        if (c06Var2.b == 1) {
                                            z6 = true;
                                        } else {
                                            z6 = false;
                                        }
                                        iArr5 = new int[jArr12.length];
                                        iArr6 = new int[jArr12.length];
                                        jArr14 = c06Var2.i;
                                        jArr14.getClass();
                                        i21 = 0;
                                        i22 = 0;
                                        z7 = false;
                                        i23 = 0;
                                        while (true) {
                                            jArr15 = c06Var2.h;
                                            iArr7 = iArr6;
                                            if (i21 >= jArr15.length) {
                                                break;
                                                break;
                                            }
                                            j10 = jArr14[i21];
                                            if (j10 != -1) {
                                                long j1118 = jArr15[i21];
                                                iArr11 = iArr5;
                                                long jA13 = u56.a(j1118, c06Var2.c, c06Var2.d);
                                                iArr11[i21] = u56.b(jArr13, j10, true);
                                                iArr7[i21] = u56.a(jArr13, j10 + jA13, z6);
                                                while (true) {
                                                    i28 = iArr11[i21];
                                                    i29 = iArr7[i21];
                                                    if (i28 < i29) {
                                                        break;
                                                        break;
                                                    }
                                                    break;
                                                    break;
                                                    iArr11[i21] = i28 + 1;
                                                }
                                                int i511118 = (i29 - i28) + i22;
                                                if (i23 != i28) {
                                                    z10 = true;
                                                } else {
                                                    z10 = false;
                                                }
                                                z7 = z10 | z7;
                                                i23 = i29;
                                                i22 = i511118;
                                            } else {
                                                iArr11 = iArr5;
                                            }
                                            i21++;
                                            iArr5 = iArr11;
                                            iArr6 = iArr7;
                                            jArr14 = jArr14;
                                        }
                                        iArr8 = iArr5;
                                        z8 = z7 | (i22 != iB);
                                        if (z8) {
                                            jArr16 = new long[i22];
                                        } else {
                                            jArr16 = jArr10;
                                        }
                                        if (z8) {
                                            iArr9 = new int[i22];
                                        } else {
                                            iArr9 = iArr3;
                                        }
                                        if (z8) {
                                            i18 = 0;
                                        }
                                        if (z8) {
                                            iArr10 = new int[i22];
                                        } else {
                                            iArr10 = iArr4;
                                        }
                                        jArr17 = new long[i22];
                                        i24 = 0;
                                        i25 = 0;
                                        j8 = j2;
                                        while (i24 < c06Var2.h.length) {
                                            j9 = c06Var2.i[i24];
                                            i26 = iArr8[i24];
                                            z9 = z8;
                                            i27 = iArr7[i24];
                                            jArr18 = jArr13;
                                            if (z9) {
                                                int i6111 = i27 - i26;
                                                System.arraycopy(jArr10, i26, jArr16, i25, i6111);
                                                System.arraycopy(iArr3, i26, iArr9, i25, i6111);
                                                System.arraycopy(iArr4, i26, iArr10, i25, i6111);
                                            }
                                            int i6112 = i18;
                                            while (i26 < i27) {
                                                int i6113 = i27;
                                                long[] jArr2113 = jArr16;
                                                int[] iArr1114 = iArr9;
                                                int[] iArr1115 = iArr10;
                                                long j27 = j2;
                                                jArr17[i25] = u56.a(j8, 1000000L, c06Var2.d) + u56.a(Math.max(j27, jArr18[i26] - j9), 1000000L, c06Var2.c);
                                                if (!z9) {
                                                }
                                                i25++;
                                                i26++;
                                                j2 = j27;
                                                jArr16 = jArr2113;
                                                i27 = i6113;
                                                iArr9 = iArr1114;
                                                iArr10 = iArr1115;
                                            }
                                            j8 += c06Var2.h[i24];
                                            i24++;
                                            i18 = i6112;
                                            z8 = z9;
                                            jArr13 = jArr18;
                                            iArr9 = iArr9;
                                            iArr10 = iArr10;
                                        }
                                        l06Var = new l06(c06Var2, jArr16, iArr9, i18, jArr17, iArr10, u56.a(j8, 1000000L, c06Var2.d));
                                    } else {
                                        jArr13 = jArr11;
                                        iArr4 = iArr2;
                                        if (c06Var2.b == 1) {
                                            z6 = true;
                                        } else {
                                            z6 = false;
                                        }
                                        iArr5 = new int[jArr12.length];
                                        iArr6 = new int[jArr12.length];
                                        jArr14 = c06Var2.i;
                                        jArr14.getClass();
                                        i21 = 0;
                                        i22 = 0;
                                        z7 = false;
                                        i23 = 0;
                                        while (true) {
                                            jArr15 = c06Var2.h;
                                            iArr7 = iArr6;
                                            if (i21 >= jArr15.length) {
                                                break;
                                                break;
                                            }
                                            j10 = jArr14[i21];
                                            if (j10 != -1) {
                                                long j1119 = jArr15[i21];
                                                iArr11 = iArr5;
                                                long jA14 = u56.a(j1119, c06Var2.c, c06Var2.d);
                                                iArr11[i21] = u56.b(jArr13, j10, true);
                                                iArr7[i21] = u56.a(jArr13, j10 + jA14, z6);
                                                while (true) {
                                                    i28 = iArr11[i21];
                                                    i29 = iArr7[i21];
                                                    if (i28 < i29) {
                                                        break;
                                                        break;
                                                    }
                                                    break;
                                                    break;
                                                    iArr11[i21] = i28 + 1;
                                                }
                                                int i511119 = (i29 - i28) + i22;
                                                if (i23 != i28) {
                                                    z10 = true;
                                                } else {
                                                    z10 = false;
                                                }
                                                z7 = z10 | z7;
                                                i23 = i29;
                                                i22 = i511119;
                                            } else {
                                                iArr11 = iArr5;
                                            }
                                            i21++;
                                            iArr5 = iArr11;
                                            iArr6 = iArr7;
                                            jArr14 = jArr14;
                                        }
                                        iArr8 = iArr5;
                                        z8 = z7 | (i22 != iB);
                                        if (z8) {
                                            jArr16 = new long[i22];
                                        } else {
                                            jArr16 = jArr10;
                                        }
                                        if (z8) {
                                            iArr9 = new int[i22];
                                        } else {
                                            iArr9 = iArr3;
                                        }
                                        if (z8) {
                                            i18 = 0;
                                        }
                                        if (z8) {
                                            iArr10 = new int[i22];
                                        } else {
                                            iArr10 = iArr4;
                                        }
                                        jArr17 = new long[i22];
                                        i24 = 0;
                                        i25 = 0;
                                        j8 = j2;
                                        while (i24 < c06Var2.h.length) {
                                            j9 = c06Var2.i[i24];
                                            i26 = iArr8[i24];
                                            z9 = z8;
                                            i27 = iArr7[i24];
                                            jArr18 = jArr13;
                                            if (z9) {
                                                int i6114 = i27 - i26;
                                                System.arraycopy(jArr10, i26, jArr16, i25, i6114);
                                                System.arraycopy(iArr3, i26, iArr9, i25, i6114);
                                                System.arraycopy(iArr4, i26, iArr10, i25, i6114);
                                            }
                                            int i6115 = i18;
                                            while (i26 < i27) {
                                                int i6116 = i27;
                                                long[] jArr2114 = jArr16;
                                                int[] iArr1116 = iArr9;
                                                int[] iArr1117 = iArr10;
                                                long j28 = j2;
                                                jArr17[i25] = u56.a(j8, 1000000L, c06Var2.d) + u56.a(Math.max(j28, jArr18[i26] - j9), 1000000L, c06Var2.c);
                                                if (!z9) {
                                                }
                                                i25++;
                                                i26++;
                                                j2 = j28;
                                                jArr16 = jArr2114;
                                                i27 = i6116;
                                                iArr9 = iArr1116;
                                                iArr10 = iArr1117;
                                            }
                                            j8 += c06Var2.h[i24];
                                            i24++;
                                            i18 = i6115;
                                            z8 = z9;
                                            jArr13 = jArr18;
                                            iArr9 = iArr9;
                                            iArr10 = iArr10;
                                        }
                                        l06Var = new l06(c06Var2, jArr16, iArr9, i18, jArr17, iArr10, u56.a(j8, 1000000L, c06Var2.d));
                                    }
                                    arrayList = arrayList;
                                    arrayList.add(l06Var);
                                }
                            } else {
                                iN5 = 0;
                            }
                            iN6 = -1;
                            iA2 = rlVar.a();
                            os4Var4 = os4Var3;
                            String str7 = c06Var2.f.m;
                            olVar = rlVar;
                            if (iA2 == -1) {
                                z4 = false;
                            } else {
                                z4 = false;
                            }
                            if (z4) {
                                i30 = mlVar.a;
                                jArr19 = new long[i30];
                                iArr12 = new int[i30];
                                while (mlVar.a()) {
                                    int i41110 = mlVar.b;
                                    jArr19[i41110] = mlVar.d;
                                    iArr12[i41110] = mlVar.c;
                                }
                                j13 = iN3;
                                i31 = 8192 / iA2;
                                i33 = 0;
                                while (i32 < i30) {
                                    int i41111 = iArr12[i32];
                                    int i41112 = u56.a;
                                    i33 += ((i41111 + i31) - 1) / i31;
                                }
                                jArr20 = new long[i33];
                                iArr13 = new int[i33];
                                jArr21 = new long[i33];
                                iArr14 = new int[i33];
                                i34 = 0;
                                i35 = 0;
                                i18 = 0;
                                i36 = 0;
                                while (i35 < i30) {
                                    int i41113 = iArr12[i35];
                                    j14 = jArr19[i35];
                                    int i5111110 = i36;
                                    int i5111111 = i30;
                                    iMax = i18;
                                    i37 = i5111110;
                                    long[] jArr2115 = jArr19;
                                    i38 = i41113;
                                    while (i38 > 0) {
                                        int iMin6 = Math.min(i31, i38);
                                        jArr20[i37] = j14;
                                        int i5111112 = i38;
                                        int i5111113 = iA2 * iMin6;
                                        iArr13[i37] = i5111113;
                                        iMax = Math.max(iMax, i5111113);
                                        jArr21[i37] = ((long) i34) * j13;
                                        iArr14[i37] = 1;
                                        j14 += (long) iArr13[i37];
                                        i34 += iMin6;
                                        i38 = i5111112 - iMin6;
                                        i37++;
                                        iArr12 = iArr12;
                                    }
                                    i35++;
                                    int i5111114 = i37;
                                    i18 = iMax;
                                    i30 = i5111111;
                                    i36 = i5111114;
                                    jArr19 = jArr2115;
                                }
                                long j11110 = j13 * ((long) i34);
                                iArr2 = iArr14;
                                jArr7 = jArr21;
                                j7 = j11110;
                                iArr3 = iArr13;
                                jArr8 = jArr20;
                            } else {
                                jArr3 = new long[iB];
                                iArrCopyOf = new int[iB];
                                jArr4 = new long[iB];
                                int i5111115 = iN5;
                                iArr = new int[iB];
                                i8 = iN;
                                i9 = i5111115;
                                iN7 = iN6;
                                i10 = iN4;
                                iA3 = iN3;
                                iN8 = iN2;
                                os4Var5 = os4Var2;
                                j5 = j2;
                                j6 = j5;
                                i11 = 0;
                                i12 = 0;
                                iA4 = 0;
                                i13 = 0;
                                i14 = 0;
                                while (true) {
                                    if (i12 < iB) {
                                        i15 = i9;
                                        i16 = i8;
                                        jArr5 = jArr3;
                                        jArr6 = jArr4;
                                        iArrCopyOf2 = iArr;
                                        iB = iB;
                                        break;
                                    }
                                    zA = true;
                                    while (i13 == 0) {
                                        zA = mlVar.a();
                                        if (zA) {
                                            break;
                                            break;
                                        }
                                        int i5111116 = i9;
                                        long j11111 = mlVar.d;
                                        i13 = mlVar.c;
                                        j6 = j11111;
                                        i9 = i5111116;
                                        i8 = i8;
                                        iB = iB;
                                    }
                                    i19 = iB;
                                    i15 = i9;
                                    i16 = i8;
                                    if (!zA) {
                                        sv3.d("AtomParsers", "Unexpected end of chunk data");
                                        long[] jArrCopyOf11 = Arrays.copyOf(jArr3, i12);
                                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i12);
                                        long[] jArrCopyOf12 = Arrays.copyOf(jArr4, i12);
                                        iArrCopyOf2 = Arrays.copyOf(iArr, i12);
                                        int i5111117 = i12;
                                        jArr5 = jArrCopyOf11;
                                        jArr6 = jArrCopyOf12;
                                        iB = i5111117;
                                        break;
                                    }
                                    if (os4Var4 != null) {
                                        iN9 = i14;
                                        while (iN9 == 0) {
                                            iN9 = os4Var4.n();
                                            iA4 = os4Var4.a();
                                            i10--;
                                        }
                                        i14 = iN9 - 1;
                                    }
                                    jArr3[i12] = j6;
                                    iC = olVar.c();
                                    iArrCopyOf[i12] = iC;
                                    if (iC > i11) {
                                        i11 = iC;
                                    }
                                    jArr4[i12] = j5 + ((long) iA4);
                                    if (os4Var5 == null) {
                                        i20 = 1;
                                    } else {
                                        i20 = 0;
                                    }
                                    iArr[i12] = i20;
                                    if (i12 == iN7) {
                                        iArr[i12] = 1;
                                        i9 = i15 - 1;
                                        if (i9 > 0) {
                                            os4Var5.getClass();
                                            iN7 = os4Var5.n() - 1;
                                        }
                                    } else {
                                        i9 = i15;
                                    }
                                    j5 += (long) iA3;
                                    iN8--;
                                    if (iN8 == 0) {
                                        i8 = i16;
                                    } else {
                                        i8 = i16;
                                    }
                                    j6 += (long) iArrCopyOf[i12];
                                    i13--;
                                    i12++;
                                    jArr3 = jArr3;
                                    iB = i19;
                                }
                                int[] iArr1118 = iArrCopyOf;
                                i17 = i13;
                                long j11112 = j5 + ((long) iA4);
                                if (os4Var4 != null) {
                                    z5 = true;
                                    break;
                                }
                                while (true) {
                                    if (i10 > 0) {
                                        z5 = true;
                                        break;
                                    }
                                    if (os4Var4.n() != 0) {
                                        z5 = false;
                                        break;
                                    }
                                    os4Var4.a();
                                    i10--;
                                }
                                if (i15 == 0) {
                                    StringBuilder sb10 = new StringBuilder("Inconsistent stbl box for track ");
                                    defpackage.gg.e(sb10, c06Var2.a, ": remainingSynchronizationSamples ", i15, ", remainingSamplesAtTimestampDelta ");
                                    defpackage.gg.e(sb10, iN8, ", remainingSamplesInChunk ", i17, ", remainingTimestampDeltaChanges ");
                                    sb10.append(i16);
                                    sb10.append(", remainingSamplesAtTimestampOffset ");
                                    sb10.append(i14);
                                    if (z5) {
                                        str = ", ctts invalid";
                                    } else {
                                        str = "";
                                    }
                                    sb10.append(str);
                                    sv3.d("AtomParsers", sb10.toString());
                                } else {
                                    StringBuilder sb11 = new StringBuilder("Inconsistent stbl box for track ");
                                    defpackage.gg.e(sb11, c06Var2.a, ": remainingSynchronizationSamples ", i15, ", remainingSamplesAtTimestampDelta ");
                                    defpackage.gg.e(sb11, iN8, ", remainingSamplesInChunk ", i17, ", remainingTimestampDeltaChanges ");
                                    sb11.append(i16);
                                    sb11.append(", remainingSamplesAtTimestampOffset ");
                                    sb11.append(i14);
                                    if (z5) {
                                        str = ", ctts invalid";
                                    } else {
                                        str = "";
                                    }
                                    sb11.append(str);
                                    sv3.d("AtomParsers", sb11.toString());
                                }
                                iArr2 = iArrCopyOf2;
                                jArr7 = jArr6;
                                i18 = i11;
                                j7 = j11112;
                                jArr8 = jArr5;
                                iArr3 = iArr1118;
                            }
                            jA2 = u56.a(j7, 1000000L, c06Var2.c);
                            jArr9 = c06Var2.h;
                            if (jArr9 == null) {
                                u56.a(jArr7, c06Var2.c);
                                l06Var = new l06(c06Var2, jArr8, iArr3, i18, jArr7, iArr2, jA2);
                            } else {
                                jArr10 = jArr8;
                                jArr11 = jArr7;
                                if (jArr9.length == 1) {
                                    long[] jArr2116 = c06Var2.i;
                                    jArr2116.getClass();
                                    j11 = jArr2116[0];
                                    jA3 = u56.a(c06Var2.h[0], c06Var2.c, c06Var2.d) + j11;
                                    int length6 = jArr11.length - 1;
                                    int iMax12 = Math.max(0, Math.min(4, length6));
                                    int iMax13 = Math.max(0, Math.min(jArr11.length - 4, length6));
                                    j12 = jArr11[0];
                                    if (j12 <= j11) {
                                        jA4 = u56.a(j11 - j12, c06Var2.f.A, c06Var2.c);
                                        jA5 = u56.a(j7 - jA3, c06Var2.f.A, c06Var2.c);
                                        if (jA4 == j2) {
                                            f23Var.a = (int) jA4;
                                            f23Var.b = (int) jA5;
                                            u56.a(jArr11, c06Var2.c);
                                            l06Var = new l06(c06Var2, jArr10, iArr3, i18, jArr11, iArr2, u56.a(c06Var2.h[0], 1000000L, c06Var2.d));
                                        } else {
                                            f23Var.a = (int) jA4;
                                            f23Var.b = (int) jA5;
                                            u56.a(jArr11, c06Var2.c);
                                            l06Var = new l06(c06Var2, jArr10, iArr3, i18, jArr11, iArr2, u56.a(c06Var2.h[0], 1000000L, c06Var2.d));
                                        }
                                    }
                                }
                                jArr12 = c06Var2.h;
                                if (jArr12.length != 1) {
                                    jArr13 = jArr11;
                                    iArr4 = iArr2;
                                    if (c06Var2.b == 1) {
                                        z6 = true;
                                    } else {
                                        z6 = false;
                                    }
                                    iArr5 = new int[jArr12.length];
                                    iArr6 = new int[jArr12.length];
                                    jArr14 = c06Var2.i;
                                    jArr14.getClass();
                                    i21 = 0;
                                    i22 = 0;
                                    z7 = false;
                                    i23 = 0;
                                    while (true) {
                                        jArr15 = c06Var2.h;
                                        iArr7 = iArr6;
                                        if (i21 >= jArr15.length) {
                                            break;
                                            break;
                                        }
                                        j10 = jArr14[i21];
                                        if (j10 != -1) {
                                            long j11113 = jArr15[i21];
                                            iArr11 = iArr5;
                                            long jA15 = u56.a(j11113, c06Var2.c, c06Var2.d);
                                            iArr11[i21] = u56.b(jArr13, j10, true);
                                            iArr7[i21] = u56.a(jArr13, j10 + jA15, z6);
                                            while (true) {
                                                i28 = iArr11[i21];
                                                i29 = iArr7[i21];
                                                if (i28 < i29) {
                                                    break;
                                                    break;
                                                }
                                                break;
                                                break;
                                                iArr11[i21] = i28 + 1;
                                            }
                                            int i5111118 = (i29 - i28) + i22;
                                            if (i23 != i28) {
                                                z10 = true;
                                            } else {
                                                z10 = false;
                                            }
                                            z7 = z10 | z7;
                                            i23 = i29;
                                            i22 = i5111118;
                                        } else {
                                            iArr11 = iArr5;
                                        }
                                        i21++;
                                        iArr5 = iArr11;
                                        iArr6 = iArr7;
                                        jArr14 = jArr14;
                                    }
                                    iArr8 = iArr5;
                                    z8 = z7 | (i22 != iB);
                                    if (z8) {
                                        jArr16 = new long[i22];
                                    } else {
                                        jArr16 = jArr10;
                                    }
                                    if (z8) {
                                        iArr9 = new int[i22];
                                    } else {
                                        iArr9 = iArr3;
                                    }
                                    if (z8) {
                                        i18 = 0;
                                    }
                                    if (z8) {
                                        iArr10 = new int[i22];
                                    } else {
                                        iArr10 = iArr4;
                                    }
                                    jArr17 = new long[i22];
                                    i24 = 0;
                                    i25 = 0;
                                    j8 = j2;
                                    while (i24 < c06Var2.h.length) {
                                        j9 = c06Var2.i[i24];
                                        i26 = iArr8[i24];
                                        z9 = z8;
                                        i27 = iArr7[i24];
                                        jArr18 = jArr13;
                                        if (z9) {
                                            int i6117 = i27 - i26;
                                            System.arraycopy(jArr10, i26, jArr16, i25, i6117);
                                            System.arraycopy(iArr3, i26, iArr9, i25, i6117);
                                            System.arraycopy(iArr4, i26, iArr10, i25, i6117);
                                        }
                                        int i6118 = i18;
                                        while (i26 < i27) {
                                            int i6119 = i27;
                                            long[] jArr2117 = jArr16;
                                            int[] iArr1119 = iArr9;
                                            int[] iArr11110 = iArr10;
                                            long j29 = j2;
                                            jArr17[i25] = u56.a(j8, 1000000L, c06Var2.d) + u56.a(Math.max(j29, jArr18[i26] - j9), 1000000L, c06Var2.c);
                                            if (!z9) {
                                            }
                                            i25++;
                                            i26++;
                                            j2 = j29;
                                            jArr16 = jArr2117;
                                            i27 = i6119;
                                            iArr9 = iArr1119;
                                            iArr10 = iArr11110;
                                        }
                                        j8 += c06Var2.h[i24];
                                        i24++;
                                        i18 = i6118;
                                        z8 = z9;
                                        jArr13 = jArr18;
                                        iArr9 = iArr9;
                                        iArr10 = iArr10;
                                    }
                                    l06Var = new l06(c06Var2, jArr16, iArr9, i18, jArr17, iArr10, u56.a(j8, 1000000L, c06Var2.d));
                                } else {
                                    jArr13 = jArr11;
                                    iArr4 = iArr2;
                                    if (c06Var2.b == 1) {
                                        z6 = true;
                                    } else {
                                        z6 = false;
                                    }
                                    iArr5 = new int[jArr12.length];
                                    iArr6 = new int[jArr12.length];
                                    jArr14 = c06Var2.i;
                                    jArr14.getClass();
                                    i21 = 0;
                                    i22 = 0;
                                    z7 = false;
                                    i23 = 0;
                                    while (true) {
                                        jArr15 = c06Var2.h;
                                        iArr7 = iArr6;
                                        if (i21 >= jArr15.length) {
                                            break;
                                            break;
                                        }
                                        j10 = jArr14[i21];
                                        if (j10 != -1) {
                                            long j11114 = jArr15[i21];
                                            iArr11 = iArr5;
                                            long jA16 = u56.a(j11114, c06Var2.c, c06Var2.d);
                                            iArr11[i21] = u56.b(jArr13, j10, true);
                                            iArr7[i21] = u56.a(jArr13, j10 + jA16, z6);
                                            while (true) {
                                                i28 = iArr11[i21];
                                                i29 = iArr7[i21];
                                                if (i28 < i29) {
                                                    break;
                                                    break;
                                                }
                                                break;
                                                break;
                                                iArr11[i21] = i28 + 1;
                                            }
                                            int i5111119 = (i29 - i28) + i22;
                                            if (i23 != i28) {
                                                z10 = true;
                                            } else {
                                                z10 = false;
                                            }
                                            z7 = z10 | z7;
                                            i23 = i29;
                                            i22 = i5111119;
                                        } else {
                                            iArr11 = iArr5;
                                        }
                                        i21++;
                                        iArr5 = iArr11;
                                        iArr6 = iArr7;
                                        jArr14 = jArr14;
                                    }
                                    iArr8 = iArr5;
                                    z8 = z7 | (i22 != iB);
                                    if (z8) {
                                        jArr16 = new long[i22];
                                    } else {
                                        jArr16 = jArr10;
                                    }
                                    if (z8) {
                                        iArr9 = new int[i22];
                                    } else {
                                        iArr9 = iArr3;
                                    }
                                    if (z8) {
                                        i18 = 0;
                                    }
                                    if (z8) {
                                        iArr10 = new int[i22];
                                    } else {
                                        iArr10 = iArr4;
                                    }
                                    jArr17 = new long[i22];
                                    i24 = 0;
                                    i25 = 0;
                                    j8 = j2;
                                    while (i24 < c06Var2.h.length) {
                                        j9 = c06Var2.i[i24];
                                        i26 = iArr8[i24];
                                        z9 = z8;
                                        i27 = iArr7[i24];
                                        jArr18 = jArr13;
                                        if (z9) {
                                            int i61110 = i27 - i26;
                                            System.arraycopy(jArr10, i26, jArr16, i25, i61110);
                                            System.arraycopy(iArr3, i26, iArr9, i25, i61110);
                                            System.arraycopy(iArr4, i26, iArr10, i25, i61110);
                                        }
                                        int i61111 = i18;
                                        while (i26 < i27) {
                                            int i61112 = i27;
                                            long[] jArr2118 = jArr16;
                                            int[] iArr11111 = iArr9;
                                            int[] iArr11112 = iArr10;
                                            long j210 = j2;
                                            jArr17[i25] = u56.a(j8, 1000000L, c06Var2.d) + u56.a(Math.max(j210, jArr18[i26] - j9), 1000000L, c06Var2.c);
                                            if (!z9) {
                                            }
                                            i25++;
                                            i26++;
                                            j2 = j210;
                                            jArr16 = jArr2118;
                                            i27 = i61112;
                                            iArr9 = iArr11111;
                                            iArr10 = iArr11112;
                                        }
                                        j8 += c06Var2.h[i24];
                                        i24++;
                                        i18 = i61111;
                                        z8 = z9;
                                        jArr13 = jArr18;
                                        iArr9 = iArr9;
                                        iArr10 = iArr10;
                                    }
                                    l06Var = new l06(c06Var2, jArr16, iArr9, i18, jArr17, iArr10, u56.a(j8, 1000000L, c06Var2.d));
                                }
                                arrayList = arrayList;
                                arrayList.add(l06Var);
                            }
                        }
                        arrayList.add(l06Var);
                    }
                    i39 = i2 + 1;
                    arrayList = arrayList;
                }
                c06Var = null;
                i7 = Mp4Box.TYPE_stbl;
                c06Var2 = (c06) v13Var.apply(c06Var);
                if (c06Var2 == null) {
                    jl jlVarB14 = jlVar2.b(Mp4Box.TYPE_mdia);
                    jlVarB14.getClass();
                    jl jlVarB15 = jlVarB14.b(Mp4Box.TYPE_minf);
                    jlVarB15.getClass();
                    jlVarB2 = jlVarB15.b(i7);
                    jlVarB2.getClass();
                    klVarC = jlVarB2.c(Mp4Box.TYPE_stsz);
                    if (klVarC != null) {
                        rlVar = new ql(klVarC, c06Var2.f);
                    } else {
                        klVarC2 = jlVarB2.c(Mp4Box.TYPE_stz2);
                        if (klVarC2 != null) {
                            rlVar = new rl(klVarC2);
                        } else {
                            defpackage.e2.h("Track has no sample table size information", null);
                            return null;
                        }
                    }
                    iB = rlVar.b();
                    if (iB == 0) {
                        l06Var = new l06(c06Var2, new long[0], new int[0], 0, new long[0], new int[0], 0L);
                    } else {
                        klVarC3 = jlVarB2.c(Mp4Box.TYPE_stco);
                        if (klVarC3 == null) {
                            klVarC3 = jlVarB2.c(Mp4Box.TYPE_co64);
                            klVarC3.getClass();
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        os4 os4Var110 = klVarC3.b;
                        kl klVarC110 = jlVarB2.c(Mp4Box.TYPE_stsc);
                        klVarC110.getClass();
                        os4 os4Var111 = klVarC110.b;
                        kl klVarC111 = jlVarB2.c(Mp4Box.TYPE_stts);
                        klVarC111.getClass();
                        os4 os4Var112 = klVarC111.b;
                        klVarC4 = jlVarB2.c(Mp4Box.TYPE_stss);
                        if (klVarC4 != null) {
                            os4Var2 = klVarC4.b;
                        } else {
                            os4Var2 = null;
                        }
                        klVarC5 = jlVarB2.c(Mp4Box.TYPE_ctts);
                        if (klVarC5 != null) {
                            os4Var3 = klVarC5.b;
                        } else {
                            os4Var3 = null;
                        }
                        mlVar = new ml(os4Var111, os4Var110, z3);
                        os4Var112.e(12);
                        iN = os4Var112.n() - 1;
                        iN2 = os4Var112.n();
                        iN3 = os4Var112.n();
                        if (os4Var3 != null) {
                            os4Var3.e(12);
                            iN4 = os4Var3.n();
                        } else {
                            iN4 = 0;
                        }
                        if (os4Var2 != null) {
                            os4Var2.e(12);
                            iN5 = os4Var2.n();
                            if (iN5 > 0) {
                                iN6 = os4Var2.n() - 1;
                            } else {
                                os4Var2 = null;
                            }
                            iA2 = rlVar.a();
                            os4Var4 = os4Var3;
                            String str8 = c06Var2.f.m;
                            olVar = rlVar;
                            if (iA2 == -1) {
                                z4 = false;
                            } else {
                                z4 = false;
                            }
                            if (z4) {
                                i30 = mlVar.a;
                                jArr19 = new long[i30];
                                iArr12 = new int[i30];
                                while (mlVar.a()) {
                                    int i41114 = mlVar.b;
                                    jArr19[i41114] = mlVar.d;
                                    iArr12[i41114] = mlVar.c;
                                }
                                j13 = iN3;
                                i31 = 8192 / iA2;
                                i33 = 0;
                                while (i32 < i30) {
                                    int i41115 = iArr12[i32];
                                    int i41116 = u56.a;
                                    i33 += ((i41115 + i31) - 1) / i31;
                                }
                                jArr20 = new long[i33];
                                iArr13 = new int[i33];
                                jArr21 = new long[i33];
                                iArr14 = new int[i33];
                                i34 = 0;
                                i35 = 0;
                                i18 = 0;
                                i36 = 0;
                                while (i35 < i30) {
                                    int i41117 = iArr12[i35];
                                    j14 = jArr19[i35];
                                    int i51111110 = i36;
                                    int i51111111 = i30;
                                    iMax = i18;
                                    i37 = i51111110;
                                    long[] jArr2119 = jArr19;
                                    i38 = i41117;
                                    while (i38 > 0) {
                                        int iMin7 = Math.min(i31, i38);
                                        jArr20[i37] = j14;
                                        int i51111112 = i38;
                                        int i51111113 = iA2 * iMin7;
                                        iArr13[i37] = i51111113;
                                        iMax = Math.max(iMax, i51111113);
                                        jArr21[i37] = ((long) i34) * j13;
                                        iArr14[i37] = 1;
                                        j14 += (long) iArr13[i37];
                                        i34 += iMin7;
                                        i38 = i51111112 - iMin7;
                                        i37++;
                                        iArr12 = iArr12;
                                    }
                                    i35++;
                                    int i51111114 = i37;
                                    i18 = iMax;
                                    i30 = i51111111;
                                    i36 = i51111114;
                                    jArr19 = jArr2119;
                                }
                                long j11115 = j13 * ((long) i34);
                                iArr2 = iArr14;
                                jArr7 = jArr21;
                                j7 = j11115;
                                iArr3 = iArr13;
                                jArr8 = jArr20;
                            } else {
                                jArr3 = new long[iB];
                                iArrCopyOf = new int[iB];
                                jArr4 = new long[iB];
                                int i51111115 = iN5;
                                iArr = new int[iB];
                                i8 = iN;
                                i9 = i51111115;
                                iN7 = iN6;
                                i10 = iN4;
                                iA3 = iN3;
                                iN8 = iN2;
                                os4Var5 = os4Var2;
                                j5 = j2;
                                j6 = j5;
                                i11 = 0;
                                i12 = 0;
                                iA4 = 0;
                                i13 = 0;
                                i14 = 0;
                                while (true) {
                                    if (i12 < iB) {
                                        i15 = i9;
                                        i16 = i8;
                                        jArr5 = jArr3;
                                        jArr6 = jArr4;
                                        iArrCopyOf2 = iArr;
                                        iB = iB;
                                        break;
                                    }
                                    zA = true;
                                    while (i13 == 0) {
                                        zA = mlVar.a();
                                        if (zA) {
                                            break;
                                            break;
                                        }
                                        int i51111116 = i9;
                                        long j11116 = mlVar.d;
                                        i13 = mlVar.c;
                                        j6 = j11116;
                                        i9 = i51111116;
                                        i8 = i8;
                                        iB = iB;
                                    }
                                    i19 = iB;
                                    i15 = i9;
                                    i16 = i8;
                                    if (!zA) {
                                        sv3.d("AtomParsers", "Unexpected end of chunk data");
                                        long[] jArrCopyOf13 = Arrays.copyOf(jArr3, i12);
                                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i12);
                                        long[] jArrCopyOf14 = Arrays.copyOf(jArr4, i12);
                                        iArrCopyOf2 = Arrays.copyOf(iArr, i12);
                                        int i51111117 = i12;
                                        jArr5 = jArrCopyOf13;
                                        jArr6 = jArrCopyOf14;
                                        iB = i51111117;
                                        break;
                                    }
                                    if (os4Var4 != null) {
                                        iN9 = i14;
                                        while (iN9 == 0) {
                                            iN9 = os4Var4.n();
                                            iA4 = os4Var4.a();
                                            i10--;
                                        }
                                        i14 = iN9 - 1;
                                    }
                                    jArr3[i12] = j6;
                                    iC = olVar.c();
                                    iArrCopyOf[i12] = iC;
                                    if (iC > i11) {
                                        i11 = iC;
                                    }
                                    jArr4[i12] = j5 + ((long) iA4);
                                    if (os4Var5 == null) {
                                        i20 = 1;
                                    } else {
                                        i20 = 0;
                                    }
                                    iArr[i12] = i20;
                                    if (i12 == iN7) {
                                        iArr[i12] = 1;
                                        i9 = i15 - 1;
                                        if (i9 > 0) {
                                            os4Var5.getClass();
                                            iN7 = os4Var5.n() - 1;
                                        }
                                    } else {
                                        i9 = i15;
                                    }
                                    j5 += (long) iA3;
                                    iN8--;
                                    if (iN8 == 0) {
                                        i8 = i16;
                                    } else {
                                        i8 = i16;
                                    }
                                    j6 += (long) iArrCopyOf[i12];
                                    i13--;
                                    i12++;
                                    jArr3 = jArr3;
                                    iB = i19;
                                }
                                int[] iArr11113 = iArrCopyOf;
                                i17 = i13;
                                long j11117 = j5 + ((long) iA4);
                                if (os4Var4 != null) {
                                    z5 = true;
                                    break;
                                }
                                while (true) {
                                    if (i10 > 0) {
                                        z5 = true;
                                        break;
                                    }
                                    if (os4Var4.n() != 0) {
                                        z5 = false;
                                        break;
                                    }
                                    os4Var4.a();
                                    i10--;
                                }
                                if (i15 == 0) {
                                    StringBuilder sb12 = new StringBuilder("Inconsistent stbl box for track ");
                                    defpackage.gg.e(sb12, c06Var2.a, ": remainingSynchronizationSamples ", i15, ", remainingSamplesAtTimestampDelta ");
                                    defpackage.gg.e(sb12, iN8, ", remainingSamplesInChunk ", i17, ", remainingTimestampDeltaChanges ");
                                    sb12.append(i16);
                                    sb12.append(", remainingSamplesAtTimestampOffset ");
                                    sb12.append(i14);
                                    if (z5) {
                                        str = ", ctts invalid";
                                    } else {
                                        str = "";
                                    }
                                    sb12.append(str);
                                    sv3.d("AtomParsers", sb12.toString());
                                } else {
                                    StringBuilder sb13 = new StringBuilder("Inconsistent stbl box for track ");
                                    defpackage.gg.e(sb13, c06Var2.a, ": remainingSynchronizationSamples ", i15, ", remainingSamplesAtTimestampDelta ");
                                    defpackage.gg.e(sb13, iN8, ", remainingSamplesInChunk ", i17, ", remainingTimestampDeltaChanges ");
                                    sb13.append(i16);
                                    sb13.append(", remainingSamplesAtTimestampOffset ");
                                    sb13.append(i14);
                                    if (z5) {
                                        str = ", ctts invalid";
                                    } else {
                                        str = "";
                                    }
                                    sb13.append(str);
                                    sv3.d("AtomParsers", sb13.toString());
                                }
                                iArr2 = iArrCopyOf2;
                                jArr7 = jArr6;
                                i18 = i11;
                                j7 = j11117;
                                jArr8 = jArr5;
                                iArr3 = iArr11113;
                            }
                            jA2 = u56.a(j7, 1000000L, c06Var2.c);
                            jArr9 = c06Var2.h;
                            if (jArr9 == null) {
                                u56.a(jArr7, c06Var2.c);
                                l06Var = new l06(c06Var2, jArr8, iArr3, i18, jArr7, iArr2, jA2);
                            } else {
                                jArr10 = jArr8;
                                jArr11 = jArr7;
                                if (jArr9.length == 1) {
                                    long[] jArr21110 = c06Var2.i;
                                    jArr21110.getClass();
                                    j11 = jArr21110[0];
                                    jA3 = u56.a(c06Var2.h[0], c06Var2.c, c06Var2.d) + j11;
                                    int length7 = jArr11.length - 1;
                                    int iMax14 = Math.max(0, Math.min(4, length7));
                                    int iMax15 = Math.max(0, Math.min(jArr11.length - 4, length7));
                                    j12 = jArr11[0];
                                    if (j12 <= j11) {
                                        jA4 = u56.a(j11 - j12, c06Var2.f.A, c06Var2.c);
                                        jA5 = u56.a(j7 - jA3, c06Var2.f.A, c06Var2.c);
                                        if (jA4 == j2) {
                                            f23Var.a = (int) jA4;
                                            f23Var.b = (int) jA5;
                                            u56.a(jArr11, c06Var2.c);
                                            l06Var = new l06(c06Var2, jArr10, iArr3, i18, jArr11, iArr2, u56.a(c06Var2.h[0], 1000000L, c06Var2.d));
                                        } else {
                                            f23Var.a = (int) jA4;
                                            f23Var.b = (int) jA5;
                                            u56.a(jArr11, c06Var2.c);
                                            l06Var = new l06(c06Var2, jArr10, iArr3, i18, jArr11, iArr2, u56.a(c06Var2.h[0], 1000000L, c06Var2.d));
                                        }
                                    }
                                }
                                jArr12 = c06Var2.h;
                                if (jArr12.length != 1) {
                                    jArr13 = jArr11;
                                    iArr4 = iArr2;
                                    if (c06Var2.b == 1) {
                                        z6 = true;
                                    } else {
                                        z6 = false;
                                    }
                                    iArr5 = new int[jArr12.length];
                                    iArr6 = new int[jArr12.length];
                                    jArr14 = c06Var2.i;
                                    jArr14.getClass();
                                    i21 = 0;
                                    i22 = 0;
                                    z7 = false;
                                    i23 = 0;
                                    while (true) {
                                        jArr15 = c06Var2.h;
                                        iArr7 = iArr6;
                                        if (i21 >= jArr15.length) {
                                            break;
                                            break;
                                        }
                                        j10 = jArr14[i21];
                                        if (j10 != -1) {
                                            long j11118 = jArr15[i21];
                                            iArr11 = iArr5;
                                            long jA17 = u56.a(j11118, c06Var2.c, c06Var2.d);
                                            iArr11[i21] = u56.b(jArr13, j10, true);
                                            iArr7[i21] = u56.a(jArr13, j10 + jA17, z6);
                                            while (true) {
                                                i28 = iArr11[i21];
                                                i29 = iArr7[i21];
                                                if (i28 < i29) {
                                                    break;
                                                    break;
                                                }
                                                break;
                                                break;
                                                iArr11[i21] = i28 + 1;
                                            }
                                            int i51111118 = (i29 - i28) + i22;
                                            if (i23 != i28) {
                                                z10 = true;
                                            } else {
                                                z10 = false;
                                            }
                                            z7 = z10 | z7;
                                            i23 = i29;
                                            i22 = i51111118;
                                        } else {
                                            iArr11 = iArr5;
                                        }
                                        i21++;
                                        iArr5 = iArr11;
                                        iArr6 = iArr7;
                                        jArr14 = jArr14;
                                    }
                                    iArr8 = iArr5;
                                    z8 = z7 | (i22 != iB);
                                    if (z8) {
                                        jArr16 = new long[i22];
                                    } else {
                                        jArr16 = jArr10;
                                    }
                                    if (z8) {
                                        iArr9 = new int[i22];
                                    } else {
                                        iArr9 = iArr3;
                                    }
                                    if (z8) {
                                        i18 = 0;
                                    }
                                    if (z8) {
                                        iArr10 = new int[i22];
                                    } else {
                                        iArr10 = iArr4;
                                    }
                                    jArr17 = new long[i22];
                                    i24 = 0;
                                    i25 = 0;
                                    j8 = j2;
                                    while (i24 < c06Var2.h.length) {
                                        j9 = c06Var2.i[i24];
                                        i26 = iArr8[i24];
                                        z9 = z8;
                                        i27 = iArr7[i24];
                                        jArr18 = jArr13;
                                        if (z9) {
                                            int i61113 = i27 - i26;
                                            System.arraycopy(jArr10, i26, jArr16, i25, i61113);
                                            System.arraycopy(iArr3, i26, iArr9, i25, i61113);
                                            System.arraycopy(iArr4, i26, iArr10, i25, i61113);
                                        }
                                        int i61114 = i18;
                                        while (i26 < i27) {
                                            int i61115 = i27;
                                            long[] jArr21111 = jArr16;
                                            int[] iArr11114 = iArr9;
                                            int[] iArr11115 = iArr10;
                                            long j211 = j2;
                                            jArr17[i25] = u56.a(j8, 1000000L, c06Var2.d) + u56.a(Math.max(j211, jArr18[i26] - j9), 1000000L, c06Var2.c);
                                            if (!z9) {
                                            }
                                            i25++;
                                            i26++;
                                            j2 = j211;
                                            jArr16 = jArr21111;
                                            i27 = i61115;
                                            iArr9 = iArr11114;
                                            iArr10 = iArr11115;
                                        }
                                        j8 += c06Var2.h[i24];
                                        i24++;
                                        i18 = i61114;
                                        z8 = z9;
                                        jArr13 = jArr18;
                                        iArr9 = iArr9;
                                        iArr10 = iArr10;
                                    }
                                    l06Var = new l06(c06Var2, jArr16, iArr9, i18, jArr17, iArr10, u56.a(j8, 1000000L, c06Var2.d));
                                } else {
                                    jArr13 = jArr11;
                                    iArr4 = iArr2;
                                    if (c06Var2.b == 1) {
                                        z6 = true;
                                    } else {
                                        z6 = false;
                                    }
                                    iArr5 = new int[jArr12.length];
                                    iArr6 = new int[jArr12.length];
                                    jArr14 = c06Var2.i;
                                    jArr14.getClass();
                                    i21 = 0;
                                    i22 = 0;
                                    z7 = false;
                                    i23 = 0;
                                    while (true) {
                                        jArr15 = c06Var2.h;
                                        iArr7 = iArr6;
                                        if (i21 >= jArr15.length) {
                                            break;
                                            break;
                                        }
                                        j10 = jArr14[i21];
                                        if (j10 != -1) {
                                            long j11119 = jArr15[i21];
                                            iArr11 = iArr5;
                                            long jA18 = u56.a(j11119, c06Var2.c, c06Var2.d);
                                            iArr11[i21] = u56.b(jArr13, j10, true);
                                            iArr7[i21] = u56.a(jArr13, j10 + jA18, z6);
                                            while (true) {
                                                i28 = iArr11[i21];
                                                i29 = iArr7[i21];
                                                if (i28 < i29) {
                                                    break;
                                                    break;
                                                }
                                                break;
                                                break;
                                                iArr11[i21] = i28 + 1;
                                            }
                                            int i51111119 = (i29 - i28) + i22;
                                            if (i23 != i28) {
                                                z10 = true;
                                            } else {
                                                z10 = false;
                                            }
                                            z7 = z10 | z7;
                                            i23 = i29;
                                            i22 = i51111119;
                                        } else {
                                            iArr11 = iArr5;
                                        }
                                        i21++;
                                        iArr5 = iArr11;
                                        iArr6 = iArr7;
                                        jArr14 = jArr14;
                                    }
                                    iArr8 = iArr5;
                                    z8 = z7 | (i22 != iB);
                                    if (z8) {
                                        jArr16 = new long[i22];
                                    } else {
                                        jArr16 = jArr10;
                                    }
                                    if (z8) {
                                        iArr9 = new int[i22];
                                    } else {
                                        iArr9 = iArr3;
                                    }
                                    if (z8) {
                                        i18 = 0;
                                    }
                                    if (z8) {
                                        iArr10 = new int[i22];
                                    } else {
                                        iArr10 = iArr4;
                                    }
                                    jArr17 = new long[i22];
                                    i24 = 0;
                                    i25 = 0;
                                    j8 = j2;
                                    while (i24 < c06Var2.h.length) {
                                        j9 = c06Var2.i[i24];
                                        i26 = iArr8[i24];
                                        z9 = z8;
                                        i27 = iArr7[i24];
                                        jArr18 = jArr13;
                                        if (z9) {
                                            int i61116 = i27 - i26;
                                            System.arraycopy(jArr10, i26, jArr16, i25, i61116);
                                            System.arraycopy(iArr3, i26, iArr9, i25, i61116);
                                            System.arraycopy(iArr4, i26, iArr10, i25, i61116);
                                        }
                                        int i61117 = i18;
                                        while (i26 < i27) {
                                            int i61118 = i27;
                                            long[] jArr21112 = jArr16;
                                            int[] iArr11116 = iArr9;
                                            int[] iArr11117 = iArr10;
                                            long j212 = j2;
                                            jArr17[i25] = u56.a(j8, 1000000L, c06Var2.d) + u56.a(Math.max(j212, jArr18[i26] - j9), 1000000L, c06Var2.c);
                                            if (!z9) {
                                            }
                                            i25++;
                                            i26++;
                                            j2 = j212;
                                            jArr16 = jArr21112;
                                            i27 = i61118;
                                            iArr9 = iArr11116;
                                            iArr10 = iArr11117;
                                        }
                                        j8 += c06Var2.h[i24];
                                        i24++;
                                        i18 = i61117;
                                        z8 = z9;
                                        jArr13 = jArr18;
                                        iArr9 = iArr9;
                                        iArr10 = iArr10;
                                    }
                                    l06Var = new l06(c06Var2, jArr16, iArr9, i18, jArr17, iArr10, u56.a(j8, 1000000L, c06Var2.d));
                                }
                                arrayList = arrayList;
                                arrayList.add(l06Var);
                            }
                        } else {
                            iN5 = 0;
                        }
                        iN6 = -1;
                        iA2 = rlVar.a();
                        os4Var4 = os4Var3;
                        String str9 = c06Var2.f.m;
                        olVar = rlVar;
                        if (iA2 == -1) {
                            z4 = false;
                        } else {
                            z4 = false;
                        }
                        if (z4) {
                            i30 = mlVar.a;
                            jArr19 = new long[i30];
                            iArr12 = new int[i30];
                            while (mlVar.a()) {
                                int i41118 = mlVar.b;
                                jArr19[i41118] = mlVar.d;
                                iArr12[i41118] = mlVar.c;
                            }
                            j13 = iN3;
                            i31 = 8192 / iA2;
                            i33 = 0;
                            while (i32 < i30) {
                                int i41119 = iArr12[i32];
                                int i411110 = u56.a;
                                i33 += ((i41119 + i31) - 1) / i31;
                            }
                            jArr20 = new long[i33];
                            iArr13 = new int[i33];
                            jArr21 = new long[i33];
                            iArr14 = new int[i33];
                            i34 = 0;
                            i35 = 0;
                            i18 = 0;
                            i36 = 0;
                            while (i35 < i30) {
                                int i411111 = iArr12[i35];
                                j14 = jArr19[i35];
                                int i511111110 = i36;
                                int i511111111 = i30;
                                iMax = i18;
                                i37 = i511111110;
                                long[] jArr21113 = jArr19;
                                i38 = i411111;
                                while (i38 > 0) {
                                    int iMin8 = Math.min(i31, i38);
                                    jArr20[i37] = j14;
                                    int i511111112 = i38;
                                    int i511111113 = iA2 * iMin8;
                                    iArr13[i37] = i511111113;
                                    iMax = Math.max(iMax, i511111113);
                                    jArr21[i37] = ((long) i34) * j13;
                                    iArr14[i37] = 1;
                                    j14 += (long) iArr13[i37];
                                    i34 += iMin8;
                                    i38 = i511111112 - iMin8;
                                    i37++;
                                    iArr12 = iArr12;
                                }
                                i35++;
                                int i511111114 = i37;
                                i18 = iMax;
                                i30 = i511111111;
                                i36 = i511111114;
                                jArr19 = jArr21113;
                            }
                            long j111110 = j13 * ((long) i34);
                            iArr2 = iArr14;
                            jArr7 = jArr21;
                            j7 = j111110;
                            iArr3 = iArr13;
                            jArr8 = jArr20;
                        } else {
                            jArr3 = new long[iB];
                            iArrCopyOf = new int[iB];
                            jArr4 = new long[iB];
                            int i511111115 = iN5;
                            iArr = new int[iB];
                            i8 = iN;
                            i9 = i511111115;
                            iN7 = iN6;
                            i10 = iN4;
                            iA3 = iN3;
                            iN8 = iN2;
                            os4Var5 = os4Var2;
                            j5 = j2;
                            j6 = j5;
                            i11 = 0;
                            i12 = 0;
                            iA4 = 0;
                            i13 = 0;
                            i14 = 0;
                            while (true) {
                                if (i12 < iB) {
                                    i15 = i9;
                                    i16 = i8;
                                    jArr5 = jArr3;
                                    jArr6 = jArr4;
                                    iArrCopyOf2 = iArr;
                                    iB = iB;
                                    break;
                                }
                                zA = true;
                                while (i13 == 0) {
                                    zA = mlVar.a();
                                    if (zA) {
                                        break;
                                        break;
                                    }
                                    int i511111116 = i9;
                                    long j111111 = mlVar.d;
                                    i13 = mlVar.c;
                                    j6 = j111111;
                                    i9 = i511111116;
                                    i8 = i8;
                                    iB = iB;
                                }
                                i19 = iB;
                                i15 = i9;
                                i16 = i8;
                                if (!zA) {
                                    sv3.d("AtomParsers", "Unexpected end of chunk data");
                                    long[] jArrCopyOf15 = Arrays.copyOf(jArr3, i12);
                                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i12);
                                    long[] jArrCopyOf16 = Arrays.copyOf(jArr4, i12);
                                    iArrCopyOf2 = Arrays.copyOf(iArr, i12);
                                    int i511111117 = i12;
                                    jArr5 = jArrCopyOf15;
                                    jArr6 = jArrCopyOf16;
                                    iB = i511111117;
                                    break;
                                }
                                if (os4Var4 != null) {
                                    iN9 = i14;
                                    while (iN9 == 0) {
                                        iN9 = os4Var4.n();
                                        iA4 = os4Var4.a();
                                        i10--;
                                    }
                                    i14 = iN9 - 1;
                                }
                                jArr3[i12] = j6;
                                iC = olVar.c();
                                iArrCopyOf[i12] = iC;
                                if (iC > i11) {
                                    i11 = iC;
                                }
                                jArr4[i12] = j5 + ((long) iA4);
                                if (os4Var5 == null) {
                                    i20 = 1;
                                } else {
                                    i20 = 0;
                                }
                                iArr[i12] = i20;
                                if (i12 == iN7) {
                                    iArr[i12] = 1;
                                    i9 = i15 - 1;
                                    if (i9 > 0) {
                                        os4Var5.getClass();
                                        iN7 = os4Var5.n() - 1;
                                    }
                                } else {
                                    i9 = i15;
                                }
                                j5 += (long) iA3;
                                iN8--;
                                if (iN8 == 0) {
                                    i8 = i16;
                                } else {
                                    i8 = i16;
                                }
                                j6 += (long) iArrCopyOf[i12];
                                i13--;
                                i12++;
                                jArr3 = jArr3;
                                iB = i19;
                            }
                            int[] iArr11118 = iArrCopyOf;
                            i17 = i13;
                            long j111112 = j5 + ((long) iA4);
                            if (os4Var4 != null) {
                                z5 = true;
                                break;
                            }
                            while (true) {
                                if (i10 > 0) {
                                    z5 = true;
                                    break;
                                }
                                if (os4Var4.n() != 0) {
                                    z5 = false;
                                    break;
                                }
                                os4Var4.a();
                                i10--;
                            }
                            if (i15 == 0) {
                                StringBuilder sb14 = new StringBuilder("Inconsistent stbl box for track ");
                                defpackage.gg.e(sb14, c06Var2.a, ": remainingSynchronizationSamples ", i15, ", remainingSamplesAtTimestampDelta ");
                                defpackage.gg.e(sb14, iN8, ", remainingSamplesInChunk ", i17, ", remainingTimestampDeltaChanges ");
                                sb14.append(i16);
                                sb14.append(", remainingSamplesAtTimestampOffset ");
                                sb14.append(i14);
                                if (z5) {
                                    str = ", ctts invalid";
                                } else {
                                    str = "";
                                }
                                sb14.append(str);
                                sv3.d("AtomParsers", sb14.toString());
                            } else {
                                StringBuilder sb15 = new StringBuilder("Inconsistent stbl box for track ");
                                defpackage.gg.e(sb15, c06Var2.a, ": remainingSynchronizationSamples ", i15, ", remainingSamplesAtTimestampDelta ");
                                defpackage.gg.e(sb15, iN8, ", remainingSamplesInChunk ", i17, ", remainingTimestampDeltaChanges ");
                                sb15.append(i16);
                                sb15.append(", remainingSamplesAtTimestampOffset ");
                                sb15.append(i14);
                                if (z5) {
                                    str = ", ctts invalid";
                                } else {
                                    str = "";
                                }
                                sb15.append(str);
                                sv3.d("AtomParsers", sb15.toString());
                            }
                            iArr2 = iArrCopyOf2;
                            jArr7 = jArr6;
                            i18 = i11;
                            j7 = j111112;
                            jArr8 = jArr5;
                            iArr3 = iArr11118;
                        }
                        jA2 = u56.a(j7, 1000000L, c06Var2.c);
                        jArr9 = c06Var2.h;
                        if (jArr9 == null) {
                            u56.a(jArr7, c06Var2.c);
                            l06Var = new l06(c06Var2, jArr8, iArr3, i18, jArr7, iArr2, jA2);
                        } else {
                            jArr10 = jArr8;
                            jArr11 = jArr7;
                            if (jArr9.length == 1) {
                                long[] jArr21114 = c06Var2.i;
                                jArr21114.getClass();
                                j11 = jArr21114[0];
                                jA3 = u56.a(c06Var2.h[0], c06Var2.c, c06Var2.d) + j11;
                                int length8 = jArr11.length - 1;
                                int iMax16 = Math.max(0, Math.min(4, length8));
                                int iMax17 = Math.max(0, Math.min(jArr11.length - 4, length8));
                                j12 = jArr11[0];
                                if (j12 <= j11) {
                                    jA4 = u56.a(j11 - j12, c06Var2.f.A, c06Var2.c);
                                    jA5 = u56.a(j7 - jA3, c06Var2.f.A, c06Var2.c);
                                    if (jA4 == j2) {
                                        f23Var.a = (int) jA4;
                                        f23Var.b = (int) jA5;
                                        u56.a(jArr11, c06Var2.c);
                                        l06Var = new l06(c06Var2, jArr10, iArr3, i18, jArr11, iArr2, u56.a(c06Var2.h[0], 1000000L, c06Var2.d));
                                    } else {
                                        f23Var.a = (int) jA4;
                                        f23Var.b = (int) jA5;
                                        u56.a(jArr11, c06Var2.c);
                                        l06Var = new l06(c06Var2, jArr10, iArr3, i18, jArr11, iArr2, u56.a(c06Var2.h[0], 1000000L, c06Var2.d));
                                    }
                                }
                            }
                            jArr12 = c06Var2.h;
                            if (jArr12.length != 1) {
                                jArr13 = jArr11;
                                iArr4 = iArr2;
                                if (c06Var2.b == 1) {
                                    z6 = true;
                                } else {
                                    z6 = false;
                                }
                                iArr5 = new int[jArr12.length];
                                iArr6 = new int[jArr12.length];
                                jArr14 = c06Var2.i;
                                jArr14.getClass();
                                i21 = 0;
                                i22 = 0;
                                z7 = false;
                                i23 = 0;
                                while (true) {
                                    jArr15 = c06Var2.h;
                                    iArr7 = iArr6;
                                    if (i21 >= jArr15.length) {
                                        break;
                                        break;
                                    }
                                    j10 = jArr14[i21];
                                    if (j10 != -1) {
                                        long j111113 = jArr15[i21];
                                        iArr11 = iArr5;
                                        long jA19 = u56.a(j111113, c06Var2.c, c06Var2.d);
                                        iArr11[i21] = u56.b(jArr13, j10, true);
                                        iArr7[i21] = u56.a(jArr13, j10 + jA19, z6);
                                        while (true) {
                                            i28 = iArr11[i21];
                                            i29 = iArr7[i21];
                                            if (i28 < i29) {
                                                break;
                                                break;
                                            }
                                            break;
                                            break;
                                            iArr11[i21] = i28 + 1;
                                        }
                                        int i511111118 = (i29 - i28) + i22;
                                        if (i23 != i28) {
                                            z10 = true;
                                        } else {
                                            z10 = false;
                                        }
                                        z7 = z10 | z7;
                                        i23 = i29;
                                        i22 = i511111118;
                                    } else {
                                        iArr11 = iArr5;
                                    }
                                    i21++;
                                    iArr5 = iArr11;
                                    iArr6 = iArr7;
                                    jArr14 = jArr14;
                                }
                                iArr8 = iArr5;
                                z8 = z7 | (i22 != iB);
                                if (z8) {
                                    jArr16 = new long[i22];
                                } else {
                                    jArr16 = jArr10;
                                }
                                if (z8) {
                                    iArr9 = new int[i22];
                                } else {
                                    iArr9 = iArr3;
                                }
                                if (z8) {
                                    i18 = 0;
                                }
                                if (z8) {
                                    iArr10 = new int[i22];
                                } else {
                                    iArr10 = iArr4;
                                }
                                jArr17 = new long[i22];
                                i24 = 0;
                                i25 = 0;
                                j8 = j2;
                                while (i24 < c06Var2.h.length) {
                                    j9 = c06Var2.i[i24];
                                    i26 = iArr8[i24];
                                    z9 = z8;
                                    i27 = iArr7[i24];
                                    jArr18 = jArr13;
                                    if (z9) {
                                        int i61119 = i27 - i26;
                                        System.arraycopy(jArr10, i26, jArr16, i25, i61119);
                                        System.arraycopy(iArr3, i26, iArr9, i25, i61119);
                                        System.arraycopy(iArr4, i26, iArr10, i25, i61119);
                                    }
                                    int i611110 = i18;
                                    while (i26 < i27) {
                                        int i611111 = i27;
                                        long[] jArr21115 = jArr16;
                                        int[] iArr11119 = iArr9;
                                        int[] iArr111110 = iArr10;
                                        long j213 = j2;
                                        jArr17[i25] = u56.a(j8, 1000000L, c06Var2.d) + u56.a(Math.max(j213, jArr18[i26] - j9), 1000000L, c06Var2.c);
                                        if (!z9) {
                                        }
                                        i25++;
                                        i26++;
                                        j2 = j213;
                                        jArr16 = jArr21115;
                                        i27 = i611111;
                                        iArr9 = iArr11119;
                                        iArr10 = iArr111110;
                                    }
                                    j8 += c06Var2.h[i24];
                                    i24++;
                                    i18 = i611110;
                                    z8 = z9;
                                    jArr13 = jArr18;
                                    iArr9 = iArr9;
                                    iArr10 = iArr10;
                                }
                                l06Var = new l06(c06Var2, jArr16, iArr9, i18, jArr17, iArr10, u56.a(j8, 1000000L, c06Var2.d));
                            } else {
                                jArr13 = jArr11;
                                iArr4 = iArr2;
                                if (c06Var2.b == 1) {
                                    z6 = true;
                                } else {
                                    z6 = false;
                                }
                                iArr5 = new int[jArr12.length];
                                iArr6 = new int[jArr12.length];
                                jArr14 = c06Var2.i;
                                jArr14.getClass();
                                i21 = 0;
                                i22 = 0;
                                z7 = false;
                                i23 = 0;
                                while (true) {
                                    jArr15 = c06Var2.h;
                                    iArr7 = iArr6;
                                    if (i21 >= jArr15.length) {
                                        break;
                                        break;
                                    }
                                    j10 = jArr14[i21];
                                    if (j10 != -1) {
                                        long j111114 = jArr15[i21];
                                        iArr11 = iArr5;
                                        long jA110 = u56.a(j111114, c06Var2.c, c06Var2.d);
                                        iArr11[i21] = u56.b(jArr13, j10, true);
                                        iArr7[i21] = u56.a(jArr13, j10 + jA110, z6);
                                        while (true) {
                                            i28 = iArr11[i21];
                                            i29 = iArr7[i21];
                                            if (i28 < i29) {
                                                break;
                                                break;
                                            }
                                            break;
                                            break;
                                            iArr11[i21] = i28 + 1;
                                        }
                                        int i511111119 = (i29 - i28) + i22;
                                        if (i23 != i28) {
                                            z10 = true;
                                        } else {
                                            z10 = false;
                                        }
                                        z7 = z10 | z7;
                                        i23 = i29;
                                        i22 = i511111119;
                                    } else {
                                        iArr11 = iArr5;
                                    }
                                    i21++;
                                    iArr5 = iArr11;
                                    iArr6 = iArr7;
                                    jArr14 = jArr14;
                                }
                                iArr8 = iArr5;
                                z8 = z7 | (i22 != iB);
                                if (z8) {
                                    jArr16 = new long[i22];
                                } else {
                                    jArr16 = jArr10;
                                }
                                if (z8) {
                                    iArr9 = new int[i22];
                                } else {
                                    iArr9 = iArr3;
                                }
                                if (z8) {
                                    i18 = 0;
                                }
                                if (z8) {
                                    iArr10 = new int[i22];
                                } else {
                                    iArr10 = iArr4;
                                }
                                jArr17 = new long[i22];
                                i24 = 0;
                                i25 = 0;
                                j8 = j2;
                                while (i24 < c06Var2.h.length) {
                                    j9 = c06Var2.i[i24];
                                    i26 = iArr8[i24];
                                    z9 = z8;
                                    i27 = iArr7[i24];
                                    jArr18 = jArr13;
                                    if (z9) {
                                        int i611112 = i27 - i26;
                                        System.arraycopy(jArr10, i26, jArr16, i25, i611112);
                                        System.arraycopy(iArr3, i26, iArr9, i25, i611112);
                                        System.arraycopy(iArr4, i26, iArr10, i25, i611112);
                                    }
                                    int i611113 = i18;
                                    while (i26 < i27) {
                                        int i611114 = i27;
                                        long[] jArr21116 = jArr16;
                                        int[] iArr111111 = iArr9;
                                        int[] iArr111112 = iArr10;
                                        long j214 = j2;
                                        jArr17[i25] = u56.a(j8, 1000000L, c06Var2.d) + u56.a(Math.max(j214, jArr18[i26] - j9), 1000000L, c06Var2.c);
                                        if (!z9) {
                                        }
                                        i25++;
                                        i26++;
                                        j2 = j214;
                                        jArr16 = jArr21116;
                                        i27 = i611114;
                                        iArr9 = iArr111111;
                                        iArr10 = iArr111112;
                                    }
                                    j8 += c06Var2.h[i24];
                                    i24++;
                                    i18 = i611113;
                                    z8 = z9;
                                    jArr13 = jArr18;
                                    iArr9 = iArr9;
                                    iArr10 = iArr10;
                                }
                                l06Var = new l06(c06Var2, jArr16, iArr9, i18, jArr17, iArr10, u56.a(j8, 1000000L, c06Var2.d));
                            }
                            arrayList = arrayList;
                            arrayList.add(l06Var);
                        }
                    }
                    arrayList.add(l06Var);
                }
                i39 = i2 + 1;
                arrayList = arrayList;
            }
            i39 = i2 + 1;
            arrayList = arrayList;
        }
        return arrayList;
    }

    public static nl a(int i, os4 os4Var) {
        os4Var.e(i + 12);
        os4Var.e(os4Var.b + 1);
        a(os4Var);
        os4Var.e(os4Var.b + 2);
        int iK = os4Var.k();
        if ((iK & 128) != 0) {
            os4Var.e(os4Var.b + 2);
        }
        if ((iK & 64) != 0) {
            os4Var.e(os4Var.b + os4Var.k());
        }
        if ((iK & 32) != 0) {
            os4Var.e(os4Var.b + 2);
        }
        os4Var.e(os4Var.b + 1);
        a(os4Var);
        String strA = z84.a(os4Var.k());
        if (!MimeTypes.AUDIO_MPEG.equals(strA) && !MimeTypes.AUDIO_DTS.equals(strA) && !MimeTypes.AUDIO_DTS_HD.equals(strA)) {
            os4Var.e(os4Var.b + 4);
            long jL = os4Var.l();
            long jL2 = os4Var.l();
            os4Var.e(os4Var.b + 1);
            int iA = a(os4Var);
            byte[] bArr = new byte[iA];
            os4Var.a(bArr, 0, iA);
            return new nl(strA, bArr, jL2 > 0 ? jL2 : -1L, jL > 0 ? jL : -1L);
        }
        return new nl(strA, null, -1L, -1L);
    }

    public static int a(os4 os4Var) {
        int iK = os4Var.k();
        int i = iK & Trace.MAX_TRACE_LABEL_LENGTH;
        while ((iK & 128) == 128) {
            iK = os4Var.k();
            i = (i << 7) | (iK & Trace.MAX_TRACE_LABEL_LENGTH);
        }
        return i;
    }
}

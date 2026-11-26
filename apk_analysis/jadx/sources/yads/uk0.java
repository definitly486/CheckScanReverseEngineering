package yads;

import androidx.collection.SieveCacheKt;
import androidx.media3.common.C;
import androidx.media3.muxer.WebmConstants;
import defpackage.kv2;
import java.util.ArrayDeque;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class uk0 {
    public final byte[] a = new byte[8];
    public final ArrayDeque b = new ArrayDeque();
    public final o76 c = new o76();
    public kx3 d;
    public int e;
    public int f;
    public long g;

    /* JADX WARN: Code duplicated, block: B:219:0x049e  */
    /* JADX WARN: Code duplicated, block: B:313:0x0634  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v12, types: [int] */
    /* JADX WARN: Type inference failed for: r14v33 */
    /* JADX WARN: Type inference failed for: r14v7, types: [int[]] */
    /* JADX WARN: Type inference failed for: r2v58, types: [java.lang.Object, yads.mx3] */
    /* JADX WARN: Type inference failed for: r32v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r32v14 */
    /* JADX WARN: Type inference failed for: r32v15 */
    /* JADX WARN: Type inference failed for: r32v16 */
    /* JADX WARN: Type inference failed for: r32v9 */
    /* JADX WARN: Type inference failed for: r3v111 */
    /* JADX WARN: Type inference failed for: r3v112 */
    /* JADX WARN: Type inference failed for: r3v113 */
    /* JADX WARN: Type inference failed for: r3v114 */
    /* JADX WARN: Type inference failed for: r3v115 */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v34 */
    /* JADX WARN: Type inference failed for: r3v37, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v42 */
    /* JADX WARN: Type inference failed for: r3v43 */
    /* JADX WARN: Type inference failed for: r3v50 */
    /* JADX WARN: Type inference failed for: r3v70 */
    /* JADX WARN: Type inference failed for: r3v71, types: [int] */
    /* JADX WARN: Type inference failed for: r3v72 */
    /* JADX WARN: Type inference failed for: r3v74 */
    /* JADX WARN: Type inference failed for: r3v79, types: [int] */
    /* JADX WARN: Type inference failed for: r4v31, types: [int] */
    /* JADX WARN: Type inference failed for: r7v30 */
    /* JADX WARN: Type inference failed for: r7v31, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v32 */
    /* JADX WARN: Type inference failed for: r7v46, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v47 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final boolean a(wk0 wk0Var) {
        long j;
        int i;
        int i2;
        int i3;
        vv3 vv3Var;
        int i4;
        int i5;
        int i6;
        String str;
        int i7;
        int i8;
        int i9;
        ?? r3;
        ?? r7;
        ?? r4;
        ?? r32;
        int i10;
        int i11;
        char c;
        int i12;
        long j2;
        int i13;
        int i14;
        ?? r5;
        int i15;
        int iA;
        long j3;
        boolean z = false;
        if (this.d == null) {
            defpackage.ud.g();
            return false;
        }
        while (true) {
            tk0 tk0Var = (tk0) this.b.peek();
            int i16 = 1;
            if (tk0Var != null && wk0Var.d >= tk0Var.b) {
                this.d.a.b(((tk0) this.b.pop()).a);
                return true;
            }
            int i17 = this.e;
            char c2 = '\b';
            if (i17 == 0) {
                long jA = this.c.a(wk0Var, true, z, 4);
                if (jA == -2) {
                    wk0Var.f = z ? 1 : 0;
                    while (true) {
                        wk0Var.b(this.a, z ? 1 : 0, 4, z);
                        byte b = this.a[z ? 1 : 0];
                        i15 = z ? 1 : 0;
                        do {
                            long[] jArr = o76.d;
                            if (i15 < 8) {
                                j = -1;
                                j3 = jArr[i15] & ((long) b);
                                i15++;
                            } else {
                                j = -1;
                                i15 = -1;
                            }
                            if (i15 == -1 && i15 <= 4) {
                                iA = (int) o76.a(this.a, i15, z);
                                this.d.a.getClass();
                                if (iA == 357149030 || iA == 524531317 || iA == 475249515 || iA == 374648427) {
                                }
                            }
                            wk0Var.a(1);
                        } while (j3 == 0);
                        if (i15 == -1) {
                        }
                        wk0Var.a(1);
                    }
                    wk0Var.a(i15);
                    jA = iA;
                } else {
                    j = -1;
                }
                if (jA == j) {
                    return z;
                }
                this.f = (int) jA;
                this.e = 1;
                i17 = 1;
            } else {
                j = -1;
            }
            if (i17 == 1) {
                this.g = this.c.a(wk0Var, z, true, 8);
                this.e = 2;
            }
            kx3 kx3Var = this.d;
            int i18 = this.f;
            kx3Var.a.getClass();
            switch (i18) {
                case WebmConstants.MkvEbmlElement.TRACK_TYPE /* 131 */:
                case 136:
                case WebmConstants.MkvEbmlElement.BLOCK_DURATION /* 155 */:
                case WebmConstants.MkvEbmlElement.CHANNELS /* 159 */:
                case WebmConstants.MkvEbmlElement.PIXEL_WIDTH /* 176 */:
                case WebmConstants.MkvEbmlElement.CUE_TIME /* 179 */:
                case WebmConstants.MkvEbmlElement.PIXEL_HEIGHT /* 186 */:
                case WebmConstants.MkvEbmlElement.TRACK_NUMBER /* 215 */:
                case WebmConstants.MkvEbmlElement.TIMESTAMP /* 231 */:
                case WebmConstants.MkvEbmlElement.BLOCK_ADD_ID /* 238 */:
                case WebmConstants.MkvEbmlElement.CUE_CLUSTER_POSITION /* 241 */:
                case WebmConstants.MkvEbmlElement.REFERENCE_BLOCK /* 251 */:
                case 16871:
                case 16980:
                case WebmConstants.MkvEbmlElement.DOC_TYPE_READ_VERSION /* 17029 */:
                case WebmConstants.MkvEbmlElement.EBML_READ_VERSION /* 17143 */:
                case 18401:
                case 18408:
                case 20529:
                case 20530:
                case WebmConstants.MkvEbmlElement.SEEK_POSITION /* 21420 */:
                case WebmConstants.MkvEbmlElement.STEREO_MODE /* 21432 */:
                case WebmConstants.MkvEbmlElement.DISPLAY_WIDTH /* 21680 */:
                case WebmConstants.MkvEbmlElement.DISPLAY_UNIT /* 21682 */:
                case WebmConstants.MkvEbmlElement.DISPLAY_HEIGHT /* 21690 */:
                case WebmConstants.MkvEbmlElement.FLAG_FORCED /* 21930 */:
                case WebmConstants.MkvEbmlElement.RANGE /* 21945 */:
                case WebmConstants.MkvEbmlElement.TRANSFER_CHARACTERISTICS /* 21946 */:
                case WebmConstants.MkvEbmlElement.PRIMARIES /* 21947 */:
                case WebmConstants.MkvEbmlElement.MAX_CLL /* 21948 */:
                case WebmConstants.MkvEbmlElement.MAX_FALL /* 21949 */:
                case WebmConstants.MkvEbmlElement.MAX_BLOCK_ADDITION_ID /* 21998 */:
                case 22186:
                case 22203:
                case WebmConstants.MkvEbmlElement.BIT_DEPTH /* 25188 */:
                case 30114:
                case 30321:
                case WebmConstants.MkvEbmlElement.DEFAULT_DURATION /* 2352003 */:
                case WebmConstants.MkvEbmlElement.TIMESTAMP_SCALE /* 2807729 */:
                    i = 2;
                    break;
                case 134:
                case 17026:
                case WebmConstants.MkvEbmlElement.NAME /* 21358 */:
                case WebmConstants.MkvEbmlElement.LANGUAGE /* 2274716 */:
                    i = 3;
                    break;
                case WebmConstants.MkvEbmlElement.BLOCK_GROUP /* 160 */:
                case WebmConstants.MkvEbmlElement.BLOCK_MORE /* 166 */:
                case WebmConstants.MkvEbmlElement.TRACK_ENTRY /* 174 */:
                case WebmConstants.MkvEbmlElement.CUE_TRACK_POSITIONS /* 183 */:
                case WebmConstants.MkvEbmlElement.CUE_POINT /* 187 */:
                case 224:
                case WebmConstants.MkvEbmlElement.AUDIO /* 225 */:
                case 16868:
                case 18407:
                case WebmConstants.MkvEbmlElement.SEEK /* 19899 */:
                case 20532:
                case 20533:
                case WebmConstants.MkvEbmlElement.COLOUR /* 21936 */:
                case WebmConstants.MkvEbmlElement.MASTERING_METADATA /* 21968 */:
                case 25152:
                case 28032:
                case WebmConstants.MkvEbmlElement.BLOCK_ADDITIONS /* 30113 */:
                case 30320:
                case WebmConstants.MkvEbmlElement.SEEK_HEAD /* 290298740 */:
                case WebmConstants.MkvEbmlElement.INFO /* 357149030 */:
                case WebmConstants.MkvEbmlElement.TRACKS /* 374648427 */:
                case WebmConstants.MkvEbmlElement.SEGMENT /* 408125543 */:
                case WebmConstants.MkvEbmlElement.EBML /* 440786851 */:
                case WebmConstants.MkvEbmlElement.CUES /* 475249515 */:
                case WebmConstants.MkvEbmlElement.CLUSTER /* 524531317 */:
                    i = 1;
                    break;
                case WebmConstants.MkvEbmlElement.BLOCK /* 161 */:
                case WebmConstants.MkvEbmlElement.SIMPLE_BLOCK /* 163 */:
                case WebmConstants.MkvEbmlElement.BLOCK_ADDITIONAL /* 165 */:
                case 16877:
                case 16981:
                case 18402:
                case WebmConstants.MkvEbmlElement.SEEK_ID /* 21419 */:
                case WebmConstants.MkvEbmlElement.CODEC_PRIVATE /* 25506 */:
                case 30322:
                    i = 4;
                    break;
                case WebmConstants.MkvEbmlElement.SAMPLING_FREQUENCY /* 181 */:
                case WebmConstants.MkvEbmlElement.SEGMENT_DURATION /* 17545 */:
                case WebmConstants.MkvEbmlElement.PRIMARY_R_CHROMATICITY_X /* 21969 */:
                case WebmConstants.MkvEbmlElement.PRIMARY_R_CHROMATICITY_Y /* 21970 */:
                case WebmConstants.MkvEbmlElement.PRIMARY_G_CHROMATICITY_X /* 21971 */:
                case WebmConstants.MkvEbmlElement.PRIMARY_G_CHROMATICITY_Y /* 21972 */:
                case WebmConstants.MkvEbmlElement.PRIMARY_B_CHROMATICITY_X /* 21973 */:
                case WebmConstants.MkvEbmlElement.PRIMARY_B_CHROMATICITY_Y /* 21974 */:
                case WebmConstants.MkvEbmlElement.WHITE_POINT_CHROMATICITY_X /* 21975 */:
                case WebmConstants.MkvEbmlElement.WHITE_POINT_CHROMATICITY_Y /* 21976 */:
                case WebmConstants.MkvEbmlElement.LUMINANCE_MAX /* 21977 */:
                case WebmConstants.MkvEbmlElement.LUMINANCE_MIN /* 21978 */:
                case 30323:
                case 30324:
                case 30325:
                    i = 5;
                    break;
                default:
                    i = z ? 1 : 0;
                    break;
            }
            if (i != 0) {
                if (i == 1) {
                    long j4 = wk0Var.d;
                    this.b.push(new tk0(this.f, this.g + j4));
                    kx3 kx3Var2 = this.d;
                    int i19 = this.f;
                    long j5 = this.g;
                    mx3 mx3Var = kx3Var2.a;
                    zs2 zs2Var = mx3Var.b0;
                    if (zs2Var == null) {
                        defpackage.ud.g();
                        return false;
                    }
                    if (i19 == 160) {
                        i2 = 0;
                        mx3Var.Q = false;
                        mx3Var.R = 0L;
                    } else if (i19 == 174) {
                        i2 = 0;
                        mx3Var.u = new lx3();
                    } else if (i19 != 187) {
                        if (i19 == 19899) {
                            mx3Var.w = -1;
                            mx3Var.x = j;
                        } else if (i19 == 20533) {
                            mx3Var.a(i19);
                            mx3Var.u.h = true;
                        } else if (i19 == 21968) {
                            mx3Var.a(i19);
                            mx3Var.u.x = true;
                        } else if (i19 == 408125543) {
                            long j6 = mx3Var.q;
                            if (j6 != j && j6 != j4) {
                                defpackage.e2.h("Multiple Segment elements not supported", null);
                                return false;
                            }
                            mx3Var.q = j4;
                            mx3Var.p = j5;
                        } else if (i19 == 475249515) {
                            mx3Var.C = new vv3();
                            mx3Var.D = new vv3();
                        } else if (i19 == 524531317 && !mx3Var.v) {
                            if (!mx3Var.d || mx3Var.z == j) {
                                zs2Var.a(new rh5(mx3Var.t, 0L));
                                mx3Var.v = true;
                            } else {
                                mx3Var.y = true;
                            }
                        }
                        i2 = 0;
                    } else {
                        i2 = 0;
                        mx3Var.E = false;
                    }
                    this.e = i2;
                    return true;
                }
                byte b2 = 255;
                if (i == 2) {
                    long j7 = this.g;
                    if (j7 > 8) {
                        throw new xs4("Invalid integer size: " + this.g, null, true, 1);
                    }
                    kx3 kx3Var3 = this.d;
                    int i20 = this.f;
                    int i21 = (int) j7;
                    wk0Var.a(this.a, 0, i21, false);
                    long j8 = 0;
                    for (int i22 = 0; i22 < i21; i22++) {
                        j8 = (j8 << 8) | ((long) (this.a[i22] & 255));
                    }
                    mx3 mx3Var2 = kx3Var3.a;
                    mx3Var2.getClass();
                    if (i20 != 20529) {
                        if (i20 != 20530) {
                            switch (i20) {
                                case WebmConstants.MkvEbmlElement.TRACK_TYPE /* 131 */:
                                    mx3Var2.a(i20);
                                    mx3Var2.u.d = (int) j8;
                                    break;
                                case 136:
                                    mx3Var2.a(i20);
                                    mx3Var2.u.V = j8 == 1;
                                    break;
                                case WebmConstants.MkvEbmlElement.BLOCK_DURATION /* 155 */:
                                    mx3Var2.I = mx3Var2.a(j8);
                                    break;
                                case WebmConstants.MkvEbmlElement.CHANNELS /* 159 */:
                                    mx3Var2.a(i20);
                                    mx3Var2.u.O = (int) j8;
                                    break;
                                case WebmConstants.MkvEbmlElement.PIXEL_WIDTH /* 176 */:
                                    mx3Var2.a(i20);
                                    mx3Var2.u.m = (int) j8;
                                    break;
                                case WebmConstants.MkvEbmlElement.CUE_TIME /* 179 */:
                                    vv3 vv3Var2 = mx3Var2.C;
                                    if (vv3Var2 == null || mx3Var2.D == null) {
                                        defpackage.e2.h(kv2.b(i20, "Element ", " must be in a Cues"), null);
                                        return false;
                                    }
                                    vv3Var2.a(mx3Var2.a(j8));
                                    break;
                                case WebmConstants.MkvEbmlElement.PIXEL_HEIGHT /* 186 */:
                                    mx3Var2.a(i20);
                                    mx3Var2.u.n = (int) j8;
                                    break;
                                case WebmConstants.MkvEbmlElement.TRACK_NUMBER /* 215 */:
                                    mx3Var2.a(i20);
                                    mx3Var2.u.c = (int) j8;
                                    break;
                                case WebmConstants.MkvEbmlElement.TIMESTAMP /* 231 */:
                                    mx3Var2.B = mx3Var2.a(j8);
                                    break;
                                case WebmConstants.MkvEbmlElement.BLOCK_ADD_ID /* 238 */:
                                    mx3Var2.P = (int) j8;
                                    break;
                                case WebmConstants.MkvEbmlElement.CUE_CLUSTER_POSITION /* 241 */:
                                    if (!mx3Var2.E) {
                                        if (mx3Var2.C == null || (vv3Var = mx3Var2.D) == null) {
                                            defpackage.e2.h(kv2.b(i20, "Element ", " must be in a Cues"), null);
                                            return false;
                                        }
                                        vv3Var.a(j8);
                                        mx3Var2.E = true;
                                    }
                                    break;
                                case WebmConstants.MkvEbmlElement.REFERENCE_BLOCK /* 251 */:
                                    mx3Var2.Q = true;
                                    break;
                                case 16871:
                                    mx3Var2.a(i20);
                                    mx3Var2.u.g = (int) j8;
                                    break;
                                case 16980:
                                    i4 = 0;
                                    if (j8 != 3) {
                                        defpackage.e2.h(defpackage.bg.d(j8, "ContentCompAlgo ", " not supported"), null);
                                        return false;
                                    }
                                    i3 = i4;
                                    break;
                                case WebmConstants.MkvEbmlElement.DOC_TYPE_READ_VERSION /* 17029 */:
                                    if (j8 < 1 || j8 > 2) {
                                        defpackage.e2.h(defpackage.bg.d(j8, "DocTypeReadVersion ", " not supported"), null);
                                        return false;
                                    }
                                    break;
                                case WebmConstants.MkvEbmlElement.EBML_READ_VERSION /* 17143 */:
                                    i4 = 0;
                                    if (j8 != 1) {
                                        defpackage.e2.h(defpackage.bg.d(j8, "EBMLReadVersion ", " not supported"), null);
                                        return false;
                                    }
                                    i3 = i4;
                                    break;
                                case 18401:
                                    i4 = 0;
                                    if (j8 != 5) {
                                        defpackage.e2.h(defpackage.bg.d(j8, "ContentEncAlgo ", " not supported"), null);
                                        return false;
                                    }
                                    i3 = i4;
                                    break;
                                case 18408:
                                    if (j8 != 1) {
                                        defpackage.e2.h(defpackage.bg.d(j8, "AESSettingsCipherMode ", " not supported"), null);
                                        return false;
                                    }
                                    break;
                                case WebmConstants.MkvEbmlElement.SEEK_POSITION /* 21420 */:
                                    mx3Var2.x = j8 + mx3Var2.q;
                                    break;
                                case WebmConstants.MkvEbmlElement.STEREO_MODE /* 21432 */:
                                    int i23 = (int) j8;
                                    mx3Var2.a(i20);
                                    if (i23 == 0) {
                                        i3 = 0;
                                        mx3Var2.u.w = 0;
                                    } else if (i23 == 1) {
                                        mx3Var2.u.w = 2;
                                    } else if (i23 == 3) {
                                        mx3Var2.u.w = 1;
                                    } else if (i23 == 15) {
                                        mx3Var2.u.w = 3;
                                    }
                                    break;
                                case WebmConstants.MkvEbmlElement.DISPLAY_WIDTH /* 21680 */:
                                    mx3Var2.a(i20);
                                    mx3Var2.u.o = (int) j8;
                                    break;
                                case WebmConstants.MkvEbmlElement.DISPLAY_UNIT /* 21682 */:
                                    mx3Var2.a(i20);
                                    mx3Var2.u.q = (int) j8;
                                    break;
                                case WebmConstants.MkvEbmlElement.DISPLAY_HEIGHT /* 21690 */:
                                    mx3Var2.a(i20);
                                    mx3Var2.u.p = (int) j8;
                                    break;
                                case WebmConstants.MkvEbmlElement.FLAG_FORCED /* 21930 */:
                                    mx3Var2.a(i20);
                                    mx3Var2.u.U = j8 == 1;
                                    break;
                                case WebmConstants.MkvEbmlElement.MAX_BLOCK_ADDITION_ID /* 21998 */:
                                    mx3Var2.a(i20);
                                    mx3Var2.u.f = (int) j8;
                                    break;
                                case 22186:
                                    mx3Var2.a(i20);
                                    mx3Var2.u.R = j8;
                                    break;
                                case 22203:
                                    mx3Var2.a(i20);
                                    mx3Var2.u.S = j8;
                                    break;
                                case WebmConstants.MkvEbmlElement.BIT_DEPTH /* 25188 */:
                                    mx3Var2.a(i20);
                                    mx3Var2.u.P = (int) j8;
                                    break;
                                case 30114:
                                    mx3Var2.R = j8;
                                    break;
                                case 30321:
                                    mx3Var2.a(i20);
                                    int i24 = (int) j8;
                                    if (i24 == 0) {
                                        i3 = 0;
                                        mx3Var2.u.r = 0;
                                    } else if (i24 == 1) {
                                        mx3Var2.u.r = 1;
                                    } else if (i24 == 2) {
                                        mx3Var2.u.r = 2;
                                    } else if (i24 == 3) {
                                        mx3Var2.u.r = 3;
                                    }
                                    break;
                                case WebmConstants.MkvEbmlElement.DEFAULT_DURATION /* 2352003 */:
                                    mx3Var2.a(i20);
                                    mx3Var2.u.e = (int) j8;
                                    break;
                                case WebmConstants.MkvEbmlElement.TIMESTAMP_SCALE /* 2807729 */:
                                    mx3Var2.r = j8;
                                    break;
                                default:
                                    switch (i20) {
                                        case WebmConstants.MkvEbmlElement.RANGE /* 21945 */:
                                            mx3Var2.a(i20);
                                            int i25 = (int) j8;
                                            if (i25 == 1) {
                                                mx3Var2.u.A = 2;
                                            } else if (i25 == 2) {
                                                mx3Var2.u.A = 1;
                                            }
                                            break;
                                        case WebmConstants.MkvEbmlElement.TRANSFER_CHARACTERISTICS /* 21946 */:
                                            mx3Var2.a(i20);
                                            int i26 = (int) j8;
                                            if (i26 == 1) {
                                                i5 = 3;
                                            } else if (i26 == 16) {
                                                i5 = 6;
                                            } else if (i26 == 18) {
                                                i5 = 7;
                                            } else if (i26 == 6 || i26 == 7) {
                                                i5 = 3;
                                            } else {
                                                i5 = -1;
                                            }
                                            if (i5 != -1) {
                                                mx3Var2.u.z = i5;
                                            }
                                            break;
                                        case WebmConstants.MkvEbmlElement.PRIMARIES /* 21947 */:
                                            mx3Var2.a(i20);
                                            lx3 lx3Var = mx3Var2.u;
                                            lx3Var.x = true;
                                            int i27 = (int) j8;
                                            if (i27 == 1) {
                                                i6 = 1;
                                            } else if (i27 != 9) {
                                                i6 = (i27 == 4 || i27 == 5 || i27 == 6 || i27 == 7) ? 2 : -1;
                                            } else {
                                                i6 = 6;
                                            }
                                            if (i6 != -1) {
                                                lx3Var.y = i6;
                                            }
                                            break;
                                        case WebmConstants.MkvEbmlElement.MAX_CLL /* 21948 */:
                                            mx3Var2.a(i20);
                                            mx3Var2.u.B = (int) j8;
                                            break;
                                        case WebmConstants.MkvEbmlElement.MAX_FALL /* 21949 */:
                                            mx3Var2.a(i20);
                                            mx3Var2.u.C = (int) j8;
                                            break;
                                    }
                                    break;
                            }
                        } else if (j8 != 1) {
                            defpackage.e2.h(defpackage.bg.d(j8, "ContentEncodingScope ", " not supported"), null);
                            return false;
                        }
                        i3 = 0;
                    } else {
                        i3 = 0;
                        if (j8 != 0) {
                            defpackage.e2.h(defpackage.bg.d(j8, "ContentEncodingOrder ", " not supported"), null);
                            return false;
                        }
                    }
                    this.e = i3;
                    return true;
                }
                if (i == 3) {
                    long j9 = this.g;
                    if (j9 > SieveCacheKt.NodeLinkMask) {
                        throw new xs4("String element size: " + this.g, null, true, 1);
                    }
                    kx3 kx3Var4 = this.d;
                    int i28 = this.f;
                    int i29 = (int) j9;
                    if (i29 == 0) {
                        str = "";
                    } else {
                        byte[] bArr = new byte[i29];
                        wk0Var.a(bArr, 0, i29, false);
                        while (i29 > 0 && bArr[i29 - 1] == 0) {
                            i29--;
                        }
                        str = new String(bArr, 0, i29);
                    }
                    mx3 mx3Var3 = kx3Var4.a;
                    mx3Var3.getClass();
                    if (i28 != 134) {
                        if (i28 != 17026) {
                            if (i28 == 21358) {
                                mx3Var3.a(i28);
                                mx3Var3.u.a = str;
                            } else if (i28 == 2274716) {
                                mx3Var3.a(i28);
                                mx3Var3.u.W = str;
                            }
                        } else if (!"webm".equals(str) && !"matroska".equals(str)) {
                            defpackage.e2.h(defpackage.me0.c("DocType ", str, " not supported"), null);
                            return false;
                        }
                        i7 = 0;
                    } else {
                        i7 = 0;
                        mx3Var3.a(i28);
                        mx3Var3.u.b = str;
                    }
                    this.e = i7;
                    return true;
                }
                if (i != 4) {
                    if (i != 5) {
                        defpackage.e2.h(vx4.a(i, "Invalid element type "), null);
                        return z;
                    }
                    long j10 = this.g;
                    if (j10 != 4 && j10 != 8) {
                        throw new xs4("Invalid float size: " + this.g, null, true, 1);
                    }
                    kx3 kx3Var5 = this.d;
                    int i30 = this.f;
                    int i31 = (int) j10;
                    wk0Var.a(this.a, z ? 1 : 0, i31, z);
                    int i32 = z ? 1 : 0;
                    long j11 = 0;
                    while (i32 < i31) {
                        j11 = (j11 << 8) | ((long) (this.a[i32] & b2));
                        i32++;
                        b2 = 255;
                    }
                    double dIntBitsToFloat = i31 == 4 ? Float.intBitsToFloat((int) j11) : Double.longBitsToDouble(j11);
                    mx3 mx3Var4 = kx3Var5.a;
                    if (i30 == 181) {
                        mx3Var4.a(i30);
                        mx3Var4.u.Q = (int) dIntBitsToFloat;
                    } else if (i30 != 17545) {
                        switch (i30) {
                            case WebmConstants.MkvEbmlElement.PRIMARY_R_CHROMATICITY_X /* 21969 */:
                                mx3Var4.a(i30);
                                mx3Var4.u.D = (float) dIntBitsToFloat;
                                break;
                            case WebmConstants.MkvEbmlElement.PRIMARY_R_CHROMATICITY_Y /* 21970 */:
                                mx3Var4.a(i30);
                                mx3Var4.u.E = (float) dIntBitsToFloat;
                                break;
                            case WebmConstants.MkvEbmlElement.PRIMARY_G_CHROMATICITY_X /* 21971 */:
                                mx3Var4.a(i30);
                                mx3Var4.u.F = (float) dIntBitsToFloat;
                                break;
                            case WebmConstants.MkvEbmlElement.PRIMARY_G_CHROMATICITY_Y /* 21972 */:
                                mx3Var4.a(i30);
                                mx3Var4.u.G = (float) dIntBitsToFloat;
                                break;
                            case WebmConstants.MkvEbmlElement.PRIMARY_B_CHROMATICITY_X /* 21973 */:
                                mx3Var4.a(i30);
                                mx3Var4.u.H = (float) dIntBitsToFloat;
                                break;
                            case WebmConstants.MkvEbmlElement.PRIMARY_B_CHROMATICITY_Y /* 21974 */:
                                mx3Var4.a(i30);
                                mx3Var4.u.I = (float) dIntBitsToFloat;
                                break;
                            case WebmConstants.MkvEbmlElement.WHITE_POINT_CHROMATICITY_X /* 21975 */:
                                mx3Var4.a(i30);
                                mx3Var4.u.J = (float) dIntBitsToFloat;
                                break;
                            case WebmConstants.MkvEbmlElement.WHITE_POINT_CHROMATICITY_Y /* 21976 */:
                                mx3Var4.a(i30);
                                mx3Var4.u.K = (float) dIntBitsToFloat;
                                break;
                            case WebmConstants.MkvEbmlElement.LUMINANCE_MAX /* 21977 */:
                                mx3Var4.a(i30);
                                mx3Var4.u.L = (float) dIntBitsToFloat;
                                break;
                            case WebmConstants.MkvEbmlElement.LUMINANCE_MIN /* 21978 */:
                                mx3Var4.a(i30);
                                mx3Var4.u.M = (float) dIntBitsToFloat;
                                break;
                            default:
                                switch (i30) {
                                    case 30323:
                                        mx3Var4.a(i30);
                                        mx3Var4.u.s = (float) dIntBitsToFloat;
                                        break;
                                    case 30324:
                                        mx3Var4.a(i30);
                                        mx3Var4.u.t = (float) dIntBitsToFloat;
                                        break;
                                    case 30325:
                                        mx3Var4.a(i30);
                                        mx3Var4.u.u = (float) dIntBitsToFloat;
                                        break;
                                    default:
                                        mx3Var4.getClass();
                                        break;
                                }
                                break;
                        }
                    } else {
                        mx3Var4.s = (long) dIntBitsToFloat;
                    }
                    this.e = z ? 1 : 0;
                    return true;
                }
                kx3 kx3Var6 = this.d;
                int i33 = this.f;
                int i34 = (int) this.g;
                ?? r2 = kx3Var6.a;
                r2.getClass();
                if (i33 == 161 || i33 == 163) {
                    if (r2.G == 0) {
                        r2.M = (int) r2.b.a(wk0Var, z, true, 8);
                        r2.N = r2.b.c;
                        r2.I = C.TIME_UNSET;
                        r2.G = 1;
                        r2.g.c(z ? 1 : 0);
                    }
                    lx3 lx3Var2 = (lx3) r2.c.get(r2.M);
                    if (lx3Var2 == null) {
                        wk0Var.a(i34 - r2.N);
                        r2.G = z ? 1 : 0;
                    } else {
                        lx3Var2.X.getClass();
                        if (r2.G == 1) {
                            r2.a(wk0Var, 3);
                            int i35 = (r2.g.a[2] & 6) >> 1;
                            if (i35 == 0) {
                                r2.K = 1;
                                int[] iArr = r2.L;
                                if (iArr == null) {
                                    iArr = new int[1];
                                } else if (iArr.length < 1) {
                                    iArr = new int[Math.max(iArr.length * 2, 1)];
                                }
                                r2.L = iArr;
                                iArr[z ? 1 : 0] = (i34 - r2.N) - 3;
                            } else {
                                r2.a(wk0Var, 4);
                                int i36 = (r2.g.a[3] & 255) + 1;
                                r2.K = i36;
                                int[] iArr2 = r2.L;
                                if (iArr2 == null) {
                                    iArr2 = new int[i36];
                                } else if (iArr2.length < i36) {
                                    iArr2 = new int[Math.max(iArr2.length * 2, i36)];
                                }
                                r2.L = iArr2;
                                if (i35 == 2) {
                                    int i37 = (i34 - r2.N) - 4;
                                    int i38 = r2.K;
                                    Arrays.fill(iArr2, z ? 1 : 0, i38, i37 / i38);
                                } else {
                                    if (i35 == 1) {
                                        int i39 = z ? 1 : 0;
                                        int i40 = i39;
                                        int i41 = 4;
                                        while (true) {
                                            int i42 = r2.K - 1;
                                            int[] iArr3 = r2.L;
                                            if (i39 < i42) {
                                                iArr3[i39] = z ? 1 : 0;
                                                while (true) {
                                                    i13 = i41 + 1;
                                                    r2.a(wk0Var, i13);
                                                    int i43 = r2.g.a[i41] & 255;
                                                    int[] iArr4 = r2.L;
                                                    i14 = iArr4[i39] + i43;
                                                    iArr4[i39] = i14;
                                                    if (i43 != 255) {
                                                        break;
                                                    }
                                                    i41 = i13;
                                                }
                                                i40 += i14;
                                                i39++;
                                                i41 = i13;
                                            } else {
                                                iArr3[i42] = ((i34 - r2.N) - i41) - i40;
                                            }
                                        }
                                    } else {
                                        if (i35 != 3) {
                                            defpackage.e2.h(vx4.a(i35, "Unexpected lacing value: "), null);
                                            return z;
                                        }
                                        int i44 = z ? 1 : 0;
                                        int i45 = i44;
                                        int i46 = 4;
                                        ?? r6 = z;
                                        while (true) {
                                            int i47 = r2.K - i16;
                                            ?? r14 = r2.L;
                                            if (i44 < i47) {
                                                r14[i44] = r6;
                                                int i48 = i46 + 1;
                                                r2.a(wk0Var, i48);
                                                if (r2.g.a[i46] == 0) {
                                                    ?? r33 = r6;
                                                    defpackage.e2.h("No valid varint length mask found", null);
                                                    return r33;
                                                }
                                                ?? r15 = r6;
                                                while (true) {
                                                    if (r15 < c2) {
                                                        c = c2;
                                                        int i49 = i16 << (7 - r15);
                                                        i11 = i16;
                                                        if ((r2.g.a[i46] & i49) != 0) {
                                                            ?? r8 = i48 + r15;
                                                            r2.a(wk0Var, r8);
                                                            j2 = r2.g.a[i46] & 255 & (~i49);
                                                            while (i48 < r8) {
                                                                j2 = (j2 << c) | ((long) (r2.g.a[i48] & 255));
                                                                i48++;
                                                                i33 = i33;
                                                            }
                                                            i12 = i33;
                                                            if (i44 > 0) {
                                                                j2 -= (1 << ((r15 * 7) + 6)) - 1;
                                                            }
                                                            i46 = r8;
                                                        } else {
                                                            c2 = c;
                                                            i16 = i11;
                                                            r15++;
                                                        }
                                                    } else {
                                                        i11 = i16;
                                                        c = c2;
                                                        i12 = i33;
                                                        i46 = i48;
                                                        j2 = 0;
                                                    }
                                                }
                                                if (j2 < SieveCacheKt.NodeMetaAndPreviousMask || j2 > SieveCacheKt.NodeLinkMask) {
                                                    defpackage.e2.h("EBML lacing sample size out of range.", null);
                                                    return r6;
                                                }
                                                int i50 = (int) j2;
                                                int[] iArr5 = r2.L;
                                                if (i44 != 0) {
                                                    i50 += iArr5[i44 - 1];
                                                }
                                                iArr5[i44] = i50;
                                                i45 += i50;
                                                i44++;
                                                i34 = i34;
                                                c2 = c;
                                                i33 = i12;
                                                i16 = i11;
                                                r6 = r6;
                                            } else {
                                                r32 = r6;
                                                i8 = i16;
                                                i10 = i33;
                                                r14[i47] = ((i34 - r2.N) - i46) - i45;
                                            }
                                        }
                                    }
                                    byte[] bArr2 = r2.g.a;
                                    r2.H = r2.a((bArr2[i8] & 255) | (bArr2[r32] << 8)) + r2.B;
                                    i33 = i10;
                                    if (lx3Var2.d != 2 || (i33 == 163 && (r2.g.a[2] & 128) == 128)) {
                                        r5 = i8;
                                    } else {
                                        r5 = r32;
                                    }
                                    r2.O = r5;
                                    r2.G = 2;
                                    ?? r9 = r32;
                                    r2.J = r9 == true ? 1 : 0;
                                    i9 = WebmConstants.MkvEbmlElement.SIMPLE_BLOCK;
                                    r3 = r9;
                                }
                            }
                            r32 = z ? 1 : 0;
                            i8 = 1;
                            i10 = i33;
                            byte[] bArr3 = r2.g.a;
                            r2.H = r2.a((bArr3[i8] & 255) | (bArr3[r32] << 8)) + r2.B;
                            i33 = i10;
                            if (lx3Var2.d != 2) {
                                r5 = i8;
                            } else {
                                r5 = i8;
                            }
                            r2.O = r5;
                            r2.G = 2;
                            ?? r10 = r32;
                            r2.J = r10 == true ? 1 : 0;
                            i9 = WebmConstants.MkvEbmlElement.SIMPLE_BLOCK;
                            r3 = r10;
                        } else {
                            i8 = 1;
                            i9 = 163;
                        }
                        if (i33 == i9) {
                            while (true) {
                                r3 = z;
                                int i51 = r2.J;
                                if (i51 < r2.K) {
                                    r2.a(lx3Var2, r2.H + ((long) ((r2.J * lx3Var2.e) / 1000)), r2.O, r2.a(wk0Var, lx3Var2, r2.L[i51], r3), 0);
                                    r2.J++;
                                    r3 = 0;
                                } else {
                                    r2.G = r3 == true ? 1 : 0;
                                    r7 = i8;
                                    r4 = r3;
                                }
                            }
                        } else {
                            while (true) {
                                r3 = z;
                                int i52 = r2.J;
                                if (i52 < r2.K) {
                                    int[] iArr6 = r2.L;
                                    ?? r11 = i8;
                                    iArr6[i52] = r2.a(wk0Var, lx3Var2, iArr6[i52], r11);
                                    r2.J += r11 == true ? 1 : 0;
                                } else {
                                    r7 = i8;
                                    r4 = 0;
                                }
                            }
                        }
                    }
                    this.e = r4;
                    return r7;
                }
                if (i33 != 165) {
                    if (i33 == 16877) {
                        r2.a(i33);
                        lx3 lx3Var3 = r2.u;
                        int i53 = lx3Var3.g;
                        if (i53 == 1685485123 || i53 == 1685480259) {
                            byte[] bArr4 = new byte[i34];
                            lx3Var3.N = bArr4;
                            wk0Var.a(bArr4, z ? 1 : 0, i34, z);
                        } else {
                            wk0Var.a(i34);
                        }
                    } else if (i33 == 16981) {
                        r2.a(i33);
                        byte[] bArr5 = new byte[i34];
                        r2.u.i = bArr5;
                        wk0Var.a(bArr5, z ? 1 : 0, i34, z);
                    } else if (i33 == 18402) {
                        byte[] bArr6 = new byte[i34];
                        wk0Var.a(bArr6, z ? 1 : 0, i34, z);
                        r2.a(i33);
                        r2.u.j = new j06(1, z ? 1 : 0, z ? 1 : 0, bArr6);
                    } else if (i33 == 21419) {
                        Arrays.fill(r2.i.a, z ? (byte) 1 : (byte) 0);
                        wk0Var.a(r2.i.a, 4 - i34, i34, z);
                        r2.i.e(z ? 1 : 0);
                        r2.w = (int) r2.i.l();
                    } else if (i33 == 25506) {
                        r2.a(i33);
                        byte[] bArr7 = new byte[i34];
                        r2.u.k = bArr7;
                        wk0Var.a(bArr7, z ? 1 : 0, i34, z);
                    } else {
                        if (i33 != 30322) {
                            defpackage.e2.h(vx4.a(i33, "Unexpected id: "), null);
                            return z;
                        }
                        r2.a(i33);
                        byte[] bArr8 = new byte[i34];
                        r2.u.v = bArr8;
                        wk0Var.a(bArr8, z ? 1 : 0, i34, z);
                    }
                } else if (r2.G == 2) {
                    lx3 lx3Var4 = (lx3) r2.c.get(r2.M);
                    if (r2.P == 4 && "V_VP9".equals(lx3Var4.b)) {
                        r2.n.c(i34);
                        wk0Var.a(r2.n.a, z ? 1 : 0, i34, z);
                    } else {
                        wk0Var.a(i34);
                    }
                }
                r7 = 1;
                r4 = z;
                this.e = r4;
                return r7;
            }
            boolean z2 = z ? 1 : 0;
            wk0Var.a((int) this.g);
            this.e = z2 ? 1 : 0;
            z = z2 ? 1 : 0;
        }
    }

    public final void a() {
        this.e = 0;
        this.b.clear();
        o76 o76Var = this.c;
        o76Var.b = 0;
        o76Var.c = 0;
    }
}

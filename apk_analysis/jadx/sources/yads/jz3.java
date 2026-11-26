package yads;

import android.media.MediaCodecInfo;
import android.util.Base64;
import android.util.Pair;
import androidx.media3.common.MimeTypes;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;
import yads.jz3;

/* JADX INFO: loaded from: classes6.dex */
public abstract class jz3 {
    public static final Pattern a;
    public static final HashMap b;
    public static final String c;
    public static final String d;
    public static final String e;
    public static final String f;
    public static final String g;
    public static final String h;
    public static final String i;
    public static int j;

    static {
        kz3 kz3Var = m25.e;
        a = Pattern.compile("^\\D?(\\d+)$");
        b = new HashMap();
        c = kz3Var.b();
        d = kz3Var.c();
        e = kz3Var.O();
        f = kz3Var.q();
        g = kz3Var.r();
        h = kz3Var.a();
        i = kz3Var.F();
        j = -1;
    }

    public static boolean a(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z && str.endsWith(".secure"))) {
            return false;
        }
        int i2 = u56.a;
        if (i2 < 21) {
            byte[] bArrDecode = Base64.decode("Q0lQQUFDRGVjb2Rlcg==", 0);
            Charset charset = defpackage.ha1.b;
            if (new String(bArrDecode, charset).equals(str) || new String(Base64.decode("Q0lQTVAzRGVjb2Rlcg==", 0), charset).equals(str) || new String(Base64.decode("Q0lQVm9yYmlzRGVjb2Rlcg==", 0), charset).equals(str) || new String(Base64.decode("Q0lQQU1STkJEZWNvZGVy", 0), charset).equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str)) {
                return false;
            }
        }
        if (i2 < 18) {
            byte[] bArrDecode2 = Base64.decode("T01YLk1USy5BVURJTy5ERUNPREVSLkFBQw==", 0);
            Charset charset2 = defpackage.ha1.b;
            if (new String(bArrDecode2, charset2).equals(str)) {
                String str3 = new String(Base64.decode("YTcw", 0), charset2);
                String str4 = u56.b;
                if (str3.equals(str4) || (new String(Base64.decode("WGlhb21p", 0), charset2).equals(u56.c) && str4.startsWith(new String(Base64.decode("SE0=", 0), charset2)))) {
                    return false;
                }
            }
        }
        if (i2 == 16) {
            byte[] bArrDecode3 = Base64.decode("T01YLnFjb20uYXVkaW8uZGVjb2Rlci5tcDM=", 0);
            Charset charset3 = defpackage.ha1.b;
            if (new String(bArrDecode3, charset3).equals(str)) {
                String str5 = new String(Base64.decode("ZGx4dQ==", 0), charset3);
                String str6 = u56.b;
                if (str5.equals(str6) || new String(Base64.decode("cHJvdG91", 0), charset3).equals(str6) || new String(Base64.decode("dmlsbGU=", 0), charset3).equals(str6) || new String(Base64.decode("dmlsbGVwbHVz", 0), charset3).equals(str6) || new String(Base64.decode("dmlsbGVjMg==", 0), charset3).equals(str6) || str6.startsWith(new String(Base64.decode("Z2Vl", 0), charset3)) || new String(Base64.decode("QzY2MDI=", 0), charset3).equals(str6) || new String(Base64.decode("QzY2MDM=", 0), charset3).equals(str6) || new String(Base64.decode("QzY2MDY=", 0), charset3).equals(str6) || new String(Base64.decode("QzY2MTY=", 0), charset3).equals(str6) || new String(Base64.decode("TDM2aA==", 0), charset3).equals(str6) || new String(Base64.decode("U08tMDJF", 0), charset3).equals(str6)) {
                    return false;
                }
            }
        }
        if (i2 == 16) {
            byte[] bArrDecode4 = Base64.decode("T01YLnFjb20uYXVkaW8uZGVjb2Rlci5hYWM=", 0);
            Charset charset4 = defpackage.ha1.b;
            if (new String(bArrDecode4, charset4).equals(str)) {
                String str7 = new String(Base64.decode("QzE1MDQ=", 0), charset4);
                String str8 = u56.b;
                if (str7.equals(str8) || new String(Base64.decode("QzE1MDU=", 0), charset4).equals(str8) || new String(Base64.decode("QzE2MDQ=", 0), charset4).equals(str8) || new String(Base64.decode("QzE2MDU=", 0), charset4).equals(str8)) {
                    return false;
                }
            }
        }
        if (i2 < 24) {
            byte[] bArrDecode5 = Base64.decode("T01YLlNFQy5hYWMuZGVj", 0);
            Charset charset5 = defpackage.ha1.b;
            if ((new String(bArrDecode5, charset5).equals(str) || new String(Base64.decode("T01YLkV4eW5vcy5BQUMuRGVjb2Rlcg==", 0), charset5).equals(str)) && new String(Base64.decode("c2Ftc3VuZw==", 0), charset5).equals(u56.c)) {
                String str9 = u56.b;
                if (str9.startsWith(new String(Base64.decode("emVyb2ZsdGU=", 0), charset5)) || str9.startsWith(new String(Base64.decode("emVyb2x0ZQ==", 0), charset5)) || str9.startsWith(new String(Base64.decode("emVubHRl", 0), charset5)) || new String(Base64.decode("U0MtMDVH", 0), charset5).equals(str9) || new String(Base64.decode("bWFyaW5lbHRlYXR0", 0), charset5).equals(str9) || new String(Base64.decode("NDA0U0M=", 0), charset5).equals(str9) || new String(Base64.decode("U0MtMDRH", 0), charset5).equals(str9) || new String(Base64.decode("U0NWMzE=", 0), charset5).equals(str9)) {
                    return false;
                }
            }
        }
        if (i2 <= 19) {
            byte[] bArrDecode6 = Base64.decode("T01YLlNFQy52cDguZGVj", 0);
            Charset charset6 = defpackage.ha1.b;
            if (new String(bArrDecode6, charset6).equals(str) && new String(Base64.decode("c2Ftc3VuZw==", 0), charset6).equals(u56.c)) {
                String str10 = u56.b;
                if (str10.startsWith("d2") || str10.startsWith(new String(Base64.decode("c2VycmFubw==", 0), charset6)) || str10.startsWith(new String(Base64.decode("amZsdGU=", 0), charset6)) || str10.startsWith(new String(Base64.decode("c2FudG9z", 0), charset6)) || str10.startsWith(new String(Base64.decode("dDA=", 0), charset6))) {
                    return false;
                }
            }
        }
        if (i2 <= 19) {
            String str11 = u56.b;
            byte[] bArrDecode7 = Base64.decode("amZsdGU=", 0);
            Charset charset7 = defpackage.ha1.b;
            if (str11.startsWith(new String(bArrDecode7, charset7)) && new String(Base64.decode("T01YLnFjb20udmlkZW8uZGVjb2Rlci52cDg=", 0), charset7).equals(str)) {
                return false;
            }
        }
        return (i2 <= 23 && MimeTypes.AUDIO_E_AC3_JOC.equals(str2) && new String(Base64.decode("T01YLk1USy5BVURJTy5ERUNPREVSLkRTUEFDMw==", 0), defpackage.ha1.b).equals(str)) ? false : true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x018d  */
    /* JADX WARN: Code duplicated, block: B:102:0x0190  */
    /* JADX WARN: Code duplicated, block: B:105:0x0199  */
    /* JADX WARN: Code duplicated, block: B:106:0x019b  */
    /* JADX WARN: Code duplicated, block: B:109:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:110:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:113:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:114:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:117:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:118:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:121:0x01be  */
    /* JADX WARN: Code duplicated, block: B:122:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:125:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:126:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:129:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:130:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:133:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:135:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:136:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:137:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:138:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:139:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:140:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:141:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:142:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:143:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:144:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:145:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:146:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:147:0x0201  */
    /* JADX WARN: Code duplicated, block: B:148:0x0204  */
    /* JADX WARN: Code duplicated, block: B:150:0x0208  */
    /* JADX WARN: Code duplicated, block: B:152:0x020e  */
    /* JADX WARN: Code duplicated, block: B:20:0x00af  */
    /* JADX WARN: Code duplicated, block: B:426:0x062b  */
    /* JADX WARN: Code duplicated, block: B:74:0x013a  */
    /* JADX WARN: Code duplicated, block: B:76:0x0140  */
    /* JADX WARN: Code duplicated, block: B:79:0x0146  */
    /* JADX WARN: Code duplicated, block: B:81:0x014d  */
    /* JADX WARN: Code duplicated, block: B:82:0x0150  */
    /* JADX WARN: Code duplicated, block: B:85:0x0159  */
    /* JADX WARN: Code duplicated, block: B:86:0x015d  */
    /* JADX WARN: Code duplicated, block: B:89:0x0166  */
    /* JADX WARN: Code duplicated, block: B:90:0x016a  */
    /* JADX WARN: Code duplicated, block: B:93:0x0173  */
    /* JADX WARN: Code duplicated, block: B:94:0x0177  */
    /* JADX WARN: Code duplicated, block: B:97:0x0180  */
    /* JADX WARN: Code duplicated, block: B:98:0x0184  */
    /*  JADX ERROR: NullPointerException in pass: PrepareForCodeGen
        java.lang.NullPointerException
        */
    public static android.util.Pair b(yads.vz2 r31) {
        /*
            Method dump skipped, instruction units count: 2100
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yads.jz3.b(yads.vz2):android.util.Pair");
    }

    public static ArrayList a(oe3 oe3Var, vz2 vz2Var) {
        ArrayList arrayList = new ArrayList(oe3Var);
        a(arrayList, new defpackage.r9(vz2Var));
        return arrayList;
    }

    public static /* synthetic */ int a(vz2 vz2Var, vy3 vy3Var) {
        try {
            return vy3Var.a(vz2Var) ? 1 : 0;
        } catch (ez3 unused) {
            return -1;
        }
    }

    public static int a() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        int i2;
        int i3 = j;
        if (i3 != -1) {
            return i3;
        }
        int iMax = 0;
        List listA = a("video/avc", false, false);
        vy3 vy3Var = listA.isEmpty() ? null : (vy3) listA.get(0);
        if (vy3Var != null) {
            MediaCodecInfo.CodecCapabilities codecCapabilities = vy3Var.d;
            if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
                codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
            }
            int length = codecProfileLevelArr.length;
            int iMax2 = 0;
            while (iMax < length) {
                int i4 = codecProfileLevelArr[iMax].level;
                if (i4 != 1 && i4 != 2) {
                    switch (i4) {
                        case 8:
                        case 16:
                        case 32:
                            i2 = 101376;
                            break;
                        case 64:
                            i2 = 202752;
                            break;
                        case 128:
                        case 256:
                            i2 = 414720;
                            break;
                        case 512:
                            i2 = 921600;
                            break;
                        case 1024:
                            i2 = 1310720;
                            break;
                        case 2048:
                        case 4096:
                            i2 = 2097152;
                            break;
                        case 8192:
                            i2 = 2228224;
                            break;
                        case 16384:
                            i2 = 5652480;
                            break;
                        case 32768:
                        case 65536:
                            i2 = 9437184;
                            break;
                        case 131072:
                        case 262144:
                        case 524288:
                            i2 = 35651584;
                            break;
                        default:
                            i2 = -1;
                            break;
                    }
                } else {
                    i2 = 25344;
                }
                iMax2 = Math.max(i2, iMax2);
                iMax++;
            }
            iMax = Math.max(iMax2, u56.a >= 21 ? 345600 : 172800);
        }
        j = iMax;
        return iMax;
    }

    public static String a(vz2 vz2Var) {
        Pair pairB;
        if (MimeTypes.AUDIO_E_AC3_JOC.equals(vz2Var.m)) {
            return MimeTypes.AUDIO_E_AC3;
        }
        if (!MimeTypes.VIDEO_DOLBY_VISION.equals(vz2Var.m) || (pairB = b(vz2Var)) == null) {
            return null;
        }
        int iIntValue = ((Integer) pairB.first).intValue();
        if (iIntValue == 16 || iIntValue == 256) {
            return MimeTypes.VIDEO_H265;
        }
        if (iIntValue == 512) {
            return "video/avc";
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:55:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:73:0x0116 A[Catch: Exception -> 0x015e, TRY_ENTER, TryCatch #2 {Exception -> 0x015e, blocks: (B:3:0x0008, B:5:0x001a, B:7:0x0024, B:76:0x0135, B:10:0x002e, B:13:0x0039, B:70:0x010e, B:73:0x0116, B:75:0x011c, B:77:0x013b, B:78:0x015c), top: B:87:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x013b A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:9:0x002a  */
    public static ArrayList a(dz3 dz3Var, fz3 fz3Var) throws ez3 {
        String strA;
        String str;
        boolean zIsHardwareAccelerated;
        String str2;
        String str3;
        fz3 fz3Var2 = fz3Var;
        try {
            ArrayList arrayList = new ArrayList();
            String str4 = dz3Var.a;
            int iA = fz3Var2.a();
            boolean zB = fz3Var2.b();
            int i2 = 0;
            while (i2 < iA) {
                MediaCodecInfo mediaCodecInfoA = fz3Var2.a(i2);
                int i3 = u56.a;
                if (i3 < 29 || !mediaCodecInfoA.isAlias()) {
                    String name = mediaCodecInfoA.getName();
                    if (a(mediaCodecInfoA, name, zB, str4) && (strA = a(mediaCodecInfoA, name, str4)) != null) {
                        try {
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfoA.getCapabilitiesForType(strA);
                            boolean zA = fz3Var2.a("tunneled-playback", strA, capabilitiesForType);
                            boolean zA2 = fz3Var2.a("tunneled-playback", capabilitiesForType);
                            boolean z = dz3Var.c;
                            if ((z || !zA2) && (!z || zA)) {
                                boolean zA3 = fz3Var2.a("secure-playback", strA, capabilitiesForType);
                                boolean zA4 = fz3Var2.a("secure-playback", capabilitiesForType);
                                boolean z2 = dz3Var.b;
                                if ((z2 || !zA4) && (!z2 || zA3)) {
                                    if (i3 >= 29) {
                                        zIsHardwareAccelerated = mediaCodecInfoA.isHardwareAccelerated();
                                    } else {
                                        zIsHardwareAccelerated = !a(mediaCodecInfoA, str4);
                                    }
                                    a(mediaCodecInfoA, str4);
                                    if (i3 >= 29) {
                                        mediaCodecInfoA.isVendor();
                                        str2 = name;
                                    } else {
                                        String strA2 = oj.a(mediaCodecInfoA.getName());
                                        str2 = name;
                                        try {
                                            if (!strA2.startsWith(new String(Base64.decode("b214Lmdvb2dsZS4=", 0), defpackage.ha1.b)) && !strA2.startsWith("c2.android.")) {
                                                strA2.startsWith("c2.google.");
                                            }
                                        } catch (Exception e2) {
                                            e = e2;
                                            strA = strA;
                                            str = str2;
                                            if (u56.a > 23) {
                                            }
                                            sv3.b("MediaCodecUtil", "Failed to query codec " + str + " (" + strA + ")");
                                            throw e;
                                        }
                                    }
                                    if (zB) {
                                        try {
                                            if (dz3Var.b == zA3) {
                                                boolean z3 = zIsHardwareAccelerated;
                                                strA = strA;
                                                str3 = str2;
                                                str = str3;
                                                arrayList.add(vy3.a(str3, str4, strA, capabilitiesForType, z3, false));
                                            } else if (!zB || dz3Var.b) {
                                                boolean z4 = zIsHardwareAccelerated;
                                                strA = strA;
                                                str = str2;
                                                if (!zB && zA3) {
                                                    arrayList.add(vy3.a(str + ".secure", str4, strA, capabilitiesForType, z4, true));
                                                    break;
                                                }
                                            } else {
                                                boolean z5 = zIsHardwareAccelerated;
                                                strA = strA;
                                                str3 = str2;
                                                try {
                                                    str = str3;
                                                    try {
                                                        arrayList.add(vy3.a(str3, str4, strA, capabilitiesForType, z5, false));
                                                    } catch (Exception e3) {
                                                        e = e3;
                                                        if (u56.a > 23) {
                                                        }
                                                        sv3.b("MediaCodecUtil", "Failed to query codec " + str + " (" + strA + ")");
                                                        throw e;
                                                    }
                                                } catch (Exception e4) {
                                                    e = e4;
                                                    str = str3;
                                                    if (u56.a > 23 && !arrayList.isEmpty()) {
                                                        sv3.b("MediaCodecUtil", "Skipping codec " + str + " (failed to query capabilities)");
                                                    } else {
                                                        sv3.b("MediaCodecUtil", "Failed to query codec " + str + " (" + strA + ")");
                                                        throw e;
                                                    }
                                                }
                                            }
                                        } catch (Exception e5) {
                                            e = e5;
                                            str = str2;
                                            if (u56.a > 23) {
                                            }
                                            sv3.b("MediaCodecUtil", "Failed to query codec " + str + " (" + strA + ")");
                                            throw e;
                                        }
                                    } else {
                                        if (zB) {
                                        }
                                        boolean z6 = zIsHardwareAccelerated;
                                        strA = strA;
                                        str = str2;
                                        if (!zB) {
                                            continue;
                                        }
                                    }
                                }
                            }
                        } catch (Exception e6) {
                            e = e6;
                            str = name;
                        }
                    }
                }
                i2++;
                fz3Var2 = fz3Var;
            }
            return arrayList;
        } catch (Exception e7) {
            throw new ez3(e7);
        }
    }

    public static String a(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals(MimeTypes.VIDEO_DOLBY_VISION)) {
            byte[] bArrDecode = Base64.decode("T01YLk1TLkhFVkNEVi5EZWNvZGVy", 0);
            Charset charset = defpackage.ha1.b;
            if (new String(bArrDecode, charset).equals(str)) {
                return new String(Base64.decode("dmlkZW8vaGV2Y2R2", 0), charset);
            }
            if (new String(Base64.decode("T01YLlJUSy52aWRlby5kZWNvZGVy", 0), charset).equals(str) || new String(Base64.decode("T01YLnJlYWx0ZWsudmlkZW8uZGVjb2Rlci50dW5uZWxlZA==", 0), charset).equals(str)) {
                return new String(Base64.decode("dmlkZW8vZHZfaGV2Yw==", 0), charset);
            }
            return null;
        }
        if (str2.equals(MimeTypes.AUDIO_ALAC) && new String(Base64.decode("T01YLmxnZS5hbGFjLmRlY29kZXI=", 0), defpackage.ha1.b).equals(str)) {
            return "audio/x-lg-alac";
        }
        if (str2.equals(MimeTypes.AUDIO_FLAC) && new String(Base64.decode("T01YLmxnZS5mbGFjLmRlY29kZXI=", 0), defpackage.ha1.b).equals(str)) {
            return "audio/x-lg-flac";
        }
        if (str2.equals(MimeTypes.AUDIO_AC3) && new String(Base64.decode("T01YLmxnZS5hYzMuZGVjb2Rlcg==", 0), defpackage.ha1.b).equals(str)) {
            return "audio/lg-ac3";
        }
        return null;
    }

    public static synchronized List a(String str, boolean z, boolean z2) {
        fz3 gz3Var;
        try {
            dz3 dz3Var = new dz3(str, z, z2);
            HashMap map = b;
            List list = (List) map.get(dz3Var);
            if (list != null) {
                return list;
            }
            int i2 = u56.a;
            if (i2 >= 21) {
                gz3Var = new hz3(z, z2);
            } else {
                gz3Var = new gz3();
            }
            ArrayList arrayListA = a(dz3Var, gz3Var);
            if (z && arrayListA.isEmpty() && 21 <= i2 && i2 <= 23) {
                arrayListA = a(dz3Var, new gz3());
                if (!arrayListA.isEmpty()) {
                    sv3.d("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((vy3) arrayListA.get(0)).a);
                }
            }
            a(str, arrayListA);
            oe3 oe3VarA = oe3.a(arrayListA);
            map.put(dz3Var, oe3VarA);
            return oe3VarA;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static void a(String str, ArrayList arrayList) {
        if (MimeTypes.AUDIO_RAW.equals(str)) {
            if (u56.a < 26) {
                String str2 = u56.b;
                kz3 kz3Var = m25.e;
                if (str2.equals(kz3Var.N()) && arrayList.size() == 1 && ((vy3) arrayList.get(0)).a.equals(kz3Var.G())) {
                    arrayList.add(vy3.a(kz3Var.L(), MimeTypes.AUDIO_RAW, MimeTypes.AUDIO_RAW, null, false, false));
                }
            }
            a(arrayList, new defpackage.ig(7));
        }
        int i2 = u56.a;
        if (i2 < 21 && arrayList.size() > 1) {
            String str3 = ((vy3) arrayList.get(0)).a;
            kz3 kz3Var2 = m25.e;
            if (kz3Var2.I().equals(str3) || kz3Var2.H().equals(str3) || kz3Var2.J().equals(str3)) {
                a(arrayList, new defpackage.jg());
            }
        }
        if (i2 >= 32 || arrayList.size() <= 1) {
            return;
        }
        if (m25.e.M().equals(((vy3) arrayList.get(0)).a)) {
            arrayList.add((vy3) arrayList.remove(0));
        }
    }

    public static /* synthetic */ int a(vy3 vy3Var) {
        String str = vy3Var.a;
        kz3 kz3Var = m25.e;
        if (str.startsWith(kz3Var.K()) || str.startsWith("c2.android")) {
            return 1;
        }
        return (u56.a >= 26 || !str.equals(kz3Var.G())) ? 0 : -1;
    }

    public static boolean a(MediaCodecInfo mediaCodecInfo, String str) {
        if (u56.a >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        if (MimeTypes.BASE_TYPE_AUDIO.equals(z84.c(str))) {
            return true;
        }
        String strA = oj.a(mediaCodecInfo.getName());
        if (strA.startsWith("arc.")) {
            return false;
        }
        byte[] bArrDecode = Base64.decode("b214Lmdvb2dsZS4=", 0);
        Charset charset = defpackage.ha1.b;
        return strA.startsWith(new String(bArrDecode, charset)) || strA.startsWith(new String(Base64.decode("b214LmZmbXBlZy4=", 0), charset)) || (strA.startsWith(new String(Base64.decode("b214LnNlYy4=", 0), charset)) && strA.contains(".sw.")) || strA.equals(new String(Base64.decode("b214LnFjb20udmlkZW8uZGVjb2Rlci5oZXZjc3d2ZGVj", 0), charset)) || strA.startsWith("c2.android.") || strA.startsWith("c2.google.") || !(strA.startsWith(new String(Base64.decode("b214Lg==", 0), charset)) || strA.startsWith("c2."));
    }

    public static /* synthetic */ int a(iz3 iz3Var, Object obj, Object obj2) {
        return iz3Var.a(obj2) - iz3Var.a(obj);
    }

    public static void a(ArrayList arrayList, final iz3 iz3Var) {
        Collections.sort(arrayList, new Comparator() { // from class: d0a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return jz3.a(iz3Var, obj, obj2);
            }
        });
    }

    public static /* synthetic */ int b(vy3 vy3Var) {
        return vy3Var.a.startsWith(m25.e.K()) ? 1 : 0;
    }
}

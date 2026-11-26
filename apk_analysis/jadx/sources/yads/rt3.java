package yads;

import androidx.media3.common.MimeTypes;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class rt3 implements en {
    public final k55 a;
    public final int b;

    public rt3(int i, k55 k55Var) {
        this.b = i;
        this.a = k55Var;
    }

    public static rt3 a(int i, os4 os4Var) {
        String str;
        en zr5Var;
        String str2;
        String str3;
        int i2 = 4;
        h20.a(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i3 = os4Var.c;
        int i4 = 0;
        int i5 = -2;
        int i6 = 0;
        while (os4Var.c - os4Var.b > 8) {
            int iC = os4Var.c();
            int iC2 = os4Var.b + os4Var.c();
            os4Var.d(iC2);
            if (iC == 1414744396) {
                zr5Var = a(os4Var.c(), os4Var);
            } else {
                en inVar = null;
                if (iC != 1718776947) {
                    if (iC == 1751742049) {
                        int iC3 = os4Var.c();
                        os4Var.e(os4Var.b + 8);
                        int iC4 = os4Var.c();
                        int iC5 = os4Var.c();
                        os4Var.e(os4Var.b + i2);
                        os4Var.c();
                        os4Var.e(os4Var.b + 12);
                        inVar = new in(iC3, iC4, iC5);
                    } else if (iC == 1752331379) {
                        int iC6 = os4Var.c();
                        os4Var.e(os4Var.b + 12);
                        os4Var.c();
                        int iC7 = os4Var.c();
                        int iC8 = os4Var.c();
                        os4Var.e(os4Var.b + i2);
                        int iC9 = os4Var.c();
                        int iC10 = os4Var.c();
                        os4Var.e(os4Var.b + 8);
                        inVar = new jn(iC6, iC7, iC8, iC9, iC10);
                    } else if (iC == 1852994675) {
                        zr5Var = new cs5(os4Var.a(os4Var.c - os4Var.b, az.c));
                    }
                    zr5Var = inVar;
                } else if (i5 == 2) {
                    os4Var.e(os4Var.b + i2);
                    int iC11 = os4Var.c();
                    int iC12 = os4Var.c();
                    os4Var.e(os4Var.b + i2);
                    int iC13 = os4Var.c();
                    switch (iC13) {
                        case 808802372:
                        case 877677894:
                        case 1145656883:
                        case 1145656920:
                        case 1482049860:
                        case 1684633208:
                        case 2021026148:
                            str2 = MimeTypes.VIDEO_MP4V;
                            str3 = str2;
                            break;
                        case 826496577:
                        case 828601953:
                        case 875967048:
                            str2 = "video/avc";
                            str3 = str2;
                            break;
                        case 842289229:
                            str2 = MimeTypes.VIDEO_MP42;
                            str3 = str2;
                            break;
                        case 859066445:
                            str2 = MimeTypes.VIDEO_MP43;
                            str3 = str2;
                            break;
                        case 1196444237:
                        case 1735420525:
                            str2 = MimeTypes.VIDEO_MJPEG;
                            str3 = str2;
                            break;
                        default:
                            str3 = null;
                            break;
                    }
                    if (str3 == null) {
                        qt3.a(iC13, "Ignoring track with unsupported compression ", "StreamFormatChunk");
                        zr5Var = inVar;
                    } else {
                        uz2 uz2Var = new uz2();
                        uz2Var.p = iC11;
                        uz2Var.q = iC12;
                        uz2Var.k = str3;
                        zr5Var = new zr5(new vz2(uz2Var));
                    }
                } else {
                    if (i5 == 1) {
                        int iF = os4Var.f();
                        if (iF == 1) {
                            str = MimeTypes.AUDIO_RAW;
                        } else if (iF == 85) {
                            str = MimeTypes.AUDIO_MPEG;
                        } else if (iF == 255) {
                            str = "audio/mp4a-latm";
                        } else if (iF != 8192) {
                            str = iF != 8193 ? null : MimeTypes.AUDIO_DTS;
                        } else {
                            str = MimeTypes.AUDIO_AC3;
                        }
                        if (str == null) {
                            qt3.a(iF, "Ignoring track with unsupported format tag ", "StreamFormatChunk");
                        } else {
                            int iF2 = os4Var.f();
                            int iC14 = os4Var.c();
                            os4Var.e(os4Var.b + 6);
                            int iB = u56.b(os4Var.p());
                            int iF3 = os4Var.f();
                            byte[] bArr = new byte[iF3];
                            os4Var.a(bArr, i4, iF3);
                            uz2 uz2Var2 = new uz2();
                            uz2Var2.k = str;
                            uz2Var2.x = iF2;
                            uz2Var2.y = iC14;
                            if (MimeTypes.AUDIO_RAW.equals(str) && iB != 0) {
                                uz2Var2.z = iB;
                            }
                            if ("audio/mp4a-latm".equals(str) && iF3 > 0) {
                                uz2Var2.m = oe3.a(bArr);
                            }
                            zr5Var = new zr5(new vz2(uz2Var2));
                        }
                    } else {
                        sv3.d("StreamFormatChunk", "Ignoring strf box for unsupported track type: " + u56.c(i5));
                    }
                    zr5Var = inVar;
                }
            }
            if (zr5Var != null) {
                if (zr5Var.getType() == 1752331379) {
                    jn jnVar = (jn) zr5Var;
                    int i7 = jnVar.a;
                    if (i7 == 1935960438) {
                        i5 = 2;
                    } else if (i7 == 1935963489) {
                        i5 = 1;
                    } else if (i7 != 1937012852) {
                        sv3.d("AviStreamHeaderChunk", "Found unsupported streamType fourCC: " + Integer.toHexString(jnVar.a));
                        i5 = -1;
                    } else {
                        i5 = 3;
                    }
                }
                int i8 = i6 + 1;
                if (objArrCopyOf.length < i8) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, he3.a(objArrCopyOf.length, i8));
                }
                objArrCopyOf[i6] = zr5Var;
                i6 = i8;
            }
            os4Var.e(iC2);
            os4Var.d(i3);
            i2 = 4;
            i4 = 0;
        }
        return new rt3(i, oe3.b(i6, objArrCopyOf));
    }

    @Override // yads.en
    public final int getType() {
        return this.b;
    }

    public final en a(Class cls) {
        le3 le3VarListIterator = this.a.listIterator(0);
        while (le3VarListIterator.hasNext()) {
            en enVar = (en) le3VarListIterator.next();
            if (enVar.getClass() == cls) {
                return enVar;
            }
        }
        return null;
    }
}

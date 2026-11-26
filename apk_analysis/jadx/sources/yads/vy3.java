package yads;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Base64;
import android.util.Pair;
import androidx.media3.common.MimeTypes;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes6.dex */
public final class vy3 {
    public final String a;
    public final String b;
    public final String c;
    public final MediaCodecInfo.CodecCapabilities d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final boolean h;

    public vy3(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = codecCapabilities;
        this.g = z;
        this.e = z2;
        this.f = z3;
        this.h = MimeTypes.BASE_TYPE_VIDEO.equals(z84.c(str2));
    }

    public final boolean a(vz2 vz2Var) {
        int i;
        Pair pairB;
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        if (!this.b.equals(vz2Var.m) && !this.b.equals(jz3.a(vz2Var))) {
            return false;
        }
        int i2 = 16;
        if (vz2Var.j != null && (pairB = jz3.b(vz2Var)) != null) {
            int iIntValue = ((Integer) pairB.first).intValue();
            int iIntValue2 = ((Integer) pairB.second).intValue();
            int i3 = 8;
            if (MimeTypes.VIDEO_DOLBY_VISION.equals(vz2Var.m)) {
                if ("video/avc".equals(this.b)) {
                    iIntValue2 = 0;
                    iIntValue = 8;
                } else if (MimeTypes.VIDEO_H265.equals(this.b)) {
                    iIntValue2 = 0;
                    iIntValue = 2;
                }
            }
            if (this.h || iIntValue == 42) {
                MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
                if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
                    codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
                }
                if (u56.a <= 23 && MimeTypes.VIDEO_VP9.equals(this.b) && codecProfileLevelArr.length == 0) {
                    MediaCodecInfo.CodecCapabilities codecCapabilities2 = this.d;
                    int iIntValue3 = (codecCapabilities2 == null || (videoCapabilities = codecCapabilities2.getVideoCapabilities()) == null) ? 0 : ((Integer) videoCapabilities.getBitrateRange().getUpper()).intValue();
                    if (iIntValue3 >= 180000000) {
                        i3 = 1024;
                    } else if (iIntValue3 >= 120000000) {
                        i3 = 512;
                    } else if (iIntValue3 >= 60000000) {
                        i3 = 256;
                    } else if (iIntValue3 >= 30000000) {
                        i3 = 128;
                    } else if (iIntValue3 >= 18000000) {
                        i3 = 64;
                    } else if (iIntValue3 >= 12000000) {
                        i3 = 32;
                    } else if (iIntValue3 >= 7200000) {
                        i3 = 16;
                    } else if (iIntValue3 < 3600000) {
                        if (iIntValue3 >= 1800000) {
                            i3 = 4;
                        } else {
                            i3 = iIntValue3 >= 800000 ? 2 : 1;
                        }
                    }
                    MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
                    codecProfileLevel.profile = 1;
                    codecProfileLevel.level = i3;
                    codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
                }
                int length = codecProfileLevelArr.length;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        a("codec.profileLevel, " + vz2Var.j + ", " + this.c);
                        return false;
                    }
                    MediaCodecInfo.CodecProfileLevel codecProfileLevel2 = codecProfileLevelArr[i4];
                    if (codecProfileLevel2.profile == iIntValue && codecProfileLevel2.level >= iIntValue2) {
                        if (!MimeTypes.VIDEO_H265.equals(this.b) || 2 != iIntValue) {
                            break;
                        }
                        byte[] bArrDecode = Base64.decode("c2FpbGZpc2g=", 0);
                        Charset charset = defpackage.ha1.b;
                        String str = new String(bArrDecode, charset);
                        String str2 = u56.b;
                        if (!str.equals(str2) && !new String(Base64.decode("bWFybGlu", 0), charset).equals(str2)) {
                            break;
                        }
                    }
                    i4++;
                }
            }
        }
        if (this.h) {
            int i5 = vz2Var.r;
            if (i5 <= 0 || (i = vz2Var.s) <= 0) {
                return true;
            }
            if (u56.a >= 21) {
                return a(i5, i, vz2Var.t);
            }
            boolean z = i5 * i <= jz3.a();
            if (!z) {
                a("legacyFrameSize, " + vz2Var.r + "x" + vz2Var.s);
            }
            return z;
        }
        int i6 = u56.a;
        if (i6 >= 21) {
            int i7 = vz2Var.A;
            if (i7 != -1) {
                MediaCodecInfo.CodecCapabilities codecCapabilities3 = this.d;
                if (codecCapabilities3 == null) {
                    a("sampleRate.caps");
                } else {
                    MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities3.getAudioCapabilities();
                    if (audioCapabilities == null) {
                        a("sampleRate.aCaps");
                    } else if (!audioCapabilities.isSampleRateSupported(i7)) {
                        a("sampleRate.support, " + i7);
                    }
                }
                return false;
            }
            int i8 = vz2Var.z;
            if (i8 != -1) {
                MediaCodecInfo.CodecCapabilities codecCapabilities4 = this.d;
                if (codecCapabilities4 == null) {
                    a("channelCount.caps");
                } else {
                    MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities4.getAudioCapabilities();
                    if (audioCapabilities2 == null) {
                        a("channelCount.aCaps");
                    } else {
                        String str3 = this.a;
                        String str4 = this.b;
                        int maxInputChannelCount = audioCapabilities2.getMaxInputChannelCount();
                        if (maxInputChannelCount <= 1 && ((i6 < 26 || maxInputChannelCount <= 0) && !MimeTypes.AUDIO_MPEG.equals(str4) && !MimeTypes.AUDIO_AMR_NB.equals(str4) && !MimeTypes.AUDIO_AMR_WB.equals(str4) && !"audio/mp4a-latm".equals(str4) && !MimeTypes.AUDIO_VORBIS.equals(str4) && !MimeTypes.AUDIO_OPUS.equals(str4) && !MimeTypes.AUDIO_RAW.equals(str4) && !MimeTypes.AUDIO_FLAC.equals(str4) && !MimeTypes.AUDIO_ALAW.equals(str4) && !MimeTypes.AUDIO_MLAW.equals(str4) && !MimeTypes.AUDIO_MSGSM.equals(str4))) {
                            if (MimeTypes.AUDIO_AC3.equals(str4)) {
                                i2 = 6;
                            } else if (!MimeTypes.AUDIO_E_AC3.equals(str4)) {
                                i2 = 30;
                            }
                            StringBuilder sbA = defpackage.mz0.a(maxInputChannelCount, "AssumedMaxChannelAdjustment: ", str3, ", [", " to ");
                            sbA.append(i2);
                            sbA.append("]");
                            sv3.d(androidx.media3.exoplayer.mediacodec.MediaCodecInfo.TAG, sbA.toString());
                            maxInputChannelCount = i2;
                        }
                        if (maxInputChannelCount < i8) {
                            a("channelCount.support, " + i8);
                        }
                    }
                }
                return false;
            }
        }
        return true;
    }

    public final boolean b(vz2 vz2Var) {
        if (this.h) {
            return this.e;
        }
        Pair pairB = jz3.b(vz2Var);
        return pairB != null && ((Integer) pairB.first).intValue() == 42;
    }

    public final String toString() {
        return this.a;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0063  */
    public static vy3 a(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        boolean z3;
        int i;
        if (codecCapabilities == null || (i = u56.a) < 19 || !codecCapabilities.isFeatureSupported("adaptive-playback")) {
            z3 = false;
        } else {
            if (i <= 22) {
                byte[] bArrDecode = Base64.decode("T0RST0lELVhVMw==", 0);
                Charset charset = defpackage.ha1.b;
                String str4 = new String(bArrDecode, charset);
                String str5 = u56.d;
                if ((str4.equals(str5) || new String(Base64.decode("TmV4dXMgMTA=", 0), charset).equals(str5)) && (new String(Base64.decode("T01YLkV4eW5vcy5BVkMuRGVjb2Rlcg==", 0), charset).equals(str) || new String(Base64.decode("T01YLkV4eW5vcy5BVkMuRGVjb2Rlci5zZWN1cmU=", 0), charset).equals(str))) {
                    z3 = false;
                }
            }
            z3 = true;
        }
        if (codecCapabilities != null && u56.a >= 21) {
            codecCapabilities.isFeatureSupported("tunneled-playback");
        }
        return new vy3(str, str2, str3, codecCapabilities, z, z3, z2 || (codecCapabilities != null && u56.a >= 21 && codecCapabilities.isFeatureSupported("secure-playback")));
    }

    public final void a(String str) {
        StringBuilder sbD = defpackage.n7.d("NoSupport [", str, "] [");
        sbD.append(this.a);
        sbD.append(", ");
        sbD.append(this.b);
        sbD.append("] [");
        sbD.append(u56.e);
        sbD.append("]");
        sv3.a(androidx.media3.exoplayer.mediacodec.MediaCodecInfo.TAG, sbD.toString());
    }

    public final boolean a() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        if (u56.a >= 29 && MimeTypes.VIDEO_VP9.equals(this.b)) {
            MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
            if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
                codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
            }
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArr) {
                if (codecProfileLevel.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    public final oi0 a(vz2 vz2Var, vz2 vz2Var2) {
        vz2 vz2Var3;
        vz2 vz2Var4;
        int i = !u56.a(vz2Var.m, vz2Var2.m) ? 8 : 0;
        if (this.h) {
            if (vz2Var.u != vz2Var2.u) {
                i |= 1024;
            }
            if (!this.e && (vz2Var.r != vz2Var2.r || vz2Var.s != vz2Var2.s)) {
                i |= 512;
            }
            if (!u56.a(vz2Var.y, vz2Var2.y)) {
                i |= 2048;
            }
            String str = this.a;
            String str2 = u56.d;
            wy3 wy3Var = m25.c;
            if (str2.startsWith(wy3Var.b()) && wy3Var.a().equals(str) && !vz2Var.a(vz2Var2)) {
                i |= 2;
            }
            if (i == 0) {
                return new oi0(this.a, vz2Var, vz2Var2, vz2Var.a(vz2Var2) ? 3 : 2, 0);
            }
            vz2Var3 = vz2Var;
            vz2Var4 = vz2Var2;
        } else {
            vz2Var3 = vz2Var;
            vz2Var4 = vz2Var2;
            if (vz2Var3.z != vz2Var4.z) {
                i |= 4096;
            }
            if (vz2Var3.A != vz2Var4.A) {
                i |= 8192;
            }
            if (vz2Var3.B != vz2Var4.B) {
                i |= 16384;
            }
            if (i == 0 && "audio/mp4a-latm".equals(this.b)) {
                Pair pairB = jz3.b(vz2Var3);
                Pair pairB2 = jz3.b(vz2Var4);
                if (pairB != null && pairB2 != null) {
                    int iIntValue = ((Integer) pairB.first).intValue();
                    int iIntValue2 = ((Integer) pairB2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new oi0(this.a, vz2Var3, vz2Var4, 3, 0);
                    }
                }
            }
            if (!vz2Var3.a(vz2Var4)) {
                i |= 32;
            }
            if (MimeTypes.AUDIO_OPUS.equals(this.b)) {
                i |= 2;
            }
            if (i == 0) {
                return new oi0(this.a, vz2Var3, vz2Var4, 1, 0);
            }
        }
        return new oi0(this.a, vz2Var3, vz2Var4, 0, i);
    }

    public final boolean a(int i, int i2, double d) {
        boolean zIsSizeSupported;
        boolean zIsSizeSupported2;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
        if (codecCapabilities == null) {
            a("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            a("sizeAndRate.vCaps");
            return false;
        }
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        int i3 = u56.a;
        Point point = new Point((((i + widthAlignment) - 1) / widthAlignment) * widthAlignment, (((i2 + heightAlignment) - 1) / heightAlignment) * heightAlignment);
        int i4 = point.x;
        int i5 = point.y;
        if (d != -1.0d && d >= 1.0d) {
            zIsSizeSupported = videoCapabilities.areSizeAndRateSupported(i4, i5, Math.floor(d));
        } else {
            zIsSizeSupported = videoCapabilities.isSizeSupported(i4, i5);
        }
        if (!zIsSizeSupported) {
            if (i < i2) {
                String str = this.a;
                byte[] bArrDecode = Base64.decode("T01YLk1USy5WSURFTy5ERUNPREVSLkhFVkM=", 0);
                Charset charset = defpackage.ha1.b;
                if (!new String(bArrDecode, charset).equals(str) || !new String(Base64.decode("bWN2NWE=", 0), charset).equals(u56.b)) {
                    int widthAlignment2 = videoCapabilities.getWidthAlignment();
                    int heightAlignment2 = videoCapabilities.getHeightAlignment();
                    Point point2 = new Point((((i2 + widthAlignment2) - 1) / widthAlignment2) * widthAlignment2, (((i + heightAlignment2) - 1) / heightAlignment2) * heightAlignment2);
                    int i6 = point2.x;
                    int i7 = point2.y;
                    if (d != -1.0d && d >= 1.0d) {
                        zIsSizeSupported2 = videoCapabilities.areSizeAndRateSupported(i6, i7, Math.floor(d));
                    } else {
                        zIsSizeSupported2 = videoCapabilities.isSizeSupported(i6, i7);
                    }
                    if (zIsSizeSupported2) {
                        StringBuilder sbF = defpackage.bg.f(i, i2, "sizeAndRate.rotated, ", "x", "x");
                        sbF.append(d);
                        StringBuilder sbD = defpackage.n7.d("AssumedSupport [", sbF.toString(), "] [");
                        sbD.append(this.a);
                        sbD.append(", ");
                        sbD.append(this.b);
                        sbD.append("] [");
                        sbD.append(u56.e);
                        sbD.append("]");
                        sv3.a(androidx.media3.exoplayer.mediacodec.MediaCodecInfo.TAG, sbD.toString());
                    }
                }
            }
            StringBuilder sbF2 = defpackage.bg.f(i, i2, "sizeAndRate.support, ", "x", "x");
            sbF2.append(d);
            a(sbF2.toString());
            return false;
        }
        return true;
    }
}

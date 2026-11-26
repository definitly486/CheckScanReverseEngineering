package yads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.provider.Settings;
import android.util.Base64;
import android.util.Pair;
import androidx.media3.extractor.OpusUtil;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class fm {
    public static final fm c = new fm(new int[]{2}, 8);
    public static final fm d = new fm(new int[]{2, 5, 6}, 8);
    public static final p55 e;
    public final int[] a;
    public final int b;

    static {
        pe3 pe3VarA = new pe3(4).a(5, 6).a(17, 6).a(7, 6).a(18, 6).a(6, 8).a(8, 8).a(14, 8);
        e = p55.a(pe3VarA.b, pe3VarA.a);
    }

    public fm(int[] iArr, int i) {
        if (iArr != null) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.a = iArrCopyOf;
            Arrays.sort(iArrCopyOf);
        } else {
            this.a = new int[0];
        }
        this.b = i;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x008a  */
    public final Pair a(vz2 vz2Var) {
        String str = vz2Var.m;
        str.getClass();
        int iA = z84.a(str, vz2Var.j);
        p55 p55Var = e;
        if (!p55Var.containsKey(Integer.valueOf(iA))) {
            return null;
        }
        int i = 6;
        if (iA == 18 && Arrays.binarySearch(this.a, 18) < 0) {
            iA = 6;
        } else if (iA == 8 && Arrays.binarySearch(this.a, 8) < 0) {
            iA = 7;
        }
        if (Arrays.binarySearch(this.a, iA) < 0) {
            return null;
        }
        int iIntValue = vz2Var.z;
        if (iIntValue == -1 || iA == 18) {
            int i2 = vz2Var.A;
            if (i2 == -1) {
                i2 = OpusUtil.SAMPLE_RATE;
            }
            if (u56.a >= 29) {
                iIntValue = em.a(iA, i2);
            } else {
                Object obj = p55Var.get(Integer.valueOf(iA));
                iIntValue = ((Integer) (obj != null ? obj : 0)).intValue();
            }
        } else if (iIntValue > this.b) {
            return null;
        }
        int i3 = u56.a;
        if (i3 > 28) {
            i = iIntValue;
        } else if (iIntValue == 7) {
            i = 8;
        } else if (iIntValue != 3 && iIntValue != 4 && iIntValue != 5) {
            i = iIntValue;
        }
        if (i3 <= 26 && m25.d.a().equals(u56.b) && i == 1) {
            i = 2;
        }
        int iA2 = u56.a(i);
        if (iA2 == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(iA), Integer.valueOf(iA2));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fm)) {
            return false;
        }
        fm fmVar = (fm) obj;
        return Arrays.equals(this.a, fmVar.a) && this.b == fmVar.b;
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.a) * 31) + this.b;
    }

    public final String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.b + ", supportedEncodings=" + Arrays.toString(this.a) + "]";
    }

    public static fm a(Context context) {
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
        int i = u56.a;
        if (i >= 17) {
            byte[] bArrDecode = Base64.decode("QW1hem9u", 0);
            Charset charset = defpackage.ha1.b;
            String str = new String(bArrDecode, charset);
            String str2 = u56.c;
            if ((str.equals(str2) || new String(Base64.decode("WGlhb21p", 0), charset).equals(str2)) && Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) == 1) {
                return d;
            }
        }
        if (i >= 29 && (u56.c(context) || (i >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")))) {
            return new fm(em.a(), 8);
        }
        if (intentRegisterReceiver != null && intentRegisterReceiver.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 0) {
            return new fm(intentRegisterReceiver.getIntArrayExtra("android.media.extra.ENCODINGS"), intentRegisterReceiver.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8));
        }
        return c;
    }
}

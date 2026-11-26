package defpackage;

import com.google.android.gms.internal.measurement.zzair;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class dh5 implements rxa {
    public static final bh8 b = new bh8("NO_OWNER");
    public static final bh8 c = new bh8("ALREADY_LOCKED_BY_OWNER");
    public static final /* synthetic */ dh5 d = new dh5();

    public static float a(float f) {
        return f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    public static float b(float f) {
        return f <= 0.0031308f ? f * 12.92f : (float) ((Math.pow(f, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    public static int c(float f, int i, int i2) {
        if (i == i2 || f <= 0.0f) {
            return i;
        }
        if (f >= 1.0f) {
            return i2;
        }
        float f2 = ((i >> 24) & 255) / 255.0f;
        float f3 = ((i2 >> 24) & 255) / 255.0f;
        float fA = a(((i >> 16) & 255) / 255.0f);
        float fA2 = a(((i >> 8) & 255) / 255.0f);
        float fA3 = a((i & 255) / 255.0f);
        float fA4 = a(((i2 >> 16) & 255) / 255.0f);
        float fA5 = a(((i2 >> 8) & 255) / 255.0f);
        float fA6 = a((i2 & 255) / 255.0f);
        float fB = i8.b(f3, f2, f, f2);
        float fB2 = i8.b(fA4, fA, f, fA);
        float fB3 = i8.b(fA5, fA2, f, fA2);
        float fB4 = i8.b(fA6, fA3, f, fA3);
        float fB5 = b(fB2) * 255.0f;
        float fB6 = b(fB3) * 255.0f;
        return Math.round(b(fB4) * 255.0f) | (Math.round(fB5) << 16) | (Math.round(fB * 255.0f) << 24) | (Math.round(fB6) << 8);
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Boolean.valueOf(zzair.zzb());
    }
}

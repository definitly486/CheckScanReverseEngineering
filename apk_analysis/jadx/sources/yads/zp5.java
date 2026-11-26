package yads;

import android.graphics.Color;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes6.dex */
public final class zp5 {
    public final String a;
    public final int b;
    public final Integer c;
    public final Integer d;
    public final float e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final int j;

    public zp5(String str, int i, Integer num, Integer num2, float f, boolean z, boolean z2, boolean z3, boolean z4, int i2) {
        this.a = str;
        this.b = i;
        this.c = num;
        this.d = num2;
        this.e = f;
        this.f = z;
        this.g = z2;
        this.h = z3;
        this.i = z4;
        this.j = i2;
    }

    public static boolean a(String str) {
        try {
            int i = Integer.parseInt(str);
            return i == 1 || i == -1;
        } catch (NumberFormatException e) {
            sv3.d("SsaStyle", sv3.a("Failed to parse boolean value: '" + str + "'", e));
            return false;
        }
    }

    public static Integer b(String str) {
        try {
            long j = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            if (j > MuxerUtil.UNSIGNED_INT_MAX_VALUE) {
                throw new IllegalArgumentException();
            }
            return Integer.valueOf(Color.argb(bq3.a(((j >> 24) & 255) ^ 255), bq3.a(j & 255), bq3.a((j >> 8) & 255), bq3.a((j >> 16) & 255)));
        } catch (IllegalArgumentException e) {
            sv3.d("SsaStyle", sv3.a("Failed to parse color expression: '" + str + "'", e));
            return null;
        }
    }
}

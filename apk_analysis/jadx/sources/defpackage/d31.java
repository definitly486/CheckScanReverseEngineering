package defpackage;

import androidx.camera.video.internal.workaround.DefaultEncoderProfilesProvider;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.common.C;
import androidx.media3.common.PlaybackException;
import androidx.media3.muxer.MuxerUtil;
import androidx.tracing.Trace;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import java.io.InputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes5.dex */
public class d31 implements cm1, u39, rxa {
    public static final bh8 c = new bh8("RESUME_TOKEN");
    public static final int[] d = {1, 10, 100, 1000, 10000, 100000, PlaybackException.CUSTOM_ERROR_CODE_BASE, DefaultEncoderProfilesProvider.DEFAULT_VIDEO_BITRATE_FHD, 100000000, 1000000000};
    public static final d31 e = new d31(2);
    public static final /* synthetic */ d31 f = new d31(7);
    public static final /* synthetic */ d31 g = new d31(8);
    public final /* synthetic */ int b;

    public /* synthetic */ d31(int i) {
        this.b = i;
    }

    public static final Class n(ne4 ne4Var) {
        ne4Var.getClass();
        Class<?> clsC = ((xk1) ne4Var).c();
        clsC.getClass();
        return clsC;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final Class o(ne4 ne4Var) {
        Class<?> clsC = ((xk1) ne4Var).c();
        if (clsC.isPrimitive()) {
            String name = clsC.getName();
            switch (name.hashCode()) {
                case -1325958191:
                    if (name.equals("double")) {
                        return Double.class;
                    }
                    break;
                case 104431:
                    if (name.equals("int")) {
                        return Integer.class;
                    }
                    break;
                case 3039496:
                    if (name.equals("byte")) {
                        return Byte.class;
                    }
                    break;
                case 3052374:
                    if (name.equals("char")) {
                        return Character.class;
                    }
                    break;
                case 3327612:
                    if (name.equals("long")) {
                        return Long.class;
                    }
                    break;
                case 3625364:
                    if (name.equals("void")) {
                        return Void.class;
                    }
                    break;
                case 64711720:
                    if (name.equals(TypedValues.Custom.S_BOOLEAN)) {
                        return Boolean.class;
                    }
                    break;
                case 97526364:
                    if (name.equals(TypedValues.Custom.S_FLOAT)) {
                        return Float.class;
                    }
                    break;
                case 109413500:
                    if (name.equals("short")) {
                        return Short.class;
                    }
                    break;
            }
        }
        return clsC;
    }

    public static boolean p(Comparator comparator, Collection collection) {
        Object objComparator;
        comparator.getClass();
        collection.getClass();
        if (collection instanceof SortedSet) {
            objComparator = ((SortedSet) collection).comparator();
            if (objComparator == null) {
                objComparator = hi5.b;
            }
        } else {
            if (!(collection instanceof t48)) {
                return false;
            }
            objComparator = ((t48) collection).comparator();
        }
        return comparator.equals(objComparator);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001e  */
    public static final pp2 q(long j, long j2) {
        long j3;
        if (j == 0 || j2 == 0) {
            return new pp2(0L, 0L);
        }
        if (j2 == -1) {
            if (j == Long.MIN_VALUE) {
                j3 = 0;
            } else {
                j3 = -j;
            }
        } else if (j2 == 1) {
            j3 = j;
        } else {
            j3 = j * j2;
            if (j3 / j2 != j) {
                j3 = 0;
            }
        }
        if (j3 != 0) {
            return new pp2(j3 / C.NANOS_PER_SECOND, j3 % C.NANOS_PER_SECOND);
        }
        if (j2 == C.NANOS_PER_SECOND) {
            return new pp2(j, 0L);
        }
        if (j == C.NANOS_PER_SECOND) {
            return new pp2(j2, 0L);
        }
        long j4 = j >= 0 ? 0L : -1L;
        long j5 = j2 >= 0 ? 0L : -1L;
        long j6 = j & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j7 = (j >> 32) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j8 = j2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j9 = (j2 >> 32) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j10 = (j7 * j5) + (j4 * j9);
        long j11 = (j5 * j6) + (j7 * j9) + (j4 * j8);
        long j12 = j7 * j8;
        long j13 = j9 * j6;
        long j14 = j6 * j8;
        long j15 = j14 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j16 = (j12 & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j13 & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + ((j14 >> 32) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        long j17 = j16 & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        long j18 = ((j16 >> 32) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + (j11 & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + ((j12 >> 32) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + ((j13 >> 32) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        long j19 = (j17 << 32) | j15;
        long j20 = (j18 & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((((j18 >> 32) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + ((j11 >> 32) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) + (j10 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) << 32);
        int i = ((j20 >> 63) & 1) == 1 ? -1 : 1;
        if (i == -1) {
            j19 = (~j19) + 1;
            j20 = ~j20;
            if (j19 == 0) {
                j20++;
            }
        }
        int i2 = Trace.MAX_TRACE_LABEL_LENGTH;
        long j21 = 0;
        long j22 = 0;
        while (-1 < i2) {
            j22 = (j22 << 1) | ((i2 < 64 ? j19 >> i2 : j20 >> (i2 - 64)) & 1);
            if (j22 >= C.NANOS_PER_SECOND || j22 < 0) {
                j22 -= C.NANOS_PER_SECOND;
                if (i2 >= 63) {
                    throw new ArithmeticException("The result of a multiplication followed by division overflows a long");
                }
                j21 |= 1 << i2;
            }
            i2--;
        }
        long j23 = i;
        return new pp2(j21 * j23, j23 * j22);
    }

    public static final d18 r(lz7 lz7Var, nl3 nl3Var, nl3 nl3Var2) {
        nl3Var.getClass();
        nl3Var2.getClass();
        d18 d18Var = new d18(nl3Var, nl3Var2);
        lz7Var.a(d18Var);
        return d18Var;
    }

    @Override // defpackage.cm1
    public void a(int i) {
    }

    @Override // defpackage.cm1
    public void b(int i) {
    }

    @Override // defpackage.e98
    public void c(qu1 qu1Var) {
    }

    @Override // defpackage.e98
    public void d(InputStream inputStream) {
        vs3.b(inputStream);
    }

    @Override // defpackage.e98
    public void e() {
    }

    @Override // defpackage.cm1
    public void f(yd2 yd2Var) {
    }

    @Override // defpackage.e98
    public void flush() {
    }

    @Override // defpackage.cm1
    public void g(xc2 xc2Var) {
    }

    @Override // defpackage.cm1
    public void h() {
    }

    @Override // defpackage.cm1
    public void i(dm1 dm1Var) {
    }

    @Override // defpackage.e98
    public boolean isReady() {
        return false;
    }

    @Override // defpackage.cm1
    public void j(h88 h88Var) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.u39
    public Object k(float f2, Float f3, Float f4) {
        int iIntValue = ((Integer) f3).intValue();
        return Integer.valueOf((int) ((f2 * (((Integer) f4).intValue() - iIntValue)) + iIntValue));
    }

    @Override // defpackage.cm1
    public void l(y54 y54Var) {
        y54Var.a.add("noop");
    }

    @Override // defpackage.e98
    public void m() {
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 7:
                List list = zzfy.a;
                return Long.valueOf(zzags.zzA());
            default:
                List list2 = zzfy.a;
                return Integer.valueOf((int) zzags.zzap());
        }
    }
}

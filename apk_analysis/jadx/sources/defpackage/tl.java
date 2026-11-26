package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.media3.exoplayer.ExoPlayer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes3.dex */
public final class tl {
    public static final String a(Date date) {
        date.getClass();
        TimeZone timeZone = wz3.a;
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder(23 + (timeZone.getRawOffset() == 0 ? 1 : 6));
        wz3.b(sb, gregorianCalendar.get(1), 4);
        sb.append('-');
        wz3.b(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        wz3.b(sb, gregorianCalendar.get(5), 2);
        sb.append('T');
        wz3.b(sb, gregorianCalendar.get(11), 2);
        sb.append(':');
        wz3.b(sb, gregorianCalendar.get(12), 2);
        sb.append(':');
        wz3.b(sb, gregorianCalendar.get(13), 2);
        sb.append('.');
        wz3.b(sb, gregorianCalendar.get(14), 3);
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i = offset / ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS;
            int iAbs = Math.abs(i / 60);
            int iAbs2 = Math.abs(i % 60);
            sb.append(offset >= 0 ? '+' : '-');
            wz3.b(sb, iAbs, 2);
            sb.append(':');
            wz3.b(sb, iAbs2, 2);
        } else {
            sb.append('Z');
        }
        return sb.toString();
    }

    public static final boolean b(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        return viewTreeObserver != null && viewTreeObserver.isAlive();
    }

    public static cl c(he4 he4Var, nw4 nw4Var) {
        return new cl(zf4.a(he4Var, nw4Var, 1.0f, un1.b, false));
    }

    public static dl d(td4 td4Var, nw4 nw4Var, boolean z) {
        return new dl(zf4.a(td4Var, nw4Var, z ? ib9.c() : 1.0f, vc3.b, false));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static el e(he4 he4Var, nw4 nw4Var, int i) {
        mr3 mr3Var = new mr3();
        mr3Var.b = i;
        ArrayList arrayListA = zf4.a(he4Var, nw4Var, 1.0f, mr3Var, false);
        for (int i2 = 0; i2 < arrayListA.size(); i2++) {
            vf4 vf4Var = (vf4) arrayListA.get(i2);
            kr3 kr3Var = (kr3) vf4Var.b;
            kr3 kr3Var2 = (kr3) vf4Var.c;
            if (kr3Var != null && kr3Var2 != null) {
                float[] fArr = kr3Var.a;
                int length = fArr.length;
                float[] fArr2 = kr3Var2.a;
                if (length != fArr2.length) {
                    int length2 = fArr.length + fArr2.length;
                    float[] fArr3 = new float[length2];
                    System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
                    System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
                    Arrays.sort(fArr3);
                    float f = Float.NaN;
                    int i3 = 0;
                    for (int i4 = 0; i4 < length2; i4++) {
                        float f2 = fArr3[i4];
                        if (f2 != f) {
                            fArr3[i3] = f2;
                            i3++;
                            f = fArr3[i4];
                        }
                    }
                    float[] fArrCopyOfRange = Arrays.copyOfRange(fArr3, 0, i3);
                    vf4Var = new vf4(kr3Var.b(fArrCopyOfRange), kr3Var2.b(fArrCopyOfRange));
                }
            }
            arrayListA.set(i2, vf4Var);
        }
        return new el(arrayListA);
    }

    public static fl f(td4 td4Var, nw4 nw4Var) {
        return new fl(zf4.a(td4Var, nw4Var, 1.0f, c84.b, false));
    }

    public static hl g(he4 he4Var, nw4 nw4Var) {
        return new hl(zf4.a(he4Var, nw4Var, ib9.c(), v96.b, true));
    }
}

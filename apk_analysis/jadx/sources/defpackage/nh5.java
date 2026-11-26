package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzaif;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class nh5 implements rxa {
    public static final /* synthetic */ nh5 c = new nh5(3);
    public static final /* synthetic */ nh5 d = new nh5(4);
    public final /* synthetic */ int b;

    public /* synthetic */ nh5(int i) {
        this.b = i;
    }

    public static final int a(int i, int i2, int i3) {
        if (i3 > 0) {
            if (i < i2) {
                int i4 = i2 % i3;
                if (i4 < 0) {
                    i4 += i3;
                }
                int i5 = i % i3;
                if (i5 < 0) {
                    i5 += i3;
                }
                int i6 = (i4 - i5) % i3;
                if (i6 < 0) {
                    i6 += i3;
                }
                return i2 - i6;
            }
        } else {
            if (i3 >= 0) {
                fg.c("Step is zero.");
                return 0;
            }
            if (i > i2) {
                int i7 = -i3;
                int i8 = i % i7;
                if (i8 < 0) {
                    i8 += i7;
                }
                int i9 = i2 % i7;
                if (i9 < 0) {
                    i9 += i7;
                }
                int i10 = (i8 - i9) % i7;
                if (i10 < 0) {
                    i10 += i7;
                }
                return i10 + i2;
            }
        }
        return i2;
    }

    public static int b(int i) {
        int[] iArr = {1, 2, 3, 4, 5, 6};
        for (int i2 = 0; i2 < 6; i2++) {
            int i3 = iArr[i2];
            int i4 = i3 - 1;
            if (i3 == 0) {
                throw null;
            }
            if (i4 == i) {
                return i3;
            }
        }
        return 1;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 3:
                List list = zzfy.a;
                return Integer.valueOf((int) zzags.zzz());
            default:
                List list2 = zzfy.a;
                return Boolean.valueOf(zzaif.zze());
        }
    }
}

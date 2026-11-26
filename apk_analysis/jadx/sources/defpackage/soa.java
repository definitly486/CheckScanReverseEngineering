package defpackage;

import com.google.android.gms.internal.common.zzab;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class soa extends zzab {
    public Object[] a = new Object[4];
    public int b = 0;
    public boolean c;

    public final soa zza(Object obj) {
        int i;
        obj.getClass();
        int length = this.a.length;
        int i2 = this.b;
        int i3 = i2 + 1;
        if (i3 < 0) {
            fg.c("cannot store more than Integer.MAX_VALUE elements");
            return null;
        }
        if (i3 <= length) {
            i = length;
        } else {
            i = (length >> 1) + length + 1;
            if (i < i3) {
                int iHighestOneBit = Integer.highestOneBit(i2);
                i = iHighestOneBit + iHighestOneBit;
            }
            if (i < 0) {
                i = Integer.MAX_VALUE;
            }
        }
        if (i > length || this.c) {
            this.a = Arrays.copyOf(this.a, i);
            this.c = false;
        }
        Object[] objArr = this.a;
        int i4 = this.b;
        this.b = i4 + 1;
        objArr[i4] = obj;
        return this;
    }
}

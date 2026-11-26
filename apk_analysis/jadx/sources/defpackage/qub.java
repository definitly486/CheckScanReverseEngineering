package defpackage;

import com.google.android.gms.internal.mlkit_vision_common.zzk;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class qub extends zzk {
    public Object[] a;
    public int b;
    public boolean c;

    public final qub zza(Object obj) {
        obj.getClass();
        int i = this.b;
        int i2 = i + 1;
        Object[] objArrCopyOf = this.a;
        int length = objArrCopyOf.length;
        if (length < i2) {
            int i3 = length + (length >> 1) + 1;
            if (i3 < i2) {
                int iHighestOneBit = Integer.highestOneBit(i);
                i3 = iHighestOneBit + iHighestOneBit;
            }
            if (i3 < 0) {
                i3 = Integer.MAX_VALUE;
            }
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, i3);
            this.a = objArrCopyOf;
            this.c = false;
        } else if (this.c) {
            objArrCopyOf = (Object[]) objArrCopyOf.clone();
            this.a = objArrCopyOf;
            this.c = false;
        }
        int i4 = this.b;
        this.b = i4 + 1;
        objArrCopyOf[i4] = obj;
        return this;
    }
}

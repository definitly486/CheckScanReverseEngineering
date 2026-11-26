package defpackage;

import java.util.Arrays;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public final class x9c implements Comparable {
    public static final /* synthetic */ long d = pz0.a.objectFieldOffset(x9c.class.getDeclaredField("c"));
    public final String b;
    public volatile Object c;

    public /* synthetic */ x9c(String str, byte[] bArr) {
        this.b = str;
        this.c = bArr;
    }

    public final /* synthetic */ void a(byte[] bArr) {
        byte[][] bArr2;
        x9c x9cVar;
        int i = 0;
        while (true) {
            Object obj = this.c;
            if (!(obj instanceof byte[])) {
                byte[][] bArr3 = (byte[][]) obj;
                while (true) {
                    int length = bArr3.length;
                    if (i >= length) {
                        bArr2 = (byte[][]) Arrays.copyOf(bArr3, length + 1);
                        bArr2[length] = bArr;
                        break;
                    } else if (Arrays.equals(bArr, bArr3[i])) {
                        return;
                    } else {
                        i++;
                    }
                }
            } else {
                byte[] bArr4 = (byte[]) obj;
                if (Arrays.equals(bArr, bArr4)) {
                    return;
                }
                i = 1;
                bArr2 = new byte[][]{bArr4, bArr};
            }
            byte[][] bArr5 = bArr2;
            while (true) {
                Unsafe unsafe = pz0.a;
                long j = d;
                x9cVar = this;
                if (unsafe.compareAndSwapObject(x9cVar, j, obj, bArr5)) {
                    return;
                }
                if (unsafe.getObjectVolatile(x9cVar, j) != obj) {
                    break;
                } else {
                    this = x9cVar;
                }
            }
            this = x9cVar;
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return this.b.compareTo((String) obj);
    }
}

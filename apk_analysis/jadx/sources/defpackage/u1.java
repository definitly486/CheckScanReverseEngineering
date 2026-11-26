package defpackage;

import android.net.Uri;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public abstract class u1 implements sl {
    public final /* synthetic */ int a;
    public Object b;

    public u1(int i, byte b) {
        this.a = i;
        switch (i) {
            case 3:
                this.b = new ArrayDeque(20);
                break;
            case 4:
                this.b = Collections.newSetFromMap(new IdentityHashMap());
                break;
            case 5:
                this.b = new HashMap();
                break;
            case 6:
                this.b = new n4a(pp9.d);
                break;
            default:
                this.b = ByteBuffer.allocate(23).order(ByteOrder.LITTLE_ENDIAN);
                break;
        }
    }

    @Override // defpackage.sl
    public List b() {
        return (List) this.b;
    }

    @Override // defpackage.sl
    public boolean c() {
        List list = (List) this.b;
        return list.isEmpty() || (list.size() == 1 && ((vf4) list.get(0)).c());
    }

    public abstract Object d(Object obj);

    public Object e(Object obj) {
        synchronized (((HashMap) this.b)) {
            try {
                if (((HashMap) this.b).containsKey(obj)) {
                    return ((HashMap) this.b).get(obj);
                }
                Object objD = d(obj);
                ((HashMap) this.b).put(obj, objD);
                return objD;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract nl3 f();

    public z08 g(Uri uri) {
        oz7 oz7Var = new oz7(new gd0(this));
        zl9 zl9Var = (zl9) this.b;
        return new z08(oz7Var, new rm3.j(zl9Var != null ? zl9Var.g(uri) : new oz7(new hd0(uri))));
    }

    public abstract void h();

    public abstract void i();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public tu3.a j() {
        long unsignedInt;
        long unsignedInt2;
        long unsignedInt3;
        long unsignedInt4;
        long unsignedInt5;
        long unsignedInt6;
        long unsignedInt7;
        k();
        ByteBuffer byteBuffer = (ByteBuffer) this.b;
        byteBuffer.flip();
        if (byteBuffer.remaining() > 0) {
            mg5.a aVar = (mg5.a) this;
            aVar.e = byteBuffer.remaining() + aVar.e;
            char c = 24;
            long unsignedInt8 = 0;
            switch (byteBuffer.remaining()) {
                case 1:
                    unsignedInt = 0;
                    unsignedInt7 = unsignedInt ^ ((long) Byte.toUnsignedInt(byteBuffer.get(0)));
                    aVar.c = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ aVar.c;
                    aVar.d ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 2:
                    unsignedInt2 = 0;
                    unsignedInt = unsignedInt2 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(1))) << 8);
                    unsignedInt7 = unsignedInt ^ ((long) Byte.toUnsignedInt(byteBuffer.get(0)));
                    aVar.c = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ aVar.c;
                    aVar.d ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 3:
                    unsignedInt3 = 0;
                    unsignedInt2 = unsignedInt3 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(2))) << 16);
                    unsignedInt = unsignedInt2 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(1))) << 8);
                    unsignedInt7 = unsignedInt ^ ((long) Byte.toUnsignedInt(byteBuffer.get(0)));
                    aVar.c = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ aVar.c;
                    aVar.d ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 4:
                    c = 24;
                    unsignedInt4 = 0;
                    unsignedInt3 = unsignedInt4 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(3))) << c);
                    unsignedInt2 = unsignedInt3 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(2))) << 16);
                    unsignedInt = unsignedInt2 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(1))) << 8);
                    unsignedInt7 = unsignedInt ^ ((long) Byte.toUnsignedInt(byteBuffer.get(0)));
                    aVar.c = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ aVar.c;
                    aVar.d ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 5:
                    unsignedInt5 = 0;
                    unsignedInt4 = unsignedInt5 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(4))) << 32);
                    unsignedInt3 = unsignedInt4 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(3))) << c);
                    unsignedInt2 = unsignedInt3 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(2))) << 16);
                    unsignedInt = unsignedInt2 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(1))) << 8);
                    unsignedInt7 = unsignedInt ^ ((long) Byte.toUnsignedInt(byteBuffer.get(0)));
                    aVar.c = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ aVar.c;
                    aVar.d ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 6:
                    unsignedInt6 = 0;
                    unsignedInt5 = (((long) Byte.toUnsignedInt(byteBuffer.get(5))) << 40) ^ unsignedInt6;
                    unsignedInt4 = unsignedInt5 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(4))) << 32);
                    unsignedInt3 = unsignedInt4 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(3))) << c);
                    unsignedInt2 = unsignedInt3 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(2))) << 16);
                    unsignedInt = unsignedInt2 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(1))) << 8);
                    unsignedInt7 = unsignedInt ^ ((long) Byte.toUnsignedInt(byteBuffer.get(0)));
                    aVar.c = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ aVar.c;
                    aVar.d ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 7:
                    unsignedInt6 = ((long) Byte.toUnsignedInt(byteBuffer.get(6))) << 48;
                    unsignedInt5 = (((long) Byte.toUnsignedInt(byteBuffer.get(5))) << 40) ^ unsignedInt6;
                    unsignedInt4 = unsignedInt5 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(4))) << 32);
                    unsignedInt3 = unsignedInt4 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(3))) << c);
                    unsignedInt2 = unsignedInt3 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(2))) << 16);
                    unsignedInt = unsignedInt2 ^ (((long) Byte.toUnsignedInt(byteBuffer.get(1))) << 8);
                    unsignedInt7 = unsignedInt ^ ((long) Byte.toUnsignedInt(byteBuffer.get(0)));
                    aVar.c = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ aVar.c;
                    aVar.d ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 8:
                    unsignedInt7 = byteBuffer.getLong();
                    aVar.c = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ aVar.c;
                    aVar.d ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 9:
                    unsignedInt8 ^= (long) Byte.toUnsignedInt(byteBuffer.get(8));
                    unsignedInt7 = byteBuffer.getLong();
                    aVar.c = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ aVar.c;
                    aVar.d ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 10:
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(9))) << 8;
                    unsignedInt8 ^= (long) Byte.toUnsignedInt(byteBuffer.get(8));
                    unsignedInt7 = byteBuffer.getLong();
                    aVar.c = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ aVar.c;
                    aVar.d ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 11:
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(10))) << 16;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(9))) << 8;
                    unsignedInt8 ^= (long) Byte.toUnsignedInt(byteBuffer.get(8));
                    unsignedInt7 = byteBuffer.getLong();
                    aVar.c = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ aVar.c;
                    aVar.d ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 12:
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(11))) << 24;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(10))) << 16;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(9))) << 8;
                    unsignedInt8 ^= (long) Byte.toUnsignedInt(byteBuffer.get(8));
                    unsignedInt7 = byteBuffer.getLong();
                    aVar.c = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ aVar.c;
                    aVar.d ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 13:
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(12))) << 32;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(11))) << 24;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(10))) << 16;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(9))) << 8;
                    unsignedInt8 ^= (long) Byte.toUnsignedInt(byteBuffer.get(8));
                    unsignedInt7 = byteBuffer.getLong();
                    aVar.c = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ aVar.c;
                    aVar.d ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 14:
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(13))) << 40;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(12))) << 32;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(11))) << 24;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(10))) << 16;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(9))) << 8;
                    unsignedInt8 ^= (long) Byte.toUnsignedInt(byteBuffer.get(8));
                    unsignedInt7 = byteBuffer.getLong();
                    aVar.c = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ aVar.c;
                    aVar.d ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                case 15:
                    unsignedInt8 = ((long) Byte.toUnsignedInt(byteBuffer.get(14))) << 48;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(13))) << 40;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(12))) << 32;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(11))) << 24;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(10))) << 16;
                    unsignedInt8 ^= ((long) Byte.toUnsignedInt(byteBuffer.get(9))) << 8;
                    unsignedInt8 ^= (long) Byte.toUnsignedInt(byteBuffer.get(8));
                    unsignedInt7 = byteBuffer.getLong();
                    aVar.c = (Long.rotateLeft(unsignedInt7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ aVar.c;
                    aVar.d ^= Long.rotateLeft(unsignedInt8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    byteBuffer.position(byteBuffer.limit());
                    break;
                default:
                    xg.d("Should never get here.");
                    return null;
            }
        }
        mg5.a aVar2 = (mg5.a) this;
        long j = aVar2.c;
        long j2 = aVar2.e;
        long j3 = j ^ j2;
        long j4 = j2 ^ aVar2.d;
        long j5 = j3 + j4;
        long j6 = j4 + j5;
        long j7 = (j5 ^ (j5 >>> 33)) * (-49064778989728563L);
        long j8 = (j7 ^ (j7 >>> 33)) * (-4265267296055464877L);
        long j9 = (j6 ^ (j6 >>> 33)) * (-49064778989728563L);
        long j10 = (j9 ^ (j9 >>> 33)) * (-4265267296055464877L);
        long j11 = j10 ^ (j10 >>> 33);
        long j12 = (j8 ^ (j8 >>> 33)) + j11;
        aVar2.c = j12;
        aVar2.d = j11 + j12;
        return new tu3.a(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(aVar2.c).putLong(aVar2.d).array());
    }

    public void k() {
        ByteBuffer byteBuffer = (ByteBuffer) this.b;
        byteBuffer.flip();
        while (byteBuffer.remaining() >= 16) {
            m(byteBuffer);
        }
        byteBuffer.compact();
    }

    public void l(ia6 ia6Var) {
        ArrayDeque arrayDeque = (ArrayDeque) this.b;
        if (arrayDeque.size() < 20) {
            arrayDeque.offer(ia6Var);
        }
    }

    public abstract void m(ByteBuffer byteBuffer);

    public u1 n(byte[] bArr) {
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr, 0, bArr.length).order(ByteOrder.LITTLE_ENDIAN);
        int iRemaining = byteBufferOrder.remaining();
        ByteBuffer byteBuffer = (ByteBuffer) this.b;
        if (iRemaining <= byteBuffer.remaining()) {
            byteBuffer.put(byteBufferOrder);
            if (byteBuffer.remaining() < 8) {
                k();
            }
            return this;
        }
        int iPosition = 16 - byteBuffer.position();
        for (int i = 0; i < iPosition; i++) {
            byteBuffer.put(byteBufferOrder.get());
        }
        k();
        while (byteBufferOrder.remaining() >= 16) {
            m(byteBufferOrder);
        }
        byteBuffer.put(byteBufferOrder);
        return this;
    }

    public void o(Object obj, boolean z) {
        Set set = (Set) this.b;
        int size = set.size();
        if (z) {
            set.add(obj);
            if (size == 0) {
                h();
                return;
            }
            return;
        }
        if (set.remove(obj) && size == 1) {
            i();
        }
    }

    public String toString() {
        switch (this.a) {
            case 1:
                StringBuilder sb = new StringBuilder();
                List list = (List) this.b;
                if (!list.isEmpty()) {
                    sb.append("values=");
                    sb.append(Arrays.toString(list.toArray()));
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public u1(List list) {
        this.a = 1;
        this.b = list;
    }

    public u1(int i) {
        this.a = 2;
        this.b = null;
    }
}

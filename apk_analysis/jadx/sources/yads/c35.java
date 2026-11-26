package yads;

import androidx.media3.container.Mp4Box;
import java.nio.ByteBuffer;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public abstract class c35 {
    public static b35 a(byte[] bArr) {
        os4 os4Var = new os4(bArr);
        if (os4Var.c < 32) {
            return null;
        }
        os4Var.e(0);
        if (os4Var.a() != (os4Var.c - os4Var.b) + 4 || os4Var.a() != 1886614376) {
            return null;
        }
        int iA = (os4Var.a() >> 24) & 255;
        if (iA > 1) {
            qt3.a(iA, "Unsupported pssh version: ", "PsshAtomUtil");
            return null;
        }
        UUID uuid = new UUID(os4Var.g(), os4Var.g());
        if (iA == 1) {
            os4Var.e(os4Var.b + (os4Var.n() * 16));
        }
        int iN = os4Var.n();
        if (iN != os4Var.c - os4Var.b) {
            return null;
        }
        byte[] bArr2 = new byte[iN];
        os4Var.a(bArr2, 0, iN);
        return new b35(uuid, iA, bArr2);
    }

    public static byte[] a(UUID uuid, UUID[] uuidArr, byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        if (uuidArr != null) {
            length = defpackage.ti0.b(uuidArr.length, 16, 4, length);
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        byteBufferAllocate.putInt(length);
        byteBufferAllocate.putInt(Mp4Box.TYPE_pssh);
        byteBufferAllocate.putInt(uuidArr != null ? 16777216 : 0);
        byteBufferAllocate.putLong(uuid.getMostSignificantBits());
        byteBufferAllocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            byteBufferAllocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                byteBufferAllocate.putLong(uuid2.getMostSignificantBits());
                byteBufferAllocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (bArr != null && bArr.length != 0) {
            byteBufferAllocate.putInt(bArr.length);
            byteBufferAllocate.put(bArr);
        }
        return byteBufferAllocate.array();
    }
}

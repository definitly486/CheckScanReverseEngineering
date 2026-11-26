package androidx.room.util;

import java.nio.ByteBuffer;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public final class UUIDUtil {
    public static final UUID convertByteToUUID(byte[] bArr) {
        bArr.getClass();
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        return new UUID(byteBufferWrap.getLong(), byteBufferWrap.getLong());
    }

    public static final byte[] convertUUIDToByte(UUID uuid) {
        uuid.getClass();
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[16]);
        byteBufferWrap.putLong(uuid.getMostSignificantBits());
        byteBufferWrap.putLong(uuid.getLeastSignificantBits());
        byte[] bArrArray = byteBufferWrap.array();
        bArrArray.getClass();
        return bArrArray;
    }
}

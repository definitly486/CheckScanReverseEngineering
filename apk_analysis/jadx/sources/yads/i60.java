package yads;

import androidx.media3.datasource.cache.ContentMetadata;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public interface i60 {
    static long a(i60 i60Var) {
        byte[] bArr = (byte[]) ((fk0) i60Var).b.get(ContentMetadata.KEY_CONTENT_LENGTH);
        if (bArr != null) {
            return ByteBuffer.wrap(bArr).getLong();
        }
        return -1L;
    }
}

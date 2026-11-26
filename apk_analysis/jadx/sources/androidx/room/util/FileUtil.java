package androidx.room.util;

import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;

/* JADX INFO: loaded from: classes3.dex */
public final class FileUtil {
    public static final void copy(ReadableByteChannel readableByteChannel, FileChannel fileChannel) throws IOException {
        readableByteChannel.getClass();
        fileChannel.getClass();
        try {
            fileChannel.transferFrom(readableByteChannel, 0L, Long.MAX_VALUE);
            fileChannel.force(false);
        } finally {
            readableByteChannel.close();
            fileChannel.close();
        }
    }
}

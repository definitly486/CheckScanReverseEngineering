package yads;

import androidx.media3.common.PlaybackException;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public final class ia3 extends ja3 {
    public ia3(IOException iOException) {
        super("Cleartext HTTP traffic not permitted. See https://exoplayer.dev/issues/cleartext-not-permitted", iOException, PlaybackException.ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED);
    }
}

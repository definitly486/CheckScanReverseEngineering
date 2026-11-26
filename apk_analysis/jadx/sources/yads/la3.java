package yads;

import androidx.media3.common.PlaybackException;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class la3 extends ja3 {
    public final int e;

    public la3(int i, xc0 xc0Var, Map map) {
        super(vx4.a(i, "Response code: "), xc0Var, PlaybackException.ERROR_CODE_IO_BAD_HTTP_STATUS);
        this.e = i;
    }
}

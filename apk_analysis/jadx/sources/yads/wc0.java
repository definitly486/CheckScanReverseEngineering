package yads;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public interface wc0 extends tc0 {
    long a(bd0 bd0Var);

    void a(p16 p16Var);

    default Map b() {
        return Collections.EMPTY_MAP;
    }

    void close();

    Uri d();
}

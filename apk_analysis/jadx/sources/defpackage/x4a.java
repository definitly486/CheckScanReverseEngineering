package defpackage;

import java.net.URI;
import java.net.URL;

/* JADX INFO: loaded from: classes4.dex */
public final class x4a extends gh4 implements ll3<URL> {
    @Override // defpackage.ll3
    public final URL invoke() {
        return new URI("https://stats.rustore.ru").resolve("/v1/send_custom_event_batch").toURL();
    }
}

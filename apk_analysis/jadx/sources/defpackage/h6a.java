package defpackage;

import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public final class h6a extends gh4 implements ll3<String> {
    public final /* synthetic */ URL f;
    public final /* synthetic */ int g;
    public final /* synthetic */ String h;
    public final /* synthetic */ String i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h6a(URL url, int i, String str, String str2) {
        super(0);
        this.f = url;
        this.g = i;
        this.h = str;
        this.i = str2;
    }

    @Override // defpackage.ll3
    public final String invoke() {
        return na8.i("\n                    HTTP REQUEST\n                    URL: " + this.f + "\n                    CODE: " + this.g + "\n                    BODY: " + this.h + "\n                    HEADER X-Metrics-Request-Time: " + this.i + "\n                ");
    }
}

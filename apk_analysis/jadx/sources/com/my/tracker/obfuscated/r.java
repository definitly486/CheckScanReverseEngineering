package com.my.tracker.obfuscated;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes4.dex */
public class r implements w0.a {
    private final q a;

    public r(q qVar) {
        this.a = qVar;
    }

    @Override // com.my.tracker.obfuscated.w0.a
    public void a(OutputStream outputStream) throws IOException {
        this.a.a(outputStream);
    }

    @Override // com.my.tracker.obfuscated.w0.a
    public String a() {
        return "application/octet-stream";
    }
}

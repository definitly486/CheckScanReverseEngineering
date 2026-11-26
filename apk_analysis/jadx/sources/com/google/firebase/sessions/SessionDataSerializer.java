package com.google.firebase.sessions;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import defpackage.e02;
import defpackage.ex0;
import defpackage.ha1;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ra8;
import defpackage.xb4;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class SessionDataSerializer implements Serializer<SessionData> {
    private final SessionGenerator sessionGenerator;

    public SessionDataSerializer(SessionGenerator sessionGenerator) {
        sessionGenerator.getClass();
        this.sessionGenerator = sessionGenerator;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.datastore.core.Serializer
    public SessionData getDefaultValue() {
        return new SessionData(this.sessionGenerator.generateNewSession(null), (Time) null, (Map) null, 6, (jh2) null);
    }

    @Override // androidx.datastore.core.Serializer
    public Object readFrom(InputStream inputStream, e02<? super SessionData> e02Var) throws CorruptionException {
        try {
            xb4.a aVar = xb4.d;
            String strT = ra8.t(ex0.d(inputStream));
            aVar.getClass();
            return (SessionData) aVar.a(SessionData.Companion.serializer(), strT);
        } catch (Exception e) {
            throw new CorruptionException("Cannot parse session data", e);
        }
    }

    /* JADX INFO: renamed from: writeTo, reason: avoid collision after fix types in other method */
    public Object writeTo2(SessionData sessionData, OutputStream outputStream, e02<? super j59> e02Var) throws IOException {
        byte[] bytes = xb4.d.b(SessionData.Companion.serializer(), sessionData).getBytes(ha1.b);
        bytes.getClass();
        outputStream.write(bytes);
        return j59.a;
    }

    @Override // androidx.datastore.core.Serializer
    public /* bridge */ /* synthetic */ Object writeTo(SessionData sessionData, OutputStream outputStream, e02 e02Var) {
        return writeTo2(sessionData, outputStream, (e02<? super j59>) e02Var);
    }
}

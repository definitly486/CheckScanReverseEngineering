package com.google.firebase.sessions.settings;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import defpackage.e02;
import defpackage.ex0;
import defpackage.ha1;
import defpackage.j59;
import defpackage.ra8;
import defpackage.xb4;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes4.dex */
public final class SessionConfigsSerializer implements Serializer<SessionConfigs> {
    public static final SessionConfigsSerializer INSTANCE = new SessionConfigsSerializer();
    private static final SessionConfigs defaultValue = new SessionConfigs(null, null, null, null, null);

    private SessionConfigsSerializer() {
    }

    @Override // androidx.datastore.core.Serializer
    public Object readFrom(InputStream inputStream, e02<? super SessionConfigs> e02Var) throws CorruptionException {
        try {
            xb4.a aVar = xb4.d;
            String strT = ra8.t(ex0.d(inputStream));
            aVar.getClass();
            return (SessionConfigs) aVar.a(SessionConfigs.Companion.serializer(), strT);
        } catch (Exception e) {
            throw new CorruptionException("Cannot parse session configs", e);
        }
    }

    /* JADX INFO: renamed from: writeTo, reason: avoid collision after fix types in other method */
    public Object writeTo2(SessionConfigs sessionConfigs, OutputStream outputStream, e02<? super j59> e02Var) throws IOException {
        byte[] bytes = xb4.d.b(SessionConfigs.Companion.serializer(), sessionConfigs).getBytes(ha1.b);
        bytes.getClass();
        outputStream.write(bytes);
        return j59.a;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.datastore.core.Serializer
    public SessionConfigs getDefaultValue() {
        return defaultValue;
    }

    @Override // androidx.datastore.core.Serializer
    public /* bridge */ /* synthetic */ Object writeTo(SessionConfigs sessionConfigs, OutputStream outputStream, e02 e02Var) {
        return writeTo2(sessionConfigs, outputStream, (e02<? super j59>) e02Var);
    }
}

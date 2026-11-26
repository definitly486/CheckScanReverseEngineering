package com.google.protobuf;

import com.google.protobuf.a0;
import defpackage.x36;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b<MessageType extends a0> implements x36<MessageType> {
    public static final j a = j.a();

    public static void c(o oVar) throws InvalidProtocolBufferException {
        if (oVar != null && !oVar.isInitialized()) {
            throw new InvalidProtocolBufferException(oVar.newUninitializedMessageException().getMessage());
        }
    }

    @Override // defpackage.x36
    public final o a(f fVar, j jVar) throws InvalidProtocolBufferException {
        o partialFrom = o.parsePartialFrom(((o.b) this).b, fVar, jVar);
        c(partialFrom);
        return partialFrom;
    }

    @Override // defpackage.x36
    public final o b(FileInputStream fileInputStream) throws InvalidProtocolBufferException {
        f fVarG = f.g(fileInputStream);
        o partialFrom = o.parsePartialFrom(((o.b) this).b, fVarG, a);
        fVarG.a(0);
        c(partialFrom);
        return partialFrom;
    }
}

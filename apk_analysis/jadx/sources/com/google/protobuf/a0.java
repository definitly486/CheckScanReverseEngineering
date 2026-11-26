package com.google.protobuf;

import defpackage.fx0;
import defpackage.ha5;
import defpackage.x36;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes4.dex */
public interface a0 extends ha5 {

    public interface a extends ha5, Cloneable {
        a0 build();

        a0 buildPartial();

        a mergeFrom(a0 a0Var);

        a mergeFrom(f fVar, j jVar);
    }

    x36<? extends a0> getParserForType();

    int getSerializedSize();

    a newBuilderForType();

    a toBuilder();

    byte[] toByteArray();

    fx0 toByteString();

    void writeTo(CodedOutputStream codedOutputStream);

    void writeTo(OutputStream outputStream);
}

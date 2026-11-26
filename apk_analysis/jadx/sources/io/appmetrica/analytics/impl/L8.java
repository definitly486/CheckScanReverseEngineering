package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateSerializer;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

/* JADX INFO: loaded from: classes5.dex */
public final class L8 extends M8 implements ProtobufStateSerializer {
    public L8(ProtobufStateSerializer<MessageNano> protobufStateSerializer, AESEncrypter aESEncrypter) {
        super(protobufStateSerializer, aESEncrypter);
    }
}

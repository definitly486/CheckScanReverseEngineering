package io.appmetrica.analytics.billing.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class v extends MessageNano {
    public static volatile v[] d;
    public boolean a;
    public u b;
    public t c;

    public v() {
        a();
    }

    public static v[] b() {
        if (d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (d == null) {
                        d = new v[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final v mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 8) {
                this.a = codedInputByteBufferNano.readBool();
            } else if (tag == 18) {
                u uVar = this.b;
                if (uVar == null) {
                    uVar = new u();
                    this.b = uVar;
                }
                codedInputByteBufferNano.readMessage(uVar);
            } else if (tag == 26) {
                t tVar = this.c;
                if (tVar == null) {
                    tVar = new t();
                    this.c = tVar;
                }
                codedInputByteBufferNano.readMessage(tVar);
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        boolean z = this.a;
        if (z) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(1, z);
        }
        u uVar = this.b;
        if (uVar != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, uVar);
        }
        t tVar = this.c;
        return tVar != null ? CodedOutputByteBufferNano.computeMessageSize(3, tVar) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        boolean z = this.a;
        if (z) {
            codedOutputByteBufferNano.writeBool(1, z);
        }
        u uVar = this.b;
        if (uVar != null) {
            codedOutputByteBufferNano.writeMessage(2, uVar);
        }
        t tVar = this.c;
        if (tVar != null) {
            codedOutputByteBufferNano.writeMessage(3, tVar);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static v b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new v().mergeFrom(codedInputByteBufferNano);
    }

    public final v a() {
        this.a = false;
        this.b = null;
        this.c = null;
        this.cachedSize = -1;
        return this;
    }

    public static v a(byte[] bArr) {
        return (v) MessageNano.mergeFrom(new v(), bArr);
    }
}

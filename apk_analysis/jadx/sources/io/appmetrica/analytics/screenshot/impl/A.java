package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class A extends MessageNano {
    public static volatile A[] c;
    public boolean a;
    public z b;

    public A() {
        a();
    }

    public static A[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new A[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final A mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 8) {
                this.a = codedInputByteBufferNano.readBool();
            } else if (tag == 18) {
                z zVar = this.b;
                if (zVar == null) {
                    zVar = new z();
                    this.b = zVar;
                }
                codedInputByteBufferNano.readMessage(zVar);
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
        if (!z) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBoolSize(1, z);
        }
        z zVar = this.b;
        return zVar != null ? CodedOutputByteBufferNano.computeMessageSize(2, zVar) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        boolean z = this.a;
        if (!z) {
            codedOutputByteBufferNano.writeBool(1, z);
        }
        z zVar = this.b;
        if (zVar != null) {
            codedOutputByteBufferNano.writeMessage(2, zVar);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static A b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new A().mergeFrom(codedInputByteBufferNano);
    }

    public final A a() {
        this.a = true;
        this.b = null;
        this.cachedSize = -1;
        return this;
    }

    public static A a(byte[] bArr) {
        return (A) MessageNano.mergeFrom(new A(), bArr);
    }
}

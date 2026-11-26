package io.appmetrica.analytics.idsync.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class p extends MessageNano {
    public static final int c = 0;
    public static final int d = 1;
    public static volatile p[] e;
    public boolean a;
    public o b;

    public p() {
        a();
    }

    public static p[] b() {
        if (e == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (e == null) {
                        e = new p[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final p mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 8) {
                this.a = codedInputByteBufferNano.readBool();
            } else if (tag == 18) {
                o oVar = this.b;
                if (oVar == null) {
                    oVar = new o();
                    this.b = oVar;
                }
                codedInputByteBufferNano.readMessage(oVar);
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
        o oVar = this.b;
        return oVar != null ? CodedOutputByteBufferNano.computeMessageSize(2, oVar) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        boolean z = this.a;
        if (z) {
            codedOutputByteBufferNano.writeBool(1, z);
        }
        o oVar = this.b;
        if (oVar != null) {
            codedOutputByteBufferNano.writeMessage(2, oVar);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static p b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new p().mergeFrom(codedInputByteBufferNano);
    }

    public final p a() {
        this.a = false;
        this.b = null;
        this.cachedSize = -1;
        return this;
    }

    public static p a(byte[] bArr) {
        return (p) MessageNano.mergeFrom(new p(), bArr);
    }
}

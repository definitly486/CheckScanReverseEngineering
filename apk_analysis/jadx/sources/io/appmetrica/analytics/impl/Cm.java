package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class Cm extends MessageNano {
    public static volatile Cm[] c;
    public String a;
    public Bm b;

    public Cm() {
        a();
    }

    public static Cm[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new Cm[0];
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
    public final Cm mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readString();
            } else if (tag == 18) {
                Bm bm = this.b;
                if (bm == null) {
                    bm = new Bm();
                    this.b = bm;
                }
                codedInputByteBufferNano.readMessage(bm);
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (!this.a.equals("")) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeStringSize(1, this.a);
        }
        Bm bm = this.b;
        return bm != null ? CodedOutputByteBufferNano.computeMessageSize(2, bm) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
        if (!this.a.equals("")) {
            codedOutputByteBufferNano.writeString(1, this.a);
        }
        Bm bm = this.b;
        if (bm != null) {
            codedOutputByteBufferNano.writeMessage(2, bm);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static Cm b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Cm().mergeFrom(codedInputByteBufferNano);
    }

    public final Cm a() {
        this.a = "";
        this.b = null;
        this.cachedSize = -1;
        return this;
    }

    public static Cm a(byte[] bArr) {
        return (Cm) MessageNano.mergeFrom(new Cm(), bArr);
    }
}

package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class z extends MessageNano {
    public static volatile z[] d;
    public w a;
    public y b;
    public x c;

    public z() {
        a();
    }

    public static z[] b() {
        if (d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (d == null) {
                        d = new z[0];
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
    public final z mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                w wVar = this.a;
                if (wVar == null) {
                    wVar = new w();
                    this.a = wVar;
                }
                codedInputByteBufferNano.readMessage(wVar);
            } else if (tag == 18) {
                y yVar = this.b;
                if (yVar == null) {
                    yVar = new y();
                    this.b = yVar;
                }
                codedInputByteBufferNano.readMessage(yVar);
            } else if (tag == 26) {
                x xVar = this.c;
                if (xVar == null) {
                    xVar = new x();
                    this.c = xVar;
                }
                codedInputByteBufferNano.readMessage(xVar);
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        w wVar = this.a;
        if (wVar != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, wVar);
        }
        y yVar = this.b;
        if (yVar != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, yVar);
        }
        x xVar = this.c;
        return xVar != null ? CodedOutputByteBufferNano.computeMessageSize(3, xVar) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        w wVar = this.a;
        if (wVar != null) {
            codedOutputByteBufferNano.writeMessage(1, wVar);
        }
        y yVar = this.b;
        if (yVar != null) {
            codedOutputByteBufferNano.writeMessage(2, yVar);
        }
        x xVar = this.c;
        if (xVar != null) {
            codedOutputByteBufferNano.writeMessage(3, xVar);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static z b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new z().mergeFrom(codedInputByteBufferNano);
    }

    public final z a() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.cachedSize = -1;
        return this;
    }

    public static z a(byte[] bArr) {
        return (z) MessageNano.mergeFrom(new z(), bArr);
    }
}

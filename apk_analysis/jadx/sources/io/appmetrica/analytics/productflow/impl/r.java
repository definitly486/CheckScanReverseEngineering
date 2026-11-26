package io.appmetrica.analytics.productflow.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class r extends MessageNano {
    public static volatile r[] d;
    public byte[] a;
    public long b;
    public int c;

    public r() {
        a();
    }

    public static r[] b() {
        if (d == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (d == null) {
                        d = new r[0];
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
    public final r mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readBytes();
            } else if (tag == 16) {
                this.b = codedInputByteBufferNano.readInt64();
            } else if (tag == 24) {
                this.c = codedInputByteBufferNano.readInt32();
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        if (!Arrays.equals(this.a, WireFormatNano.EMPTY_BYTES)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.a);
        }
        long j = this.b;
        if (j != 0) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeInt64Size(2, j);
        }
        int i = this.c;
        return i != 0 ? CodedOutputByteBufferNano.computeInt32Size(3, i) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        if (!Arrays.equals(this.a, WireFormatNano.EMPTY_BYTES)) {
            codedOutputByteBufferNano.writeBytes(1, this.a);
        }
        long j = this.b;
        if (j != 0) {
            codedOutputByteBufferNano.writeInt64(2, j);
        }
        int i = this.c;
        if (i != 0) {
            codedOutputByteBufferNano.writeInt32(3, i);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static r b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new r().mergeFrom(codedInputByteBufferNano);
    }

    public final r a() {
        this.a = WireFormatNano.EMPTY_BYTES;
        this.b = 0L;
        this.c = 0;
        this.cachedSize = -1;
        return this;
    }

    public static r a(byte[] bArr) {
        return (r) MessageNano.mergeFrom(new r(), bArr);
    }
}

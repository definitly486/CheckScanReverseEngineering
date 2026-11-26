package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class B8 extends MessageNano {
    public static volatile B8[] e;
    public byte[] a;
    public C1199q8 b;
    public byte[] c;
    public C1352w8 d;

    public B8() {
        a();
    }

    public static B8[] b() {
        if (e == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (e == null) {
                        e = new B8[0];
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
    public final B8 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                this.a = codedInputByteBufferNano.readBytes();
            } else if (tag == 18) {
                C1199q8 c1199q8 = this.b;
                if (c1199q8 == null) {
                    c1199q8 = new C1199q8();
                    this.b = c1199q8;
                }
                codedInputByteBufferNano.readMessage(c1199q8);
            } else if (tag == 26) {
                this.c = codedInputByteBufferNano.readBytes();
            } else if (tag == 34) {
                C1352w8 c1352w8 = this.d;
                if (c1352w8 == null) {
                    c1352w8 = new C1352w8();
                    this.d = c1352w8;
                }
                codedInputByteBufferNano.readMessage(c1352w8);
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        byte[] bArr = this.a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(1, this.a);
        }
        C1199q8 c1199q8 = this.b;
        if (c1199q8 != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(2, c1199q8);
        }
        if (!Arrays.equals(this.c, bArr2)) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeBytesSize(3, this.c);
        }
        C1352w8 c1352w8 = this.d;
        return c1352w8 != null ? CodedOutputByteBufferNano.computeMessageSize(4, c1352w8) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        byte[] bArr = this.a;
        byte[] bArr2 = WireFormatNano.EMPTY_BYTES;
        if (!Arrays.equals(bArr, bArr2)) {
            codedOutputByteBufferNano.writeBytes(1, this.a);
        }
        C1199q8 c1199q8 = this.b;
        if (c1199q8 != null) {
            codedOutputByteBufferNano.writeMessage(2, c1199q8);
        }
        if (!Arrays.equals(this.c, bArr2)) {
            codedOutputByteBufferNano.writeBytes(3, this.c);
        }
        C1352w8 c1352w8 = this.d;
        if (c1352w8 != null) {
            codedOutputByteBufferNano.writeMessage(4, c1352w8);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static B8 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new B8().mergeFrom(codedInputByteBufferNano);
    }

    public final B8 a() {
        byte[] bArr = WireFormatNano.EMPTY_BYTES;
        this.a = bArr;
        this.b = null;
        this.c = bArr;
        this.d = null;
        this.cachedSize = -1;
        return this;
    }

    public static B8 a(byte[] bArr) {
        return (B8) MessageNano.mergeFrom(new B8(), bArr);
    }
}

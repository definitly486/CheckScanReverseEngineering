package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class uo extends MessageNano {
    public static volatile uo[] b;
    public C1240ro[] a;

    public uo() {
        a();
    }

    public static uo[] b() {
        if (b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (b == null) {
                        b = new uo[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return b;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final uo mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                C1240ro[] c1240roArr = this.a;
                int length = c1240roArr == null ? 0 : c1240roArr.length;
                int i = repeatedFieldArrayLength + length;
                C1240ro[] c1240roArr2 = new C1240ro[i];
                if (length != 0) {
                    System.arraycopy(c1240roArr, 0, c1240roArr2, 0, length);
                }
                while (length < i - 1) {
                    C1240ro c1240ro = new C1240ro();
                    c1240roArr2[length] = c1240ro;
                    codedInputByteBufferNano.readMessage(c1240ro);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C1240ro c1240ro2 = new C1240ro();
                c1240roArr2[length] = c1240ro2;
                codedInputByteBufferNano.readMessage(c1240ro2);
                this.a = c1240roArr2;
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C1240ro[] c1240roArr = this.a;
        if (c1240roArr != null && c1240roArr.length > 0) {
            int i = 0;
            while (true) {
                C1240ro[] c1240roArr2 = this.a;
                if (i >= c1240roArr2.length) {
                    break;
                }
                C1240ro c1240ro = c1240roArr2[i];
                if (c1240ro != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(1, c1240ro) + iComputeSerializedSize;
                }
                i++;
            }
        }
        return iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1240ro[] c1240roArr = this.a;
        if (c1240roArr != null && c1240roArr.length > 0) {
            int i = 0;
            while (true) {
                C1240ro[] c1240roArr2 = this.a;
                if (i >= c1240roArr2.length) {
                    break;
                }
                C1240ro c1240ro = c1240roArr2[i];
                if (c1240ro != null) {
                    codedOutputByteBufferNano.writeMessage(1, c1240ro);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static uo b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new uo().mergeFrom(codedInputByteBufferNano);
    }

    public final uo a() {
        this.a = C1240ro.b();
        this.cachedSize = -1;
        return this;
    }

    public static uo a(byte[] bArr) {
        return (uo) MessageNano.mergeFrom(new uo(), bArr);
    }
}

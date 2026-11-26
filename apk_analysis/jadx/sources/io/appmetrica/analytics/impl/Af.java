package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class Af extends MessageNano {
    public static final int c = 0;
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = 3;
    public static volatile Af[] g;
    public C1409yf a;
    public C1434zf[] b;

    public Af() {
        a();
    }

    public static Af[] b() {
        if (g == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (g == null) {
                        g = new Af[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Af mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                C1409yf c1409yf = this.a;
                if (c1409yf == null) {
                    c1409yf = new C1409yf();
                    this.a = c1409yf;
                }
                codedInputByteBufferNano.readMessage(c1409yf);
            } else if (tag == 18) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                C1434zf[] c1434zfArr = this.b;
                int length = c1434zfArr == null ? 0 : c1434zfArr.length;
                int i = repeatedFieldArrayLength + length;
                C1434zf[] c1434zfArr2 = new C1434zf[i];
                if (length != 0) {
                    System.arraycopy(c1434zfArr, 0, c1434zfArr2, 0, length);
                }
                while (length < i - 1) {
                    MessageNano c1434zf = new C1434zf();
                    c1434zfArr2[length] = c1434zf;
                    codedInputByteBufferNano.readMessage(c1434zf);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                MessageNano c1434zf2 = new C1434zf();
                c1434zfArr2[length] = c1434zf2;
                codedInputByteBufferNano.readMessage(c1434zf2);
                this.b = c1434zfArr2;
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C1409yf c1409yf = this.a;
        if (c1409yf != null) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeMessageSize(1, c1409yf);
        }
        C1434zf[] c1434zfArr = this.b;
        if (c1434zfArr != null && c1434zfArr.length > 0) {
            int i = 0;
            while (true) {
                C1434zf[] c1434zfArr2 = this.b;
                if (i >= c1434zfArr2.length) {
                    break;
                }
                C1434zf c1434zf = c1434zfArr2[i];
                if (c1434zf != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(2, c1434zf) + iComputeSerializedSize;
                }
                i++;
            }
        }
        return iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C1409yf c1409yf = this.a;
        if (c1409yf != null) {
            codedOutputByteBufferNano.writeMessage(1, c1409yf);
        }
        C1434zf[] c1434zfArr = this.b;
        if (c1434zfArr != null && c1434zfArr.length > 0) {
            int i = 0;
            while (true) {
                C1434zf[] c1434zfArr2 = this.b;
                if (i >= c1434zfArr2.length) {
                    break;
                }
                C1434zf c1434zf = c1434zfArr2[i];
                if (c1434zf != null) {
                    codedOutputByteBufferNano.writeMessage(2, c1434zf);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static Af b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new Af().mergeFrom(codedInputByteBufferNano);
    }

    public final Af a() {
        this.a = null;
        this.b = C1434zf.b();
        this.cachedSize = -1;
        return this;
    }

    public static Af a(byte[] bArr) {
        return (Af) MessageNano.mergeFrom(new Af(), bArr);
    }
}

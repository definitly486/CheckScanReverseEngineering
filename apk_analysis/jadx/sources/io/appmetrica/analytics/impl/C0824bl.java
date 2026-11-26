package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.bl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0824bl extends MessageNano {
    public static volatile C0824bl[] b;
    public C0850cl[] a;

    public C0824bl() {
        a();
    }

    public static C0824bl[] b() {
        if (b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (b == null) {
                        b = new C0824bl[0];
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
    public final C0824bl mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                C0850cl[] c0850clArr = this.a;
                int length = c0850clArr == null ? 0 : c0850clArr.length;
                int i = repeatedFieldArrayLength + length;
                C0850cl[] c0850clArr2 = new C0850cl[i];
                if (length != 0) {
                    System.arraycopy(c0850clArr, 0, c0850clArr2, 0, length);
                }
                while (length < i - 1) {
                    C0850cl c0850cl = new C0850cl();
                    c0850clArr2[length] = c0850cl;
                    codedInputByteBufferNano.readMessage(c0850cl);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                C0850cl c0850cl2 = new C0850cl();
                c0850clArr2[length] = c0850cl2;
                codedInputByteBufferNano.readMessage(c0850cl2);
                this.a = c0850clArr2;
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        C0850cl[] c0850clArr = this.a;
        if (c0850clArr != null && c0850clArr.length > 0) {
            int i = 0;
            while (true) {
                C0850cl[] c0850clArr2 = this.a;
                if (i >= c0850clArr2.length) {
                    break;
                }
                C0850cl c0850cl = c0850clArr2[i];
                if (c0850cl != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(1, c0850cl) + iComputeSerializedSize;
                }
                i++;
            }
        }
        return iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        C0850cl[] c0850clArr = this.a;
        if (c0850clArr != null && c0850clArr.length > 0) {
            int i = 0;
            while (true) {
                C0850cl[] c0850clArr2 = this.a;
                if (i >= c0850clArr2.length) {
                    break;
                }
                C0850cl c0850cl = c0850clArr2[i];
                if (c0850cl != null) {
                    codedOutputByteBufferNano.writeMessage(1, c0850cl);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C0824bl b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C0824bl().mergeFrom(codedInputByteBufferNano);
    }

    public final C0824bl a() {
        this.a = C0850cl.b();
        this.cachedSize = -1;
        return this;
    }

    public static C0824bl a(byte[] bArr) {
        return (C0824bl) MessageNano.mergeFrom(new C0824bl(), bArr);
    }
}

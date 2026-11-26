package io.appmetrica.analytics.productflow.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class t extends MessageNano {
    public static volatile t[] c;
    public s[] a;
    public int b;

    public t() {
        a();
    }

    public static t[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new t[0];
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
    public final t mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                s[] sVarArr = this.a;
                int length = sVarArr == null ? 0 : sVarArr.length;
                int i = repeatedFieldArrayLength + length;
                s[] sVarArr2 = new s[i];
                if (length != 0) {
                    System.arraycopy(sVarArr, 0, sVarArr2, 0, length);
                }
                while (length < i - 1) {
                    s sVar = new s();
                    sVarArr2[length] = sVar;
                    codedInputByteBufferNano.readMessage(sVar);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                s sVar2 = new s();
                sVarArr2[length] = sVar2;
                codedInputByteBufferNano.readMessage(sVar2);
                this.a = sVarArr2;
            } else if (tag == 16) {
                this.b = codedInputByteBufferNano.readUInt32();
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        s[] sVarArr = this.a;
        if (sVarArr != null && sVarArr.length > 0) {
            int i = 0;
            while (true) {
                s[] sVarArr2 = this.a;
                if (i >= sVarArr2.length) {
                    break;
                }
                s sVar = sVarArr2[i];
                if (sVar != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(1, sVar) + iComputeSerializedSize;
                }
                i++;
            }
        }
        int i2 = this.b;
        return i2 != 0 ? CodedOutputByteBufferNano.computeUInt32Size(2, i2) + iComputeSerializedSize : iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        s[] sVarArr = this.a;
        if (sVarArr != null && sVarArr.length > 0) {
            int i = 0;
            while (true) {
                s[] sVarArr2 = this.a;
                if (i >= sVarArr2.length) {
                    break;
                }
                s sVar = sVarArr2[i];
                if (sVar != null) {
                    codedOutputByteBufferNano.writeMessage(1, sVar);
                }
                i++;
            }
        }
        int i2 = this.b;
        if (i2 != 0) {
            codedOutputByteBufferNano.writeUInt32(2, i2);
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static t b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new t().mergeFrom(codedInputByteBufferNano);
    }

    public final t a() {
        this.a = s.b();
        this.b = 0;
        this.cachedSize = -1;
        return this;
    }

    public static t a(byte[] bArr) {
        return (t) MessageNano.mergeFrom(new t(), bArr);
    }
}

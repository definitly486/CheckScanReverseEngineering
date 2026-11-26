package io.appmetrica.analytics.idsync.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class o extends MessageNano {
    public static volatile o[] c;
    public long a;
    public n[] b;

    public o() {
        a();
    }

    public static o[] b() {
        if (c == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (c == null) {
                        c = new o[0];
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
    public final o mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 8) {
                this.a = codedInputByteBufferNano.readUInt64();
            } else if (tag == 18) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 18);
                n[] nVarArr = this.b;
                int length = nVarArr == null ? 0 : nVarArr.length;
                int i = repeatedFieldArrayLength + length;
                n[] nVarArr2 = new n[i];
                if (length != 0) {
                    System.arraycopy(nVarArr, 0, nVarArr2, 0, length);
                }
                while (length < i - 1) {
                    n nVar = new n();
                    nVarArr2[length] = nVar;
                    codedInputByteBufferNano.readMessage(nVar);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                n nVar2 = new n();
                nVarArr2[length] = nVar2;
                codedInputByteBufferNano.readMessage(nVar2);
                this.b = nVarArr2;
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        long j = this.a;
        if (j != 10000) {
            iComputeSerializedSize += CodedOutputByteBufferNano.computeUInt64Size(1, j);
        }
        n[] nVarArr = this.b;
        if (nVarArr != null && nVarArr.length > 0) {
            int i = 0;
            while (true) {
                n[] nVarArr2 = this.b;
                if (i >= nVarArr2.length) {
                    break;
                }
                n nVar = nVarArr2[i];
                if (nVar != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(2, nVar) + iComputeSerializedSize;
                }
                i++;
            }
        }
        return iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
        long j = this.a;
        if (j != 10000) {
            codedOutputByteBufferNano.writeUInt64(1, j);
        }
        n[] nVarArr = this.b;
        if (nVarArr != null && nVarArr.length > 0) {
            int i = 0;
            while (true) {
                n[] nVarArr2 = this.b;
                if (i >= nVarArr2.length) {
                    break;
                }
                n nVar = nVarArr2[i];
                if (nVar != null) {
                    codedOutputByteBufferNano.writeMessage(2, nVar);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static o b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new o().mergeFrom(codedInputByteBufferNano);
    }

    public final o a() {
        this.a = 10000L;
        this.b = n.b();
        this.cachedSize = -1;
        return this;
    }

    public static o a(byte[] bArr) {
        return (o) MessageNano.mergeFrom(new o(), bArr);
    }
}

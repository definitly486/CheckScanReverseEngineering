package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: loaded from: classes5.dex */
public final class K3 extends MessageNano {
    public static volatile K3[] b;
    public J3[] a;

    public K3() {
        a();
    }

    public static K3[] b() {
        if (b == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (b == null) {
                        b = new K3[0];
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
    public final K3 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 10) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 10);
                J3[] j3Arr = this.a;
                int length = j3Arr == null ? 0 : j3Arr.length;
                int i = repeatedFieldArrayLength + length;
                J3[] j3Arr2 = new J3[i];
                if (length != 0) {
                    System.arraycopy(j3Arr, 0, j3Arr2, 0, length);
                }
                while (length < i - 1) {
                    J3 j3 = new J3();
                    j3Arr2[length] = j3;
                    codedInputByteBufferNano.readMessage(j3);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                J3 j4 = new J3();
                j3Arr2[length] = j4;
                codedInputByteBufferNano.readMessage(j4);
                this.a = j3Arr2;
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeSerializedSize = super.computeSerializedSize();
        J3[] j3Arr = this.a;
        if (j3Arr != null && j3Arr.length > 0) {
            int i = 0;
            while (true) {
                J3[] j3Arr2 = this.a;
                if (i >= j3Arr2.length) {
                    break;
                }
                J3 j3 = j3Arr2[i];
                if (j3 != null) {
                    iComputeSerializedSize = CodedOutputByteBufferNano.computeMessageSize(1, j3) + iComputeSerializedSize;
                }
                i++;
            }
        }
        return iComputeSerializedSize;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) {
        J3[] j3Arr = this.a;
        if (j3Arr != null && j3Arr.length > 0) {
            int i = 0;
            while (true) {
                J3[] j3Arr2 = this.a;
                if (i >= j3Arr2.length) {
                    break;
                }
                J3 j3 = j3Arr2[i];
                if (j3 != null) {
                    codedOutputByteBufferNano.writeMessage(1, j3);
                }
                i++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static K3 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new K3().mergeFrom(codedInputByteBufferNano);
    }

    public final K3 a() {
        this.a = J3.b();
        this.cachedSize = -1;
        return this;
    }

    public static K3 a(byte[] bArr) {
        return (K3) MessageNano.mergeFrom(new K3(), bArr);
    }
}

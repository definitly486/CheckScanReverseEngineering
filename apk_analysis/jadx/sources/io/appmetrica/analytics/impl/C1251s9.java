package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.protobuf.nano.CodedInputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import io.appmetrica.analytics.protobuf.nano.InternalNano;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.protobuf.nano.WireFormatNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.s9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1251s9 extends MessageNano {
    public static final int d = 0;
    public static final int e = 1;
    public static final int f = 2;
    public static final int g = 3;
    public static final int h = 4;
    public static final int i = 5;
    public static final int j = 6;
    public static final int k = 7;
    public static final int l = 8;
    public static final int m = 9;
    public static final int n = 10;
    public static final int o = 11;
    public static final int p = 12;
    public static volatile C1251s9[] q;
    public long a;
    public C1225r9 b;
    public C1200q9[] c;

    public C1251s9() {
        a();
    }

    public static C1251s9[] b() {
        if (q == null) {
            synchronized (InternalNano.LAZY_INIT_LOCK) {
                try {
                    if (q == null) {
                        q = new C1251s9[0];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return q;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1251s9 mergeFrom(CodedInputByteBufferNano codedInputByteBufferNano) throws InvalidProtocolBufferNanoException {
        while (true) {
            int tag = codedInputByteBufferNano.readTag();
            if (tag == 0) {
                break;
            }
            if (tag == 8) {
                this.a = codedInputByteBufferNano.readUInt64();
            } else if (tag == 18) {
                C1225r9 c1225r9 = this.b;
                if (c1225r9 == null) {
                    c1225r9 = new C1225r9();
                    this.b = c1225r9;
                }
                codedInputByteBufferNano.readMessage(c1225r9);
            } else if (tag == 26) {
                int repeatedFieldArrayLength = WireFormatNano.getRepeatedFieldArrayLength(codedInputByteBufferNano, 26);
                C1200q9[] c1200q9Arr = this.c;
                int length = c1200q9Arr == null ? 0 : c1200q9Arr.length;
                int i2 = repeatedFieldArrayLength + length;
                C1200q9[] c1200q9Arr2 = new C1200q9[i2];
                if (length != 0) {
                    System.arraycopy(c1200q9Arr, 0, c1200q9Arr2, 0, length);
                }
                while (length < i2 - 1) {
                    MessageNano c1200q9 = new C1200q9();
                    c1200q9Arr2[length] = c1200q9;
                    codedInputByteBufferNano.readMessage(c1200q9);
                    codedInputByteBufferNano.readTag();
                    length++;
                }
                MessageNano c1200q10 = new C1200q9();
                c1200q9Arr2[length] = c1200q10;
                codedInputByteBufferNano.readMessage(c1200q10);
                this.c = c1200q9Arr2;
            } else if (!WireFormatNano.parseUnknownField(codedInputByteBufferNano, tag)) {
                break;
            }
        }
        return this;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final int computeSerializedSize() {
        int iComputeUInt64Size = CodedOutputByteBufferNano.computeUInt64Size(1, this.a) + super.computeSerializedSize();
        C1225r9 c1225r9 = this.b;
        if (c1225r9 != null) {
            iComputeUInt64Size += CodedOutputByteBufferNano.computeMessageSize(2, c1225r9);
        }
        C1200q9[] c1200q9Arr = this.c;
        if (c1200q9Arr != null && c1200q9Arr.length > 0) {
            int i2 = 0;
            while (true) {
                C1200q9[] c1200q9Arr2 = this.c;
                if (i2 >= c1200q9Arr2.length) {
                    break;
                }
                C1200q9 c1200q9 = c1200q9Arr2[i2];
                if (c1200q9 != null) {
                    iComputeUInt64Size = CodedOutputByteBufferNano.computeMessageSize(3, c1200q9) + iComputeUInt64Size;
                }
                i2++;
            }
        }
        return iComputeUInt64Size;
    }

    @Override // io.appmetrica.analytics.protobuf.nano.MessageNano
    public final void writeTo(CodedOutputByteBufferNano codedOutputByteBufferNano) throws CodedOutputByteBufferNano.OutOfSpaceException {
        codedOutputByteBufferNano.writeUInt64(1, this.a);
        C1225r9 c1225r9 = this.b;
        if (c1225r9 != null) {
            codedOutputByteBufferNano.writeMessage(2, c1225r9);
        }
        C1200q9[] c1200q9Arr = this.c;
        if (c1200q9Arr != null && c1200q9Arr.length > 0) {
            int i2 = 0;
            while (true) {
                C1200q9[] c1200q9Arr2 = this.c;
                if (i2 >= c1200q9Arr2.length) {
                    break;
                }
                C1200q9 c1200q9 = c1200q9Arr2[i2];
                if (c1200q9 != null) {
                    codedOutputByteBufferNano.writeMessage(3, c1200q9);
                }
                i2++;
            }
        }
        super.writeTo(codedOutputByteBufferNano);
    }

    public static C1251s9 b(CodedInputByteBufferNano codedInputByteBufferNano) {
        return new C1251s9().mergeFrom(codedInputByteBufferNano);
    }

    public final C1251s9 a() {
        this.a = 0L;
        this.b = null;
        this.c = C1200q9.b();
        this.cachedSize = -1;
        return this;
    }

    public static C1251s9 a(byte[] bArr) {
        return (C1251s9) MessageNano.mergeFrom(new C1251s9(), bArr);
    }
}

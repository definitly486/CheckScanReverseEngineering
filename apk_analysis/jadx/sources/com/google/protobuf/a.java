package com.google.protobuf;

import com.google.protobuf.a;
import com.google.protobuf.a.AbstractC0145a;
import defpackage.eg6;
import defpackage.fg;
import defpackage.fx0;
import defpackage.mg;
import defpackage.o2;
import defpackage.oo4;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a<MessageType extends a<MessageType, BuilderType>, BuilderType extends AbstractC0145a<MessageType, BuilderType>> implements a0 {
    protected int memoizedHashCode = 0;

    @Deprecated
    public static <T> void addAll(Iterable<T> iterable, Collection<? super T> collection) {
        AbstractC0145a.addAll((Iterable) iterable, (List) collection);
    }

    public static void checkByteStringIsUtf8(fx0 fx0Var) {
        if (fx0Var.j()) {
            return;
        }
        fg.c("Byte string is not UTF-8.");
    }

    private String getSerializingExceptionMessage(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    public int getMemoizedSerializedSize() {
        throw new UnsupportedOperationException();
    }

    public int getSerializedSize(f0 f0Var) {
        int memoizedSerializedSize = getMemoizedSerializedSize();
        if (memoizedSerializedSize != -1) {
            return memoizedSerializedSize;
        }
        int iB = f0Var.b(this);
        setMemoizedSerializedSize(iB);
        return iB;
    }

    public UninitializedMessageException newUninitializedMessageException() {
        return new UninitializedMessageException();
    }

    public void setMemoizedSerializedSize(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.a0
    public byte[] toByteArray() {
        try {
            int serializedSize = getSerializedSize();
            byte[] bArr = new byte[serializedSize];
            Logger logger = CodedOutputStream.p;
            CodedOutputStream.b bVar = new CodedOutputStream.b(bArr, 0, serializedSize);
            writeTo(bVar);
            bVar.U();
            return bArr;
        } catch (IOException e) {
            mg.e(getSerializingExceptionMessage("byte array"), e);
            return null;
        }
    }

    @Override // com.google.protobuf.a0
    public fx0 toByteString() {
        try {
            int serializedSize = getSerializedSize();
            fx0.h hVar = fx0.c;
            byte[] bArr = new byte[serializedSize];
            Logger logger = CodedOutputStream.p;
            CodedOutputStream.b bVar = new CodedOutputStream.b(bArr, 0, serializedSize);
            writeTo(bVar);
            bVar.U();
            return new fx0.h(bArr);
        } catch (IOException e) {
            mg.e(getSerializingExceptionMessage("ByteString"), e);
            return null;
        }
    }

    public void writeDelimitedTo(OutputStream outputStream) throws IOException {
        int serializedSize = getSerializedSize();
        int iZ = CodedOutputStream.Z(serializedSize) + serializedSize;
        if (iZ > 4096) {
            iZ = 4096;
        }
        CodedOutputStream.c cVar = new CodedOutputStream.c(outputStream, iZ);
        cVar.w0(serializedSize);
        writeTo(cVar);
        if (cVar.t > 0) {
            cVar.E0();
        }
    }

    @Override // com.google.protobuf.a0
    public void writeTo(OutputStream outputStream) throws IOException {
        int serializedSize = getSerializedSize();
        Logger logger = CodedOutputStream.p;
        if (serializedSize > 4096) {
            serializedSize = 4096;
        }
        CodedOutputStream.c cVar = new CodedOutputStream.c(outputStream, serializedSize);
        writeTo(cVar);
        if (cVar.t > 0) {
            cVar.E0();
        }
    }

    public static <T> void addAll(Iterable<T> iterable, List<? super T> list) {
        AbstractC0145a.addAll((Iterable) iterable, (List) list);
    }

    /* JADX INFO: renamed from: com.google.protobuf.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC0145a<MessageType extends a<MessageType, BuilderType>, BuilderType extends AbstractC0145a<MessageType, BuilderType>> implements a0.a {
        public static <T> void addAll(Iterable<T> iterable, List<? super T> list) {
            Charset charset = q.a;
            iterable.getClass();
            if (!(iterable instanceof oo4)) {
                if (iterable instanceof eg6) {
                    list.addAll((Collection) iterable);
                    return;
                } else {
                    addAllCheckingNulls(iterable, list);
                    return;
                }
            }
            List<?> underlyingElements = ((oo4) iterable).getUnderlyingElements();
            oo4 oo4Var = (oo4) list;
            int size = list.size();
            for (Object obj : underlyingElements) {
                if (obj == null) {
                    String str = "Element at index " + (oo4Var.size() - size) + " is null.";
                    for (int size2 = oo4Var.size() - 1; size2 >= size; size2--) {
                        oo4Var.remove(size2);
                    }
                    o2.d(str);
                    return;
                }
                if (obj instanceof fx0) {
                    oo4Var.e((fx0) obj);
                } else {
                    oo4Var.add((String) obj);
                }
            }
        }

        private static <T> void addAllCheckingNulls(Iterable<T> iterable, List<? super T> list) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
            }
            int size = list.size();
            for (T t : iterable) {
                if (t == null) {
                    String str = "Element at index " + (list.size() - size) + " is null.";
                    for (int size2 = list.size() - 1; size2 >= size; size2--) {
                        list.remove(size2);
                    }
                    o2.d(str);
                    return;
                }
                list.add(t);
            }
        }

        private String getReadingExceptionMessage(String str) {
            return "Reading " + getClass().getName() + " from a " + str + " threw an IOException (should never happen).";
        }

        public static UninitializedMessageException newUninitializedMessageException(a0 a0Var) {
            return new UninitializedMessageException();
        }

        @Override // 
        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public abstract BuilderType mo9511clone();

        public abstract BuilderType internalMergeFrom(MessageType messagetype);

        public boolean mergeDelimitedFrom(InputStream inputStream, j jVar) throws IOException {
            int i = inputStream.read();
            if (i == -1) {
                return false;
            }
            m9516mergeFrom((InputStream) new C0146a(inputStream, f.s(i, inputStream)), jVar);
            return true;
        }

        @Override // com.google.protobuf.a0.a
        public BuilderType mergeFrom(a0 a0Var) {
            if (getDefaultInstanceForType().getClass().isInstance(a0Var)) {
                return (BuilderType) internalMergeFrom((a) a0Var);
            }
            fg.c("mergeFrom(MessageLite) can only merge messages of the same type.");
            return null;
        }

        @Override // com.google.protobuf.a0.a
        public abstract BuilderType mergeFrom(f fVar, j jVar);

        /* JADX INFO: renamed from: com.google.protobuf.a$a$a, reason: collision with other inner class name */
        public static final class C0146a extends FilterInputStream {
            public int b;

            public C0146a(InputStream inputStream, int i) {
                super(inputStream);
                this.b = i;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final int available() {
                return Math.min(super.available(), this.b);
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final int read(byte[] bArr, int i, int i2) throws IOException {
                int i3 = this.b;
                if (i3 <= 0) {
                    return -1;
                }
                int i4 = super.read(bArr, i, Math.min(i2, i3));
                if (i4 >= 0) {
                    this.b -= i4;
                }
                return i4;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final long skip(long j) {
                int iSkip = (int) super.skip(Math.min(j, this.b));
                if (iSkip >= 0) {
                    this.b -= iSkip;
                }
                return iSkip;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final int read() throws IOException {
                if (this.b <= 0) {
                    return -1;
                }
                int i = super.read();
                if (i >= 0) {
                    this.b--;
                }
                return i;
            }
        }

        public boolean mergeDelimitedFrom(InputStream inputStream) {
            return mergeDelimitedFrom(inputStream, j.a());
        }

        @Override // 
        /* JADX INFO: renamed from: mergeFrom */
        public BuilderType mo9518mergeFrom(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException {
            try {
                f.a aVarF = f.f(bArr, i, i2, false);
                m9512mergeFrom((f) aVarF);
                aVarF.a(0);
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                mg.e(getReadingExceptionMessage("byte array"), e2);
                return null;
            }
        }

        @Override // 
        /* JADX INFO: renamed from: mergeFrom */
        public BuilderType mo9519mergeFrom(byte[] bArr, int i, int i2, j jVar) throws InvalidProtocolBufferException {
            try {
                f.a aVarF = f.f(bArr, i, i2, false);
                mergeFrom((f) aVarF, jVar);
                aVarF.a(0);
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                mg.e(getReadingExceptionMessage("byte array"), e2);
                return null;
            }
        }

        /* JADX INFO: renamed from: mergeFrom, reason: merged with bridge method [inline-methods] */
        public BuilderType m9512mergeFrom(f fVar) {
            return (BuilderType) mergeFrom(fVar, j.a());
        }

        /* JADX INFO: renamed from: mergeFrom, reason: merged with bridge method [inline-methods] */
        public BuilderType m9513mergeFrom(fx0 fx0Var) throws InvalidProtocolBufferException {
            try {
                f fVarK = fx0Var.k();
                m9512mergeFrom(fVarK);
                fVarK.a(0);
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                mg.e(getReadingExceptionMessage("ByteString"), e2);
                return null;
            }
        }

        /* JADX INFO: renamed from: mergeFrom, reason: merged with bridge method [inline-methods] */
        public BuilderType m9514mergeFrom(fx0 fx0Var, j jVar) throws InvalidProtocolBufferException {
            try {
                f fVarK = fx0Var.k();
                mergeFrom(fVarK, jVar);
                fVarK.a(0);
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                mg.e(getReadingExceptionMessage("ByteString"), e2);
                return null;
            }
        }

        /* JADX INFO: renamed from: mergeFrom, reason: merged with bridge method [inline-methods] */
        public BuilderType m9517mergeFrom(byte[] bArr) {
            return (BuilderType) mo9518mergeFrom(bArr, 0, bArr.length);
        }

        /* JADX INFO: renamed from: mergeFrom, reason: merged with bridge method [inline-methods] */
        public BuilderType m9520mergeFrom(byte[] bArr, j jVar) {
            return (BuilderType) mo9519mergeFrom(bArr, 0, bArr.length, jVar);
        }

        /* JADX INFO: renamed from: mergeFrom, reason: merged with bridge method [inline-methods] */
        public BuilderType m9515mergeFrom(InputStream inputStream) {
            f fVarG = f.g(inputStream);
            m9512mergeFrom(fVarG);
            fVarG.a(0);
            return this;
        }

        /* JADX INFO: renamed from: mergeFrom, reason: merged with bridge method [inline-methods] */
        public BuilderType m9516mergeFrom(InputStream inputStream, j jVar) {
            f fVarG = f.g(inputStream);
            mergeFrom(fVarG, jVar);
            fVarG.a(0);
            return this;
        }

        @Deprecated
        public static <T> void addAll(Iterable<T> iterable, Collection<? super T> collection) {
            addAll((Iterable) iterable, (List) collection);
        }
    }
}

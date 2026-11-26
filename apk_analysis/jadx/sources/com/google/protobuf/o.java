package com.google.protobuf;

import com.google.protobuf.o;
import com.google.protobuf.o.a;
import defpackage.ah;
import defpackage.fg;
import defpackage.fx0;
import defpackage.h2;
import defpackage.h79;
import defpackage.ha5;
import defpackage.i29;
import defpackage.jh;
import defpackage.mg;
import defpackage.mi2;
import defpackage.qz0;
import defpackage.rs6;
import defpackage.sx6;
import defpackage.t43;
import defpackage.ud;
import defpackage.ui9;
import defpackage.vi9;
import defpackage.x36;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class o<MessageType extends o<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends com.google.protobuf.a<MessageType, BuilderType> {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, o<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize = -1;
    protected k0 unknownFields = k0.f;

    public static class b<T extends o<T, ?>> extends com.google.protobuf.b<T> {
        public final T b;

        public b(T t) {
            this.b = t;
        }
    }

    public static abstract class c<MessageType extends c<MessageType, BuilderType>, BuilderType> extends o<MessageType, BuilderType> implements ha5 {
        protected m<d> extensions = m.d;

        @Override // com.google.protobuf.o, defpackage.ha5
        public final /* bridge */ /* synthetic */ a0 getDefaultInstanceForType() {
            return getDefaultInstanceForType();
        }

        @Override // com.google.protobuf.o, com.google.protobuf.a0
        public final /* bridge */ /* synthetic */ a0.a newBuilderForType() {
            return newBuilderForType();
        }

        @Override // com.google.protobuf.o, com.google.protobuf.a0
        public final /* bridge */ /* synthetic */ a0.a toBuilder() {
            return toBuilder();
        }
    }

    public static final class d implements m.b<d> {
        public final q.d<?> b;
        public final int c;
        public final ui9 d;
        public final boolean e;
        public final boolean f;

        public d(q.d<?> dVar, int i, ui9 ui9Var, boolean z, boolean z2) {
            this.b = dVar;
            this.c = i;
            this.d = ui9Var;
            this.e = z;
            this.f = z2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.m.b
        public final a b(a0.a aVar, a0 a0Var) {
            return ((a) aVar).mergeFrom((o) a0Var);
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.c - ((d) obj).c;
        }

        @Override // com.google.protobuf.m.b
        public final vi9 getLiteJavaType() {
            return this.d.a();
        }

        @Override // com.google.protobuf.m.b
        public final ui9 getLiteType() {
            return this.d;
        }

        @Override // com.google.protobuf.m.b
        public final int getNumber() {
            return this.c;
        }

        @Override // com.google.protobuf.m.b
        public final boolean isPacked() {
            return this.f;
        }

        @Override // com.google.protobuf.m.b
        public final boolean isRepeated() {
            return this.e;
        }
    }

    public static class e<ContainingType extends a0, Type> extends t43<ContainingType, Type> {
        public final ContainingType a;
        public final Type b;
        public final a0 c;
        public final d d;

        /* JADX WARN: Multi-variable type inference failed */
        public e(a0 a0Var, Object obj, a0 a0Var2, d dVar) {
            if (a0Var == 0) {
                fg.c("Null containingTypeDefaultInstance");
                throw null;
            }
            if (dVar.d == ui9.MESSAGE && a0Var2 == null) {
                fg.c("Null messageDefaultInstance");
                throw null;
            }
            this.a = a0Var;
            this.b = obj;
            this.c = a0Var2;
            this.d = dVar;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class f {
        private static final /* synthetic */ f[] $VALUES;
        public static final f BUILD_MESSAGE_INFO;
        public static final f GET_DEFAULT_INSTANCE;
        public static final f GET_MEMOIZED_IS_INITIALIZED;
        public static final f GET_PARSER;
        public static final f NEW_BUILDER;
        public static final f NEW_MUTABLE_INSTANCE;
        public static final f SET_MEMOIZED_IS_INITIALIZED;

        static {
            f fVar = new f("GET_MEMOIZED_IS_INITIALIZED", 0);
            GET_MEMOIZED_IS_INITIALIZED = fVar;
            f fVar2 = new f("SET_MEMOIZED_IS_INITIALIZED", 1);
            SET_MEMOIZED_IS_INITIALIZED = fVar2;
            f fVar3 = new f("BUILD_MESSAGE_INFO", 2);
            BUILD_MESSAGE_INFO = fVar3;
            f fVar4 = new f("NEW_MUTABLE_INSTANCE", 3);
            NEW_MUTABLE_INSTANCE = fVar4;
            f fVar5 = new f("NEW_BUILDER", 4);
            NEW_BUILDER = fVar5;
            f fVar6 = new f("GET_DEFAULT_INSTANCE", 5);
            GET_DEFAULT_INSTANCE = fVar6;
            f fVar7 = new f("GET_PARSER", 6);
            GET_PARSER = fVar7;
            $VALUES = new f[]{fVar, fVar2, fVar3, fVar4, fVar5, fVar6, fVar7};
        }

        public f() {
            throw null;
        }

        public static f valueOf(String str) {
            return (f) Enum.valueOf(f.class, str);
        }

        public static f[] values() {
            return (f[]) $VALUES.clone();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <MessageType extends c<MessageType, BuilderType>, BuilderType, T> e<MessageType, T> checkIsLite(t43<MessageType, T> t43Var) {
        t43Var.getClass();
        return (e) t43Var;
    }

    private static <T extends o<T, ?>> T checkMessageInitialized(T t) throws InvalidProtocolBufferException {
        if (t == null || t.isInitialized()) {
            return t;
        }
        throw new InvalidProtocolBufferException(t.newUninitializedMessageException().getMessage());
    }

    private int computeSerializedSize(f0<?> f0Var) {
        if (f0Var != null) {
            return f0Var.b(this);
        }
        rs6 rs6Var = rs6.c;
        rs6Var.getClass();
        return rs6Var.a(getClass()).b(this);
    }

    public static q.a emptyBooleanList() {
        return com.google.protobuf.e.e;
    }

    public static q.b emptyDoubleList() {
        return i.e;
    }

    public static q.f emptyFloatList() {
        return n.e;
    }

    public static q.g emptyIntList() {
        return p.e;
    }

    public static q.i emptyLongList() {
        return v.e;
    }

    public static <E> q.j<E> emptyProtobufList() {
        return e0.e;
    }

    private void ensureUnknownFieldsInitialized() {
        if (this.unknownFields == k0.f) {
            this.unknownFields = new k0();
        }
    }

    public static <T extends o<?, ?>> T getDefaultInstance(Class<T> cls) {
        T t = (T) defaultInstanceMap.get(cls);
        if (t == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                t = (T) defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e2) {
                h2.e("Class initialization cannot fail.", e2);
                return null;
            }
        }
        if (t != null) {
            return t;
        }
        try {
            T t2 = (T) ((o) h79.a.allocateInstance(cls)).getDefaultInstanceForType();
            if (t2 != null) {
                defaultInstanceMap.put(cls, t2);
                return t2;
            }
            ud.g();
            return null;
        } catch (InstantiationException e3) {
            i29.a(e3);
            return null;
        }
    }

    public static Method getMethodOrDie(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e2) {
            qz0.h("Generated message class \"", cls.getName(), "\" missing method \"", str, "\".", e2);
            return null;
        }
    }

    public static Object invokeOrDie(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            mg.e("Couldn't use Java reflection to implement protocol message reflection.", e2);
            return null;
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            mg.e("Unexpected exception thrown by generated accessor method.", cause);
            return null;
        }
    }

    public static final <T extends o<T, ?>> boolean isInitialized(T t, boolean z) {
        byte bByteValue = ((Byte) t.dynamicMethod(f.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        rs6 rs6Var = rs6.c;
        rs6Var.getClass();
        boolean zIsInitialized = rs6Var.a(t.getClass()).isInitialized(t);
        if (z) {
            t.dynamicMethod(f.SET_MEMOIZED_IS_INITIALIZED, zIsInitialized ? t : null);
        }
        return zIsInitialized;
    }

    public static q.g mutableCopy(q.g gVar) {
        int size = gVar.size();
        int i = size == 0 ? 10 : size * 2;
        p pVar = (p) gVar;
        if (i >= pVar.d) {
            return new p(Arrays.copyOf(pVar.c, i), pVar.d, true);
        }
        mi2.b();
        return null;
    }

    public static Object newMessageInfo(a0 a0Var, String str, Object[] objArr) {
        return new sx6(a0Var, str, objArr);
    }

    public static <ContainingType extends a0, Type> e<ContainingType, Type> newRepeatedGeneratedExtension(ContainingType containingtype, a0 a0Var, q.d<?> dVar, int i, ui9 ui9Var, boolean z, Class cls) {
        return new e<>(containingtype, Collections.EMPTY_LIST, a0Var, new d(dVar, i, ui9Var, true, z));
    }

    public static <ContainingType extends a0, Type> e<ContainingType, Type> newSingularGeneratedExtension(ContainingType containingtype, Type type, a0 a0Var, q.d<?> dVar, int i, ui9 ui9Var, Class cls) {
        return new e<>(containingtype, type, a0Var, new d(dVar, i, ui9Var, false, false));
    }

    public static <T extends o<T, ?>> T parseDelimitedFrom(T t, InputStream inputStream) {
        return (T) checkMessageInitialized(parsePartialDelimitedFrom(t, inputStream, j.a()));
    }

    public static <T extends o<T, ?>> T parseFrom(T t, ByteBuffer byteBuffer, j jVar) {
        com.google.protobuf.f fVarF;
        if (byteBuffer.hasArray()) {
            fVarF = com.google.protobuf.f.f(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.remaining(), false);
        } else if (byteBuffer.isDirect() && h79.d) {
            fVarF = new com.google.protobuf.f.c(byteBuffer, false);
        } else {
            int iRemaining = byteBuffer.remaining();
            byte[] bArr = new byte[iRemaining];
            byteBuffer.duplicate().get(bArr);
            fVarF = com.google.protobuf.f.f(bArr, 0, iRemaining, true);
        }
        return (T) checkMessageInitialized(parseFrom(t, fVarF, jVar));
    }

    private static <T extends o<T, ?>> T parsePartialDelimitedFrom(T t, InputStream inputStream, j jVar) throws InvalidProtocolBufferException {
        try {
            int i = inputStream.read();
            if (i == -1) {
                return null;
            }
            com.google.protobuf.f fVarG = com.google.protobuf.f.g(new com.google.protobuf.a.AbstractC0145a.C0146a(inputStream, com.google.protobuf.f.s(i, inputStream)));
            T t2 = (T) parsePartialFrom(t, fVarG, jVar);
            fVarG.a(0);
            return t2;
        } catch (InvalidProtocolBufferException e2) {
            if (e2.c) {
                throw new InvalidProtocolBufferException(e2.getMessage(), e2);
            }
            throw e2;
        } catch (IOException e3) {
            throw new InvalidProtocolBufferException(e3.getMessage(), e3);
        }
    }

    public static <T extends o<T, ?>> T parsePartialFrom(T t, com.google.protobuf.f fVar, j jVar) throws InvalidProtocolBufferException {
        T t2 = (T) t.newMutableInstance();
        try {
            rs6 rs6Var = rs6.c;
            rs6Var.getClass();
            f0 f0VarA = rs6Var.a(t2.getClass());
            g gVar = fVar.d;
            if (gVar == null) {
                gVar = new g(fVar);
            }
            f0VarA.e(t2, gVar, jVar);
            f0VarA.makeImmutable(t2);
            return t2;
        } catch (InvalidProtocolBufferException e2) {
            if (e2.c) {
                throw new InvalidProtocolBufferException(e2.getMessage(), e2);
            }
            throw e2;
        } catch (UninitializedMessageException e3) {
            throw new InvalidProtocolBufferException(e3.getMessage());
        } catch (IOException e4) {
            if (e4.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e4.getCause());
            }
            throw new InvalidProtocolBufferException(e4.getMessage(), e4);
        } catch (RuntimeException e5) {
            if (e5.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e5.getCause());
            }
            throw e5;
        }
    }

    public static <T extends o<?, ?>> void registerDefaultInstance(Class<T> cls, T t) {
        t.markImmutable();
        defaultInstanceMap.put(cls, t);
    }

    public Object buildMessageInfo() {
        return dynamicMethod(f.BUILD_MESSAGE_INFO);
    }

    public void clearMemoizedHashCode() {
        this.memoizedHashCode = 0;
    }

    public void clearMemoizedSerializedSize() {
        setMemoizedSerializedSize(Integer.MAX_VALUE);
    }

    public int computeHashCode() {
        rs6 rs6Var = rs6.c;
        rs6Var.getClass();
        return rs6Var.a(getClass()).d(this);
    }

    public final <MessageType extends o<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> BuilderType createBuilder() {
        return (BuilderType) dynamicMethod(f.NEW_BUILDER);
    }

    public Object dynamicMethod(f fVar, Object obj) {
        return dynamicMethod(fVar, obj, null);
    }

    public abstract Object dynamicMethod(f fVar, Object obj, Object obj2);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        rs6 rs6Var = rs6.c;
        rs6Var.getClass();
        return rs6Var.a(getClass()).f(this, (o) obj);
    }

    @Override // defpackage.ha5
    public final MessageType getDefaultInstanceForType() {
        return (MessageType) dynamicMethod(f.GET_DEFAULT_INSTANCE);
    }

    public int getMemoizedHashCode() {
        return this.memoizedHashCode;
    }

    @Override // com.google.protobuf.a
    public int getMemoizedSerializedSize() {
        return this.memoizedSerializedSize & Integer.MAX_VALUE;
    }

    @Override // com.google.protobuf.a0
    public final x36<MessageType> getParserForType() {
        return (x36) dynamicMethod(f.GET_PARSER);
    }

    @Override // com.google.protobuf.a
    public int getSerializedSize(f0 f0Var) {
        if (isMutable()) {
            int iComputeSerializedSize = computeSerializedSize(f0Var);
            if (iComputeSerializedSize >= 0) {
                return iComputeSerializedSize;
            }
            ah.f(jh.b(iComputeSerializedSize, "serialized size must be non-negative, was "));
            return 0;
        }
        if (getMemoizedSerializedSize() != Integer.MAX_VALUE) {
            return getMemoizedSerializedSize();
        }
        int iComputeSerializedSize2 = computeSerializedSize(f0Var);
        setMemoizedSerializedSize(iComputeSerializedSize2);
        return iComputeSerializedSize2;
    }

    public int hashCode() {
        if (isMutable()) {
            return computeHashCode();
        }
        if (hashCodeIsNotMemoized()) {
            setMemoizedHashCode(computeHashCode());
        }
        return getMemoizedHashCode();
    }

    public boolean hashCodeIsNotMemoized() {
        return getMemoizedHashCode() == 0;
    }

    public boolean isMutable() {
        return (this.memoizedSerializedSize & Integer.MIN_VALUE) != 0;
    }

    public void makeImmutable() {
        rs6 rs6Var = rs6.c;
        rs6Var.getClass();
        rs6Var.a(getClass()).makeImmutable(this);
        markImmutable();
    }

    public void markImmutable() {
        this.memoizedSerializedSize &= Integer.MAX_VALUE;
    }

    public void mergeLengthDelimitedField(int i, fx0 fx0Var) {
        ensureUnknownFieldsInitialized();
        k0 k0Var = this.unknownFields;
        k0Var.a();
        if (i != 0) {
            k0Var.f((i << 3) | 2, fx0Var);
        } else {
            fg.c("Zero is not a valid field number.");
        }
    }

    public final void mergeUnknownFields(k0 k0Var) {
        this.unknownFields = k0.e(this.unknownFields, k0Var);
    }

    public void mergeVarintField(int i, int i2) {
        ensureUnknownFieldsInitialized();
        k0 k0Var = this.unknownFields;
        k0Var.a();
        if (i != 0) {
            k0Var.f(i << 3, Long.valueOf(i2));
        } else {
            fg.c("Zero is not a valid field number.");
        }
    }

    @Override // com.google.protobuf.a0
    public final BuilderType newBuilderForType() {
        return (BuilderType) dynamicMethod(f.NEW_BUILDER);
    }

    public MessageType newMutableInstance() {
        return (MessageType) dynamicMethod(f.NEW_MUTABLE_INSTANCE);
    }

    public boolean parseUnknownField(int i, com.google.protobuf.f fVar) {
        if ((i & 7) == 4) {
            return false;
        }
        ensureUnknownFieldsInitialized();
        return this.unknownFields.d(i, fVar);
    }

    public void setMemoizedHashCode(int i) {
        this.memoizedHashCode = i;
    }

    @Override // com.google.protobuf.a
    public void setMemoizedSerializedSize(int i) {
        if (i < 0) {
            ah.f(jh.b(i, "serialized size must be non-negative, was "));
        } else {
            this.memoizedSerializedSize = (i & Integer.MAX_VALUE) | (this.memoizedSerializedSize & Integer.MIN_VALUE);
        }
    }

    @Override // com.google.protobuf.a0
    public final BuilderType toBuilder() {
        return (BuilderType) ((a) dynamicMethod(f.NEW_BUILDER)).mergeFrom(this);
    }

    public String toString() {
        String string = super.toString();
        char[] cArr = b0.a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        b0.c(this, sb, 0);
        return sb.toString();
    }

    @Override // com.google.protobuf.a0
    public void writeTo(CodedOutputStream codedOutputStream) {
        rs6 rs6Var = rs6.c;
        rs6Var.getClass();
        f0 f0VarA = rs6Var.a(getClass());
        h hVar = codedOutputStream.o;
        if (hVar == null) {
            hVar = new h(codedOutputStream);
        }
        f0VarA.a(this, hVar);
    }

    public static abstract class a<MessageType extends o<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends com.google.protobuf.a.AbstractC0145a<MessageType, BuilderType> {
        private final MessageType defaultInstance;
        protected MessageType instance;

        public a(MessageType messagetype) {
            this.defaultInstance = messagetype;
            if (messagetype.isMutable()) {
                fg.c("Default instance must be immutable.");
                throw null;
            }
            this.instance = (MessageType) newMutableInstance();
        }

        private static <MessageType> void mergeFromInstance(MessageType messagetype, MessageType messagetype2) {
            rs6 rs6Var = rs6.c;
            rs6Var.getClass();
            rs6Var.a(messagetype.getClass()).mergeFrom(messagetype, messagetype2);
        }

        private MessageType newMutableInstance() {
            return (MessageType) this.defaultInstance.newMutableInstance();
        }

        @Override // com.google.protobuf.a0.a
        public final MessageType build() {
            MessageType messagetype = (MessageType) buildPartial();
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw com.google.protobuf.a.AbstractC0145a.newUninitializedMessageException(messagetype);
        }

        @Override // com.google.protobuf.a0.a
        public MessageType buildPartial() {
            boolean zIsMutable = this.instance.isMutable();
            MessageType messagetype = this.instance;
            if (!zIsMutable) {
                return messagetype;
            }
            messagetype.makeImmutable();
            return this.instance;
        }

        public final BuilderType clear() {
            if (this.defaultInstance.isMutable()) {
                fg.c("Default instance must be immutable.");
                return null;
            }
            this.instance = (MessageType) newMutableInstance();
            return this;
        }

        @Override // com.google.protobuf.a.AbstractC0145a
        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public BuilderType mo9511clone() {
            BuilderType buildertype = (BuilderType) getDefaultInstanceForType().newBuilderForType();
            buildertype.instance = (MessageType) buildPartial();
            return buildertype;
        }

        public final void copyOnWrite() {
            if (this.instance.isMutable()) {
                return;
            }
            copyOnWriteInternal();
        }

        public void copyOnWriteInternal() {
            MessageType messagetype = (MessageType) newMutableInstance();
            mergeFromInstance(messagetype, this.instance);
            this.instance = messagetype;
        }

        @Override // defpackage.ha5
        public final boolean isInitialized() {
            return o.isInitialized(this.instance, false);
        }

        @Override // com.google.protobuf.a.AbstractC0145a, com.google.protobuf.a0.a
        public BuilderType mergeFrom(com.google.protobuf.f fVar, j jVar) throws IOException {
            copyOnWrite();
            try {
                rs6 rs6Var = rs6.c;
                MessageType messagetype = this.instance;
                rs6Var.getClass();
                f0 f0VarA = rs6Var.a(messagetype.getClass());
                MessageType messagetype2 = this.instance;
                g gVar = fVar.d;
                if (gVar == null) {
                    gVar = new g(fVar);
                }
                f0VarA.e(messagetype2, gVar, jVar);
                return this;
            } catch (RuntimeException e) {
                if (e.getCause() instanceof IOException) {
                    throw ((IOException) e.getCause());
                }
                throw e;
            }
        }

        @Override // defpackage.ha5
        public MessageType getDefaultInstanceForType() {
            return this.defaultInstance;
        }

        @Override // com.google.protobuf.a.AbstractC0145a
        public BuilderType internalMergeFrom(MessageType messagetype) {
            return (BuilderType) mergeFrom((o) messagetype);
        }

        public BuilderType mergeFrom(MessageType messagetype) {
            if (getDefaultInstanceForType().equals(messagetype)) {
                return this;
            }
            copyOnWrite();
            mergeFromInstance(this.instance, messagetype);
            return this;
        }

        @Override // com.google.protobuf.a.AbstractC0145a
        /* JADX INFO: renamed from: mergeFrom, reason: merged with bridge method [inline-methods] */
        public BuilderType mo9519mergeFrom(byte[] bArr, int i, int i2, j jVar) throws InvalidProtocolBufferException {
            copyOnWrite();
            try {
                rs6 rs6Var = rs6.c;
                MessageType messagetype = this.instance;
                rs6Var.getClass();
                rs6Var.a(messagetype.getClass()).c(this.instance, bArr, i, i + i2, new com.google.protobuf.d.b(jVar));
                return this;
            } catch (InvalidProtocolBufferException e) {
                throw e;
            } catch (IOException e2) {
                mg.e("Reading from byte array should not throw IOException.", e2);
                return null;
            } catch (IndexOutOfBoundsException unused) {
                throw InvalidProtocolBufferException.j();
            }
        }

        @Override // com.google.protobuf.a.AbstractC0145a
        /* JADX INFO: renamed from: mergeFrom, reason: merged with bridge method [inline-methods] */
        public BuilderType mo9518mergeFrom(byte[] bArr, int i, int i2) {
            return (BuilderType) mo9519mergeFrom(bArr, i, i2, j.a());
        }
    }

    public Object dynamicMethod(f fVar) {
        return dynamicMethod(fVar, null, null);
    }

    public final <MessageType extends o<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> BuilderType createBuilder(MessageType messagetype) {
        return (BuilderType) createBuilder().mergeFrom((o) messagetype);
    }

    public static <T extends o<T, ?>> T parseDelimitedFrom(T t, InputStream inputStream, j jVar) {
        return (T) checkMessageInitialized(parsePartialDelimitedFrom(t, inputStream, jVar));
    }

    public static q.i mutableCopy(q.i iVar) {
        int size = iVar.size();
        int i = size == 0 ? 10 : size * 2;
        v vVar = (v) iVar;
        if (i >= vVar.d) {
            return new v(Arrays.copyOf(vVar.c, i), vVar.d, true);
        }
        mi2.b();
        return null;
    }

    public static q.f mutableCopy(q.f fVar) {
        int size = fVar.size();
        int i = size == 0 ? 10 : size * 2;
        n nVar = (n) fVar;
        if (i >= nVar.d) {
            return new n(Arrays.copyOf(nVar.c, i), nVar.d, true);
        }
        mi2.b();
        return null;
    }

    @Override // com.google.protobuf.a0
    public int getSerializedSize() {
        return getSerializedSize(null);
    }

    public static q.b mutableCopy(q.b bVar) {
        int size = bVar.size();
        int i = size == 0 ? 10 : size * 2;
        i iVar = (i) bVar;
        if (i >= iVar.d) {
            return new i(Arrays.copyOf(iVar.c, i), iVar.d, true);
        }
        mi2.b();
        return null;
    }

    @Override // defpackage.ha5
    public final boolean isInitialized() {
        return isInitialized(this, true);
    }

    public static q.a mutableCopy(q.a aVar) {
        int size = aVar.size();
        int i = size == 0 ? 10 : size * 2;
        com.google.protobuf.e eVar = (com.google.protobuf.e) aVar;
        if (i >= eVar.d) {
            return new com.google.protobuf.e(Arrays.copyOf(eVar.c, i), eVar.d, true);
        }
        mi2.b();
        return null;
    }

    public static <E> q.j<E> mutableCopy(q.j<E> jVar) {
        int size = jVar.size();
        return jVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    public static <T extends o<T, ?>> T parseFrom(T t, ByteBuffer byteBuffer) {
        return (T) parseFrom(t, byteBuffer, j.a());
    }

    public static <T extends o<T, ?>> T parseFrom(T t, fx0 fx0Var) {
        return (T) checkMessageInitialized(parseFrom(t, fx0Var, j.a()));
    }

    public static <T extends o<T, ?>> T parseFrom(T t, fx0 fx0Var, j jVar) {
        return (T) checkMessageInitialized(parsePartialFrom(t, fx0Var, jVar));
    }

    public static <T extends o<T, ?>> T parseFrom(T t, byte[] bArr) {
        return (T) checkMessageInitialized(parsePartialFrom(t, bArr, 0, bArr.length, j.a()));
    }

    public static <T extends o<T, ?>> T parseFrom(T t, byte[] bArr, j jVar) {
        return (T) checkMessageInitialized(parsePartialFrom(t, bArr, 0, bArr.length, jVar));
    }

    public static <T extends o<T, ?>> T parseFrom(T t, InputStream inputStream) {
        return (T) checkMessageInitialized(parsePartialFrom(t, com.google.protobuf.f.g(inputStream), j.a()));
    }

    public static <T extends o<T, ?>> T parseFrom(T t, InputStream inputStream, j jVar) {
        return (T) checkMessageInitialized(parsePartialFrom(t, com.google.protobuf.f.g(inputStream), jVar));
    }

    public static <T extends o<T, ?>> T parseFrom(T t, com.google.protobuf.f fVar) {
        return (T) parseFrom(t, fVar, j.a());
    }

    public static <T extends o<T, ?>> T parseFrom(T t, com.google.protobuf.f fVar, j jVar) {
        return (T) checkMessageInitialized(parsePartialFrom(t, fVar, jVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T extends o<T, ?>> T parsePartialFrom(T t, byte[] bArr, int i, int i2, j jVar) throws InvalidProtocolBufferException {
        T t2 = (T) t.newMutableInstance();
        try {
            rs6 rs6Var = rs6.c;
            rs6Var.getClass();
            f0 f0VarA = rs6Var.a(t2.getClass());
            f0VarA.c(t2, bArr, i, i + i2, new com.google.protobuf.d.b(jVar));
            f0VarA.makeImmutable(t2);
            return t2;
        } catch (InvalidProtocolBufferException e2) {
            if (e2.c) {
                throw new InvalidProtocolBufferException(e2.getMessage(), e2);
            }
            throw e2;
        } catch (UninitializedMessageException e3) {
            throw new InvalidProtocolBufferException(e3.getMessage());
        } catch (IOException e4) {
            if (e4.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e4.getCause());
            }
            throw new InvalidProtocolBufferException(e4.getMessage(), e4);
        } catch (IndexOutOfBoundsException unused) {
            throw InvalidProtocolBufferException.j();
        }
    }

    public static <T extends o<T, ?>> T parsePartialFrom(T t, com.google.protobuf.f fVar) {
        return (T) parsePartialFrom(t, fVar, j.a());
    }

    private static <T extends o<T, ?>> T parsePartialFrom(T t, fx0 fx0Var, j jVar) {
        com.google.protobuf.f fVarK = fx0Var.k();
        T t2 = (T) parsePartialFrom(t, fVarK, jVar);
        fVarK.a(0);
        return t2;
    }
}

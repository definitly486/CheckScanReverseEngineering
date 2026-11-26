package com.google.firebase.inappmessaging;

import com.google.protobuf.f;
import com.google.protobuf.j;
import com.google.protobuf.o;
import defpackage.fx0;
import defpackage.ud;
import defpackage.x36;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class ClientAppInfo extends o<ClientAppInfo, Builder> implements ClientAppInfoOrBuilder {
    private static final ClientAppInfo DEFAULT_INSTANCE;
    public static final int FIREBASE_INSTANCE_ID_FIELD_NUMBER = 2;
    public static final int GOOGLE_APP_ID_FIELD_NUMBER = 1;
    private static volatile x36<ClientAppInfo> PARSER;
    private int bitField0_;
    private String googleAppId_ = "";
    private String firebaseInstanceId_ = "";

    /* JADX INFO: renamed from: com.google.firebase.inappmessaging.ClientAppInfo$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke;

        static {
            int[] iArr = new int[o.f.values().length];
            $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke = iArr;
            try {
                iArr[o.f.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[o.f.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[o.f.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[o.f.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[o.f.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[o.f.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[o.f.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    static {
        ClientAppInfo clientAppInfo = new ClientAppInfo();
        DEFAULT_INSTANCE = clientAppInfo;
        o.registerDefaultInstance(ClientAppInfo.class, clientAppInfo);
    }

    private ClientAppInfo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearFirebaseInstanceId() {
        this.bitField0_ &= -3;
        this.firebaseInstanceId_ = getDefaultInstance().getFirebaseInstanceId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGoogleAppId() {
        this.bitField0_ &= -2;
        this.googleAppId_ = getDefaultInstance().getGoogleAppId();
    }

    public static ClientAppInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static ClientAppInfo parseDelimitedFrom(InputStream inputStream) {
        return (ClientAppInfo) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ClientAppInfo parseFrom(ByteBuffer byteBuffer) {
        return (ClientAppInfo) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static x36<ClientAppInfo> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFirebaseInstanceId(String str) {
        str.getClass();
        this.bitField0_ |= 2;
        this.firebaseInstanceId_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFirebaseInstanceIdBytes(fx0 fx0Var) {
        this.firebaseInstanceId_ = fx0Var.p();
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGoogleAppId(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.googleAppId_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGoogleAppIdBytes(fx0 fx0Var) {
        this.googleAppId_ = fx0Var.p();
        this.bitField0_ |= 1;
    }

    @Override // com.google.protobuf.o
    public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
        x36 bVar;
        int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
        AnonymousClass1 anonymousClass1 = null;
        switch (i) {
            case 1:
                return new ClientAppInfo();
            case 2:
                return new Builder(anonymousClass1);
            case 3:
                return o.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"bitField0_", "googleAppId_", "firebaseInstanceId_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                x36<ClientAppInfo> x36Var = PARSER;
                if (x36Var != null) {
                    return x36Var;
                }
                synchronized (ClientAppInfo.class) {
                    try {
                        bVar = PARSER;
                        if (bVar == null) {
                            bVar = new o.b(DEFAULT_INSTANCE);
                            PARSER = bVar;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return bVar;
            case 6:
                return (byte) 1;
            default:
                ud.d();
            case 7:
                return null;
        }
    }

    @Override // com.google.firebase.inappmessaging.ClientAppInfoOrBuilder
    public String getFirebaseInstanceId() {
        return this.firebaseInstanceId_;
    }

    @Override // com.google.firebase.inappmessaging.ClientAppInfoOrBuilder
    public fx0 getFirebaseInstanceIdBytes() {
        return fx0.f(this.firebaseInstanceId_);
    }

    @Override // com.google.firebase.inappmessaging.ClientAppInfoOrBuilder
    public String getGoogleAppId() {
        return this.googleAppId_;
    }

    @Override // com.google.firebase.inappmessaging.ClientAppInfoOrBuilder
    public fx0 getGoogleAppIdBytes() {
        return fx0.f(this.googleAppId_);
    }

    @Override // com.google.firebase.inappmessaging.ClientAppInfoOrBuilder
    public boolean hasFirebaseInstanceId() {
        return (this.bitField0_ & 2) != 0;
    }

    @Override // com.google.firebase.inappmessaging.ClientAppInfoOrBuilder
    public boolean hasGoogleAppId() {
        return (this.bitField0_ & 1) != 0;
    }

    public static final class Builder extends o.a<ClientAppInfo, Builder> implements ClientAppInfoOrBuilder {
        private Builder() {
            super(ClientAppInfo.DEFAULT_INSTANCE);
        }

        public Builder clearFirebaseInstanceId() {
            copyOnWrite();
            ((ClientAppInfo) this.instance).clearFirebaseInstanceId();
            return this;
        }

        public Builder clearGoogleAppId() {
            copyOnWrite();
            ((ClientAppInfo) this.instance).clearGoogleAppId();
            return this;
        }

        @Override // com.google.firebase.inappmessaging.ClientAppInfoOrBuilder
        public String getFirebaseInstanceId() {
            return ((ClientAppInfo) this.instance).getFirebaseInstanceId();
        }

        @Override // com.google.firebase.inappmessaging.ClientAppInfoOrBuilder
        public fx0 getFirebaseInstanceIdBytes() {
            return ((ClientAppInfo) this.instance).getFirebaseInstanceIdBytes();
        }

        @Override // com.google.firebase.inappmessaging.ClientAppInfoOrBuilder
        public String getGoogleAppId() {
            return ((ClientAppInfo) this.instance).getGoogleAppId();
        }

        @Override // com.google.firebase.inappmessaging.ClientAppInfoOrBuilder
        public fx0 getGoogleAppIdBytes() {
            return ((ClientAppInfo) this.instance).getGoogleAppIdBytes();
        }

        @Override // com.google.firebase.inappmessaging.ClientAppInfoOrBuilder
        public boolean hasFirebaseInstanceId() {
            return ((ClientAppInfo) this.instance).hasFirebaseInstanceId();
        }

        @Override // com.google.firebase.inappmessaging.ClientAppInfoOrBuilder
        public boolean hasGoogleAppId() {
            return ((ClientAppInfo) this.instance).hasGoogleAppId();
        }

        public Builder setFirebaseInstanceId(String str) {
            copyOnWrite();
            ((ClientAppInfo) this.instance).setFirebaseInstanceId(str);
            return this;
        }

        public Builder setFirebaseInstanceIdBytes(fx0 fx0Var) {
            copyOnWrite();
            ((ClientAppInfo) this.instance).setFirebaseInstanceIdBytes(fx0Var);
            return this;
        }

        public Builder setGoogleAppId(String str) {
            copyOnWrite();
            ((ClientAppInfo) this.instance).setGoogleAppId(str);
            return this;
        }

        public Builder setGoogleAppIdBytes(fx0 fx0Var) {
            copyOnWrite();
            ((ClientAppInfo) this.instance).setGoogleAppIdBytes(fx0Var);
            return this;
        }

        public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public static Builder newBuilder(ClientAppInfo clientAppInfo) {
        return DEFAULT_INSTANCE.createBuilder(clientAppInfo);
    }

    public static ClientAppInfo parseDelimitedFrom(InputStream inputStream, j jVar) {
        return (ClientAppInfo) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
    }

    public static ClientAppInfo parseFrom(ByteBuffer byteBuffer, j jVar) {
        return (ClientAppInfo) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
    }

    public static ClientAppInfo parseFrom(fx0 fx0Var) {
        return (ClientAppInfo) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
    }

    public static ClientAppInfo parseFrom(fx0 fx0Var, j jVar) {
        return (ClientAppInfo) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
    }

    public static ClientAppInfo parseFrom(byte[] bArr) {
        return (ClientAppInfo) o.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static ClientAppInfo parseFrom(byte[] bArr, j jVar) {
        return (ClientAppInfo) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
    }

    public static ClientAppInfo parseFrom(InputStream inputStream) {
        return (ClientAppInfo) o.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ClientAppInfo parseFrom(InputStream inputStream, j jVar) {
        return (ClientAppInfo) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
    }

    public static ClientAppInfo parseFrom(f fVar) {
        return (ClientAppInfo) o.parseFrom(DEFAULT_INSTANCE, fVar);
    }

    public static ClientAppInfo parseFrom(f fVar, j jVar) {
        return (ClientAppInfo) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
    }
}

package com.google.firebase.perf.v1;

import com.google.protobuf.f;
import com.google.protobuf.j;
import com.google.protobuf.o;
import defpackage.fx0;
import defpackage.ud;
import defpackage.x36;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public final class AndroidApplicationInfo extends o<AndroidApplicationInfo, Builder> implements AndroidApplicationInfoOrBuilder {
    private static final AndroidApplicationInfo DEFAULT_INSTANCE;
    public static final int PACKAGE_NAME_FIELD_NUMBER = 1;
    private static volatile x36<AndroidApplicationInfo> PARSER = null;
    public static final int SDK_VERSION_FIELD_NUMBER = 2;
    public static final int VERSION_NAME_FIELD_NUMBER = 3;
    private int bitField0_;
    private String packageName_ = "";
    private String sdkVersion_ = "";
    private String versionName_ = "";

    /* JADX INFO: renamed from: com.google.firebase.perf.v1.AndroidApplicationInfo$1, reason: invalid class name */
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
        AndroidApplicationInfo androidApplicationInfo = new AndroidApplicationInfo();
        DEFAULT_INSTANCE = androidApplicationInfo;
        o.registerDefaultInstance(AndroidApplicationInfo.class, androidApplicationInfo);
    }

    private AndroidApplicationInfo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPackageName() {
        this.bitField0_ &= -2;
        this.packageName_ = getDefaultInstance().getPackageName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSdkVersion() {
        this.bitField0_ &= -3;
        this.sdkVersion_ = getDefaultInstance().getSdkVersion();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearVersionName() {
        this.bitField0_ &= -5;
        this.versionName_ = getDefaultInstance().getVersionName();
    }

    public static AndroidApplicationInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static AndroidApplicationInfo parseDelimitedFrom(InputStream inputStream) {
        return (AndroidApplicationInfo) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static AndroidApplicationInfo parseFrom(ByteBuffer byteBuffer) {
        return (AndroidApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static x36<AndroidApplicationInfo> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPackageName(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.packageName_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPackageNameBytes(fx0 fx0Var) {
        this.packageName_ = fx0Var.p();
        this.bitField0_ |= 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSdkVersion(String str) {
        str.getClass();
        this.bitField0_ |= 2;
        this.sdkVersion_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSdkVersionBytes(fx0 fx0Var) {
        this.sdkVersion_ = fx0Var.p();
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVersionName(String str) {
        str.getClass();
        this.bitField0_ |= 4;
        this.versionName_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVersionNameBytes(fx0 fx0Var) {
        this.versionName_ = fx0Var.p();
        this.bitField0_ |= 4;
    }

    @Override // com.google.protobuf.o
    public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
        x36 bVar;
        int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
        AnonymousClass1 anonymousClass1 = null;
        switch (i) {
            case 1:
                return new AndroidApplicationInfo();
            case 2:
                return new Builder(anonymousClass1);
            case 3:
                return o.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002", new Object[]{"bitField0_", "packageName_", "sdkVersion_", "versionName_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                x36<AndroidApplicationInfo> x36Var = PARSER;
                if (x36Var != null) {
                    return x36Var;
                }
                synchronized (AndroidApplicationInfo.class) {
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

    @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
    public String getPackageName() {
        return this.packageName_;
    }

    @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
    public fx0 getPackageNameBytes() {
        return fx0.f(this.packageName_);
    }

    @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
    public String getSdkVersion() {
        return this.sdkVersion_;
    }

    @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
    public fx0 getSdkVersionBytes() {
        return fx0.f(this.sdkVersion_);
    }

    @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
    public String getVersionName() {
        return this.versionName_;
    }

    @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
    public fx0 getVersionNameBytes() {
        return fx0.f(this.versionName_);
    }

    @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
    public boolean hasPackageName() {
        return (this.bitField0_ & 1) != 0;
    }

    @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
    public boolean hasSdkVersion() {
        return (this.bitField0_ & 2) != 0;
    }

    @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
    public boolean hasVersionName() {
        return (this.bitField0_ & 4) != 0;
    }

    public static final class Builder extends o.a<AndroidApplicationInfo, Builder> implements AndroidApplicationInfoOrBuilder {
        private Builder() {
            super(AndroidApplicationInfo.DEFAULT_INSTANCE);
        }

        public Builder clearPackageName() {
            copyOnWrite();
            ((AndroidApplicationInfo) this.instance).clearPackageName();
            return this;
        }

        public Builder clearSdkVersion() {
            copyOnWrite();
            ((AndroidApplicationInfo) this.instance).clearSdkVersion();
            return this;
        }

        public Builder clearVersionName() {
            copyOnWrite();
            ((AndroidApplicationInfo) this.instance).clearVersionName();
            return this;
        }

        @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
        public String getPackageName() {
            return ((AndroidApplicationInfo) this.instance).getPackageName();
        }

        @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
        public fx0 getPackageNameBytes() {
            return ((AndroidApplicationInfo) this.instance).getPackageNameBytes();
        }

        @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
        public String getSdkVersion() {
            return ((AndroidApplicationInfo) this.instance).getSdkVersion();
        }

        @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
        public fx0 getSdkVersionBytes() {
            return ((AndroidApplicationInfo) this.instance).getSdkVersionBytes();
        }

        @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
        public String getVersionName() {
            return ((AndroidApplicationInfo) this.instance).getVersionName();
        }

        @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
        public fx0 getVersionNameBytes() {
            return ((AndroidApplicationInfo) this.instance).getVersionNameBytes();
        }

        @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
        public boolean hasPackageName() {
            return ((AndroidApplicationInfo) this.instance).hasPackageName();
        }

        @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
        public boolean hasSdkVersion() {
            return ((AndroidApplicationInfo) this.instance).hasSdkVersion();
        }

        @Override // com.google.firebase.perf.v1.AndroidApplicationInfoOrBuilder
        public boolean hasVersionName() {
            return ((AndroidApplicationInfo) this.instance).hasVersionName();
        }

        public Builder setPackageName(String str) {
            copyOnWrite();
            ((AndroidApplicationInfo) this.instance).setPackageName(str);
            return this;
        }

        public Builder setPackageNameBytes(fx0 fx0Var) {
            copyOnWrite();
            ((AndroidApplicationInfo) this.instance).setPackageNameBytes(fx0Var);
            return this;
        }

        public Builder setSdkVersion(String str) {
            copyOnWrite();
            ((AndroidApplicationInfo) this.instance).setSdkVersion(str);
            return this;
        }

        public Builder setSdkVersionBytes(fx0 fx0Var) {
            copyOnWrite();
            ((AndroidApplicationInfo) this.instance).setSdkVersionBytes(fx0Var);
            return this;
        }

        public Builder setVersionName(String str) {
            copyOnWrite();
            ((AndroidApplicationInfo) this.instance).setVersionName(str);
            return this;
        }

        public Builder setVersionNameBytes(fx0 fx0Var) {
            copyOnWrite();
            ((AndroidApplicationInfo) this.instance).setVersionNameBytes(fx0Var);
            return this;
        }

        public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public static Builder newBuilder(AndroidApplicationInfo androidApplicationInfo) {
        return DEFAULT_INSTANCE.createBuilder(androidApplicationInfo);
    }

    public static AndroidApplicationInfo parseDelimitedFrom(InputStream inputStream, j jVar) {
        return (AndroidApplicationInfo) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
    }

    public static AndroidApplicationInfo parseFrom(ByteBuffer byteBuffer, j jVar) {
        return (AndroidApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
    }

    public static AndroidApplicationInfo parseFrom(fx0 fx0Var) {
        return (AndroidApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
    }

    public static AndroidApplicationInfo parseFrom(fx0 fx0Var, j jVar) {
        return (AndroidApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
    }

    public static AndroidApplicationInfo parseFrom(byte[] bArr) {
        return (AndroidApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static AndroidApplicationInfo parseFrom(byte[] bArr, j jVar) {
        return (AndroidApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
    }

    public static AndroidApplicationInfo parseFrom(InputStream inputStream) {
        return (AndroidApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static AndroidApplicationInfo parseFrom(InputStream inputStream, j jVar) {
        return (AndroidApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
    }

    public static AndroidApplicationInfo parseFrom(f fVar) {
        return (AndroidApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, fVar);
    }

    public static AndroidApplicationInfo parseFrom(f fVar, j jVar) {
        return (AndroidApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
    }
}

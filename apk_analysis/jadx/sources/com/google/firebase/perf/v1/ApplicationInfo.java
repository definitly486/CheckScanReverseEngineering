package com.google.firebase.perf.v1;

import com.google.protobuf.f;
import com.google.protobuf.j;
import com.google.protobuf.o;
import com.google.protobuf.w;
import com.google.protobuf.x;
import defpackage.fx0;
import defpackage.mi2;
import defpackage.ud;
import defpackage.ui9;
import defpackage.x36;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ApplicationInfo extends o<ApplicationInfo, Builder> implements ApplicationInfoOrBuilder {
    public static final int ANDROID_APP_INFO_FIELD_NUMBER = 3;
    public static final int APPLICATION_PROCESS_STATE_FIELD_NUMBER = 5;
    public static final int APP_INSTANCE_ID_FIELD_NUMBER = 2;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 6;
    private static final ApplicationInfo DEFAULT_INSTANCE;
    public static final int GOOGLE_APP_ID_FIELD_NUMBER = 1;
    private static volatile x36<ApplicationInfo> PARSER;
    private AndroidApplicationInfo androidAppInfo_;
    private int applicationProcessState_;
    private int bitField0_;
    private x<String, String> customAttributes_ = x.c;
    private String googleAppId_ = "";
    private String appInstanceId_ = "";

    /* JADX INFO: renamed from: com.google.firebase.perf.v1.ApplicationInfo$1, reason: invalid class name */
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

    public static final class CustomAttributesDefaultEntryHolder {
        static final w<String, String> defaultEntry;

        static {
            ui9 ui9Var = ui9.STRING;
            defaultEntry = new w<>(ui9Var, ui9Var, "");
        }

        private CustomAttributesDefaultEntryHolder() {
        }
    }

    static {
        ApplicationInfo applicationInfo = new ApplicationInfo();
        DEFAULT_INSTANCE = applicationInfo;
        o.registerDefaultInstance(ApplicationInfo.class, applicationInfo);
    }

    private ApplicationInfo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAndroidAppInfo() {
        this.androidAppInfo_ = null;
        this.bitField0_ &= -5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAppInstanceId() {
        this.bitField0_ &= -3;
        this.appInstanceId_ = getDefaultInstance().getAppInstanceId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearApplicationProcessState() {
        this.bitField0_ &= -9;
        this.applicationProcessState_ = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearGoogleAppId() {
        this.bitField0_ &= -2;
        this.googleAppId_ = getDefaultInstance().getGoogleAppId();
    }

    public static ApplicationInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> getMutableCustomAttributesMap() {
        return internalGetMutableCustomAttributes();
    }

    private x<String, String> internalGetCustomAttributes() {
        return this.customAttributes_;
    }

    private x<String, String> internalGetMutableCustomAttributes() {
        x<String, String> xVar = this.customAttributes_;
        if (xVar.b) {
            return xVar;
        }
        x<String, String> xVarJ = xVar.j();
        this.customAttributes_ = xVarJ;
        return xVarJ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mergeAndroidAppInfo(AndroidApplicationInfo androidApplicationInfo) {
        androidApplicationInfo.getClass();
        AndroidApplicationInfo androidApplicationInfo2 = this.androidAppInfo_;
        if (androidApplicationInfo2 == null || androidApplicationInfo2 == AndroidApplicationInfo.getDefaultInstance()) {
            this.androidAppInfo_ = androidApplicationInfo;
        } else {
            this.androidAppInfo_ = AndroidApplicationInfo.newBuilder(this.androidAppInfo_).mergeFrom(androidApplicationInfo).buildPartial();
        }
        this.bitField0_ |= 4;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static ApplicationInfo parseDelimitedFrom(InputStream inputStream) {
        return (ApplicationInfo) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ApplicationInfo parseFrom(ByteBuffer byteBuffer) {
        return (ApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static x36<ApplicationInfo> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAndroidAppInfo(AndroidApplicationInfo androidApplicationInfo) {
        androidApplicationInfo.getClass();
        this.androidAppInfo_ = androidApplicationInfo;
        this.bitField0_ |= 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAppInstanceId(String str) {
        str.getClass();
        this.bitField0_ |= 2;
        this.appInstanceId_ = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAppInstanceIdBytes(fx0 fx0Var) {
        this.appInstanceId_ = fx0Var.p();
        this.bitField0_ |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setApplicationProcessState(ApplicationProcessState applicationProcessState) {
        this.applicationProcessState_ = applicationProcessState.getNumber();
        this.bitField0_ |= 8;
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

    @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
    public boolean containsCustomAttributes(String str) {
        str.getClass();
        return internalGetCustomAttributes().containsKey(str);
    }

    @Override // com.google.protobuf.o
    public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
        x36 bVar;
        int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
        AnonymousClass1 anonymousClass1 = null;
        switch (i) {
            case 1:
                return new ApplicationInfo();
            case 2:
                return new Builder(anonymousClass1);
            case 3:
                return o.newMessageInfo(DEFAULT_INSTANCE, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0001\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0005᠌\u0003\u00062", new Object[]{"bitField0_", "googleAppId_", "appInstanceId_", "androidAppInfo_", "applicationProcessState_", ApplicationProcessState.internalGetVerifier(), "customAttributes_", CustomAttributesDefaultEntryHolder.defaultEntry});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                x36<ApplicationInfo> x36Var = PARSER;
                if (x36Var != null) {
                    return x36Var;
                }
                synchronized (ApplicationInfo.class) {
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

    @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
    public AndroidApplicationInfo getAndroidAppInfo() {
        AndroidApplicationInfo androidApplicationInfo = this.androidAppInfo_;
        return androidApplicationInfo == null ? AndroidApplicationInfo.getDefaultInstance() : androidApplicationInfo;
    }

    @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
    public String getAppInstanceId() {
        return this.appInstanceId_;
    }

    @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
    public fx0 getAppInstanceIdBytes() {
        return fx0.f(this.appInstanceId_);
    }

    @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
    public ApplicationProcessState getApplicationProcessState() {
        ApplicationProcessState applicationProcessStateForNumber = ApplicationProcessState.forNumber(this.applicationProcessState_);
        return applicationProcessStateForNumber == null ? ApplicationProcessState.APPLICATION_PROCESS_STATE_UNKNOWN : applicationProcessStateForNumber;
    }

    @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
    @Deprecated
    public Map<String, String> getCustomAttributes() {
        return getCustomAttributesMap();
    }

    @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
    public int getCustomAttributesCount() {
        return internalGetCustomAttributes().size();
    }

    @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
    public Map<String, String> getCustomAttributesMap() {
        return Collections.unmodifiableMap(internalGetCustomAttributes());
    }

    @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
    public String getCustomAttributesOrDefault(String str, String str2) {
        str.getClass();
        x<String, String> xVarInternalGetCustomAttributes = internalGetCustomAttributes();
        return xVarInternalGetCustomAttributes.containsKey(str) ? xVarInternalGetCustomAttributes.get(str) : str2;
    }

    @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
    public String getCustomAttributesOrThrow(String str) {
        str.getClass();
        x<String, String> xVarInternalGetCustomAttributes = internalGetCustomAttributes();
        if (xVarInternalGetCustomAttributes.containsKey(str)) {
            return xVarInternalGetCustomAttributes.get(str);
        }
        mi2.b();
        return null;
    }

    @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
    public String getGoogleAppId() {
        return this.googleAppId_;
    }

    @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
    public fx0 getGoogleAppIdBytes() {
        return fx0.f(this.googleAppId_);
    }

    @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
    public boolean hasAndroidAppInfo() {
        return (this.bitField0_ & 4) != 0;
    }

    @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
    public boolean hasAppInstanceId() {
        return (this.bitField0_ & 2) != 0;
    }

    @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
    public boolean hasApplicationProcessState() {
        return (this.bitField0_ & 8) != 0;
    }

    @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
    public boolean hasGoogleAppId() {
        return (this.bitField0_ & 1) != 0;
    }

    public static final class Builder extends o.a<ApplicationInfo, Builder> implements ApplicationInfoOrBuilder {
        private Builder() {
            super(ApplicationInfo.DEFAULT_INSTANCE);
        }

        public Builder clearAndroidAppInfo() {
            copyOnWrite();
            ((ApplicationInfo) this.instance).clearAndroidAppInfo();
            return this;
        }

        public Builder clearAppInstanceId() {
            copyOnWrite();
            ((ApplicationInfo) this.instance).clearAppInstanceId();
            return this;
        }

        public Builder clearApplicationProcessState() {
            copyOnWrite();
            ((ApplicationInfo) this.instance).clearApplicationProcessState();
            return this;
        }

        public Builder clearCustomAttributes() {
            copyOnWrite();
            ((ApplicationInfo) this.instance).getMutableCustomAttributesMap().clear();
            return this;
        }

        public Builder clearGoogleAppId() {
            copyOnWrite();
            ((ApplicationInfo) this.instance).clearGoogleAppId();
            return this;
        }

        @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
        public boolean containsCustomAttributes(String str) {
            str.getClass();
            return ((ApplicationInfo) this.instance).getCustomAttributesMap().containsKey(str);
        }

        @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
        public AndroidApplicationInfo getAndroidAppInfo() {
            return ((ApplicationInfo) this.instance).getAndroidAppInfo();
        }

        @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
        public String getAppInstanceId() {
            return ((ApplicationInfo) this.instance).getAppInstanceId();
        }

        @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
        public fx0 getAppInstanceIdBytes() {
            return ((ApplicationInfo) this.instance).getAppInstanceIdBytes();
        }

        @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
        public ApplicationProcessState getApplicationProcessState() {
            return ((ApplicationInfo) this.instance).getApplicationProcessState();
        }

        @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
        @Deprecated
        public Map<String, String> getCustomAttributes() {
            return getCustomAttributesMap();
        }

        @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
        public int getCustomAttributesCount() {
            return ((ApplicationInfo) this.instance).getCustomAttributesMap().size();
        }

        @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
        public Map<String, String> getCustomAttributesMap() {
            return Collections.unmodifiableMap(((ApplicationInfo) this.instance).getCustomAttributesMap());
        }

        @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
        public String getCustomAttributesOrDefault(String str, String str2) {
            str.getClass();
            Map<String, String> customAttributesMap = ((ApplicationInfo) this.instance).getCustomAttributesMap();
            return customAttributesMap.containsKey(str) ? customAttributesMap.get(str) : str2;
        }

        @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
        public String getCustomAttributesOrThrow(String str) {
            str.getClass();
            Map<String, String> customAttributesMap = ((ApplicationInfo) this.instance).getCustomAttributesMap();
            if (customAttributesMap.containsKey(str)) {
                return customAttributesMap.get(str);
            }
            mi2.b();
            return null;
        }

        @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
        public String getGoogleAppId() {
            return ((ApplicationInfo) this.instance).getGoogleAppId();
        }

        @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
        public fx0 getGoogleAppIdBytes() {
            return ((ApplicationInfo) this.instance).getGoogleAppIdBytes();
        }

        @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
        public boolean hasAndroidAppInfo() {
            return ((ApplicationInfo) this.instance).hasAndroidAppInfo();
        }

        @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
        public boolean hasAppInstanceId() {
            return ((ApplicationInfo) this.instance).hasAppInstanceId();
        }

        @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
        public boolean hasApplicationProcessState() {
            return ((ApplicationInfo) this.instance).hasApplicationProcessState();
        }

        @Override // com.google.firebase.perf.v1.ApplicationInfoOrBuilder
        public boolean hasGoogleAppId() {
            return ((ApplicationInfo) this.instance).hasGoogleAppId();
        }

        public Builder mergeAndroidAppInfo(AndroidApplicationInfo androidApplicationInfo) {
            copyOnWrite();
            ((ApplicationInfo) this.instance).mergeAndroidAppInfo(androidApplicationInfo);
            return this;
        }

        public Builder putAllCustomAttributes(Map<String, String> map) {
            copyOnWrite();
            ((ApplicationInfo) this.instance).getMutableCustomAttributesMap().putAll(map);
            return this;
        }

        public Builder putCustomAttributes(String str, String str2) {
            str.getClass();
            str2.getClass();
            copyOnWrite();
            ((ApplicationInfo) this.instance).getMutableCustomAttributesMap().put(str, str2);
            return this;
        }

        public Builder removeCustomAttributes(String str) {
            str.getClass();
            copyOnWrite();
            ((ApplicationInfo) this.instance).getMutableCustomAttributesMap().remove(str);
            return this;
        }

        public Builder setAndroidAppInfo(AndroidApplicationInfo.Builder builder) {
            copyOnWrite();
            ((ApplicationInfo) this.instance).setAndroidAppInfo(builder.build());
            return this;
        }

        public Builder setAppInstanceId(String str) {
            copyOnWrite();
            ((ApplicationInfo) this.instance).setAppInstanceId(str);
            return this;
        }

        public Builder setAppInstanceIdBytes(fx0 fx0Var) {
            copyOnWrite();
            ((ApplicationInfo) this.instance).setAppInstanceIdBytes(fx0Var);
            return this;
        }

        public Builder setApplicationProcessState(ApplicationProcessState applicationProcessState) {
            copyOnWrite();
            ((ApplicationInfo) this.instance).setApplicationProcessState(applicationProcessState);
            return this;
        }

        public Builder setGoogleAppId(String str) {
            copyOnWrite();
            ((ApplicationInfo) this.instance).setGoogleAppId(str);
            return this;
        }

        public Builder setGoogleAppIdBytes(fx0 fx0Var) {
            copyOnWrite();
            ((ApplicationInfo) this.instance).setGoogleAppIdBytes(fx0Var);
            return this;
        }

        public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
            this();
        }

        public Builder setAndroidAppInfo(AndroidApplicationInfo androidApplicationInfo) {
            copyOnWrite();
            ((ApplicationInfo) this.instance).setAndroidAppInfo(androidApplicationInfo);
            return this;
        }
    }

    public static Builder newBuilder(ApplicationInfo applicationInfo) {
        return DEFAULT_INSTANCE.createBuilder(applicationInfo);
    }

    public static ApplicationInfo parseDelimitedFrom(InputStream inputStream, j jVar) {
        return (ApplicationInfo) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
    }

    public static ApplicationInfo parseFrom(ByteBuffer byteBuffer, j jVar) {
        return (ApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
    }

    public static ApplicationInfo parseFrom(fx0 fx0Var) {
        return (ApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
    }

    public static ApplicationInfo parseFrom(fx0 fx0Var, j jVar) {
        return (ApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
    }

    public static ApplicationInfo parseFrom(byte[] bArr) {
        return (ApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static ApplicationInfo parseFrom(byte[] bArr, j jVar) {
        return (ApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
    }

    public static ApplicationInfo parseFrom(InputStream inputStream) {
        return (ApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ApplicationInfo parseFrom(InputStream inputStream, j jVar) {
        return (ApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
    }

    public static ApplicationInfo parseFrom(f fVar) {
        return (ApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, fVar);
    }

    public static ApplicationInfo parseFrom(f fVar, j jVar) {
        return (ApplicationInfo) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
    }
}

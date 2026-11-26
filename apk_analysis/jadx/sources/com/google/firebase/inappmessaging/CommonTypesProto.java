package com.google.firebase.inappmessaging;

import androidx.room.util.TableInfo;
import com.google.protobuf.a;
import com.google.protobuf.a0;
import com.google.protobuf.f;
import com.google.protobuf.j;
import com.google.protobuf.o;
import com.google.protobuf.q;
import defpackage.fg;
import defpackage.fx0;
import defpackage.h92;
import defpackage.ha5;
import defpackage.ju8;
import defpackage.ud;
import defpackage.x36;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class CommonTypesProto {

    /* JADX INFO: renamed from: com.google.firebase.inappmessaging.CommonTypesProto$1, reason: invalid class name */
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

    public interface CampaignTimeOrBuilder extends ha5 {
        h92 getDate();

        @Override // defpackage.ha5
        /* synthetic */ a0 getDefaultInstanceForType();

        ju8 getTime();

        String getTimeZone();

        fx0 getTimeZoneBytes();

        boolean hasDate();

        boolean hasTime();

        @Override // defpackage.ha5
        /* synthetic */ boolean isInitialized();
    }

    public interface DailyAnalyticsSummaryOrBuilder extends ha5 {
        int getClicks();

        @Override // defpackage.ha5
        /* synthetic */ a0 getDefaultInstanceForType();

        int getErrors();

        int getImpressions();

        long getStartOfDayMillis();

        @Override // defpackage.ha5
        /* synthetic */ boolean isInitialized();
    }

    public interface DailyConversionSummaryOrBuilder extends ha5 {
        int getConversions();

        @Override // defpackage.ha5
        /* synthetic */ a0 getDefaultInstanceForType();

        long getStartOfDayMillis();

        @Override // defpackage.ha5
        /* synthetic */ boolean isInitialized();
    }

    public interface EventOrBuilder extends ha5 {
        int getCount();

        @Override // defpackage.ha5
        /* synthetic */ a0 getDefaultInstanceForType();

        String getName();

        fx0 getNameBytes();

        long getPreviousTimestampMillis();

        long getTimestampMillis();

        TriggerParam getTriggerParams(int i);

        int getTriggerParamsCount();

        List<TriggerParam> getTriggerParamsList();

        @Override // defpackage.ha5
        /* synthetic */ boolean isInitialized();
    }

    public interface ExperimentVariantOrBuilder extends ha5 {
        MessagesProto.Content getContent();

        @Override // defpackage.ha5
        /* synthetic */ a0 getDefaultInstanceForType();

        int getIndex();

        boolean hasContent();

        @Override // defpackage.ha5
        /* synthetic */ boolean isInitialized();
    }

    public interface PriorityOrBuilder extends ha5 {
        @Override // defpackage.ha5
        /* synthetic */ a0 getDefaultInstanceForType();

        int getValue();

        @Override // defpackage.ha5
        /* synthetic */ boolean isInitialized();
    }

    public interface ScionConversionEventOrBuilder extends ha5 {
        @Override // defpackage.ha5
        /* synthetic */ a0 getDefaultInstanceForType();

        String getName();

        fx0 getNameBytes();

        @Override // defpackage.ha5
        /* synthetic */ boolean isInitialized();
    }

    public interface TriggerParamOrBuilder extends ha5 {
        @Override // defpackage.ha5
        /* synthetic */ a0 getDefaultInstanceForType();

        double getDoubleValue();

        float getFloatValue();

        long getIntValue();

        String getName();

        fx0 getNameBytes();

        String getStringValue();

        fx0 getStringValueBytes();

        @Override // defpackage.ha5
        /* synthetic */ boolean isInitialized();
    }

    public interface TriggeringConditionOrBuilder extends ha5 {
        TriggeringCondition.ConditionCase getConditionCase();

        @Override // defpackage.ha5
        /* synthetic */ a0 getDefaultInstanceForType();

        Event getEvent();

        Trigger getFiamTrigger();

        int getFiamTriggerValue();

        boolean hasEvent();

        boolean hasFiamTrigger();

        @Override // defpackage.ha5
        /* synthetic */ boolean isInitialized();
    }

    private CommonTypesProto() {
    }

    public static void registerAllExtensions(j jVar) {
    }

    public static final class CampaignTime extends o<CampaignTime, Builder> implements CampaignTimeOrBuilder {
        public static final int DATE_FIELD_NUMBER = 1;
        private static final CampaignTime DEFAULT_INSTANCE;
        private static volatile x36<CampaignTime> PARSER = null;
        public static final int TIME_FIELD_NUMBER = 2;
        public static final int TIME_ZONE_FIELD_NUMBER = 3;
        private int bitField0_;
        private h92 date_;
        private String timeZone_ = "";
        private ju8 time_;

        static {
            CampaignTime campaignTime = new CampaignTime();
            DEFAULT_INSTANCE = campaignTime;
            o.registerDefaultInstance(CampaignTime.class, campaignTime);
        }

        private CampaignTime() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDate() {
            this.date_ = null;
            this.bitField0_ &= -2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTime() {
            this.time_ = null;
            this.bitField0_ &= -3;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTimeZone() {
            this.timeZone_ = getDefaultInstance().getTimeZone();
        }

        public static CampaignTime getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeDate(h92 h92Var) {
            h92Var.getClass();
            h92 h92Var2 = this.date_;
            if (h92Var2 == null || h92Var2 == h92.b()) {
                this.date_ = h92Var;
            } else {
                this.date_ = h92.c(this.date_).mergeFrom(h92Var).buildPartial();
            }
            this.bitField0_ |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeTime(ju8 ju8Var) {
            ju8Var.getClass();
            ju8 ju8Var2 = this.time_;
            if (ju8Var2 == null || ju8Var2 == ju8.b()) {
                this.time_ = ju8Var;
            } else {
                this.time_ = ju8.c(this.time_).mergeFrom(ju8Var).buildPartial();
            }
            this.bitField0_ |= 2;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static CampaignTime parseDelimitedFrom(InputStream inputStream) {
            return (CampaignTime) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static CampaignTime parseFrom(ByteBuffer byteBuffer) {
            return (CampaignTime) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static x36<CampaignTime> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDate(h92 h92Var) {
            h92Var.getClass();
            this.date_ = h92Var;
            this.bitField0_ |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTime(ju8 ju8Var) {
            ju8Var.getClass();
            this.time_ = ju8Var;
            this.bitField0_ |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTimeZone(String str) {
            str.getClass();
            this.timeZone_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTimeZoneBytes(fx0 fx0Var) {
            a.checkByteStringIsUtf8(fx0Var);
            this.timeZone_ = fx0Var.p();
        }

        @Override // com.google.protobuf.o
        public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
            x36 bVar;
            int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
            AnonymousClass1 anonymousClass1 = null;
            switch (i) {
                case 1:
                    return new CampaignTime();
                case 2:
                    return new Builder(anonymousClass1);
                case 3:
                    return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003Ȉ", new Object[]{"bitField0_", "date_", "time_", "timeZone_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    x36<CampaignTime> x36Var = PARSER;
                    if (x36Var != null) {
                        return x36Var;
                    }
                    synchronized (CampaignTime.class) {
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

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.CampaignTimeOrBuilder
        public h92 getDate() {
            h92 h92Var = this.date_;
            return h92Var == null ? h92.b() : h92Var;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.CampaignTimeOrBuilder
        public ju8 getTime() {
            ju8 ju8Var = this.time_;
            return ju8Var == null ? ju8.b() : ju8Var;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.CampaignTimeOrBuilder
        public String getTimeZone() {
            return this.timeZone_;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.CampaignTimeOrBuilder
        public fx0 getTimeZoneBytes() {
            return fx0.f(this.timeZone_);
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.CampaignTimeOrBuilder
        public boolean hasDate() {
            return (this.bitField0_ & 1) != 0;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.CampaignTimeOrBuilder
        public boolean hasTime() {
            return (this.bitField0_ & 2) != 0;
        }

        public static final class Builder extends o.a<CampaignTime, Builder> implements CampaignTimeOrBuilder {
            private Builder() {
                super(CampaignTime.DEFAULT_INSTANCE);
            }

            public Builder clearDate() {
                copyOnWrite();
                ((CampaignTime) this.instance).clearDate();
                return this;
            }

            public Builder clearTime() {
                copyOnWrite();
                ((CampaignTime) this.instance).clearTime();
                return this;
            }

            public Builder clearTimeZone() {
                copyOnWrite();
                ((CampaignTime) this.instance).clearTimeZone();
                return this;
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.CampaignTimeOrBuilder
            public h92 getDate() {
                return ((CampaignTime) this.instance).getDate();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.CampaignTimeOrBuilder
            public ju8 getTime() {
                return ((CampaignTime) this.instance).getTime();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.CampaignTimeOrBuilder
            public String getTimeZone() {
                return ((CampaignTime) this.instance).getTimeZone();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.CampaignTimeOrBuilder
            public fx0 getTimeZoneBytes() {
                return ((CampaignTime) this.instance).getTimeZoneBytes();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.CampaignTimeOrBuilder
            public boolean hasDate() {
                return ((CampaignTime) this.instance).hasDate();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.CampaignTimeOrBuilder
            public boolean hasTime() {
                return ((CampaignTime) this.instance).hasTime();
            }

            public Builder mergeDate(h92 h92Var) {
                copyOnWrite();
                ((CampaignTime) this.instance).mergeDate(h92Var);
                return this;
            }

            public Builder mergeTime(ju8 ju8Var) {
                copyOnWrite();
                ((CampaignTime) this.instance).mergeTime(ju8Var);
                return this;
            }

            public Builder setDate(h92.b bVar) {
                copyOnWrite();
                ((CampaignTime) this.instance).setDate(bVar.build());
                return this;
            }

            public Builder setTime(ju8.b bVar) {
                copyOnWrite();
                ((CampaignTime) this.instance).setTime(bVar.build());
                return this;
            }

            public Builder setTimeZone(String str) {
                copyOnWrite();
                ((CampaignTime) this.instance).setTimeZone(str);
                return this;
            }

            public Builder setTimeZoneBytes(fx0 fx0Var) {
                copyOnWrite();
                ((CampaignTime) this.instance).setTimeZoneBytes(fx0Var);
                return this;
            }

            public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
                this();
            }

            public Builder setDate(h92 h92Var) {
                copyOnWrite();
                ((CampaignTime) this.instance).setDate(h92Var);
                return this;
            }

            public Builder setTime(ju8 ju8Var) {
                copyOnWrite();
                ((CampaignTime) this.instance).setTime(ju8Var);
                return this;
            }
        }

        public static Builder newBuilder(CampaignTime campaignTime) {
            return DEFAULT_INSTANCE.createBuilder(campaignTime);
        }

        public static CampaignTime parseDelimitedFrom(InputStream inputStream, j jVar) {
            return (CampaignTime) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static CampaignTime parseFrom(ByteBuffer byteBuffer, j jVar) {
            return (CampaignTime) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
        }

        public static CampaignTime parseFrom(fx0 fx0Var) {
            return (CampaignTime) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
        }

        public static CampaignTime parseFrom(fx0 fx0Var, j jVar) {
            return (CampaignTime) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
        }

        public static CampaignTime parseFrom(byte[] bArr) {
            return (CampaignTime) o.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static CampaignTime parseFrom(byte[] bArr, j jVar) {
            return (CampaignTime) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
        }

        public static CampaignTime parseFrom(InputStream inputStream) {
            return (CampaignTime) o.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static CampaignTime parseFrom(InputStream inputStream, j jVar) {
            return (CampaignTime) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static CampaignTime parseFrom(f fVar) {
            return (CampaignTime) o.parseFrom(DEFAULT_INSTANCE, fVar);
        }

        public static CampaignTime parseFrom(f fVar, j jVar) {
            return (CampaignTime) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
        }
    }

    public static final class DailyAnalyticsSummary extends o<DailyAnalyticsSummary, Builder> implements DailyAnalyticsSummaryOrBuilder {
        public static final int CLICKS_FIELD_NUMBER = 3;
        private static final DailyAnalyticsSummary DEFAULT_INSTANCE;
        public static final int ERRORS_FIELD_NUMBER = 4;
        public static final int IMPRESSIONS_FIELD_NUMBER = 2;
        private static volatile x36<DailyAnalyticsSummary> PARSER = null;
        public static final int START_OF_DAY_MILLIS_FIELD_NUMBER = 1;
        private int clicks_;
        private int errors_;
        private int impressions_;
        private long startOfDayMillis_;

        static {
            DailyAnalyticsSummary dailyAnalyticsSummary = new DailyAnalyticsSummary();
            DEFAULT_INSTANCE = dailyAnalyticsSummary;
            o.registerDefaultInstance(DailyAnalyticsSummary.class, dailyAnalyticsSummary);
        }

        private DailyAnalyticsSummary() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearClicks() {
            this.clicks_ = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearErrors() {
            this.errors_ = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearImpressions() {
            this.impressions_ = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStartOfDayMillis() {
            this.startOfDayMillis_ = 0L;
        }

        public static DailyAnalyticsSummary getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static DailyAnalyticsSummary parseDelimitedFrom(InputStream inputStream) {
            return (DailyAnalyticsSummary) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static DailyAnalyticsSummary parseFrom(ByteBuffer byteBuffer) {
            return (DailyAnalyticsSummary) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static x36<DailyAnalyticsSummary> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setClicks(int i) {
            this.clicks_ = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setErrors(int i) {
            this.errors_ = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setImpressions(int i) {
            this.impressions_ = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStartOfDayMillis(long j) {
            this.startOfDayMillis_ = j;
        }

        @Override // com.google.protobuf.o
        public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
            x36 bVar;
            int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
            AnonymousClass1 anonymousClass1 = null;
            switch (i) {
                case 1:
                    return new DailyAnalyticsSummary();
                case 2:
                    return new Builder(anonymousClass1);
                case 3:
                    return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0002\u0002\u0004\u0003\u0004\u0004\u0004", new Object[]{"startOfDayMillis_", "impressions_", "clicks_", "errors_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    x36<DailyAnalyticsSummary> x36Var = PARSER;
                    if (x36Var != null) {
                        return x36Var;
                    }
                    synchronized (DailyAnalyticsSummary.class) {
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

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.DailyAnalyticsSummaryOrBuilder
        public int getClicks() {
            return this.clicks_;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.DailyAnalyticsSummaryOrBuilder
        public int getErrors() {
            return this.errors_;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.DailyAnalyticsSummaryOrBuilder
        public int getImpressions() {
            return this.impressions_;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.DailyAnalyticsSummaryOrBuilder
        public long getStartOfDayMillis() {
            return this.startOfDayMillis_;
        }

        public static final class Builder extends o.a<DailyAnalyticsSummary, Builder> implements DailyAnalyticsSummaryOrBuilder {
            private Builder() {
                super(DailyAnalyticsSummary.DEFAULT_INSTANCE);
            }

            public Builder clearClicks() {
                copyOnWrite();
                ((DailyAnalyticsSummary) this.instance).clearClicks();
                return this;
            }

            public Builder clearErrors() {
                copyOnWrite();
                ((DailyAnalyticsSummary) this.instance).clearErrors();
                return this;
            }

            public Builder clearImpressions() {
                copyOnWrite();
                ((DailyAnalyticsSummary) this.instance).clearImpressions();
                return this;
            }

            public Builder clearStartOfDayMillis() {
                copyOnWrite();
                ((DailyAnalyticsSummary) this.instance).clearStartOfDayMillis();
                return this;
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.DailyAnalyticsSummaryOrBuilder
            public int getClicks() {
                return ((DailyAnalyticsSummary) this.instance).getClicks();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.DailyAnalyticsSummaryOrBuilder
            public int getErrors() {
                return ((DailyAnalyticsSummary) this.instance).getErrors();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.DailyAnalyticsSummaryOrBuilder
            public int getImpressions() {
                return ((DailyAnalyticsSummary) this.instance).getImpressions();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.DailyAnalyticsSummaryOrBuilder
            public long getStartOfDayMillis() {
                return ((DailyAnalyticsSummary) this.instance).getStartOfDayMillis();
            }

            public Builder setClicks(int i) {
                copyOnWrite();
                ((DailyAnalyticsSummary) this.instance).setClicks(i);
                return this;
            }

            public Builder setErrors(int i) {
                copyOnWrite();
                ((DailyAnalyticsSummary) this.instance).setErrors(i);
                return this;
            }

            public Builder setImpressions(int i) {
                copyOnWrite();
                ((DailyAnalyticsSummary) this.instance).setImpressions(i);
                return this;
            }

            public Builder setStartOfDayMillis(long j) {
                copyOnWrite();
                ((DailyAnalyticsSummary) this.instance).setStartOfDayMillis(j);
                return this;
            }

            public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
                this();
            }
        }

        public static Builder newBuilder(DailyAnalyticsSummary dailyAnalyticsSummary) {
            return DEFAULT_INSTANCE.createBuilder(dailyAnalyticsSummary);
        }

        public static DailyAnalyticsSummary parseDelimitedFrom(InputStream inputStream, j jVar) {
            return (DailyAnalyticsSummary) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static DailyAnalyticsSummary parseFrom(ByteBuffer byteBuffer, j jVar) {
            return (DailyAnalyticsSummary) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
        }

        public static DailyAnalyticsSummary parseFrom(fx0 fx0Var) {
            return (DailyAnalyticsSummary) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
        }

        public static DailyAnalyticsSummary parseFrom(fx0 fx0Var, j jVar) {
            return (DailyAnalyticsSummary) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
        }

        public static DailyAnalyticsSummary parseFrom(byte[] bArr) {
            return (DailyAnalyticsSummary) o.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static DailyAnalyticsSummary parseFrom(byte[] bArr, j jVar) {
            return (DailyAnalyticsSummary) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
        }

        public static DailyAnalyticsSummary parseFrom(InputStream inputStream) {
            return (DailyAnalyticsSummary) o.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static DailyAnalyticsSummary parseFrom(InputStream inputStream, j jVar) {
            return (DailyAnalyticsSummary) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static DailyAnalyticsSummary parseFrom(f fVar) {
            return (DailyAnalyticsSummary) o.parseFrom(DEFAULT_INSTANCE, fVar);
        }

        public static DailyAnalyticsSummary parseFrom(f fVar, j jVar) {
            return (DailyAnalyticsSummary) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
        }
    }

    public static final class DailyConversionSummary extends o<DailyConversionSummary, Builder> implements DailyConversionSummaryOrBuilder {
        public static final int CONVERSIONS_FIELD_NUMBER = 2;
        private static final DailyConversionSummary DEFAULT_INSTANCE;
        private static volatile x36<DailyConversionSummary> PARSER = null;
        public static final int START_OF_DAY_MILLIS_FIELD_NUMBER = 1;
        private int conversions_;
        private long startOfDayMillis_;

        static {
            DailyConversionSummary dailyConversionSummary = new DailyConversionSummary();
            DEFAULT_INSTANCE = dailyConversionSummary;
            o.registerDefaultInstance(DailyConversionSummary.class, dailyConversionSummary);
        }

        private DailyConversionSummary() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearConversions() {
            this.conversions_ = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStartOfDayMillis() {
            this.startOfDayMillis_ = 0L;
        }

        public static DailyConversionSummary getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static DailyConversionSummary parseDelimitedFrom(InputStream inputStream) {
            return (DailyConversionSummary) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static DailyConversionSummary parseFrom(ByteBuffer byteBuffer) {
            return (DailyConversionSummary) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static x36<DailyConversionSummary> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setConversions(int i) {
            this.conversions_ = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStartOfDayMillis(long j) {
            this.startOfDayMillis_ = j;
        }

        @Override // com.google.protobuf.o
        public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
            x36 bVar;
            int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
            AnonymousClass1 anonymousClass1 = null;
            switch (i) {
                case 1:
                    return new DailyConversionSummary();
                case 2:
                    return new Builder(anonymousClass1);
                case 3:
                    return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004", new Object[]{"startOfDayMillis_", "conversions_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    x36<DailyConversionSummary> x36Var = PARSER;
                    if (x36Var != null) {
                        return x36Var;
                    }
                    synchronized (DailyConversionSummary.class) {
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

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.DailyConversionSummaryOrBuilder
        public int getConversions() {
            return this.conversions_;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.DailyConversionSummaryOrBuilder
        public long getStartOfDayMillis() {
            return this.startOfDayMillis_;
        }

        public static final class Builder extends o.a<DailyConversionSummary, Builder> implements DailyConversionSummaryOrBuilder {
            private Builder() {
                super(DailyConversionSummary.DEFAULT_INSTANCE);
            }

            public Builder clearConversions() {
                copyOnWrite();
                ((DailyConversionSummary) this.instance).clearConversions();
                return this;
            }

            public Builder clearStartOfDayMillis() {
                copyOnWrite();
                ((DailyConversionSummary) this.instance).clearStartOfDayMillis();
                return this;
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.DailyConversionSummaryOrBuilder
            public int getConversions() {
                return ((DailyConversionSummary) this.instance).getConversions();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.DailyConversionSummaryOrBuilder
            public long getStartOfDayMillis() {
                return ((DailyConversionSummary) this.instance).getStartOfDayMillis();
            }

            public Builder setConversions(int i) {
                copyOnWrite();
                ((DailyConversionSummary) this.instance).setConversions(i);
                return this;
            }

            public Builder setStartOfDayMillis(long j) {
                copyOnWrite();
                ((DailyConversionSummary) this.instance).setStartOfDayMillis(j);
                return this;
            }

            public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
                this();
            }
        }

        public static Builder newBuilder(DailyConversionSummary dailyConversionSummary) {
            return DEFAULT_INSTANCE.createBuilder(dailyConversionSummary);
        }

        public static DailyConversionSummary parseDelimitedFrom(InputStream inputStream, j jVar) {
            return (DailyConversionSummary) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static DailyConversionSummary parseFrom(ByteBuffer byteBuffer, j jVar) {
            return (DailyConversionSummary) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
        }

        public static DailyConversionSummary parseFrom(fx0 fx0Var) {
            return (DailyConversionSummary) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
        }

        public static DailyConversionSummary parseFrom(fx0 fx0Var, j jVar) {
            return (DailyConversionSummary) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
        }

        public static DailyConversionSummary parseFrom(byte[] bArr) {
            return (DailyConversionSummary) o.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static DailyConversionSummary parseFrom(byte[] bArr, j jVar) {
            return (DailyConversionSummary) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
        }

        public static DailyConversionSummary parseFrom(InputStream inputStream) {
            return (DailyConversionSummary) o.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static DailyConversionSummary parseFrom(InputStream inputStream, j jVar) {
            return (DailyConversionSummary) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static DailyConversionSummary parseFrom(f fVar) {
            return (DailyConversionSummary) o.parseFrom(DEFAULT_INSTANCE, fVar);
        }

        public static DailyConversionSummary parseFrom(f fVar, j jVar) {
            return (DailyConversionSummary) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
        }
    }

    public static final class Event extends o<Event, Builder> implements EventOrBuilder {
        public static final int COUNT_FIELD_NUMBER = 5;
        private static final Event DEFAULT_INSTANCE;
        public static final int NAME_FIELD_NUMBER = 2;
        private static volatile x36<Event> PARSER = null;
        public static final int PREVIOUS_TIMESTAMP_MILLIS_FIELD_NUMBER = 4;
        public static final int TIMESTAMP_MILLIS_FIELD_NUMBER = 3;
        public static final int TRIGGER_PARAMS_FIELD_NUMBER = 1;
        private int count_;
        private long previousTimestampMillis_;
        private long timestampMillis_;
        private q.j<TriggerParam> triggerParams_ = o.emptyProtobufList();
        private String name_ = "";

        static {
            Event event = new Event();
            DEFAULT_INSTANCE = event;
            o.registerDefaultInstance(Event.class, event);
        }

        private Event() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addAllTriggerParams(Iterable<? extends TriggerParam> iterable) {
            ensureTriggerParamsIsMutable();
            a.addAll((Iterable) iterable, (List) this.triggerParams_);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addTriggerParams(TriggerParam triggerParam) {
            triggerParam.getClass();
            ensureTriggerParamsIsMutable();
            this.triggerParams_.add(triggerParam);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCount() {
            this.count_ = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearName() {
            this.name_ = getDefaultInstance().getName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearPreviousTimestampMillis() {
            this.previousTimestampMillis_ = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTimestampMillis() {
            this.timestampMillis_ = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTriggerParams() {
            this.triggerParams_ = o.emptyProtobufList();
        }

        private void ensureTriggerParamsIsMutable() {
            q.j<TriggerParam> jVar = this.triggerParams_;
            if (jVar.isModifiable()) {
                return;
            }
            this.triggerParams_ = o.mutableCopy(jVar);
        }

        public static Event getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Event parseDelimitedFrom(InputStream inputStream) {
            return (Event) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Event parseFrom(ByteBuffer byteBuffer) {
            return (Event) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static x36<Event> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeTriggerParams(int i) {
            ensureTriggerParamsIsMutable();
            this.triggerParams_.remove(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCount(int i) {
            this.count_ = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setName(String str) {
            str.getClass();
            this.name_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNameBytes(fx0 fx0Var) {
            a.checkByteStringIsUtf8(fx0Var);
            this.name_ = fx0Var.p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPreviousTimestampMillis(long j) {
            this.previousTimestampMillis_ = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTimestampMillis(long j) {
            this.timestampMillis_ = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setTriggerParams(int i, TriggerParam triggerParam) {
            triggerParam.getClass();
            ensureTriggerParamsIsMutable();
            this.triggerParams_.set(i, triggerParam);
        }

        @Override // com.google.protobuf.o
        public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
            x36 bVar;
            int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
            AnonymousClass1 anonymousClass1 = null;
            switch (i) {
                case 1:
                    return new Event();
                case 2:
                    return new Builder(anonymousClass1);
                case 3:
                    return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002Ȉ\u0003\u0002\u0004\u0002\u0005\u0004", new Object[]{"triggerParams_", TriggerParam.class, "name_", "timestampMillis_", "previousTimestampMillis_", "count_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    x36<Event> x36Var = PARSER;
                    if (x36Var != null) {
                        return x36Var;
                    }
                    synchronized (Event.class) {
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

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.EventOrBuilder
        public int getCount() {
            return this.count_;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.EventOrBuilder
        public String getName() {
            return this.name_;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.EventOrBuilder
        public fx0 getNameBytes() {
            return fx0.f(this.name_);
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.EventOrBuilder
        public long getPreviousTimestampMillis() {
            return this.previousTimestampMillis_;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.EventOrBuilder
        public long getTimestampMillis() {
            return this.timestampMillis_;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.EventOrBuilder
        public TriggerParam getTriggerParams(int i) {
            return this.triggerParams_.get(i);
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.EventOrBuilder
        public int getTriggerParamsCount() {
            return this.triggerParams_.size();
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.EventOrBuilder
        public List<TriggerParam> getTriggerParamsList() {
            return this.triggerParams_;
        }

        public TriggerParamOrBuilder getTriggerParamsOrBuilder(int i) {
            return this.triggerParams_.get(i);
        }

        public List<? extends TriggerParamOrBuilder> getTriggerParamsOrBuilderList() {
            return this.triggerParams_;
        }

        public static final class Builder extends o.a<Event, Builder> implements EventOrBuilder {
            private Builder() {
                super(Event.DEFAULT_INSTANCE);
            }

            public Builder addAllTriggerParams(Iterable<? extends TriggerParam> iterable) {
                copyOnWrite();
                ((Event) this.instance).addAllTriggerParams(iterable);
                return this;
            }

            public Builder addTriggerParams(TriggerParam.Builder builder) {
                copyOnWrite();
                ((Event) this.instance).addTriggerParams(builder.build());
                return this;
            }

            public Builder clearCount() {
                copyOnWrite();
                ((Event) this.instance).clearCount();
                return this;
            }

            public Builder clearName() {
                copyOnWrite();
                ((Event) this.instance).clearName();
                return this;
            }

            public Builder clearPreviousTimestampMillis() {
                copyOnWrite();
                ((Event) this.instance).clearPreviousTimestampMillis();
                return this;
            }

            public Builder clearTimestampMillis() {
                copyOnWrite();
                ((Event) this.instance).clearTimestampMillis();
                return this;
            }

            public Builder clearTriggerParams() {
                copyOnWrite();
                ((Event) this.instance).clearTriggerParams();
                return this;
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.EventOrBuilder
            public int getCount() {
                return ((Event) this.instance).getCount();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.EventOrBuilder
            public String getName() {
                return ((Event) this.instance).getName();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.EventOrBuilder
            public fx0 getNameBytes() {
                return ((Event) this.instance).getNameBytes();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.EventOrBuilder
            public long getPreviousTimestampMillis() {
                return ((Event) this.instance).getPreviousTimestampMillis();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.EventOrBuilder
            public long getTimestampMillis() {
                return ((Event) this.instance).getTimestampMillis();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.EventOrBuilder
            public TriggerParam getTriggerParams(int i) {
                return ((Event) this.instance).getTriggerParams(i);
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.EventOrBuilder
            public int getTriggerParamsCount() {
                return ((Event) this.instance).getTriggerParamsCount();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.EventOrBuilder
            public List<TriggerParam> getTriggerParamsList() {
                return Collections.unmodifiableList(((Event) this.instance).getTriggerParamsList());
            }

            public Builder removeTriggerParams(int i) {
                copyOnWrite();
                ((Event) this.instance).removeTriggerParams(i);
                return this;
            }

            public Builder setCount(int i) {
                copyOnWrite();
                ((Event) this.instance).setCount(i);
                return this;
            }

            public Builder setName(String str) {
                copyOnWrite();
                ((Event) this.instance).setName(str);
                return this;
            }

            public Builder setNameBytes(fx0 fx0Var) {
                copyOnWrite();
                ((Event) this.instance).setNameBytes(fx0Var);
                return this;
            }

            public Builder setPreviousTimestampMillis(long j) {
                copyOnWrite();
                ((Event) this.instance).setPreviousTimestampMillis(j);
                return this;
            }

            public Builder setTimestampMillis(long j) {
                copyOnWrite();
                ((Event) this.instance).setTimestampMillis(j);
                return this;
            }

            public Builder setTriggerParams(int i, TriggerParam.Builder builder) {
                copyOnWrite();
                ((Event) this.instance).setTriggerParams(i, builder.build());
                return this;
            }

            public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
                this();
            }

            public Builder addTriggerParams(int i, TriggerParam triggerParam) {
                copyOnWrite();
                ((Event) this.instance).addTriggerParams(i, triggerParam);
                return this;
            }

            public Builder setTriggerParams(int i, TriggerParam triggerParam) {
                copyOnWrite();
                ((Event) this.instance).setTriggerParams(i, triggerParam);
                return this;
            }

            public Builder addTriggerParams(TriggerParam triggerParam) {
                copyOnWrite();
                ((Event) this.instance).addTriggerParams(triggerParam);
                return this;
            }

            public Builder addTriggerParams(int i, TriggerParam.Builder builder) {
                copyOnWrite();
                ((Event) this.instance).addTriggerParams(i, builder.build());
                return this;
            }
        }

        public static Builder newBuilder(Event event) {
            return DEFAULT_INSTANCE.createBuilder(event);
        }

        public static Event parseDelimitedFrom(InputStream inputStream, j jVar) {
            return (Event) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static Event parseFrom(ByteBuffer byteBuffer, j jVar) {
            return (Event) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
        }

        public static Event parseFrom(fx0 fx0Var) {
            return (Event) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
        }

        public static Event parseFrom(fx0 fx0Var, j jVar) {
            return (Event) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addTriggerParams(int i, TriggerParam triggerParam) {
            triggerParam.getClass();
            ensureTriggerParamsIsMutable();
            this.triggerParams_.add(i, triggerParam);
        }

        public static Event parseFrom(byte[] bArr) {
            return (Event) o.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Event parseFrom(byte[] bArr, j jVar) {
            return (Event) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
        }

        public static Event parseFrom(InputStream inputStream) {
            return (Event) o.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Event parseFrom(InputStream inputStream, j jVar) {
            return (Event) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static Event parseFrom(f fVar) {
            return (Event) o.parseFrom(DEFAULT_INSTANCE, fVar);
        }

        public static Event parseFrom(f fVar, j jVar) {
            return (Event) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
        }
    }

    public static final class ExperimentVariant extends o<ExperimentVariant, Builder> implements ExperimentVariantOrBuilder {
        public static final int CONTENT_FIELD_NUMBER = 2;
        private static final ExperimentVariant DEFAULT_INSTANCE;
        public static final int INDEX_FIELD_NUMBER = 1;
        private static volatile x36<ExperimentVariant> PARSER;
        private int bitField0_;
        private MessagesProto.Content content_;
        private int index_;

        static {
            ExperimentVariant experimentVariant = new ExperimentVariant();
            DEFAULT_INSTANCE = experimentVariant;
            o.registerDefaultInstance(ExperimentVariant.class, experimentVariant);
        }

        private ExperimentVariant() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearContent() {
            this.content_ = null;
            this.bitField0_ &= -2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearIndex() {
            this.index_ = 0;
        }

        public static ExperimentVariant getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeContent(MessagesProto.Content content) {
            content.getClass();
            MessagesProto.Content content2 = this.content_;
            if (content2 == null || content2 == MessagesProto.Content.getDefaultInstance()) {
                this.content_ = content;
            } else {
                this.content_ = MessagesProto.Content.newBuilder(this.content_).mergeFrom(content).buildPartial();
            }
            this.bitField0_ |= 1;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static ExperimentVariant parseDelimitedFrom(InputStream inputStream) {
            return (ExperimentVariant) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ExperimentVariant parseFrom(ByteBuffer byteBuffer) {
            return (ExperimentVariant) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static x36<ExperimentVariant> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setContent(MessagesProto.Content content) {
            content.getClass();
            this.content_ = content;
            this.bitField0_ |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIndex(int i) {
            this.index_ = i;
        }

        @Override // com.google.protobuf.o
        public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
            x36 bVar;
            int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
            AnonymousClass1 anonymousClass1 = null;
            switch (i) {
                case 1:
                    return new ExperimentVariant();
                case 2:
                    return new Builder(anonymousClass1);
                case 3:
                    return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002ဉ\u0000", new Object[]{"bitField0_", TableInfo.Index.DEFAULT_PREFIX, "content_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    x36<ExperimentVariant> x36Var = PARSER;
                    if (x36Var != null) {
                        return x36Var;
                    }
                    synchronized (ExperimentVariant.class) {
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

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.ExperimentVariantOrBuilder
        public MessagesProto.Content getContent() {
            MessagesProto.Content content = this.content_;
            return content == null ? MessagesProto.Content.getDefaultInstance() : content;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.ExperimentVariantOrBuilder
        public int getIndex() {
            return this.index_;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.ExperimentVariantOrBuilder
        public boolean hasContent() {
            return (this.bitField0_ & 1) != 0;
        }

        public static final class Builder extends o.a<ExperimentVariant, Builder> implements ExperimentVariantOrBuilder {
            private Builder() {
                super(ExperimentVariant.DEFAULT_INSTANCE);
            }

            public Builder clearContent() {
                copyOnWrite();
                ((ExperimentVariant) this.instance).clearContent();
                return this;
            }

            public Builder clearIndex() {
                copyOnWrite();
                ((ExperimentVariant) this.instance).clearIndex();
                return this;
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.ExperimentVariantOrBuilder
            public MessagesProto.Content getContent() {
                return ((ExperimentVariant) this.instance).getContent();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.ExperimentVariantOrBuilder
            public int getIndex() {
                return ((ExperimentVariant) this.instance).getIndex();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.ExperimentVariantOrBuilder
            public boolean hasContent() {
                return ((ExperimentVariant) this.instance).hasContent();
            }

            public Builder mergeContent(MessagesProto.Content content) {
                copyOnWrite();
                ((ExperimentVariant) this.instance).mergeContent(content);
                return this;
            }

            public Builder setContent(MessagesProto.Content.Builder builder) {
                copyOnWrite();
                ((ExperimentVariant) this.instance).setContent(builder.build());
                return this;
            }

            public Builder setIndex(int i) {
                copyOnWrite();
                ((ExperimentVariant) this.instance).setIndex(i);
                return this;
            }

            public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
                this();
            }

            public Builder setContent(MessagesProto.Content content) {
                copyOnWrite();
                ((ExperimentVariant) this.instance).setContent(content);
                return this;
            }
        }

        public static Builder newBuilder(ExperimentVariant experimentVariant) {
            return DEFAULT_INSTANCE.createBuilder(experimentVariant);
        }

        public static ExperimentVariant parseDelimitedFrom(InputStream inputStream, j jVar) {
            return (ExperimentVariant) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static ExperimentVariant parseFrom(ByteBuffer byteBuffer, j jVar) {
            return (ExperimentVariant) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
        }

        public static ExperimentVariant parseFrom(fx0 fx0Var) {
            return (ExperimentVariant) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
        }

        public static ExperimentVariant parseFrom(fx0 fx0Var, j jVar) {
            return (ExperimentVariant) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
        }

        public static ExperimentVariant parseFrom(byte[] bArr) {
            return (ExperimentVariant) o.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static ExperimentVariant parseFrom(byte[] bArr, j jVar) {
            return (ExperimentVariant) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
        }

        public static ExperimentVariant parseFrom(InputStream inputStream) {
            return (ExperimentVariant) o.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ExperimentVariant parseFrom(InputStream inputStream, j jVar) {
            return (ExperimentVariant) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static ExperimentVariant parseFrom(f fVar) {
            return (ExperimentVariant) o.parseFrom(DEFAULT_INSTANCE, fVar);
        }

        public static ExperimentVariant parseFrom(f fVar, j jVar) {
            return (ExperimentVariant) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
        }
    }

    public static final class Priority extends o<Priority, Builder> implements PriorityOrBuilder {
        private static final Priority DEFAULT_INSTANCE;
        private static volatile x36<Priority> PARSER = null;
        public static final int VALUE_FIELD_NUMBER = 1;
        private int value_;

        static {
            Priority priority = new Priority();
            DEFAULT_INSTANCE = priority;
            o.registerDefaultInstance(Priority.class, priority);
        }

        private Priority() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearValue() {
            this.value_ = 0;
        }

        public static Priority getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static Priority parseDelimitedFrom(InputStream inputStream) {
            return (Priority) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Priority parseFrom(ByteBuffer byteBuffer) {
            return (Priority) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static x36<Priority> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setValue(int i) {
            this.value_ = i;
        }

        @Override // com.google.protobuf.o
        public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
            x36 bVar;
            int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
            AnonymousClass1 anonymousClass1 = null;
            switch (i) {
                case 1:
                    return new Priority();
                case 2:
                    return new Builder(anonymousClass1);
                case 3:
                    return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0004", new Object[]{"value_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    x36<Priority> x36Var = PARSER;
                    if (x36Var != null) {
                        return x36Var;
                    }
                    synchronized (Priority.class) {
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

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.PriorityOrBuilder
        public int getValue() {
            return this.value_;
        }

        public static final class Builder extends o.a<Priority, Builder> implements PriorityOrBuilder {
            private Builder() {
                super(Priority.DEFAULT_INSTANCE);
            }

            public Builder clearValue() {
                copyOnWrite();
                ((Priority) this.instance).clearValue();
                return this;
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.PriorityOrBuilder
            public int getValue() {
                return ((Priority) this.instance).getValue();
            }

            public Builder setValue(int i) {
                copyOnWrite();
                ((Priority) this.instance).setValue(i);
                return this;
            }

            public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
                this();
            }
        }

        public static Builder newBuilder(Priority priority) {
            return DEFAULT_INSTANCE.createBuilder(priority);
        }

        public static Priority parseDelimitedFrom(InputStream inputStream, j jVar) {
            return (Priority) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static Priority parseFrom(ByteBuffer byteBuffer, j jVar) {
            return (Priority) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
        }

        public static Priority parseFrom(fx0 fx0Var) {
            return (Priority) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
        }

        public static Priority parseFrom(fx0 fx0Var, j jVar) {
            return (Priority) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
        }

        public static Priority parseFrom(byte[] bArr) {
            return (Priority) o.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Priority parseFrom(byte[] bArr, j jVar) {
            return (Priority) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
        }

        public static Priority parseFrom(InputStream inputStream) {
            return (Priority) o.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Priority parseFrom(InputStream inputStream, j jVar) {
            return (Priority) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static Priority parseFrom(f fVar) {
            return (Priority) o.parseFrom(DEFAULT_INSTANCE, fVar);
        }

        public static Priority parseFrom(f fVar, j jVar) {
            return (Priority) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
        }
    }

    public static final class ScionConversionEvent extends o<ScionConversionEvent, Builder> implements ScionConversionEventOrBuilder {
        private static final ScionConversionEvent DEFAULT_INSTANCE;
        public static final int NAME_FIELD_NUMBER = 1;
        private static volatile x36<ScionConversionEvent> PARSER;
        private String name_ = "";

        static {
            ScionConversionEvent scionConversionEvent = new ScionConversionEvent();
            DEFAULT_INSTANCE = scionConversionEvent;
            o.registerDefaultInstance(ScionConversionEvent.class, scionConversionEvent);
        }

        private ScionConversionEvent() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearName() {
            this.name_ = getDefaultInstance().getName();
        }

        public static ScionConversionEvent getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static ScionConversionEvent parseDelimitedFrom(InputStream inputStream) {
            return (ScionConversionEvent) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ScionConversionEvent parseFrom(ByteBuffer byteBuffer) {
            return (ScionConversionEvent) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static x36<ScionConversionEvent> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setName(String str) {
            str.getClass();
            this.name_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNameBytes(fx0 fx0Var) {
            a.checkByteStringIsUtf8(fx0Var);
            this.name_ = fx0Var.p();
        }

        @Override // com.google.protobuf.o
        public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
            x36 bVar;
            int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
            AnonymousClass1 anonymousClass1 = null;
            switch (i) {
                case 1:
                    return new ScionConversionEvent();
                case 2:
                    return new Builder(anonymousClass1);
                case 3:
                    return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"name_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    x36<ScionConversionEvent> x36Var = PARSER;
                    if (x36Var != null) {
                        return x36Var;
                    }
                    synchronized (ScionConversionEvent.class) {
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

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.ScionConversionEventOrBuilder
        public String getName() {
            return this.name_;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.ScionConversionEventOrBuilder
        public fx0 getNameBytes() {
            return fx0.f(this.name_);
        }

        public static final class Builder extends o.a<ScionConversionEvent, Builder> implements ScionConversionEventOrBuilder {
            private Builder() {
                super(ScionConversionEvent.DEFAULT_INSTANCE);
            }

            public Builder clearName() {
                copyOnWrite();
                ((ScionConversionEvent) this.instance).clearName();
                return this;
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.ScionConversionEventOrBuilder
            public String getName() {
                return ((ScionConversionEvent) this.instance).getName();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.ScionConversionEventOrBuilder
            public fx0 getNameBytes() {
                return ((ScionConversionEvent) this.instance).getNameBytes();
            }

            public Builder setName(String str) {
                copyOnWrite();
                ((ScionConversionEvent) this.instance).setName(str);
                return this;
            }

            public Builder setNameBytes(fx0 fx0Var) {
                copyOnWrite();
                ((ScionConversionEvent) this.instance).setNameBytes(fx0Var);
                return this;
            }

            public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
                this();
            }
        }

        public static Builder newBuilder(ScionConversionEvent scionConversionEvent) {
            return DEFAULT_INSTANCE.createBuilder(scionConversionEvent);
        }

        public static ScionConversionEvent parseDelimitedFrom(InputStream inputStream, j jVar) {
            return (ScionConversionEvent) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static ScionConversionEvent parseFrom(ByteBuffer byteBuffer, j jVar) {
            return (ScionConversionEvent) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
        }

        public static ScionConversionEvent parseFrom(fx0 fx0Var) {
            return (ScionConversionEvent) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
        }

        public static ScionConversionEvent parseFrom(fx0 fx0Var, j jVar) {
            return (ScionConversionEvent) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
        }

        public static ScionConversionEvent parseFrom(byte[] bArr) {
            return (ScionConversionEvent) o.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static ScionConversionEvent parseFrom(byte[] bArr, j jVar) {
            return (ScionConversionEvent) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
        }

        public static ScionConversionEvent parseFrom(InputStream inputStream) {
            return (ScionConversionEvent) o.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ScionConversionEvent parseFrom(InputStream inputStream, j jVar) {
            return (ScionConversionEvent) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static ScionConversionEvent parseFrom(f fVar) {
            return (ScionConversionEvent) o.parseFrom(DEFAULT_INSTANCE, fVar);
        }

        public static ScionConversionEvent parseFrom(f fVar, j jVar) {
            return (ScionConversionEvent) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
        }
    }

    public static final class TriggerParam extends o<TriggerParam, Builder> implements TriggerParamOrBuilder {
        private static final TriggerParam DEFAULT_INSTANCE;
        public static final int DOUBLE_VALUE_FIELD_NUMBER = 5;
        public static final int FLOAT_VALUE_FIELD_NUMBER = 4;
        public static final int INT_VALUE_FIELD_NUMBER = 3;
        public static final int NAME_FIELD_NUMBER = 1;
        private static volatile x36<TriggerParam> PARSER = null;
        public static final int STRING_VALUE_FIELD_NUMBER = 2;
        private double doubleValue_;
        private float floatValue_;
        private long intValue_;
        private String name_ = "";
        private String stringValue_ = "";

        static {
            TriggerParam triggerParam = new TriggerParam();
            DEFAULT_INSTANCE = triggerParam;
            o.registerDefaultInstance(TriggerParam.class, triggerParam);
        }

        private TriggerParam() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDoubleValue() {
            this.doubleValue_ = 0.0d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFloatValue() {
            this.floatValue_ = 0.0f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearIntValue() {
            this.intValue_ = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearName() {
            this.name_ = getDefaultInstance().getName();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearStringValue() {
            this.stringValue_ = getDefaultInstance().getStringValue();
        }

        public static TriggerParam getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static TriggerParam parseDelimitedFrom(InputStream inputStream) {
            return (TriggerParam) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static TriggerParam parseFrom(ByteBuffer byteBuffer) {
            return (TriggerParam) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static x36<TriggerParam> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDoubleValue(double d) {
            this.doubleValue_ = d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFloatValue(float f) {
            this.floatValue_ = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIntValue(long j) {
            this.intValue_ = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setName(String str) {
            str.getClass();
            this.name_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNameBytes(fx0 fx0Var) {
            a.checkByteStringIsUtf8(fx0Var);
            this.name_ = fx0Var.p();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStringValue(String str) {
            str.getClass();
            this.stringValue_ = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStringValueBytes(fx0 fx0Var) {
            a.checkByteStringIsUtf8(fx0Var);
            this.stringValue_ = fx0Var.p();
        }

        @Override // com.google.protobuf.o
        public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
            x36 bVar;
            int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
            AnonymousClass1 anonymousClass1 = null;
            switch (i) {
                case 1:
                    return new TriggerParam();
                case 2:
                    return new Builder(anonymousClass1);
                case 3:
                    return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u0002\u0004\u0001\u0005\u0000", new Object[]{"name_", "stringValue_", "intValue_", "floatValue_", "doubleValue_"});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    x36<TriggerParam> x36Var = PARSER;
                    if (x36Var != null) {
                        return x36Var;
                    }
                    synchronized (TriggerParam.class) {
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

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggerParamOrBuilder
        public double getDoubleValue() {
            return this.doubleValue_;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggerParamOrBuilder
        public float getFloatValue() {
            return this.floatValue_;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggerParamOrBuilder
        public long getIntValue() {
            return this.intValue_;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggerParamOrBuilder
        public String getName() {
            return this.name_;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggerParamOrBuilder
        public fx0 getNameBytes() {
            return fx0.f(this.name_);
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggerParamOrBuilder
        public String getStringValue() {
            return this.stringValue_;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggerParamOrBuilder
        public fx0 getStringValueBytes() {
            return fx0.f(this.stringValue_);
        }

        public static final class Builder extends o.a<TriggerParam, Builder> implements TriggerParamOrBuilder {
            private Builder() {
                super(TriggerParam.DEFAULT_INSTANCE);
            }

            public Builder clearDoubleValue() {
                copyOnWrite();
                ((TriggerParam) this.instance).clearDoubleValue();
                return this;
            }

            public Builder clearFloatValue() {
                copyOnWrite();
                ((TriggerParam) this.instance).clearFloatValue();
                return this;
            }

            public Builder clearIntValue() {
                copyOnWrite();
                ((TriggerParam) this.instance).clearIntValue();
                return this;
            }

            public Builder clearName() {
                copyOnWrite();
                ((TriggerParam) this.instance).clearName();
                return this;
            }

            public Builder clearStringValue() {
                copyOnWrite();
                ((TriggerParam) this.instance).clearStringValue();
                return this;
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggerParamOrBuilder
            public double getDoubleValue() {
                return ((TriggerParam) this.instance).getDoubleValue();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggerParamOrBuilder
            public float getFloatValue() {
                return ((TriggerParam) this.instance).getFloatValue();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggerParamOrBuilder
            public long getIntValue() {
                return ((TriggerParam) this.instance).getIntValue();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggerParamOrBuilder
            public String getName() {
                return ((TriggerParam) this.instance).getName();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggerParamOrBuilder
            public fx0 getNameBytes() {
                return ((TriggerParam) this.instance).getNameBytes();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggerParamOrBuilder
            public String getStringValue() {
                return ((TriggerParam) this.instance).getStringValue();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggerParamOrBuilder
            public fx0 getStringValueBytes() {
                return ((TriggerParam) this.instance).getStringValueBytes();
            }

            public Builder setDoubleValue(double d) {
                copyOnWrite();
                ((TriggerParam) this.instance).setDoubleValue(d);
                return this;
            }

            public Builder setFloatValue(float f) {
                copyOnWrite();
                ((TriggerParam) this.instance).setFloatValue(f);
                return this;
            }

            public Builder setIntValue(long j) {
                copyOnWrite();
                ((TriggerParam) this.instance).setIntValue(j);
                return this;
            }

            public Builder setName(String str) {
                copyOnWrite();
                ((TriggerParam) this.instance).setName(str);
                return this;
            }

            public Builder setNameBytes(fx0 fx0Var) {
                copyOnWrite();
                ((TriggerParam) this.instance).setNameBytes(fx0Var);
                return this;
            }

            public Builder setStringValue(String str) {
                copyOnWrite();
                ((TriggerParam) this.instance).setStringValue(str);
                return this;
            }

            public Builder setStringValueBytes(fx0 fx0Var) {
                copyOnWrite();
                ((TriggerParam) this.instance).setStringValueBytes(fx0Var);
                return this;
            }

            public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
                this();
            }
        }

        public static Builder newBuilder(TriggerParam triggerParam) {
            return DEFAULT_INSTANCE.createBuilder(triggerParam);
        }

        public static TriggerParam parseDelimitedFrom(InputStream inputStream, j jVar) {
            return (TriggerParam) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static TriggerParam parseFrom(ByteBuffer byteBuffer, j jVar) {
            return (TriggerParam) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
        }

        public static TriggerParam parseFrom(fx0 fx0Var) {
            return (TriggerParam) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
        }

        public static TriggerParam parseFrom(fx0 fx0Var, j jVar) {
            return (TriggerParam) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
        }

        public static TriggerParam parseFrom(byte[] bArr) {
            return (TriggerParam) o.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static TriggerParam parseFrom(byte[] bArr, j jVar) {
            return (TriggerParam) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
        }

        public static TriggerParam parseFrom(InputStream inputStream) {
            return (TriggerParam) o.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static TriggerParam parseFrom(InputStream inputStream, j jVar) {
            return (TriggerParam) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static TriggerParam parseFrom(f fVar) {
            return (TriggerParam) o.parseFrom(DEFAULT_INSTANCE, fVar);
        }

        public static TriggerParam parseFrom(f fVar, j jVar) {
            return (TriggerParam) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
        }
    }

    public static final class TriggeringCondition extends o<TriggeringCondition, Builder> implements TriggeringConditionOrBuilder {
        private static final TriggeringCondition DEFAULT_INSTANCE;
        public static final int EVENT_FIELD_NUMBER = 2;
        public static final int FIAM_TRIGGER_FIELD_NUMBER = 1;
        private static volatile x36<TriggeringCondition> PARSER;
        private int conditionCase_ = 0;
        private Object condition_;

        static {
            TriggeringCondition triggeringCondition = new TriggeringCondition();
            DEFAULT_INSTANCE = triggeringCondition;
            o.registerDefaultInstance(TriggeringCondition.class, triggeringCondition);
        }

        private TriggeringCondition() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCondition() {
            this.conditionCase_ = 0;
            this.condition_ = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearEvent() {
            if (this.conditionCase_ == 2) {
                this.conditionCase_ = 0;
                this.condition_ = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearFiamTrigger() {
            if (this.conditionCase_ == 1) {
                this.conditionCase_ = 0;
                this.condition_ = null;
            }
        }

        public static TriggeringCondition getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mergeEvent(Event event) {
            event.getClass();
            if (this.conditionCase_ != 2 || this.condition_ == Event.getDefaultInstance()) {
                this.condition_ = event;
            } else {
                this.condition_ = Event.newBuilder((Event) this.condition_).mergeFrom(event).buildPartial();
            }
            this.conditionCase_ = 2;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static TriggeringCondition parseDelimitedFrom(InputStream inputStream) {
            return (TriggeringCondition) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static TriggeringCondition parseFrom(ByteBuffer byteBuffer) {
            return (TriggeringCondition) o.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static x36<TriggeringCondition> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEvent(Event event) {
            event.getClass();
            this.condition_ = event;
            this.conditionCase_ = 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFiamTrigger(Trigger trigger) {
            this.condition_ = Integer.valueOf(trigger.getNumber());
            this.conditionCase_ = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFiamTriggerValue(int i) {
            this.conditionCase_ = 1;
            this.condition_ = Integer.valueOf(i);
        }

        @Override // com.google.protobuf.o
        public final Object dynamicMethod(o.f fVar, Object obj, Object obj2) {
            x36 bVar;
            int i = AnonymousClass1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[fVar.ordinal()];
            AnonymousClass1 anonymousClass1 = null;
            switch (i) {
                case 1:
                    return new TriggeringCondition();
                case 2:
                    return new Builder(anonymousClass1);
                case 3:
                    return o.newMessageInfo(DEFAULT_INSTANCE, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001?\u0000\u0002<\u0000", new Object[]{"condition_", "conditionCase_", Event.class});
                case 4:
                    return DEFAULT_INSTANCE;
                case 5:
                    x36<TriggeringCondition> x36Var = PARSER;
                    if (x36Var != null) {
                        return x36Var;
                    }
                    synchronized (TriggeringCondition.class) {
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

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggeringConditionOrBuilder
        public ConditionCase getConditionCase() {
            return ConditionCase.forNumber(this.conditionCase_);
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggeringConditionOrBuilder
        public Event getEvent() {
            return this.conditionCase_ == 2 ? (Event) this.condition_ : Event.getDefaultInstance();
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggeringConditionOrBuilder
        public Trigger getFiamTrigger() {
            if (this.conditionCase_ != 1) {
                return Trigger.UNKNOWN_TRIGGER;
            }
            Trigger triggerForNumber = Trigger.forNumber(((Integer) this.condition_).intValue());
            return triggerForNumber == null ? Trigger.UNRECOGNIZED : triggerForNumber;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggeringConditionOrBuilder
        public int getFiamTriggerValue() {
            if (this.conditionCase_ == 1) {
                return ((Integer) this.condition_).intValue();
            }
            return 0;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggeringConditionOrBuilder
        public boolean hasEvent() {
            return this.conditionCase_ == 2;
        }

        @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggeringConditionOrBuilder
        public boolean hasFiamTrigger() {
            return this.conditionCase_ == 1;
        }

        public static final class Builder extends o.a<TriggeringCondition, Builder> implements TriggeringConditionOrBuilder {
            private Builder() {
                super(TriggeringCondition.DEFAULT_INSTANCE);
            }

            public Builder clearCondition() {
                copyOnWrite();
                ((TriggeringCondition) this.instance).clearCondition();
                return this;
            }

            public Builder clearEvent() {
                copyOnWrite();
                ((TriggeringCondition) this.instance).clearEvent();
                return this;
            }

            public Builder clearFiamTrigger() {
                copyOnWrite();
                ((TriggeringCondition) this.instance).clearFiamTrigger();
                return this;
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggeringConditionOrBuilder
            public ConditionCase getConditionCase() {
                return ((TriggeringCondition) this.instance).getConditionCase();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggeringConditionOrBuilder
            public Event getEvent() {
                return ((TriggeringCondition) this.instance).getEvent();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggeringConditionOrBuilder
            public Trigger getFiamTrigger() {
                return ((TriggeringCondition) this.instance).getFiamTrigger();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggeringConditionOrBuilder
            public int getFiamTriggerValue() {
                return ((TriggeringCondition) this.instance).getFiamTriggerValue();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggeringConditionOrBuilder
            public boolean hasEvent() {
                return ((TriggeringCondition) this.instance).hasEvent();
            }

            @Override // com.google.firebase.inappmessaging.CommonTypesProto.TriggeringConditionOrBuilder
            public boolean hasFiamTrigger() {
                return ((TriggeringCondition) this.instance).hasFiamTrigger();
            }

            public Builder mergeEvent(Event event) {
                copyOnWrite();
                ((TriggeringCondition) this.instance).mergeEvent(event);
                return this;
            }

            public Builder setEvent(Event.Builder builder) {
                copyOnWrite();
                ((TriggeringCondition) this.instance).setEvent(builder.build());
                return this;
            }

            public Builder setFiamTrigger(Trigger trigger) {
                copyOnWrite();
                ((TriggeringCondition) this.instance).setFiamTrigger(trigger);
                return this;
            }

            public Builder setFiamTriggerValue(int i) {
                copyOnWrite();
                ((TriggeringCondition) this.instance).setFiamTriggerValue(i);
                return this;
            }

            public /* synthetic */ Builder(AnonymousClass1 anonymousClass1) {
                this();
            }

            public Builder setEvent(Event event) {
                copyOnWrite();
                ((TriggeringCondition) this.instance).setEvent(event);
                return this;
            }
        }

        public enum ConditionCase {
            FIAM_TRIGGER(1),
            EVENT(2),
            CONDITION_NOT_SET(0);

            private final int value;

            ConditionCase(int i) {
                this.value = i;
            }

            public static ConditionCase forNumber(int i) {
                if (i == 0) {
                    return CONDITION_NOT_SET;
                }
                if (i == 1) {
                    return FIAM_TRIGGER;
                }
                if (i != 2) {
                    return null;
                }
                return EVENT;
            }

            public int getNumber() {
                return this.value;
            }

            @Deprecated
            public static ConditionCase valueOf(int i) {
                return forNumber(i);
            }
        }

        public static Builder newBuilder(TriggeringCondition triggeringCondition) {
            return DEFAULT_INSTANCE.createBuilder(triggeringCondition);
        }

        public static TriggeringCondition parseDelimitedFrom(InputStream inputStream, j jVar) {
            return (TriggeringCondition) o.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static TriggeringCondition parseFrom(ByteBuffer byteBuffer, j jVar) {
            return (TriggeringCondition) o.parseFrom(DEFAULT_INSTANCE, byteBuffer, jVar);
        }

        public static TriggeringCondition parseFrom(fx0 fx0Var) {
            return (TriggeringCondition) o.parseFrom(DEFAULT_INSTANCE, fx0Var);
        }

        public static TriggeringCondition parseFrom(fx0 fx0Var, j jVar) {
            return (TriggeringCondition) o.parseFrom(DEFAULT_INSTANCE, fx0Var, jVar);
        }

        public static TriggeringCondition parseFrom(byte[] bArr) {
            return (TriggeringCondition) o.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static TriggeringCondition parseFrom(byte[] bArr, j jVar) {
            return (TriggeringCondition) o.parseFrom(DEFAULT_INSTANCE, bArr, jVar);
        }

        public static TriggeringCondition parseFrom(InputStream inputStream) {
            return (TriggeringCondition) o.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static TriggeringCondition parseFrom(InputStream inputStream, j jVar) {
            return (TriggeringCondition) o.parseFrom(DEFAULT_INSTANCE, inputStream, jVar);
        }

        public static TriggeringCondition parseFrom(f fVar) {
            return (TriggeringCondition) o.parseFrom(DEFAULT_INSTANCE, fVar);
        }

        public static TriggeringCondition parseFrom(f fVar, j jVar) {
            return (TriggeringCondition) o.parseFrom(DEFAULT_INSTANCE, fVar, jVar);
        }
    }

    public enum CampaignState implements q.c {
        UNKNOWN_CAMPAIGN_STATE(0),
        DRAFT(1),
        PUBLISHED(2),
        STOPPED(3),
        DELETED(4),
        UNRECOGNIZED(-1);

        public static final int DELETED_VALUE = 4;
        public static final int DRAFT_VALUE = 1;
        public static final int PUBLISHED_VALUE = 2;
        public static final int STOPPED_VALUE = 3;
        public static final int UNKNOWN_CAMPAIGN_STATE_VALUE = 0;
        private static final q.d<CampaignState> internalValueMap = new q.d<CampaignState>() { // from class: com.google.firebase.inappmessaging.CommonTypesProto.CampaignState.1
            @Override // com.google.protobuf.q.d
            public CampaignState findValueByNumber(int i) {
                return CampaignState.forNumber(i);
            }
        };
        private final int value;

        public static final class CampaignStateVerifier implements q.e {
            static final q.e INSTANCE = new CampaignStateVerifier();

            private CampaignStateVerifier() {
            }

            @Override // com.google.protobuf.q.e
            public boolean isInRange(int i) {
                return CampaignState.forNumber(i) != null;
            }
        }

        CampaignState(int i) {
            this.value = i;
        }

        public static CampaignState forNumber(int i) {
            if (i == 0) {
                return UNKNOWN_CAMPAIGN_STATE;
            }
            if (i == 1) {
                return DRAFT;
            }
            if (i == 2) {
                return PUBLISHED;
            }
            if (i == 3) {
                return STOPPED;
            }
            if (i != 4) {
                return null;
            }
            return DELETED;
        }

        public static q.d<CampaignState> internalGetValueMap() {
            return internalValueMap;
        }

        public static q.e internalGetVerifier() {
            return CampaignStateVerifier.INSTANCE;
        }

        @Override // com.google.protobuf.q.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            fg.c("Can't get the number of an unknown enum value.");
            return 0;
        }

        @Deprecated
        public static CampaignState valueOf(int i) {
            return forNumber(i);
        }
    }

    public enum ExperimentalCampaignState implements q.c {
        UNKNOWN_EXPERIMENTAL_CAMPAIGN_STATE(0),
        EXPERIMENT_DRAFT(1),
        EXPERIMENT_RUNNING(2),
        EXPERIMENT_STOPPED(3),
        EXPERIMENT_ROLLED_OUT(4),
        UNRECOGNIZED(-1);

        public static final int EXPERIMENT_DRAFT_VALUE = 1;
        public static final int EXPERIMENT_ROLLED_OUT_VALUE = 4;
        public static final int EXPERIMENT_RUNNING_VALUE = 2;
        public static final int EXPERIMENT_STOPPED_VALUE = 3;
        public static final int UNKNOWN_EXPERIMENTAL_CAMPAIGN_STATE_VALUE = 0;
        private static final q.d<ExperimentalCampaignState> internalValueMap = new q.d<ExperimentalCampaignState>() { // from class: com.google.firebase.inappmessaging.CommonTypesProto.ExperimentalCampaignState.1
            @Override // com.google.protobuf.q.d
            public ExperimentalCampaignState findValueByNumber(int i) {
                return ExperimentalCampaignState.forNumber(i);
            }
        };
        private final int value;

        public static final class ExperimentalCampaignStateVerifier implements q.e {
            static final q.e INSTANCE = new ExperimentalCampaignStateVerifier();

            private ExperimentalCampaignStateVerifier() {
            }

            @Override // com.google.protobuf.q.e
            public boolean isInRange(int i) {
                return ExperimentalCampaignState.forNumber(i) != null;
            }
        }

        ExperimentalCampaignState(int i) {
            this.value = i;
        }

        public static ExperimentalCampaignState forNumber(int i) {
            if (i == 0) {
                return UNKNOWN_EXPERIMENTAL_CAMPAIGN_STATE;
            }
            if (i == 1) {
                return EXPERIMENT_DRAFT;
            }
            if (i == 2) {
                return EXPERIMENT_RUNNING;
            }
            if (i == 3) {
                return EXPERIMENT_STOPPED;
            }
            if (i != 4) {
                return null;
            }
            return EXPERIMENT_ROLLED_OUT;
        }

        public static q.d<ExperimentalCampaignState> internalGetValueMap() {
            return internalValueMap;
        }

        public static q.e internalGetVerifier() {
            return ExperimentalCampaignStateVerifier.INSTANCE;
        }

        @Override // com.google.protobuf.q.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            fg.c("Can't get the number of an unknown enum value.");
            return 0;
        }

        @Deprecated
        public static ExperimentalCampaignState valueOf(int i) {
            return forNumber(i);
        }
    }

    public enum Trigger implements q.c {
        UNKNOWN_TRIGGER(0),
        APP_LAUNCH(1),
        ON_FOREGROUND(2),
        UNRECOGNIZED(-1);

        public static final int APP_LAUNCH_VALUE = 1;
        public static final int ON_FOREGROUND_VALUE = 2;
        public static final int UNKNOWN_TRIGGER_VALUE = 0;
        private static final q.d<Trigger> internalValueMap = new q.d<Trigger>() { // from class: com.google.firebase.inappmessaging.CommonTypesProto.Trigger.1
            @Override // com.google.protobuf.q.d
            public Trigger findValueByNumber(int i) {
                return Trigger.forNumber(i);
            }
        };
        private final int value;

        public static final class TriggerVerifier implements q.e {
            static final q.e INSTANCE = new TriggerVerifier();

            private TriggerVerifier() {
            }

            @Override // com.google.protobuf.q.e
            public boolean isInRange(int i) {
                return Trigger.forNumber(i) != null;
            }
        }

        Trigger(int i) {
            this.value = i;
        }

        public static Trigger forNumber(int i) {
            if (i == 0) {
                return UNKNOWN_TRIGGER;
            }
            if (i == 1) {
                return APP_LAUNCH;
            }
            if (i != 2) {
                return null;
            }
            return ON_FOREGROUND;
        }

        public static q.d<Trigger> internalGetValueMap() {
            return internalValueMap;
        }

        public static q.e internalGetVerifier() {
            return TriggerVerifier.INSTANCE;
        }

        @Override // com.google.protobuf.q.c
        public final int getNumber() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            fg.c("Can't get the number of an unknown enum value.");
            return 0;
        }

        @Deprecated
        public static Trigger valueOf(int i) {
            return forNumber(i);
        }
    }
}

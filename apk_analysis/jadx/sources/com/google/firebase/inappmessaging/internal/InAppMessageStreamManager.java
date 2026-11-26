package com.google.firebase.inappmessaging.internal;

import android.text.TextUtils;
import com.google.android.gms.tasks.Task;
import com.google.firebase.inappmessaging.CommonTypesProto;
import com.google.firebase.inappmessaging.MessagesProto;
import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import com.google.firebase.inappmessaging.internal.injection.qualifiers.AppForeground;
import com.google.firebase.inappmessaging.internal.injection.qualifiers.ProgrammaticTrigger;
import com.google.firebase.inappmessaging.internal.time.Clock;
import com.google.firebase.inappmessaging.model.InAppMessage;
import com.google.firebase.inappmessaging.model.MessageType;
import com.google.firebase.inappmessaging.model.ProtoMarshallerClient;
import com.google.firebase.inappmessaging.model.RateLimit;
import com.google.firebase.inappmessaging.model.TriggeredInAppMessage;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.protobuf.q;
import defpackage.a75;
import defpackage.a85;
import defpackage.ah1;
import defpackage.aq1;
import defpackage.b85;
import defpackage.bf2;
import defpackage.bh1;
import defpackage.c75;
import defpackage.cf2;
import defpackage.ch1;
import defpackage.d97;
import defpackage.dh3;
import defpackage.dt6;
import defpackage.eh3;
import defpackage.f73;
import defpackage.f75;
import defpackage.fh1;
import defpackage.g34;
import defpackage.g7;
import defpackage.g75;
import defpackage.gg3;
import defpackage.h34;
import defpackage.h75;
import defpackage.he7;
import defpackage.i34;
import defpackage.i75;
import defpackage.j21;
import defpackage.j34;
import defpackage.jg3;
import defpackage.jn;
import defpackage.k2;
import defpackage.k34;
import defpackage.kd7;
import defpackage.kw1;
import defpackage.l34;
import defpackage.l75;
import defpackage.m21;
import defpackage.mz7;
import defpackage.n34;
import defpackage.ng3;
import defpackage.nh3;
import defpackage.nk0;
import defpackage.nq5;
import defpackage.o34;
import defpackage.oq1;
import defpackage.p34;
import defpackage.pg3;
import defpackage.pq1;
import defpackage.q01;
import defpackage.q34;
import defpackage.qq1;
import defpackage.qx1;
import defpackage.r34;
import defpackage.r75;
import defpackage.rg3;
import defpackage.rm3;
import defpackage.s03;
import defpackage.s75;
import defpackage.sg3;
import defpackage.t34;
import defpackage.tg3;
import defpackage.ti0;
import defpackage.tm3;
import defpackage.u34;
import defpackage.u75;
import defpackage.ud;
import defpackage.up0;
import defpackage.v34;
import defpackage.vh3;
import defpackage.w34;
import defpackage.w75;
import defpackage.wg3;
import defpackage.wz7;
import defpackage.x7;
import defpackage.x75;
import defpackage.xf2;
import defpackage.xg3;
import defpackage.xk0;
import defpackage.xl3;
import defpackage.yp0;
import defpackage.yz7;
import defpackage.z08;
import defpackage.z75;
import defpackage.zg3;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public class InAppMessageStreamManager {
    public static final String ON_FOREGROUND = "ON_FOREGROUND";
    private final AbtIntegrationHelper abtIntegrationHelper;
    private final AnalyticsEventsManager analyticsEventsManager;
    private final ApiClient apiClient;
    private final kw1<String> appForegroundEventFlowable;
    private final RateLimit appForegroundRateLimit;
    private final Executor blockingExecutor;
    private final CampaignCacheClient campaignCacheClient;
    private final Clock clock;
    private final DataCollectionHelper dataCollectionHelper;
    private final FirebaseInstallationsApi firebaseInstallations;
    private final ImpressionStorageClient impressionStorageClient;
    private final kw1<String> programmaticTriggerEventFlowable;
    private final RateLimiterClient rateLimiterClient;
    private final Schedulers schedulers;
    private final TestDeviceHelper testDeviceHelper;

    /* JADX INFO: renamed from: com.google.firebase.inappmessaging.internal.InAppMessageStreamManager$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$firebase$inappmessaging$MessagesProto$Content$MessageDetailsCase;

        static {
            int[] iArr = new int[MessagesProto.Content.MessageDetailsCase.values().length];
            $SwitchMap$com$google$firebase$inappmessaging$MessagesProto$Content$MessageDetailsCase = iArr;
            try {
                iArr[MessagesProto.Content.MessageDetailsCase.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$firebase$inappmessaging$MessagesProto$Content$MessageDetailsCase[MessagesProto.Content.MessageDetailsCase.IMAGE_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$firebase$inappmessaging$MessagesProto$Content$MessageDetailsCase[MessagesProto.Content.MessageDetailsCase.MODAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$firebase$inappmessaging$MessagesProto$Content$MessageDetailsCase[MessagesProto.Content.MessageDetailsCase.CARD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public InAppMessageStreamManager(@AppForeground kw1<String> kw1Var, @ProgrammaticTrigger kw1<String> kw1Var2, CampaignCacheClient campaignCacheClient, Clock clock, ApiClient apiClient, AnalyticsEventsManager analyticsEventsManager, Schedulers schedulers, ImpressionStorageClient impressionStorageClient, RateLimiterClient rateLimiterClient, @AppForeground RateLimit rateLimit, TestDeviceHelper testDeviceHelper, FirebaseInstallationsApi firebaseInstallationsApi, DataCollectionHelper dataCollectionHelper, AbtIntegrationHelper abtIntegrationHelper, Executor executor) {
        this.appForegroundEventFlowable = kw1Var;
        this.programmaticTriggerEventFlowable = kw1Var2;
        this.campaignCacheClient = campaignCacheClient;
        this.clock = clock;
        this.apiClient = apiClient;
        this.analyticsEventsManager = analyticsEventsManager;
        this.schedulers = schedulers;
        this.impressionStorageClient = impressionStorageClient;
        this.rateLimiterClient = rateLimiterClient;
        this.appForegroundRateLimit = rateLimit;
        this.testDeviceHelper = testDeviceHelper;
        this.dataCollectionHelper = dataCollectionHelper;
        this.firebaseInstallations = firebaseInstallationsApi;
        this.abtIntegrationHelper = abtIntegrationHelper;
        this.blockingExecutor = executor;
    }

    public static f73 cacheExpiringResponse() {
        f73.b bVarE = f73.e();
        bVarE.b(1L);
        return bVarE.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int compareByPriority(m21 m21Var, m21 m21Var2) {
        if (m21Var.d() && !m21Var2.d()) {
            return -1;
        }
        if (!m21Var2.d() || m21Var.d()) {
            return Integer.compare(m21Var.f().getValue(), m21Var2.f().getValue());
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean containsTriggeringCondition(String str, m21 m21Var) {
        if (isAppForegroundEvent(str) && m21Var.d()) {
            return true;
        }
        for (CommonTypesProto.TriggeringCondition triggeringCondition : m21Var.g()) {
            if (hasFiamTrigger(triggeringCondition, str) || hasAnalyticsTrigger(triggeringCondition, str)) {
                Logging.logd("The event " + str + " is contained in the list of triggers");
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getContentIfNotRateLimited, reason: merged with bridge method [inline-methods] */
    public a75<m21> lambda$createFirebaseInAppMessageStream$12(String str, m21 m21Var) {
        if (m21Var.d() || !isAppForegroundEvent(str)) {
            return a75.b(m21Var);
        }
        mz7<Boolean> mz7VarIsRateLimited = this.rateLimiterClient.isRateLimited(this.appForegroundRateLimit);
        g34 g34Var = new g34();
        mz7VarIsRateLimited.getClass();
        return new r75(new i75(new z08(new yz7(mz7VarIsRateLimited, g34Var), new rm3.j(mz7.e(Boolean.FALSE))), new ud()), new nk0(m21Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getTriggeredInAppMessageMaybe, reason: merged with bridge method [inline-methods] */
    public a75<TriggeredInAppMessage> lambda$createFirebaseInAppMessageStream$14(String str, xl3<m21, a75<m21>> xl3Var, xl3<m21, a75<m21>> xl3Var2, xl3<m21, a75<m21>> xl3Var3, f73 f73Var) {
        q.j jVarD = f73Var.d();
        int i = gg3.b;
        nq5.a(jVarD, "source is null");
        int i2 = 1;
        dh3 dh3Var = new dh3(new vh3(new sg3(new sg3(new zg3(jVarD), new bh1(this, i2)), new ch1(str, i2)).b(xl3Var).b(xl3Var2).b(xl3Var3)).c(), new rm3.k(new t34()));
        int i3 = gg3.b;
        nq5.b(i3, "bufferSize");
        return new l75(new pg3(new wg3(dh3Var, i3)), new xf2(this, str));
    }

    private static boolean hasAnalyticsTrigger(CommonTypesProto.TriggeringCondition triggeringCondition, String str) {
        return triggeringCondition.getEvent().getName().equals(str);
    }

    private static boolean hasFiamTrigger(CommonTypesProto.TriggeringCondition triggeringCondition, String str) {
        return triggeringCondition.getFiamTrigger().toString().equals(str);
    }

    private static boolean isActive(Clock clock, m21 m21Var) {
        long jD;
        long jB;
        if (m21Var.e().equals(m21.c.VANILLA_PAYLOAD)) {
            jD = m21Var.h().d();
            jB = m21Var.h().b();
        } else {
            if (!m21Var.e().equals(m21.c.EXPERIMENTAL_PAYLOAD)) {
                return false;
            }
            jD = m21Var.c().d();
            jB = m21Var.c().b();
        }
        long jNow = clock.now();
        return jNow > jD && jNow < jB;
    }

    public static boolean isAppForegroundEvent(CommonTypesProto.TriggeringCondition triggeringCondition) {
        return triggeringCondition.getFiamTrigger().toString().equals(ON_FOREGROUND);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createFirebaseInAppMessageStream$0(String str) {
        Logging.logd("Event Triggered: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ m21 lambda$createFirebaseInAppMessageStream$10(m21 m21Var, Boolean bool) {
        return m21Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a75 lambda$createFirebaseInAppMessageStream$11(final m21 m21Var) {
        if (m21Var.d()) {
            return a75.b(m21Var);
        }
        mz7<Boolean> mz7VarIsImpressed = this.impressionStorageClient.isImpressed(m21Var);
        r34 r34Var = new r34();
        mz7VarIsImpressed.getClass();
        return new r75(new i75(new yz7(new z08(new wz7(mz7VarIsImpressed, r34Var), new rm3.j(mz7.e(Boolean.FALSE))), new qx1() { // from class: s34
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                InAppMessageStreamManager.logImpressionStatus(m21Var, (Boolean) obj);
            }
        }), new x7(3)), new ah1(m21Var, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static a75 lambda$createFirebaseInAppMessageStream$13(m21 m21Var) {
        int i = AnonymousClass1.$SwitchMap$com$google$firebase$inappmessaging$MessagesProto$Content$MessageDetailsCase[m21Var.getContent().getMessageDetailsCase().ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            return a75.b(m21Var);
        }
        Logging.logd("Filtering non-displayable message");
        return g75.b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createFirebaseInAppMessageStream$15(Throwable th) {
        Logging.logw("Impressions store read fail: " + th.getMessage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ f73 lambda$createFirebaseInAppMessageStream$16(j21 j21Var, InstallationIdResult installationIdResult) {
        return this.apiClient.getFiams(installationIdResult, j21Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createFirebaseInAppMessageStream$17(f73 f73Var) {
        Locale locale = Locale.US;
        Logging.logi("Successfully fetched " + f73Var.d().size() + " messages from backend");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createFirebaseInAppMessageStream$18(f73 f73Var) {
        this.impressionStorageClient.clearImpressions(f73Var).g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createFirebaseInAppMessageStream$19(Throwable th) {
        Logging.logw("Service fetch error: " + th.getMessage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createFirebaseInAppMessageStream$2(Throwable th) {
        Logging.logw("Cache read error: " + th.getMessage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a75 lambda$createFirebaseInAppMessageStream$20(a75 a75Var, j21 j21Var) {
        if (!this.dataCollectionHelper.isAutomaticDataCollectionEnabled()) {
            Logging.logi("Automatic data collection is disabled, not attempting campaign fetch from service.");
            return a75.b(cacheExpiringResponse());
        }
        g7 g7Var = new g7(1);
        a75Var.getClass();
        z75 z75Var = new z75(new r75(new h75(a75Var, g7Var), new i34(this, j21Var)), a75.b(cacheExpiringResponse()));
        j34 j34Var = new j34();
        rm3.e eVar = rm3.d;
        w75 w75Var = new w75(z75Var, j34Var, eVar);
        int i = 0;
        w75 w75Var2 = new w75(w75Var, new k34(this, i), eVar);
        AnalyticsEventsManager analyticsEventsManager = this.analyticsEventsManager;
        Objects.requireNonNull(analyticsEventsManager);
        w75 w75Var3 = new w75(w75Var2, new l34(analyticsEventsManager, i), eVar);
        final TestDeviceHelper testDeviceHelper = this.testDeviceHelper;
        Objects.requireNonNull(testDeviceHelper);
        w75 w75Var4 = new w75(new w75(w75Var3, new qx1() { // from class: m34
            @Override // defpackage.qx1
            public final void accept(Object obj) {
                testDeviceHelper.processCampaignFetch((f73) obj);
            }
        }, eVar), eVar, new n34());
        g75 g75Var = g75.b;
        nq5.a(g75Var, "next is null");
        return new u75(w75Var4, new rm3.j(g75Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public dt6 lambda$createFirebaseInAppMessageStream$21(final String str) {
        a75<f73> a75Var = this.campaignCacheClient.get();
        u34 u34Var = new u34();
        a75Var.getClass();
        rm3.e eVar = rm3.d;
        w75 w75Var = new w75(new w75(a75Var, u34Var, eVar), eVar, new v34());
        g75 g75Var = g75.b;
        nq5.a(g75Var, "next is null");
        u75 u75Var = new u75(w75Var, new rm3.j(g75Var));
        int i = 1;
        xk0 xk0Var = new xk0(this, i);
        final fh1 fh1Var = new fh1(this, 2);
        final w34 w34Var = new w34(this, str);
        final k2 k2Var = new k2(i);
        xl3 xl3Var = new xl3() { // from class: x34
            @Override // defpackage.xl3
            public final Object apply(Object obj) {
                return this.b.lambda$createFirebaseInAppMessageStream$14(str, fh1Var, w34Var, k2Var, (f73) obj);
            }
        };
        a75<j21> allImpressions = this.impressionStorageClient.getAllImpressions();
        h34 h34Var = new h34();
        allImpressions.getClass();
        w75 w75Var2 = new w75(allImpressions, eVar, h34Var);
        j21 j21VarD = j21.d();
        nq5.a(j21VarD, "defaultItem is null");
        u75 u75Var2 = new u75(new z75(w75Var2, a75.b(j21VarD)), new rm3.j(a75.b(j21.d())));
        a75 a75VarTaskToMaybe = taskToMaybe(this.firebaseInstallations.getId(), this.blockingExecutor);
        a75 a75VarTaskToMaybe2 = taskToMaybe(this.firebaseInstallations.getToken(false), this.blockingExecutor);
        ti0 ti0Var = new ti0(4);
        nq5.a(a75VarTaskToMaybe, "source1 is null");
        nq5.a(a75VarTaskToMaybe2, "source2 is null");
        b85 b85Var = new b85(new x75[]{a75VarTaskToMaybe, a75VarTaskToMaybe2}, new rm3.a(ti0Var));
        he7 he7VarIo = this.schedulers.io();
        nq5.a(he7VarIo, "scheduler is null");
        bf2 bf2Var = new bf2(this, new s75(b85Var, he7VarIo));
        if (!shouldIgnoreCache(str)) {
            Logging.logd("Attempting to fetch campaigns using cache");
            l75 l75Var = new l75(new z75(u75Var, new w75(new l75(u75Var2, bf2Var), xk0Var, eVar)), xl3Var);
            return l75Var instanceof tm3 ? ((tm3) l75Var).c() : new a85(l75Var);
        }
        Logging.logi("Forcing fetch from service rather than cache. Test Device: " + this.testDeviceHelper.isDeviceInTestMode() + " | App Fresh Install: " + this.testDeviceHelper.isAppInstallFresh());
        l75 l75Var2 = new l75(new l75(u75Var2, bf2Var), xl3Var);
        return l75Var2 instanceof tm3 ? ((tm3) l75Var2).c() : new a85(l75Var2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createFirebaseInAppMessageStream$4(Throwable th) {
        Logging.logw("Cache write error: " + th.getMessage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static qq1 lambda$createFirebaseInAppMessageStream$5(Throwable th) {
        return aq1.b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$createFirebaseInAppMessageStream$6(f73 f73Var) {
        oq1 oq1VarE = this.campaignCacheClient.put(f73Var).e(new p34());
        q34 q34Var = new q34();
        rm3.e eVar = rm3.d;
        rm3.d dVar = rm3.c;
        new pq1(new oq1(oq1VarE, eVar, q34Var, dVar, dVar), new jn()).g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createFirebaseInAppMessageStream$7(Throwable th) {
        Logging.logw("Impression store read fail: " + th.getMessage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createFirebaseInAppMessageStream$9(Boolean bool) {
        return !bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getContentIfNotRateLimited$22(Boolean bool) {
        Logging.logi("App foreground rate limited ? : " + bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getContentIfNotRateLimited$23(Boolean bool) {
        return !bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ m21 lambda$getContentIfNotRateLimited$24(m21 m21Var, Boolean bool) {
        return m21Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$getTriggeredInAppMessageMaybe$25(m21 m21Var) {
        return this.testDeviceHelper.isDeviceInTestMode() || isActive(this.clock, m21Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$taskToMaybe$28(f75 f75Var, Object obj) {
        c75.a aVar = (c75.a) f75Var;
        aVar.b(obj);
        aVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void lambda$taskToMaybe$29(f75 f75Var, Exception exc) {
        c75.a aVar = (c75.a) f75Var;
        if (!aVar.d(exc)) {
            d97.b(exc);
        }
        aVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$taskToMaybe$30(Task task, Executor executor, f75 f75Var) {
        task.addOnSuccessListener(executor, new q01(f75Var, 1));
        task.addOnFailureListener(executor, new yp0(f75Var, 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void logImpressionStatus(m21 m21Var, Boolean bool) {
        if (m21Var.e().equals(m21.c.VANILLA_PAYLOAD)) {
            Logging.logi("Already impressed campaign " + m21Var.h().c() + " ? : " + bool);
            return;
        }
        if (m21Var.e().equals(m21.c.EXPERIMENTAL_PAYLOAD)) {
            Logging.logi("Already impressed experiment " + m21Var.c().c() + " ? : " + bool);
        }
    }

    private boolean shouldIgnoreCache(String str) {
        return this.testDeviceHelper.isAppInstallFresh() ? isAppForegroundEvent(str) : this.testDeviceHelper.isDeviceInTestMode();
    }

    private static <T> a75<T> taskToMaybe(Task<T> task, Executor executor) {
        return new c75(new cf2(task, executor));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: triggeredInAppMessage, reason: merged with bridge method [inline-methods] */
    public a75<TriggeredInAppMessage> lambda$getTriggeredInAppMessageMaybe$27(m21 m21Var, String str) {
        String campaignId;
        String strC;
        if (m21Var.e().equals(m21.c.VANILLA_PAYLOAD)) {
            campaignId = m21Var.h().getCampaignId();
            strC = m21Var.h().c();
        } else {
            if (!m21Var.e().equals(m21.c.EXPERIMENTAL_PAYLOAD)) {
                return g75.b;
            }
            String campaignId2 = m21Var.c().getCampaignId();
            String strC2 = m21Var.c().c();
            if (!m21Var.d()) {
                this.abtIntegrationHelper.setExperimentActive(m21Var.c().f());
            }
            campaignId = campaignId2;
            strC = strC2;
        }
        InAppMessage inAppMessageDecode = ProtoMarshallerClient.decode(m21Var.getContent(), campaignId, strC, m21Var.d(), m21Var.b());
        return inAppMessageDecode.getMessageType().equals(MessageType.UNSUPPORTED) ? g75.b : a75.b(new TriggeredInAppMessage(inAppMessageDecode, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean validIID(InstallationIdResult installationIdResult) {
        return (TextUtils.isEmpty(installationIdResult.installationId()) || TextUtils.isEmpty(installationIdResult.installationTokenResult().getToken())) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public gg3<TriggeredInAppMessage> createFirebaseInAppMessageStream() throws Exception {
        gg3 tg3Var;
        gg3 jg3Var;
        kw1<String> kw1Var = this.appForegroundEventFlowable;
        kw1<String> analyticsEventsFlowable = this.analyticsEventsManager.getAnalyticsEventsFlowable();
        kw1<String> kw1Var2 = this.programmaticTriggerEventFlowable;
        int i = gg3.b;
        nq5.a(kw1Var, "source1 is null");
        nq5.a(analyticsEventsFlowable, "source2 is null");
        nq5.a(kw1Var2, "source3 is null");
        int i2 = 3;
        xg3 xg3Var = new xg3(new dt6[]{kw1Var, analyticsEventsFlowable, kw1Var2});
        int i3 = gg3.b;
        nq5.b(3, "maxConcurrency");
        nq5.b(i3, "bufferSize");
        if (xg3Var instanceof kd7) {
            T tCall = ((kd7) xg3Var).call();
            tg3Var = tCall == 0 ? rg3.c : new nh3.a(tCall, rm3.a);
        } else {
            tg3Var = new tg3(xg3Var, i3);
        }
        o34 o34Var = new o34();
        tg3Var.getClass();
        eh3 eh3VarC = new ng3(tg3Var, o34Var).c(this.schedulers.io());
        up0 up0Var = new up0(this, i2);
        nq5.b(2, "prefetch");
        if (eh3VarC instanceof kd7) {
            T tCall2 = ((kd7) eh3VarC).call();
            jg3Var = tCall2 == 0 ? rg3.c : new nh3.a(tCall2, up0Var);
        } else {
            jg3Var = new jg3(eh3VarC, up0Var, s03.IMMEDIATE);
        }
        return jg3Var.c(this.schedulers.mainThread());
    }

    public static boolean isAppForegroundEvent(String str) {
        return str.equals(ON_FOREGROUND);
    }
}

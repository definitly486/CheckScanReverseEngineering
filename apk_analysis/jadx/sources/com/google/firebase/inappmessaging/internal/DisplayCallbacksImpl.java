package com.google.firebase.inappmessaging.internal;

import android.text.TextUtils;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks;
import com.google.firebase.inappmessaging.internal.DisplayCallbacksImpl;
import com.google.firebase.inappmessaging.internal.time.Clock;
import com.google.firebase.inappmessaging.model.Action;
import com.google.firebase.inappmessaging.model.InAppMessage;
import com.google.firebase.inappmessaging.model.RateLimit;
import defpackage.a75;
import defpackage.b75;
import defpackage.cq1;
import defpackage.f90;
import defpackage.g75;
import defpackage.h6;
import defpackage.he7;
import defpackage.i21;
import defpackage.m75;
import defpackage.n75;
import defpackage.nq1;
import defpackage.nq5;
import defpackage.oq1;
import defpackage.qp1;
import defpackage.rm3;
import defpackage.rp1;
import defpackage.u75;
import defpackage.um3;
import defpackage.uo2;
import defpackage.vo2;
import defpackage.w75;
import defpackage.wo2;
import defpackage.x75;
import defpackage.xo2;
import defpackage.y75;
import defpackage.z75;
import defpackage.zo2;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public class DisplayCallbacksImpl implements FirebaseInAppMessagingDisplayCallbacks {
    private static final String MESSAGE_CLICK = "message click to metrics logger";
    private final RateLimit appForegroundRateLimit;
    private final CampaignCacheClient campaignCacheClient;
    private final Clock clock;
    private final DataCollectionHelper dataCollectionHelper;
    private final ImpressionStorageClient impressionStorageClient;
    private final InAppMessage inAppMessage;
    private final MetricsLoggerClient metricsLoggerClient;
    private final RateLimiterClient rateLimiterClient;
    private final Schedulers schedulers;
    private final String triggeringEvent;
    private boolean wasImpressed = false;

    public DisplayCallbacksImpl(ImpressionStorageClient impressionStorageClient, Clock clock, Schedulers schedulers, RateLimiterClient rateLimiterClient, CampaignCacheClient campaignCacheClient, RateLimit rateLimit, MetricsLoggerClient metricsLoggerClient, DataCollectionHelper dataCollectionHelper, InAppMessage inAppMessage, String str) {
        this.impressionStorageClient = impressionStorageClient;
        this.clock = clock;
        this.schedulers = schedulers;
        this.rateLimiterClient = rateLimiterClient;
        this.campaignCacheClient = campaignCacheClient;
        this.appForegroundRateLimit = rateLimit;
        this.metricsLoggerClient = metricsLoggerClient;
        this.dataCollectionHelper = dataCollectionHelper;
        this.inAppMessage = inAppMessage;
        this.triggeringEvent = str;
    }

    private boolean actionMatches(Action action, Action action2) {
        if (action == null) {
            return action2 == null || TextUtils.isEmpty(action2.getActionUrl());
        }
        return action.getActionUrl().equals(action2.getActionUrl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$displayErrorEncountered$4(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason inAppMessagingErrorReason) {
        this.metricsLoggerClient.logRenderError(this.inAppMessage, inAppMessagingErrorReason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$impressionDetected$0() {
        this.metricsLoggerClient.logImpression(this.inAppMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$logMessageClick$3(Action action) {
        this.metricsLoggerClient.logMessageClick(this.inAppMessage, action);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static x75 lambda$maybeToTask$10(TaskCompletionSource taskCompletionSource, Throwable th) {
        if (th instanceof Exception) {
            taskCompletionSource.setException((Exception) th);
        } else {
            taskCompletionSource.setException(new RuntimeException(th));
        }
        return g75.b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$maybeToTask$9(TaskCompletionSource taskCompletionSource) {
        taskCompletionSource.setResult(null);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$messageDismissed$2(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType inAppMessagingDismissType) {
        this.metricsLoggerClient.logDismiss(this.inAppMessage, inAppMessagingDismissType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateWasImpressed$1() {
        this.wasImpressed = true;
    }

    private void logActionNotTaken(String str, a75<String> a75Var) {
        if (a75Var != null) {
            Logging.logd(String.format("Not recording: %s. Reason: %s", str, a75Var));
            return;
        }
        if (this.inAppMessage.getCampaignMetadata().getIsTestMessage()) {
            Logging.logd("Not recording: " + str + ". Reason: Message is test message");
            return;
        }
        if (this.dataCollectionHelper.isAutomaticDataCollectionEnabled()) {
            Logging.logd("Not recording: " + str);
        } else {
            Logging.logd("Not recording: " + str + ". Reason: Data collection is disabled");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Task<Void> logImpressionIfNeeded(qp1 qp1Var) {
        if (!this.wasImpressed) {
            impressionDetected();
        }
        qp1Var.getClass();
        return maybeToTask(qp1Var instanceof um3 ? ((um3) qp1Var).b() : new n75(qp1Var), this.schedulers.io());
    }

    private Task<Void> logMessageClick(final Action action) {
        Logging.logd("Attempting to record: message click to metrics logger");
        return logImpressionIfNeeded(new cq1(new h6() { // from class: to2
            @Override // defpackage.h6
            public final void run() {
                this.a.lambda$logMessageClick$3(action);
            }
        }));
    }

    private qp1 logToImpressionStore() {
        String campaignId = this.inAppMessage.getCampaignMetadata().getCampaignId();
        Logging.logd("Attempting to record message impression in impression store for id: " + campaignId);
        ImpressionStorageClient impressionStorageClient = this.impressionStorageClient;
        i21.b bVarB = i21.b();
        bVarB.d(this.clock.now());
        bVarB.b(campaignId);
        qp1 qp1VarStoreImpression = impressionStorageClient.storeImpression(bVarB.build());
        uo2 uo2Var = new uo2();
        qp1VarStoreImpression.getClass();
        rm3.e eVar = rm3.d;
        rm3.d dVar = rm3.c;
        oq1 oq1VarE = new oq1(qp1VarStoreImpression, eVar, uo2Var, dVar, dVar).e(new vo2());
        if (!InAppMessageStreamManager.isAppForegroundEvent(this.triggeringEvent)) {
            return oq1VarE;
        }
        qp1 qp1VarIncrement = this.rateLimiterClient.increment(this.appForegroundRateLimit);
        wo2 wo2Var = new wo2();
        qp1VarIncrement.getClass();
        return new nq1(new oq1(qp1VarIncrement, eVar, wo2Var, dVar, dVar).e(new xo2())).c(oq1VarE);
    }

    private static <T> Task<T> maybeToTask(a75<T> a75Var, he7 he7Var) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zo2 zo2Var = new zo2(taskCompletionSource, 0);
        a75Var.getClass();
        rm3.e eVar = rm3.d;
        u75 u75Var = new u75(new z75(new w75(a75Var, zo2Var, eVar), new m75(new Callable() { // from class: ap2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return DisplayCallbacksImpl.lambda$maybeToTask$9(taskCompletionSource);
            }
        })), new f90(taskCompletionSource, 3));
        nq5.a(he7Var, "scheduler is null");
        new y75(u75Var, he7Var).a(new b75(eVar, rm3.e, rm3.c));
        return taskCompletionSource.getTask();
    }

    private boolean shouldLog() {
        return this.dataCollectionHelper.isAutomaticDataCollectionEnabled();
    }

    private qp1 updateWasImpressed() {
        return new cq1(new h6() { // from class: ro2
            @Override // defpackage.h6
            public final void run() {
                this.a.lambda$updateWasImpressed$1();
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks
    public Task<Void> displayErrorEncountered(final FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason inAppMessagingErrorReason) {
        if (!shouldLog()) {
            logActionNotTaken("render error to metrics logger");
            return new TaskCompletionSource().getTask();
        }
        Logging.logd("Attempting to record: render error to metrics logger");
        rp1 rp1VarC = logToImpressionStore().c(new cq1(new h6() { // from class: yo2
            @Override // defpackage.h6
            public final void run() {
                this.a.lambda$displayErrorEncountered$4(inAppMessagingErrorReason);
            }
        })).c(updateWasImpressed());
        return maybeToTask(rp1VarC instanceof um3 ? ((um3) rp1VarC).b() : new n75(rp1VarC), this.schedulers.io());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks
    public Task<Void> impressionDetected() {
        if (!shouldLog() || this.wasImpressed) {
            logActionNotTaken("message impression to metrics logger");
            return new TaskCompletionSource().getTask();
        }
        Logging.logd("Attempting to record: message impression to metrics logger");
        rp1 rp1VarC = logToImpressionStore().c(new cq1(new h6() { // from class: bp2
            @Override // defpackage.h6
            public final void run() {
                this.a.lambda$impressionDetected$0();
            }
        })).c(updateWasImpressed());
        return maybeToTask(rp1VarC instanceof um3 ? ((um3) rp1VarC).b() : new n75(rp1VarC), this.schedulers.io());
    }

    @Override // com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks
    public Task<Void> messageClicked(Action action) {
        if (shouldLog()) {
            return action.getActionUrl() == null ? messageDismissed(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType.CLICK) : logMessageClick(action);
        }
        logActionNotTaken(MESSAGE_CLICK);
        return new TaskCompletionSource().getTask();
    }

    @Override // com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks
    public Task<Void> messageDismissed(final FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType inAppMessagingDismissType) {
        if (shouldLog()) {
            Logging.logd("Attempting to record: message dismissal to metrics logger");
            return logImpressionIfNeeded(new cq1(new h6() { // from class: so2
                @Override // defpackage.h6
                public final void run() {
                    this.a.lambda$messageDismissed$2(inAppMessagingDismissType);
                }
            }));
        }
        logActionNotTaken("message dismissal to metrics logger");
        return new TaskCompletionSource().getTask();
    }

    public boolean wasImpressed() {
        return this.wasImpressed;
    }

    @Deprecated
    public Task<Void> messageClicked() {
        return messageClicked(this.inAppMessage.getAction());
    }

    private void logActionNotTaken(String str) {
        logActionNotTaken(str, null);
    }
}

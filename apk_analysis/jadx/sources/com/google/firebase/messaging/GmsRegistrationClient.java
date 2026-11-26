package com.google.firebase.messaging;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.cloudmessaging.CloudMessaging;
import com.google.android.gms.cloudmessaging.CloudMessagingClient;
import com.google.android.gms.cloudmessaging.RegisterRequest;
import com.google.android.gms.cloudmessaging.UnregisterRequest;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.InstallationTokenResult;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes4.dex */
class GmsRegistrationClient {
    private static final int GMS_VERSION_Y2026W12 = 261200000;
    static final String MANIFEST_METADATA_FIREBASE_MESSAGING_INSTALLATION_ID_ENABLED = "firebase_messaging_installation_id_enabled";
    private final FirebaseApp app;
    private final CloudMessagingClient client;
    private final FirebaseInstallationsApi firebaseInstallations;
    private final GmsRpc gmsRpc;
    private final Metadata metadata;

    public GmsRegistrationClient(FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, GmsRpc gmsRpc, CloudMessagingClient cloudMessagingClient, Metadata metadata) {
        this.client = cloudMessagingClient;
        this.app = firebaseApp;
        this.firebaseInstallations = firebaseInstallationsApi;
        this.gmsRpc = gmsRpc;
        this.metadata = metadata;
    }

    private Exception getException(Task<?> task) {
        return task.getException() != null ? task.getException() : new ExecutionException(new RuntimeException("Unexpected Error"));
    }

    private boolean haveV1RegistrationSupport() {
        return this.metadata.getGmsVersionCode() >= GMS_VERSION_Y2026W12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$register$0(String str, Task task) throws ExecutionException {
        if (!task.isSuccessful()) {
            throw new ExecutionException(task.getException());
        }
        String str2 = (String) task.getResult();
        if (TextUtils.isEmpty(str2) || !str2.endsWith(str)) {
            throw new ExecutionException(new IllegalArgumentException("Unexpected Error: FID NOT matching!"));
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task lambda$register$1(ExecutorService executorService, Task task) {
        if (!task.isSuccessful()) {
            return Tasks.forException(getException(task));
        }
        final String str = (String) task.getResult();
        return registerOverV1Async(str).continueWith(executorService, new Continuation() { // from class: com.google.firebase.messaging.l
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return GmsRegistrationClient.lambda$register$0(str, task2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task lambda$registerOverV1Async$2(String str, Task task) {
        if (!task.isSuccessful()) {
            return Tasks.forException(getException(task));
        }
        String token = ((InstallationTokenResult) task.getResult()).getToken();
        String apiKey = this.app.getOptions().getApiKey();
        return this.client.register(new RegisterRequest(Metadata.getDefaultSenderId(this.app), this.app.getOptions().getApplicationId(), apiKey, str, token, com.google.firebase.BuildConfig.VERSION_NAME));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task lambda$unregister$3(Task task) {
        return !task.isSuccessful() ? Tasks.forException(getException(task)) : Tasks.forResult(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task lambda$unregisterOverV1Async$4(String str, Task task) {
        if (!task.isSuccessful()) {
            return Tasks.forException(getException(task));
        }
        String token = ((InstallationTokenResult) task.getResult()).getToken();
        return this.client.unregister(new UnregisterRequest(Metadata.getDefaultSenderId(this.app), this.app.getOptions().getApiKey(), str, token));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task lambda$unregisterOverV1Async$5(ExecutorService executorService, Task task) {
        if (!task.isSuccessful()) {
            return Tasks.forException(getException(task));
        }
        final String str = (String) task.getResult();
        return this.firebaseInstallations.getToken(false).continueWithTask(executorService, new Continuation() { // from class: com.google.firebase.messaging.k
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return this.b.lambda$unregisterOverV1Async$4(str, task2);
            }
        });
    }

    private Task<String> registerOverV1Async(final String str) {
        return this.firebaseInstallations.getToken(false).continueWithTask(FcmExecutors.newNetworkIOExecutor(), new Continuation() { // from class: com.google.firebase.messaging.m
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.b.lambda$registerOverV1Async$2(str, task);
            }
        });
    }

    private Task<Void> unregisterOverV1Async() {
        final ExecutorService executorServiceNewNetworkIOExecutor = FcmExecutors.newNetworkIOExecutor();
        return this.firebaseInstallations.getId().continueWithTask(executorServiceNewNetworkIOExecutor, new Continuation() { // from class: com.google.firebase.messaging.i
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.b.lambda$unregisterOverV1Async$5(executorServiceNewNetworkIOExecutor, task);
            }
        });
    }

    public boolean isV1RegistrationEnabled() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        Context applicationContext = this.app.getApplicationContext();
        try {
            PackageManager packageManager = applicationContext.getPackageManager();
            if (packageManager == null || (bundle = (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)).metaData) == null || !bundle.containsKey(MANIFEST_METADATA_FIREBASE_MESSAGING_INSTALLATION_ID_ENABLED)) {
                return false;
            }
            return applicationInfo.metaData.getBoolean(MANIFEST_METADATA_FIREBASE_MESSAGING_INSTALLATION_ID_ENABLED);
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public Task<String> register() {
        boolean zIsV1RegistrationEnabled = isV1RegistrationEnabled();
        if (!zIsV1RegistrationEnabled || !haveV1RegistrationSupport()) {
            return this.gmsRpc.getToken(zIsV1RegistrationEnabled);
        }
        final ExecutorService executorServiceNewNetworkIOExecutor = FcmExecutors.newNetworkIOExecutor();
        return this.firebaseInstallations.getId().continueWithTask(executorServiceNewNetworkIOExecutor, new Continuation() { // from class: com.google.firebase.messaging.h
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.b.lambda$register$1(executorServiceNewNetworkIOExecutor, task);
            }
        });
    }

    public Task<?> unregister() {
        boolean zIsV1RegistrationEnabled = isV1RegistrationEnabled();
        if (!zIsV1RegistrationEnabled || !haveV1RegistrationSupport()) {
            return this.gmsRpc.deleteToken(zIsV1RegistrationEnabled);
        }
        return unregisterOverV1Async().continueWithTask(FcmExecutors.newNetworkIOExecutor(), new Continuation() { // from class: com.google.firebase.messaging.j
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.b.lambda$unregister$3(task);
            }
        });
    }

    public GmsRegistrationClient(Context context, FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, GmsRpc gmsRpc, Metadata metadata) {
        this(firebaseApp, firebaseInstallationsApi, gmsRpc, CloudMessaging.getClient(context), metadata);
    }
}

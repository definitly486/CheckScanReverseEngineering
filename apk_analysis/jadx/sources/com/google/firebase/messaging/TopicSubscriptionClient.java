package com.google.firebase.messaging;

import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.InstallationTokenResult;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes4.dex */
class TopicSubscriptionClient {
    static final String ERROR_INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR";
    static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
    private static final long RPC_TIMEOUT_SEC = 30;
    private final FirebaseApp firebaseApp;
    private final FirebaseInstallationsApi firebaseInstallationsApi;
    private final FirebaseMessaging firebaseMessaging;

    public TopicSubscriptionClient(FirebaseApp firebaseApp, FirebaseMessaging firebaseMessaging, FirebaseInstallationsApi firebaseInstallationsApi) {
        this.firebaseInstallationsApi = firebaseInstallationsApi;
        this.firebaseApp = firebaseApp;
        this.firebaseMessaging = firebaseMessaging;
    }

    private static <T> T awaitTask(Task<T> task) throws IOException {
        try {
            return (T) Tasks.await(task, RPC_TIMEOUT_SEC, TimeUnit.SECONDS);
        } catch (InterruptedException | TimeoutException e) {
            throw new IOException(ERROR_SERVICE_NOT_AVAILABLE, e);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new IOException(e2);
        }
    }

    public static boolean isDebugLogEnabled() {
        return Log.isLoggable(Constants.TAG, 3);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00dd */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void performTopicOperation(java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.String r10) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.TopicSubscriptionClient.performTopicOperation(java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
    }

    public HttpURLConnection createConnection(URL url) {
        return (HttpURLConnection) url.openConnection();
    }

    public void subscribe(String str) throws IOException {
        String token = ((InstallationTokenResult) awaitTask(this.firebaseInstallationsApi.getToken(false))).getToken();
        this.firebaseMessaging.blockingRegister(false);
        performTopicOperation(str, token, (String) awaitTask(this.firebaseInstallationsApi.getId()), "subscribe");
    }

    public void unsubscribe(String str) throws IOException {
        String token = ((InstallationTokenResult) awaitTask(this.firebaseInstallationsApi.getToken(false))).getToken();
        this.firebaseMessaging.blockingRegister(false);
        performTopicOperation(str, token, (String) awaitTask(this.firebaseInstallationsApi.getId()), "unsubscribe");
    }
}

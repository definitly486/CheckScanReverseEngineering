package com.google.firebase.sessions;

import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.InstallationTokenResult;
import defpackage.a32;
import defpackage.ah;
import defpackage.e02;
import defpackage.jh2;
import defpackage.r57;
import defpackage.yc4;

/* JADX INFO: loaded from: classes4.dex */
public final class InstallationId {
    public static final Companion Companion = new Companion(null);
    private final String authToken;
    private final String fid;

    private InstallationId(String str, String str2) {
        this.fid = str;
        this.authToken = str2;
    }

    public final String getAuthToken() {
        return this.authToken;
    }

    public final String getFid() {
        return this.fid;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x007e, code lost:
        
            if (r8 == r10) goto L33;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v0 */
        /* JADX WARN: Type inference failed for: r8v17 */
        /* JADX WARN: Type inference failed for: r8v4 */
        /* JADX WARN: Type inference failed for: r8v5, types: [com.google.firebase.installations.FirebaseInstallationsApi] */
        /* JADX WARN: Type inference failed for: r9v0, types: [com.google.firebase.installations.FirebaseInstallationsApi, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r9v1 */
        /* JADX WARN: Type inference failed for: r9v13 */
        /* JADX WARN: Type inference failed for: r9v14 */
        /* JADX WARN: Type inference failed for: r9v15 */
        /* JADX WARN: Type inference failed for: r9v16 */
        /* JADX WARN: Type inference failed for: r9v17 */
        /* JADX WARN: Type inference failed for: r9v18 */
        /* JADX WARN: Type inference failed for: r9v19 */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v6 */
        /* JADX WARN: Type inference failed for: r9v7 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object create(FirebaseInstallationsApi firebaseInstallationsApi, e02<? super InstallationId> e02Var) {
            InstallationId$Companion$create$1 installationId$Companion$create$1;
            ?? r8;
            String str;
            ?? r9;
            if (e02Var instanceof InstallationId$Companion$create$1) {
                installationId$Companion$create$1 = (InstallationId$Companion$create$1) e02Var;
                int i = installationId$Companion$create$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    installationId$Companion$create$1.label = i - Integer.MIN_VALUE;
                } else {
                    installationId$Companion$create$1 = new InstallationId$Companion$create$1(this, e02Var);
                }
            } else {
                installationId$Companion$create$1 = new InstallationId$Companion$create$1(this, e02Var);
            }
            Object objB = installationId$Companion$create$1.result;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = installationId$Companion$create$1.label;
            jh2 jh2Var = null;
            String str2 = "";
            try {
                try {
                    if (i2 == 0) {
                        r57.b(objB);
                        Task<InstallationTokenResult> token = firebaseInstallationsApi.getToken(false);
                        token.getClass();
                        installationId$Companion$create$1.L$0 = firebaseInstallationsApi;
                        installationId$Companion$create$1.label = 1;
                        objB = yc4.b(token, installationId$Companion$create$1);
                        firebaseInstallationsApi = firebaseInstallationsApi;
                        if (objB == a32Var) {
                        }
                        return a32Var;
                    }
                    if (i2 == 1) {
                        FirebaseInstallationsApi firebaseInstallationsApi2 = (FirebaseInstallationsApi) installationId$Companion$create$1.L$0;
                        r57.b(objB);
                        firebaseInstallationsApi = firebaseInstallationsApi2;
                    } else {
                        if (i2 != 2) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        String str3 = (String) installationId$Companion$create$1.L$0;
                        r57.b(objB);
                        firebaseInstallationsApi = str3;
                    }
                    String str4 = (String) objB;
                    r9 = firebaseInstallationsApi;
                    if (str4 != null) {
                        str2 = str4;
                        r9 = firebaseInstallationsApi;
                    }
                    return new InstallationId(str2, r9, jh2Var);
                    String token2 = ((InstallationTokenResult) objB).getToken();
                    token2.getClass();
                    ?? r7 = firebaseInstallationsApi;
                    str = token2;
                    r8 = r7;
                } catch (Exception e) {
                    Log.w(FirebaseSessions.TAG, "Error getting authentication token.", e);
                    r8 = firebaseInstallationsApi;
                    str = "";
                }
                Task<String> id = r8.getId();
                id.getClass();
                installationId$Companion$create$1.L$0 = str;
                installationId$Companion$create$1.label = 2;
                objB = yc4.b(id, installationId$Companion$create$1);
                firebaseInstallationsApi = str;
            } catch (Exception e2) {
                Log.w(FirebaseSessions.TAG, "Error getting Firebase installation id .", e2);
                r9 = firebaseInstallationsApi;
            }
        }

        private Companion() {
        }
    }

    public /* synthetic */ InstallationId(String str, String str2, jh2 jh2Var) {
        this(str, str2);
    }
}

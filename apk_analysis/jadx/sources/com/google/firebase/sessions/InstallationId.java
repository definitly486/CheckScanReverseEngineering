package com.google.firebase.sessions;

import defpackage.jh2;

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
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object create(com.google.firebase.installations.FirebaseInstallationsApi r9, defpackage.e02<? super com.google.firebase.sessions.InstallationId> r10) {
            /*
                r8 = this;
                boolean r0 = r10 instanceof com.google.firebase.sessions.InstallationId$Companion$create$1
                if (r0 == 0) goto L13
                r0 = r10
                com.google.firebase.sessions.InstallationId$Companion$create$1 r0 = (com.google.firebase.sessions.InstallationId$Companion$create$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                com.google.firebase.sessions.InstallationId$Companion$create$1 r0 = new com.google.firebase.sessions.InstallationId$Companion$create$1
                r0.<init>(r8, r10)
            L18:
                java.lang.Object r8 = r0.result
                a32 r10 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r0.label
                r2 = 0
                java.lang.String r3 = "FirebaseSessions"
                r4 = 2
                r5 = 1
                java.lang.String r6 = ""
                if (r1 == 0) goto L45
                if (r1 == r5) goto L3b
                if (r1 != r4) goto L35
                java.lang.Object r9 = r0.L$0
                java.lang.String r9 = (java.lang.String) r9
                defpackage.r57.b(r8)     // Catch: java.lang.Exception -> L33
                goto L81
            L33:
                r8 = move-exception
                goto L88
            L35:
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r8)
                return r2
            L3b:
                java.lang.Object r9 = r0.L$0
                com.google.firebase.installations.FirebaseInstallationsApi r9 = (com.google.firebase.installations.FirebaseInstallationsApi) r9
                defpackage.r57.b(r8)     // Catch: java.lang.Exception -> L43
                goto L5b
            L43:
                r8 = move-exception
                goto L68
            L45:
                defpackage.r57.b(r8)
                r8 = 0
                com.google.android.gms.tasks.Task r8 = r9.getToken(r8)     // Catch: java.lang.Exception -> L43
                r8.getClass()     // Catch: java.lang.Exception -> L43
                r0.L$0 = r9     // Catch: java.lang.Exception -> L43
                r0.label = r5     // Catch: java.lang.Exception -> L43
                java.lang.Object r8 = defpackage.yc4.b(r8, r0)     // Catch: java.lang.Exception -> L43
                if (r8 != r10) goto L5b
                goto L80
            L5b:
                com.google.firebase.installations.InstallationTokenResult r8 = (com.google.firebase.installations.InstallationTokenResult) r8     // Catch: java.lang.Exception -> L43
                java.lang.String r8 = r8.getToken()     // Catch: java.lang.Exception -> L43
                r8.getClass()     // Catch: java.lang.Exception -> L43
                r7 = r9
                r9 = r8
                r8 = r7
                goto L6f
            L68:
                java.lang.String r1 = "Error getting authentication token."
                android.util.Log.w(r3, r1, r8)
                r8 = r9
                r9 = r6
            L6f:
                com.google.android.gms.tasks.Task r8 = r8.getId()     // Catch: java.lang.Exception -> L33
                r8.getClass()     // Catch: java.lang.Exception -> L33
                r0.L$0 = r9     // Catch: java.lang.Exception -> L33
                r0.label = r4     // Catch: java.lang.Exception -> L33
                java.lang.Object r8 = defpackage.yc4.b(r8, r0)     // Catch: java.lang.Exception -> L33
                if (r8 != r10) goto L81
            L80:
                return r10
            L81:
                java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Exception -> L33
                if (r8 != 0) goto L86
                goto L8d
            L86:
                r6 = r8
                goto L8d
            L88:
                java.lang.String r10 = "Error getting Firebase installation id ."
                android.util.Log.w(r3, r10, r8)
            L8d:
                com.google.firebase.sessions.InstallationId r8 = new com.google.firebase.sessions.InstallationId
                r8.<init>(r6, r9, r2)
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.InstallationId.Companion.create(com.google.firebase.installations.FirebaseInstallationsApi, e02):java.lang.Object");
        }

        private Companion() {
        }
    }

    public /* synthetic */ InstallationId(String str, String str2, jh2 jh2Var) {
        this(str, str2);
    }
}

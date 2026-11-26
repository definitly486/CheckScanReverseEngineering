package com.google.firebase.inappmessaging.internal;

import com.google.firebase.installations.InstallationTokenResult;
import defpackage.o2;

/* JADX INFO: loaded from: classes4.dex */
final class AutoValue_InstallationIdResult extends InstallationIdResult {
    private final String installationId;
    private final InstallationTokenResult installationTokenResult;

    public AutoValue_InstallationIdResult(String str, InstallationTokenResult installationTokenResult) {
        if (str == null) {
            o2.d("Null installationId");
            throw null;
        }
        this.installationId = str;
        if (installationTokenResult != null) {
            this.installationTokenResult = installationTokenResult;
        } else {
            o2.d("Null installationTokenResult");
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof InstallationIdResult) {
            InstallationIdResult installationIdResult = (InstallationIdResult) obj;
            if (this.installationId.equals(installationIdResult.installationId()) && this.installationTokenResult.equals(installationIdResult.installationTokenResult())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.installationTokenResult.hashCode() ^ ((this.installationId.hashCode() ^ 1000003) * 1000003);
    }

    @Override // com.google.firebase.inappmessaging.internal.InstallationIdResult
    public String installationId() {
        return this.installationId;
    }

    @Override // com.google.firebase.inappmessaging.internal.InstallationIdResult
    public InstallationTokenResult installationTokenResult() {
        return this.installationTokenResult;
    }

    public String toString() {
        return "InstallationIdResult{installationId=" + this.installationId + ", installationTokenResult=" + this.installationTokenResult + "}";
    }
}

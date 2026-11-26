package com.google.firebase.installations;

import com.google.firebase.Firebase;
import com.google.firebase.FirebaseApp;

/* JADX INFO: loaded from: classes4.dex */
public final class InstallationsKt {
    public static final FirebaseInstallations getInstallations(Firebase firebase) {
        firebase.getClass();
        FirebaseInstallations firebaseInstallations = FirebaseInstallations.getInstance();
        firebaseInstallations.getClass();
        return firebaseInstallations;
    }

    public static final FirebaseInstallations installations(Firebase firebase, FirebaseApp firebaseApp) {
        firebase.getClass();
        firebaseApp.getClass();
        FirebaseInstallations firebaseInstallations = FirebaseInstallations.getInstance(firebaseApp);
        firebaseInstallations.getClass();
        return firebaseInstallations;
    }
}

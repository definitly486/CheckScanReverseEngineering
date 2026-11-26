package com.google.firebase;

import android.content.Context;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import defpackage.aa4;
import defpackage.r22;
import java.lang.annotation.Annotation;

/* JADX INFO: loaded from: classes4.dex */
public final class FirebaseKt {
    public static final FirebaseApp app(Firebase firebase, String str) {
        firebase.getClass();
        str.getClass();
        FirebaseApp firebaseApp = FirebaseApp.getInstance(str);
        firebaseApp.getClass();
        return firebaseApp;
    }

    private static final <T extends Annotation> Component<r22> coroutineDispatcher() {
        aa4.i();
        throw null;
    }

    public static final FirebaseApp getApp(Firebase firebase) {
        firebase.getClass();
        FirebaseApp firebaseApp = FirebaseApp.getInstance();
        firebaseApp.getClass();
        return firebaseApp;
    }

    public static final FirebaseOptions getOptions(Firebase firebase) {
        firebase.getClass();
        FirebaseOptions options = getApp(Firebase.INSTANCE).getOptions();
        options.getClass();
        return options;
    }

    public static final FirebaseApp initialize(Firebase firebase, Context context, FirebaseOptions firebaseOptions, String str) {
        firebase.getClass();
        context.getClass();
        firebaseOptions.getClass();
        str.getClass();
        FirebaseApp firebaseAppInitializeApp = FirebaseApp.initializeApp(context, firebaseOptions, str);
        firebaseAppInitializeApp.getClass();
        return firebaseAppInitializeApp;
    }

    /* JADX INFO: renamed from: com.google.firebase.FirebaseKt$coroutineDispatcher$1, reason: invalid class name */
    public static final class AnonymousClass1<T> implements ComponentFactory {
        public static final AnonymousClass1<T> INSTANCE = new AnonymousClass1<>();

        @Override // com.google.firebase.components.ComponentFactory
        public final r22 create(ComponentContainer componentContainer) {
            aa4.i();
            throw null;
        }
    }

    public static final FirebaseApp initialize(Firebase firebase, Context context, FirebaseOptions firebaseOptions) {
        firebase.getClass();
        context.getClass();
        firebaseOptions.getClass();
        FirebaseApp firebaseAppInitializeApp = FirebaseApp.initializeApp(context, firebaseOptions);
        firebaseAppInitializeApp.getClass();
        return firebaseAppInitializeApp;
    }

    public static final FirebaseApp initialize(Firebase firebase, Context context) {
        firebase.getClass();
        context.getClass();
        return FirebaseApp.initializeApp(context);
    }
}

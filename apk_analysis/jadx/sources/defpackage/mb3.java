package defpackage;

import com.google.firebase.inject.Provider;
import com.google.firebase.messaging.FirebaseMessaging;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mb3 implements Provider {
    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        return FirebaseMessaging.lambda$clearTransportFactoryForTest$15();
    }
}

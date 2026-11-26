package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.profile.UserProfile;

/* JADX INFO: loaded from: classes5.dex */
public final class Ij implements InterfaceC0788ab {
    public final /* synthetic */ UserProfile a;

    public Ij(UserProfile userProfile) {
        this.a = userProfile;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0788ab
    public final void a(InterfaceC0814bb interfaceC0814bb) {
        interfaceC0814bb.reportUserProfile(this.a);
    }
}

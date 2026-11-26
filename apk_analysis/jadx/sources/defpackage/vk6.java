package defpackage;

import android.graphics.drawable.Drawable;
import com.warefly.checkscan.subscription.presentation.badge.ProfileBadgeView;

/* JADX INFO: loaded from: classes5.dex */
public final class vk6 extends j72<Drawable> {
    public final /* synthetic */ ProfileBadgeView b;

    public vk6(ProfileBadgeView profileBadgeView) {
        this.b = profileBadgeView;
    }

    @Override // defpackage.wk8
    public final void onLoadCleared(Drawable drawable) {
    }

    @Override // defpackage.wk8
    public final void onResourceReady(Object obj, k29 k29Var) {
        ProfileBadgeView profileBadgeView = this.b;
        profileBadgeView.m = (Drawable) obj;
        profileBadgeView.invalidate();
    }
}

package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.notifications.view.NotificationsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class eh7 implements lk3 {
    public static final eh7 a = new eh7();

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        return new NotificationsFragment();
    }

    @Override // defpackage.df7
    public final String b() {
        return eh7.class.getName();
    }
}

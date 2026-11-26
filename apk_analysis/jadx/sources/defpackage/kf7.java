package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class kf7 implements lk3 {
    public final long a;

    public kf7(long j) {
        this.a = j;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        AddScreenshotsFragment addScreenshotsFragment = new AddScreenshotsFragment();
        addScreenshotsFragment.setArguments(new g61(this.a).getArguments());
        return addScreenshotsFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return kf7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof kf7) && this.a == ((kf7) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return bg.d(this.a, "AddScreenshot(purchaseId=", ")");
    }
}

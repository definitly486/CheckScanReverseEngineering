package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.queue.view.QueueFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class vh7 implements lk3 {
    public final String a;

    public vh7(String str) {
        this.a = str;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        QueueFragment queueFragment = new QueueFragment();
        Bundle bundle = new Bundle();
        bundle.putString("qrCode", this.a);
        queueFragment.setArguments(bundle);
        return queueFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return vh7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof vh7) && aa4.e(this.a, ((vh7) obj).a);
    }

    public final int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return me0.c("Queue(qrCode=", this.a, ")");
    }

    public vh7() {
        this(null);
    }
}

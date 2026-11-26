package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class ko3 implements lk3 {
    public final boolean a;

    public ko3(boolean z) {
        this.a = z;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        yn3 yn3Var = new yn3();
        Bundle bundle = new Bundle();
        bundle.putBoolean("play", this.a);
        yn3Var.setArguments(bundle);
        return yn3Var;
    }

    @Override // defpackage.df7
    public final String b() {
        return ko3.class.getName();
    }
}

package defpackage;

import android.os.Bundle;
import androidx.fragment.app.Fragment;

/* JADX INFO: loaded from: classes3.dex */
public class fh5 extends Fragment {
    public boolean b;
    public gh5<? extends fh5> c;

    public final gh5 d() {
        gh5<? extends fh5> gh5Var = this.c;
        if (gh5Var != null) {
            return gh5Var;
        }
        gh5<? extends fh5> gh5Var2 = new gh5<>(this);
        this.c = gh5Var2;
        return gh5Var2;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        d().b(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (getActivity().isFinishing()) {
            d().c();
            return;
        }
        boolean zIsRemoving = false;
        if (this.b) {
            this.b = false;
            return;
        }
        for (Fragment parentFragment = getParentFragment(); !zIsRemoving && parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
            zIsRemoving = parentFragment.isRemoving();
        }
        if (isRemoving() || zIsRemoving) {
            d().c();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        d().e();
        d().d();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.b = false;
        d().a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.b = true;
        d().f(bundle);
        d().e();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.b = false;
        d().a();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        d().e();
    }
}

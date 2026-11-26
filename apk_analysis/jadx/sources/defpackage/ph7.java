package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.bonuses.bonusProgram.view.PointsProgramFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ph7 implements lk3 {
    public final long a;

    public ph7(long j) {
        this.a = j;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        PointsProgramFragment pointsProgramFragment = new PointsProgramFragment();
        pointsProgramFragment.setArguments(new w61(this.a).getArguments());
        return pointsProgramFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return ph7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ph7) && this.a == ((ph7) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return bg.d(this.a, "PointsProgram(programId=", ")");
    }
}

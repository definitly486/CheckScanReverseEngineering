package defpackage;

import android.os.Bundle;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import yads.az1;
import yads.gr0;
import yads.jv;
import yads.kb3;
import yads.kv;
import yads.l66;
import yads.mb3;
import yads.s11;
import yads.st3;
import yads.tz1;
import yads.z35;
import yads.zg1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class yq implements Arrangement.SpacingAlignmentCalculator, st3, l66, kb3, jv {
    public final /* synthetic */ int b;

    public /* synthetic */ yq(int i) {
        this.b = i;
    }

    public static /* synthetic */ void c(Object obj, String str, Object obj2) {
        throw new IllegalArgumentException(str + obj + obj2);
    }

    public static /* synthetic */ void d(String str) {
        throw new IndexOutOfBoundsException(str);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 4:
                return gr0.b(l.longValue());
            case 5:
            default:
                return zg1.b(l.longValue());
            case 6:
                return s11.b(l.longValue());
            case 7:
                return tz1.b(l.longValue());
        }
    }

    @Override // androidx.compose.foundation.layout.Arrangement.SpacingAlignmentCalculator
    public int align(int i, LayoutDirection layoutDirection) {
        return Arrangement.spacedBy_0680j_4$lambda$0(i, layoutDirection);
    }

    @Override // yads.kb3
    public boolean a(int i, int i2, int i3, int i4, int i5) {
        return mb3.b(i, i2, i3, i4, i5);
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return z35.a(bundle);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return az1.b(list);
    }
}

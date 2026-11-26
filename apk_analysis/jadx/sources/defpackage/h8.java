package defpackage;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextInclusionStrategy;
import java.util.List;
import kotlin.KotlinNothingValueException;
import yads.l62;
import yads.l66;
import yads.sa1;
import yads.st3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h8 implements TextInclusionStrategy, l66, st3 {
    public static /* synthetic */ void d() {
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ void e(long j) {
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + j);
    }

    public static /* synthetic */ void f(Object obj, String str, Object obj2) {
        throw new IllegalArgumentException((str + obj + obj2).toString());
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return l62.c(((Long) obj).longValue());
    }

    @Override // androidx.compose.ui.text.TextInclusionStrategy
    public boolean isIncluded(Rect rect, Rect rect2) {
        return TextInclusionStrategy.Companion.ContainsCenter$lambda$0(rect, rect2);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return sa1.a(list);
    }
}

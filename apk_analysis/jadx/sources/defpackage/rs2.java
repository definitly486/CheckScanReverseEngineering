package defpackage;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextInclusionStrategy;
import androidx.savedstate.SavedStateReaderKt;
import java.security.spec.InvalidKeySpecException;
import java.util.List;
import kotlin.KotlinNothingValueException;
import yads.l62;
import yads.l66;
import yads.sa1;
import yads.st3;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rs2 implements TextInclusionStrategy, st3, l66 {
    public static String c(String str, List list, String str2) {
        return str + list + str2;
    }

    public static KotlinNothingValueException d(String str) {
        SavedStateReaderKt.keyOrValueNotFoundError(str);
        return new KotlinNothingValueException();
    }

    public static /* synthetic */ void e(Object obj) throws InvalidKeySpecException {
        throw new InvalidKeySpecException("Unsupported algorithm: " + obj);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return sa1.a(((Long) obj).longValue());
    }

    @Override // androidx.compose.ui.text.TextInclusionStrategy
    public boolean isIncluded(Rect rect, Rect rect2) {
        return rect.overlaps(rect2);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return l62.a(list);
    }
}

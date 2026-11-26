package defpackage;

import android.adservices.adselection.AdSelectionManager;
import android.content.Context;
import android.os.Bundle;
import android.text.PrecomputedText;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.util.List;
import yads.jv;
import yads.kv;
import yads.l62;
import yads.sb0;
import yads.st3;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class i8 implements LibraryVersionComponent.VersionExtractor, st3, jv {
    public static float b(float f, float f2, float f3, float f4) {
        return ((f - f2) * f3) + f4;
    }

    public static /* bridge */ /* synthetic */ AdSelectionManager c(Object obj) {
        return (AdSelectionManager) obj;
    }

    public static /* synthetic */ void d(String str, Object[] objArr) {
        throw new ArrayIndexOutOfBoundsException(String.format(str, objArr));
    }

    public static /* bridge */ /* synthetic */ boolean e(Object obj) {
        return obj instanceof PrecomputedText;
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return sb0.a(bundle);
    }

    @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
    public String extract(Object obj) {
        return FirebaseCommonRegistrar.lambda$getComponents$0((Context) obj);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return l62.b(list);
    }
}

package defpackage;

import android.adservices.adselection.AdSelectionOutcome;
import android.content.Context;
import android.text.Editable;
import android.view.ViewGroup;
import android.view.WindowMetrics;
import androidx.arch.core.util.Function;
import androidx.media3.common.MediaItem;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.work.impl.model.WorkSpec;
import com.google.android.material.textfield.TextInputLayout;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.util.List;
import yads.a93;
import yads.bm3;
import yads.og6;
import yads.sm2;
import yads.xs4;
import yads.y83;
import yads.z83;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class e2 implements CmcdConfiguration.Factory, LibraryVersionComponent.VersionExtractor, TextInputLayout.LengthCounter, Function, a93 {
    public static int b(List list, int i, int i2) {
        return (list.hashCode() + i) * i2;
    }

    public static /* bridge */ /* synthetic */ AdSelectionOutcome c(Object obj) {
        return (AdSelectionOutcome) obj;
    }

    public static /* bridge */ /* synthetic */ Class d() {
        return WindowMetrics.class;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void e(int i, int i2) {
        throw new ArrayIndexOutOfBoundsException("Failed writing " + ((char) i) + ((Object) " at index ") + i2);
    }

    public static /* synthetic */ void f(int i, int i2, Object obj, Object obj2) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        sb.append(i);
        sb.append((Object) " parameters found ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void g(Object obj, Object obj2, Object obj3) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        sb.append(obj3);
        throw new bm3(sb.toString(), 0);
    }

    public static /* synthetic */ void h(String str, Exception exc) throws xs4 {
        throw new xs4(str, exc, true, 1);
    }

    @Override // yads.a93
    public og6 a(ViewGroup viewGroup, z83 z83Var, y83 y83Var) {
        return new sm2(viewGroup, z83Var, y83Var);
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        return WorkSpec.WORK_INFO_MAPPER$lambda$1((List) obj);
    }

    @Override // com.google.android.material.textfield.TextInputLayout.LengthCounter
    public int countLength(Editable editable) {
        return TextInputLayout.lambda$new$0(editable);
    }

    @Override // androidx.media3.exoplayer.upstream.CmcdConfiguration.Factory
    public CmcdConfiguration createCmcdConfiguration(MediaItem mediaItem) {
        return CmcdConfiguration.Factory.lambda$static$0(mediaItem);
    }

    @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
    public String extract(Object obj) {
        return FirebaseCommonRegistrar.lambda$getComponents$1((Context) obj);
    }
}

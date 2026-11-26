package defpackage;

import android.content.Context;
import android.media.MediaParser;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.sqlite.SQLite;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.ComponentRegistrarProcessor;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.util.List;
import kotlin.KotlinNothingValueException;
import yads.a93;
import yads.bc;
import yads.h22;
import yads.l66;
import yads.og6;
import yads.qx3;
import yads.sc1;
import yads.u62;
import yads.y83;
import yads.z83;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f2 implements ComponentRegistrarProcessor, LibraryVersionComponent.VersionExtractor, OnApplyWindowInsetsListener, a93, l66, sc1 {
    public final /* synthetic */ int b;

    public /* synthetic */ f2(int i) {
        this.b = i;
    }

    public static /* bridge */ /* synthetic */ MediaParser.SeekPoint c(Object obj) {
        return (MediaParser.SeekPoint) obj;
    }

    public static KotlinNothingValueException d(int i, String str) {
        SQLite.throwSQLiteException(i, str);
        return new KotlinNothingValueException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void e(int i, long j) {
        throw new ArrayIndexOutOfBoundsException("Failed writing " + ((char) i) + ((Object) " at index ") + j);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 10:
                return h22.a(((Double) obj).doubleValue());
            default:
                return u62.a(((Long) obj).longValue());
        }
    }

    @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
    public String extract(Object obj) {
        return FirebaseCommonRegistrar.lambda$getComponents$2((Context) obj);
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        return bc.a(view, windowInsetsCompat);
    }

    @Override // com.google.firebase.components.ComponentRegistrarProcessor
    public List processRegistrar(ComponentRegistrar componentRegistrar) {
        return componentRegistrar.getComponents();
    }

    @Override // yads.a93
    public og6 a(ViewGroup viewGroup, z83 z83Var, y83 y83Var) {
        return new qx3(viewGroup, z83Var, y83Var);
    }
}

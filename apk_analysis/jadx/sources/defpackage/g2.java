package defpackage;

import android.content.Context;
import android.os.Bundle;
import androidx.arch.core.util.Function;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.util.Map;
import yads.eq2;
import yads.h22;
import yads.iw4;
import yads.jv;
import yads.kv;
import yads.l66;
import yads.tt3;
import yads.u62;
import yads.x83;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class g2 implements Function, LibraryVersionComponent.VersionExtractor, tt3, l66, jv {
    public final /* synthetic */ int b;

    public /* synthetic */ g2(int i) {
        this.b = i;
    }

    public static String c(StringBuilder sb, Map map, char c) {
        sb.append(map);
        sb.append(c);
        return sb.toString();
    }

    public static /* synthetic */ void d(Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append((Object) " must be set");
        throw new IllegalStateException(sb.toString());
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 7:
                return h22.a(l.longValue());
            default:
                return u62.b(l.longValue());
        }
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        return new DefaultSurfaceProcessor((DynamicRange) obj);
    }

    @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
    public String extract(Object obj) {
        return FirebaseCommonRegistrar.lambda$getComponents$3((Context) obj);
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        eq2.a((iw4) obj);
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return x83.b(bundle);
    }
}

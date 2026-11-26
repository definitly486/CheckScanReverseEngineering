package defpackage;

import androidx.camera.camera2.pipe.RequestMetadata;
import java.util.List;
import yads.cs0;
import yads.e91;
import yads.kc1;
import yads.l66;
import yads.st3;
import yads.t91;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ih implements l66, st3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ih(int i) {
        this.b = i;
    }

    public static Object b(RequestMetadata requestMetadata, int i) {
        return requestMetadata.getRequest().getListeners().get(i);
    }

    public static /* synthetic */ void c(int i, Object obj, int i2, Object obj2, int i3) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(obj);
        sb.append(i2);
        sb.append(obj2);
        sb.append(i3);
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 2:
                return cs0.a(l.longValue());
            case 3:
            default:
                return t91.b(l.longValue());
            case 4:
                return kc1.a(l.longValue());
        }
    }

    @Override // yads.st3
    public boolean a(List list) {
        return e91.a(list);
    }
}

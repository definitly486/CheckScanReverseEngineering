package defpackage;

import android.database.SQLException;
import android.os.Bundle;
import androidx.compose.foundation.text.selection.BaseTextPreparedSelection;
import androidx.media3.common.Metadata;
import androidx.media3.database.DatabaseIOException;
import androidx.media3.exoplayer.DefaultRendererCapabilitiesList;
import androidx.media3.exoplayer.metadata.MetadataOutput;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import yads.az1;
import yads.hx5;
import yads.jv;
import yads.kv;
import yads.l66;
import yads.st3;
import yads.tp1;
import yads.vg2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class me0 implements MetadataOutput, l66, jv, st3 {
    public final /* synthetic */ int b;

    public /* synthetic */ me0(int i) {
        this.b = i;
    }

    public static int b(BaseTextPreparedSelection baseTextPreparedSelection) {
        baseTextPreparedSelection.getState().resetCachedX();
        return baseTextPreparedSelection.getText$foundation().length();
    }

    public static String c(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String d(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static /* synthetic */ void e() {
        throw new NoWhenBranchMatchedException();
    }

    public static /* synthetic */ void f(SQLException sQLException) throws DatabaseIOException {
        throw new DatabaseIOException(sQLException);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        switch (this.b) {
            case 7:
                return az1.d(((Long) obj).longValue());
            default:
                return tp1.a(((Double) obj).doubleValue());
        }
    }

    @Override // androidx.media3.exoplayer.metadata.MetadataOutput
    public void onMetadata(Metadata metadata) {
        DefaultRendererCapabilitiesList.Factory.lambda$createRendererCapabilitiesList$1(metadata);
    }

    @Override // yads.jv
    public kv a(Bundle bundle) {
        return hx5.a(bundle);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return vg2.b(list);
    }
}

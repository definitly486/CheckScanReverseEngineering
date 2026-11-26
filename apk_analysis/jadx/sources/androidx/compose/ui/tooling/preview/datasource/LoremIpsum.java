package androidx.compose.ui.tooling.preview.datasource;

import androidx.compose.ui.tooling.preview.PreviewParameterProvider;
import defpackage.ep3;
import defpackage.jp7;
import defpackage.jw4;
import defpackage.lx1;
import defpackage.p07;
import defpackage.v00;
import defpackage.xr;
import defpackage.zo7;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LoremIpsum implements PreviewParameterProvider<String> {
    public static final int $stable = 0;
    private final int words;

    public LoremIpsum(int i) {
        this.words = i;
    }

    private final String generateLoremIpsum(int i) {
        jw4 jw4Var = new jw4(new p07(), LoremIpsumKt.LOREM_IPSUM_SOURCE.size(), 0);
        return jp7.m(jp7.p(new lx1(new ep3(jw4Var, new v00(jw4Var, 3))), i), " ", null, 62);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String generateLoremIpsum$lambda$0(p07 p07Var, int i) {
        List list = LoremIpsumKt.LOREM_IPSUM_SOURCE;
        int i2 = p07Var.b;
        p07Var.b = i2 + 1;
        return (String) list.get(i2 % i);
    }

    @Override // androidx.compose.ui.tooling.preview.PreviewParameterProvider
    public zo7<String> getValues() {
        return new xr(new String[]{generateLoremIpsum(this.words)});
    }

    public LoremIpsum() {
        this(500);
    }
}

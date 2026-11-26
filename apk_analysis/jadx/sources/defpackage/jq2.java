package defpackage;

import com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator;

/* JADX INFO: loaded from: classes5.dex */
public final class jq2 extends gh4 implements ll3<j59> {
    public final /* synthetic */ BaseDotsIndicator f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jq2(BaseDotsIndicator baseDotsIndicator) {
        super(0);
        this.f = baseDotsIndicator;
    }

    @Override // defpackage.ll3
    public final j59 invoke() {
        BaseDotsIndicator baseDotsIndicator = this.f;
        baseDotsIndicator.post(new iq2(baseDotsIndicator, 0));
        return j59.a;
    }
}

package com.google.firebase.inappmessaging.internal.injection.modules;

import com.google.firebase.inappmessaging.dagger.Module;
import com.google.firebase.inappmessaging.dagger.Provides;
import com.google.firebase.inappmessaging.internal.ProgramaticContextualTriggers;
import com.google.firebase.inappmessaging.internal.injection.qualifiers.ProgrammaticTrigger;
import defpackage.fl0;
import defpackage.gg3;
import defpackage.iw1;
import defpackage.kg3;
import defpackage.kh3;
import defpackage.kw1;
import defpackage.n00;
import defpackage.nq5;
import defpackage.qg3;
import defpackage.zi4;

/* JADX INFO: loaded from: classes4.dex */
@Module
public class ProgrammaticContextualTriggerFlowableModule {
    private ProgramaticContextualTriggers triggers;

    public ProgrammaticContextualTriggerFlowableModule(ProgramaticContextualTriggers programaticContextualTriggers) {
        this.triggers = programaticContextualTriggers;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$providesProgramaticContextualTriggerStream$1(qg3 qg3Var) {
        this.triggers.setListener(new fl0(qg3Var, 4));
    }

    @Provides
    @ProgrammaticTrigger
    public kw1<String> providesProgramaticContextualTriggerStream() {
        zi4 zi4Var = new zi4(this, 2);
        n00 n00Var = n00.BUFFER;
        int i = gg3.b;
        nq5.a(n00Var, "mode is null");
        kh3 kh3VarD = new kg3(zi4Var, n00Var).d();
        kh3VarD.i(new iw1());
        return kh3VarD;
    }

    @Provides
    @ProgrammaticTrigger
    public ProgramaticContextualTriggers providesProgramaticContextualTriggers() {
        return this.triggers;
    }
}

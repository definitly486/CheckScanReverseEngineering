.class public Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/dagger/Module;
.end annotation


# instance fields
.field private triggers:Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;->triggers:Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;

    return-void
.end method

.method public static synthetic a(Lqg3;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;->lambda$providesProgramaticContextualTriggerStream$0(Lqg3;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;Lkg3$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;->lambda$providesProgramaticContextualTriggerStream$1(Lqg3;)V

    return-void
.end method

.method private static synthetic lambda$providesProgramaticContextualTriggerStream$0(Lqg3;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Lzw2;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$providesProgramaticContextualTriggerStream$1(Lqg3;)V
    .locals 2

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;->triggers:Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;

    new-instance v0, Lfl0;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lfl0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;->setListener(Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers$Listener;)V

    return-void
.end method


# virtual methods
.method public providesProgramaticContextualTriggerStream()Lkw1;
    .locals 2
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/ProgrammaticTrigger;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkw1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lzi4;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lzi4;-><init>(Ljava/lang/Object;I)V

    sget-object p0, Ln00;->BUFFER:Ln00;

    sget v1, Lgg3;->b:I

    const-string v1, "mode is null"

    invoke-static {p0, v1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkg3;

    invoke-direct {v1, v0, p0}, Lkg3;-><init>(Ljh3;Ln00;)V

    invoke-virtual {v1}, Lgg3;->d()Lkh3;

    move-result-object p0

    new-instance v0, Liw1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lkh3;->i(Liw1;)V

    return-object p0
.end method

.method public providesProgramaticContextualTriggers()Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;
    .locals 0
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/ProgrammaticTrigger;
    .end annotation

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;->triggers:Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;

    return-object p0
.end method

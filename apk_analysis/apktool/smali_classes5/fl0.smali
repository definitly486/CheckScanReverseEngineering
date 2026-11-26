.class public final synthetic Lfl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lli0;
.implements Lxl3;
.implements Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers$Listener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lfl0;->b:I

    iput-object p1, p0, Lfl0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lfl0;->b:I

    iget-object p0, p0, Lfl0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lnz5;

    invoke-virtual {p0, p1}, Lnz5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_0
    check-cast p0, Lt9;

    invoke-virtual {p0, p1}, Lt9;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lus5;

    return-object p0

    :pswitch_1
    check-cast p0, Lbj4;

    invoke-virtual {p0, p1}, Lbj4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laj4$a;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfl0;->c:Ljava/lang/Object;

    check-cast p0, Lbm0$b;

    .line 34
    invoke-virtual {p0, p1, p2}, Lbm0$b;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public onEventTrigger(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lfl0;->c:Ljava/lang/Object;

    check-cast p0, Lqg3;

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;->a(Lqg3;Ljava/lang/String;)V

    return-void
.end method

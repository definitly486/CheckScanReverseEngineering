.class public final Lib;
.super Lpe9;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lib;->a:I

    invoke-direct {p0}, Lpe9;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkh5;
    .locals 0

    iget p0, p0, Lib;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/noAttempts/view/NoAttemptsView$$State;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/dialogs/result/view/DailyTaskResultView$$State;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView$$State;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

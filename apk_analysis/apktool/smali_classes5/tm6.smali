.class public final Ltm6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsm6;


# instance fields
.field public final a:Lo87;


# direct methods
.method public constructor <init>(Lo87;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltm6;->a:Lo87;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Ltm6;->a:Lo87;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Ltm6;->a:Lo87;

    sget-object v0, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    invoke-virtual {p0, v0}, Lo87;->g(Ldf7;)V

    return-void
.end method

.method public final onEditPersonalDataClicked()V
    .locals 3

    new-instance v0, Lqh7;

    new-instance v1, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$FillMyData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$FillMyData;-><init>(Z)V

    invoke-direct {v0, v1}, Lqh7;-><init>(Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;)V

    iget-object p0, p0, Ltm6;->a:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onElectroChequeClick()V
    .locals 1

    iget-object p0, p0, Ltm6;->a:Lo87;

    sget-object v0, Llg7;->a:Llg7;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onFavouriteClick()V
    .locals 2

    new-instance v0, Log7;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Log7;-><init>(Z)V

    iget-object p0, p0, Ltm6;->a:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onFeedbackClick()V
    .locals 2

    new-instance v0, Ltf8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltf8;-><init>(I)V

    iget-object p0, p0, Ltm6;->a:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onHistoryShopClick()V
    .locals 2

    new-instance v0, Log7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Log7;-><init>(Z)V

    iget-object p0, p0, Ltm6;->a:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.class public final Lo40;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor"
    f = "BalanceInteractor.kt"
    l = {
        0x305
    }
    m = "fetchSubscriptionBanner"
.end annotation


# instance fields
.field public l:Lkx2;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lb40;

.field public o:I


# direct methods
.method public constructor <init>(Lb40;Lf02;)V
    .locals 0

    iput-object p1, p0, Lo40;->n:Lb40;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lo40;->m:Ljava/lang/Object;

    iget p1, p0, Lo40;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lo40;->o:I

    iget-object p1, p0, Lo40;->n:Lb40;

    invoke-virtual {p1, p0}, Lb40;->l(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

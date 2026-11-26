.class public final Ls40;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor"
    f = "BalanceInteractor.kt"
    l = {
        0x2d8
    }
    m = "fetchWithdrawalBlock"
.end annotation


# instance fields
.field public l:Ljava/lang/String;

.field public m:Lkx2;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lb40;

.field public p:I


# direct methods
.method public constructor <init>(Lb40;Lf02;)V
    .locals 0

    iput-object p1, p0, Ls40;->o:Lb40;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ls40;->n:Ljava/lang/Object;

    iget p1, p0, Ls40;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ls40;->p:I

    iget-object p1, p0, Ls40;->o:Lb40;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lb40;->o(Ljava/lang/String;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

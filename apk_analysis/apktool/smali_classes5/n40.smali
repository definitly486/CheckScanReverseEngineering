.class public final Ln40;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor"
    f = "BalanceInteractor.kt"
    l = {
        0x15d
    }
    m = "fetchPromotions"
.end annotation


# instance fields
.field public l:Ljava/lang/String;

.field public m:Lkx2;

.field public n:Z

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lb40;

.field public q:I


# direct methods
.method public constructor <init>(Lb40;Lf02;)V
    .locals 0

    iput-object p1, p0, Ln40;->p:Lb40;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Ln40;->o:Ljava/lang/Object;

    iget p1, p0, Ln40;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ln40;->q:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Ln40;->p:Lb40;

    invoke-virtual {v1, p1, v0, p0}, Lb40;->k(Ljava/lang/String;ZLf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

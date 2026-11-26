.class public final Lr51;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.cashback.CashBackInteractor"
    f = "CashBackInteractor.kt"
    l = {
        0x80,
        0x83
    }
    m = "fetchFloatingButtonInfoV3"
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lp51;

.field public n:I


# direct methods
.method public constructor <init>(Lp51;Lf02;)V
    .locals 0

    iput-object p1, p0, Lr51;->m:Lp51;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lr51;->l:Ljava/lang/Object;

    iget p1, p0, Lr51;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lr51;->n:I

    sget-object p1, Lp51;->h:Lct6;

    iget-object p1, p0, Lr51;->m:Lp51;

    invoke-virtual {p1, p0}, Lp51;->b(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class public final Lmm0;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.bonuses.domain.BonusBlockInteractor"
    f = "BonusBlockInteractor.kt"
    l = {
        0xcf
    }
    m = "fetchSpecials"
.end annotation


# instance fields
.field public l:Ljava/util/ArrayList;

.field public m:Ljava/util/ArrayList;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lwl0;

.field public p:I


# direct methods
.method public constructor <init>(Lwl0;Lf02;)V
    .locals 0

    iput-object p1, p0, Lmm0;->o:Lwl0;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lmm0;->n:Ljava/lang/Object;

    iget p1, p0, Lmm0;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmm0;->p:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lmm0;->o:Lwl0;

    invoke-virtual {v1, p1, p1, v0, p0}, Lwl0;->h(Ljava/util/ArrayList;Ljava/util/ArrayList;ZLf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

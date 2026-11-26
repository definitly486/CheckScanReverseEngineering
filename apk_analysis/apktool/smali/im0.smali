.class public final Lim0;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.bonuses.domain.BonusBlockInteractor"
    f = "BonusBlockInteractor.kt"
    l = {
        0x111
    }
    m = "fetchGroupShops"
.end annotation


# instance fields
.field public l:Ljava/util/List;

.field public m:Ljava/util/List;

.field public n:Ljava/util/Collection;

.field public o:Ljava/util/Iterator;

.field public p:Lak0$b;

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lwl0;

.field public s:I


# direct methods
.method public constructor <init>(Lwl0;Lf02;)V
    .locals 0

    iput-object p1, p0, Lim0;->r:Lwl0;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lim0;->q:Ljava/lang/Object;

    iget p1, p0, Lim0;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lim0;->s:I

    iget-object p1, p0, Lim0;->r:Lwl0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p0}, Lwl0;->f(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

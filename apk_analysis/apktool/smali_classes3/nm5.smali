.class public final Lnm5;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "coil3.network.NetworkFetcher"
    f = "NetworkFetcher.kt"
    l = {
        0xb5,
        0xc4
    }
    m = "writeToDiskCache"
    v = 0x1
.end annotation


# instance fields
.field public l:Ljava/lang/Object;

.field public m:Lvm5;

.field public n:Lqn2$b;

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lkm5;

.field public q:I


# direct methods
.method public constructor <init>(Lkm5;Lf02;)V
    .locals 0

    iput-object p1, p0, Lnm5;->p:Lkm5;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lnm5;->o:Ljava/lang/Object;

    iget p1, p0, Lnm5;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lnm5;->q:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lnm5;->p:Lkm5;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lkm5;->j(Lqn2$c;Lvm5;Ltm5;Lvm5;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class public final Lmm5;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "coil3.network.NetworkFetcher"
    f = "NetworkFetcher.kt"
    l = {
        0x10e
    }
    m = "toImageSource"
    v = 0x1
.end annotation


# instance fields
.field public l:Lbu0;

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lkm5;

.field public o:I


# direct methods
.method public constructor <init>(Lkm5;Lf02;)V
    .locals 0

    iput-object p1, p0, Lmm5;->n:Lkm5;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmm5;->m:Ljava/lang/Object;

    iget p1, p0, Lmm5;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmm5;->o:I

    iget-object p1, p0, Lmm5;->n:Lkm5;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lkm5;->h(Lb58;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class public final Lkm5$b;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "coil3.network.NetworkFetcher"
    f = "NetworkFetcher.kt"
    l = {
        0x56,
        0x69,
        0x88
    }
    m = "doFetch"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkm5;->b(Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public l:Lr07;

.field public m:Lr07;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lkm5;

.field public p:I


# direct methods
.method public constructor <init>(Lkm5;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkm5;",
            "Le02<",
            "-",
            "Lkm5$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkm5$b;->o:Lkm5;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkm5$b;->n:Ljava/lang/Object;

    iget p1, p0, Lkm5$b;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkm5$b;->p:I

    iget-object p1, p0, Lkm5$b;->o:Lkm5;

    invoke-virtual {p1, p0}, Lkm5;->b(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

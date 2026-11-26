.class public final Lat7;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.SharedFlowImpl"
    f = "SharedFlow.kt"
    l = {
        0x183,
        0x18a,
        0x18d
    }
    m = "collect$suspendImpl"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf02;"
    }
.end annotation


# instance fields
.field public l:Lzs7;

.field public m:Lid3;

.field public n:Lct7;

.field public o:Lmb4;

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lzs7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzs7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public r:I


# direct methods
.method public constructor <init>(Lzs7;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzs7<",
            "TT;>;",
            "Le02<",
            "-",
            "Lat7;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lat7;->q:Lzs7;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lat7;->p:Ljava/lang/Object;

    iget p1, p0, Lat7;->r:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lat7;->r:I

    iget-object p1, p0, Lat7;->q:Lzs7;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lzs7;->m(Lzs7;Lid3;Le02;)La32;

    move-result-object p0

    return-object p0
.end method

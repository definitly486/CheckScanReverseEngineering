.class public final Lpu0;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.channels.BufferedChannel"
    f = "BufferedChannel.kt"
    l = {
        0x2e0
    }
    m = "receiveCatching-JP2dKIU$suspendImpl"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lf02;"
    }
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lmu0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmu0<",
            "TE;>;"
        }
    .end annotation
.end field

.field public n:I


# direct methods
.method public constructor <init>(Lmu0;Lf02;)V
    .locals 0

    iput-object p1, p0, Lpu0;->m:Lmu0;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lpu0;->l:Ljava/lang/Object;

    iget p1, p0, Lpu0;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lpu0;->n:I

    iget-object p1, p0, Lpu0;->m:Lmu0;

    invoke-static {p1, p0}, Lmu0;->C(Lmu0;Lf02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lp91;

    invoke-direct {p1, p0}, Lp91;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.class public final Lzx6;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.reactive.ReactiveSubscriber"
    f = "ReactiveFlow.kt"
    l = {
        0x77
    }
    m = "takeNextOrNull"
    v = 0x1
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lay6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lay6<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public n:I


# direct methods
.method public constructor <init>(Lay6;Lf02;)V
    .locals 0

    iput-object p1, p0, Lzx6;->m:Lay6;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lzx6;->l:Ljava/lang/Object;

    iget p1, p0, Lzx6;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lzx6;->n:I

    iget-object p1, p0, Lzx6;->m:Lay6;

    invoke-virtual {p1, p0}, Lay6;->b(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

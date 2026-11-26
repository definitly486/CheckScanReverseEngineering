.class public final Lme3;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.FlowKt__LimitKt"
    f = "Limit.kt"
    l = {
        0x47
    }
    m = "emitAbort$FlowKt__LimitKt"
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
.field public l:Ljava/lang/Object;

.field public synthetic m:Ljava/lang/Object;

.field public n:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lme3;->m:Ljava/lang/Object;

    iget p1, p0, Lme3;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lme3;->n:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, Lkm1;->b(Lid3;Ljava/lang/Object;Ljava/lang/Object;Lf02;)La32;

    move-result-object p0

    return-object p0
.end method

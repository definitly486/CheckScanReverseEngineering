.class public final Lxp4;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "coil3.util.LifecyclesKt"
    f = "lifecycles.kt"
    l = {
        0x2a
    }
    m = "awaitStarted"
    v = 0x1
.end annotation


# instance fields
.field public l:Landroidx/lifecycle/Lifecycle;

.field public m:Lr07;

.field public synthetic n:Ljava/lang/Object;

.field public o:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lxp4;->n:Ljava/lang/Object;

    iget p1, p0, Lxp4;->o:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lxp4;->o:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lzp4;->a(Landroidx/lifecycle/Lifecycle;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

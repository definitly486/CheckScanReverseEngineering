.class public final Lxk2;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.DelayKt"
    f = "Delay.kt"
    l = {
        0xa0
    }
    m = "awaitCancellation"
    v = 0x1
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public m:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lxk2;->l:Ljava/lang/Object;

    iget p1, p0, Lxk2;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lxk2;->m:I

    invoke-static {p0}, Lyk2;->a(Lf02;)La32;

    move-result-object p0

    return-object p0
.end method

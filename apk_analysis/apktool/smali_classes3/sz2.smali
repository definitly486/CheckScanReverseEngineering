.class public final Lsz2;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "coil3.intercept.EngineInterceptorKt"
    f = "EngineInterceptor.kt"
    l = {
        0x103
    }
    m = "transform"
    v = 0x1
.end annotation


# instance fields
.field public l:Llz2$a;

.field public m:Lb24;

.field public n:Lzz5;

.field public o:La13;

.field public p:Ljava/util/List;

.field public q:I

.field public r:I

.field public synthetic s:Ljava/lang/Object;

.field public t:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lsz2;->s:Ljava/lang/Object;

    iget p1, p0, Lsz2;->t:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lsz2;->t:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p1, p0}, Ltz2;->a(Llz2$a;Lb24;Lzz5;La13;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

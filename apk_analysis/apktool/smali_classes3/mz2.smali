.class public final Lmz2;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "coil3.intercept.EngineInterceptor"
    f = "EngineInterceptor.kt"
    l = {
        0xcb
    }
    m = "decode"
    v = 0x1
.end annotation


# instance fields
.field public l:Lx48;

.field public m:Lfs1;

.field public n:Lb24;

.field public o:Ljava/lang/Object;

.field public p:Lzz5;

.field public q:La13;

.field public r:Ltd2;

.field public s:I

.field public synthetic t:Ljava/lang/Object;

.field public final synthetic u:Llz2;

.field public v:I


# direct methods
.method public constructor <init>(Llz2;Lf02;)V
    .locals 0

    iput-object p1, p0, Lmz2;->u:Llz2;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Lmz2;->t:Ljava/lang/Object;

    iget p1, p0, Lmz2;->v:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmz2;->v:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lmz2;->u:Llz2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Llz2;->b(Lx48;Lfs1;Lb24;Ljava/lang/Object;Lzz5;La13;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

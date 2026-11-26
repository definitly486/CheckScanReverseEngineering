.class public final Lnz2;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "coil3.intercept.EngineInterceptor"
    f = "EngineInterceptor.kt"
    l = {
        0x7e,
        0x82,
        0x94
    }
    m = "execute"
    v = 0x1
.end annotation


# instance fields
.field public l:Lb24;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public o:Lr07;

.field public p:Lr07;

.field public q:Lr07;

.field public r:Lr07;

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:Llz2;

.field public u:I


# direct methods
.method public constructor <init>(Llz2;Lf02;)V
    .locals 0

    iput-object p1, p0, Lnz2;->t:Llz2;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lnz2;->s:Ljava/lang/Object;

    iget p1, p0, Lnz2;->u:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lnz2;->u:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lnz2;->t:Llz2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Llz2;->c(Lb24;Ljava/lang/Object;Lzz5;La13;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

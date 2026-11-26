.class public final Lvy6;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "coil3.RealImageLoader"
    f = "RealImageLoader.kt"
    l = {
        0x76,
        0x82,
        0x86
    }
    m = "execute"
    v = 0x1
.end annotation


# instance fields
.field public l:Ll37;

.field public m:Lb24;

.field public n:La13;

.field public o:Lx04;

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lsy6;

.field public r:I


# direct methods
.method public constructor <init>(Lsy6;Lf02;)V
    .locals 0

    iput-object p1, p0, Lvy6;->q:Lsy6;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lvy6;->p:Ljava/lang/Object;

    iget p1, p0, Lvy6;->r:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lvy6;->r:I

    sget p1, Lsy6;->f:I

    iget-object p1, p0, Lvy6;->q:Lsy6;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lsy6;->b(Lb24;ILf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

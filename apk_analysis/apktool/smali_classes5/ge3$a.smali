.class public final Lge3$a;
.super Lf02;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1"
    f = "Errors.kt"
    l = {
        0x74,
        0x76
    }
    m = "collect"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lge3;->collect(Lid3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public m:I

.field public final synthetic n:Lge3;

.field public o:Lid3;

.field public p:Ljava/lang/Throwable;

.field public q:I

.field public r:I

.field public s:J


# direct methods
.method public constructor <init>(Lge3;Le02;)V
    .locals 0

    iput-object p1, p0, Lge3$a;->n:Lge3;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lge3$a;->l:Ljava/lang/Object;

    iget p1, p0, Lge3$a;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lge3$a;->m:I

    iget-object p1, p0, Lge3$a;->n:Lge3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lge3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

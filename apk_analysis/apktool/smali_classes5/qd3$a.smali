.class public final Lqd3$a;
.super Lf02;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$1"
    f = "Builders.kt"
    l = {
        0x71
    }
    m = "collect"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqd3;->collect(Lid3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public m:I

.field public final synthetic n:Lqd3;

.field public o:Lid3;

.field public p:I

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(Lqd3;Le02;)V
    .locals 0

    iput-object p1, p0, Lqd3$a;->n:Lqd3;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lqd3$a;->l:Ljava/lang/Object;

    iget p1, p0, Lqd3$a;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lqd3$a;->m:I

    iget-object p1, p0, Lqd3$a;->n:Lqd3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lqd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

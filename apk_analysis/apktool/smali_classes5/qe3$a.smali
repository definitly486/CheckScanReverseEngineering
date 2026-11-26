.class public final Lqe3$a;
.super Lf02;


# annotations
.annotation runtime Lbd2;
    c = "kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda$0$$inlined$collectWhile$1"
    f = "Limit.kt"
    l = {
        0x8e,
        0x8f
    }
    m = "emit"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public m:I

.field public final synthetic n:Lqe3;

.field public o:Ljava/lang/Object;

.field public p:I


# direct methods
.method public constructor <init>(Lqe3;Le02;)V
    .locals 0

    iput-object p1, p0, Lqe3$a;->n:Lqe3;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lqe3$a;->l:Ljava/lang/Object;

    iget p1, p0, Lqe3$a;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lqe3$a;->m:I

    iget-object p1, p0, Lqe3$a;->n:Lqe3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lqe3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class final Landroidx/paging/FlowExtKt$combineWithoutBatching$2$1$1$1$emit$1;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.FlowExtKt$combineWithoutBatching$2$1$1$1"
    f = "FlowExt.kt"
    l = {
        0x85,
        0x88
    }
    m = "emit"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/FlowExtKt$combineWithoutBatching$2$1$1$1;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/paging/FlowExtKt$combineWithoutBatching$2$1$1$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/FlowExtKt$combineWithoutBatching$2$1$1$1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/FlowExtKt$combineWithoutBatching$2$1$1$1;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/FlowExtKt$combineWithoutBatching$2$1$1$1<",
            "-TT;>;",
            "Le02<",
            "-",
            "Landroidx/paging/FlowExtKt$combineWithoutBatching$2$1$1$1$emit$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$1$1$1$emit$1;->this$0:Landroidx/paging/FlowExtKt$combineWithoutBatching$2$1$1$1;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$1$1$1$emit$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$1$1$1$emit$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$1$1$1$emit$1;->label:I

    iget-object p1, p0, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$1$1$1$emit$1;->this$0:Landroidx/paging/FlowExtKt$combineWithoutBatching$2$1$1$1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroidx/paging/FlowExtKt$combineWithoutBatching$2$1$1$1;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

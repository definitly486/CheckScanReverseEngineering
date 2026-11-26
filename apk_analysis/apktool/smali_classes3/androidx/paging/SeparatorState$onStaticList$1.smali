.class final Landroidx/paging/SeparatorState$onStaticList$1;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.SeparatorState"
    f = "Separators.kt"
    l = {
        0x23f
    }
    m = "onStaticList"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/SeparatorState;->onStaticList(Landroidx/paging/PageEvent$StaticList;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/paging/SeparatorState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/SeparatorState<",
            "TR;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/SeparatorState;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/SeparatorState<",
            "TR;TT;>;",
            "Le02<",
            "-",
            "Landroidx/paging/SeparatorState$onStaticList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/SeparatorState$onStaticList$1;->this$0:Landroidx/paging/SeparatorState;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/paging/SeparatorState$onStaticList$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/paging/SeparatorState$onStaticList$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/paging/SeparatorState$onStaticList$1;->label:I

    iget-object p1, p0, Landroidx/paging/SeparatorState$onStaticList$1;->this$0:Landroidx/paging/SeparatorState;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroidx/paging/SeparatorState;->onStaticList(Landroidx/paging/PageEvent$StaticList;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

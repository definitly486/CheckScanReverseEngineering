.class final Landroidx/compose/material3/internal/AnchoredDraggableKt$snapTo$2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lfm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.material3.internal.AnchoredDraggableKt$snapTo$2"
    f = "AnchoredDraggable.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/internal/AnchoredDraggableKt;->snapTo(Landroidx/compose/material3/internal/AnchoredDraggableState;Ljava/lang/Object;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lfm3<",
        "Landroidx/compose/material3/internal/AnchoredDragScope;",
        "Landroidx/compose/material3/internal/DraggableAnchors<",
        "TT;>;TT;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Le02;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Landroidx/compose/material3/internal/AnchoredDraggableKt$snapTo$2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/material3/internal/AnchoredDragScope;Landroidx/compose/material3/internal/DraggableAnchors;Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/internal/AnchoredDragScope;",
            "Landroidx/compose/material3/internal/DraggableAnchors<",
            "TT;>;TT;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p0, Landroidx/compose/material3/internal/AnchoredDraggableKt$snapTo$2;

    invoke-direct {p0, p4}, Landroidx/compose/material3/internal/AnchoredDraggableKt$snapTo$2;-><init>(Le02;)V

    iput-object p1, p0, Landroidx/compose/material3/internal/AnchoredDraggableKt$snapTo$2;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/internal/AnchoredDraggableKt$snapTo$2;->L$1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/material3/internal/AnchoredDraggableKt$snapTo$2;->L$2:Ljava/lang/Object;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/AnchoredDraggableKt$snapTo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Landroidx/compose/material3/internal/AnchoredDragScope;

    check-cast p2, Landroidx/compose/material3/internal/DraggableAnchors;

    check-cast p4, Le02;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/material3/internal/AnchoredDraggableKt$snapTo$2;->invoke(Landroidx/compose/material3/internal/AnchoredDragScope;Landroidx/compose/material3/internal/DraggableAnchors;Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableKt$snapTo$2;->label:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material3/internal/AnchoredDraggableKt$snapTo$2;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/material3/internal/AnchoredDragScope;

    iget-object v0, p0, Landroidx/compose/material3/internal/AnchoredDraggableKt$snapTo$2;->L$1:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/material3/internal/DraggableAnchors;

    iget-object p0, p0, Landroidx/compose/material3/internal/AnchoredDraggableKt$snapTo$2;->L$2:Ljava/lang/Object;

    invoke-interface {v0, p0}, Landroidx/compose/material3/internal/DraggableAnchors;->positionOf(Ljava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p0, v0, v2, v1}, Landroidx/compose/material3/internal/AnchoredDragScope;->dragTo$default(Landroidx/compose/material3/internal/AnchoredDragScope;FFILjava/lang/Object;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1
.end method

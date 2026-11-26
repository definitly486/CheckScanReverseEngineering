.class final Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;
.super Lf57;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.runtime.composer.linkbuffer.SlotTable$DebugGroup$slots$1"
    f = "SlotTable.kt"
    l = {
        0x258
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup;->getSlots()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf57;",
        "Lbm3<",
        "Lbp7<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup;

.field final synthetic this$1:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup;Landroidx/compose/runtime/composer/linkbuffer/SlotTable;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup;",
            "Landroidx/compose/runtime/composer/linkbuffer/SlotTable;",
            "Le02<",
            "-",
            "Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->this$0:Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup;

    iput-object p2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->this$1:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lf57;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->this$0:Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup;

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->this$1:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-direct {v0, v1, p0, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup;Landroidx/compose/runtime/composer/linkbuffer/SlotTable;Le02;)V

    iput-object p1, v0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lbp7;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbp7<",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lbp7;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->invoke(Lbp7;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->I$1:I

    iget v3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->I$0:I

    iget-object v4, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lbp7;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lbp7;

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->this$0:Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup;->getSlotRange()Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugSlotRange;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugSlotRange;->getAddress()I

    move-result v3

    iget-object v4, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->this$0:Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup;

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup;->getFlags()I

    move-result v4

    invoke-static {v4}, Landroidx/compose/runtime/composer/linkbuffer/GroupFlagsKt;->utilitySlotsCountForFlags(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugSlotRange;->getEnd()I

    move-result v1

    move v3, v4

    move-object v4, p1

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->this$1:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-static {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->access$getSlots(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;)[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v3

    iput-object v4, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->I$0:I

    iput v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->I$1:I

    iput v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup$slots$1;->label:I

    invoke-virtual {v4, p0, p1}, Lbp7;->a(Le02;Ljava/lang/Object;)La32;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    add-int/2addr v3, v2

    goto :goto_0

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

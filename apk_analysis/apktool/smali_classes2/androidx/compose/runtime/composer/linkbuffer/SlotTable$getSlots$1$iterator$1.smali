.class final Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;
.super Lf57;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.runtime.composer.linkbuffer.SlotTable$getSlots$1$iterator$1"
    f = "SlotTable.kt"
    l = {
        0x244
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1;->iterator()Ljava/util/Iterator;
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

.field I$2:I

.field I$3:I

.field I$4:I

.field I$5:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/composer/linkbuffer/SlotTable;",
            "Le02<",
            "-",
            "Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->this$0:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lf57;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
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

    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->this$0:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-direct {v0, p0, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;Le02;)V

    iput-object p1, v0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lbp7;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->invoke(Lbp7;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->I$5:I

    iget v3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->I$4:I

    iget v4, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->I$3:I

    iget v5, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->I$2:I

    iget v6, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->I$1:I

    iget v7, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->I$0:I

    iget-object v8, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->L$4:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iget-object v9, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->L$3:Ljava/lang/Object;

    check-cast v9, [I

    iget-object v10, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->L$2:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/runtime/IntStack;

    iget-object v11, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->L$1:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iget-object v12, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lbp7;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lbp7;

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->this$0:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getHasEditor()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Cannot read while an editor is pending"

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getRoot()I

    move-result v4

    if-ltz v4, :cond_b

    new-instance v5, Landroidx/compose/runtime/IntStack;

    invoke-direct {v5}, Landroidx/compose/runtime/IntStack;-><init>()V

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v3

    move v7, v2

    move-object v6, v5

    move v5, v4

    :goto_0
    invoke-static {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->access$getGroups(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;)[I

    move-result-object v8

    add-int/lit8 v9, v4, 0x5

    aget v8, v8, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v9

    and-int/lit8 v10, v8, 0xf

    add-int/2addr v10, v2

    shr-int/lit8 v8, v8, 0x4

    const/16 v11, 0xf

    if-le v10, v11, :cond_3

    invoke-static {v9}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->access$getLargeSizes(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)Landroidx/collection/MutableIntIntMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroidx/collection/IntIntMap;->get(I)I

    move-result v10

    :cond_3
    const/4 v9, 0x0

    move v11, v5

    move v5, v4

    move v4, v10

    move-object v10, v6

    move v6, v7

    move v7, v11

    move-object v12, p1

    move-object v11, v1

    move v1, v9

    move-object v9, v3

    move v3, v8

    move-object v8, v11

    :goto_1
    if-ge v1, v4, :cond_5

    invoke-static {v8}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->access$getSlots(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;)[Ljava/lang/Object;

    move-result-object p1

    add-int v13, v3, v1

    aget-object p1, p1, v13

    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    invoke-static {p1, v13}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    iput-object v12, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->L$0:Ljava/lang/Object;

    iput-object v11, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->L$1:Ljava/lang/Object;

    iput-object v10, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->L$2:Ljava/lang/Object;

    iput-object v9, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->L$3:Ljava/lang/Object;

    iput-object v8, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->L$4:Ljava/lang/Object;

    iput v7, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->I$0:I

    iput v6, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->I$1:I

    iput v5, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->I$2:I

    iput v4, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->I$3:I

    iput v3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->I$4:I

    iput v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->I$5:I

    iput v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$getSlots$1$iterator$1;->label:I

    invoke-virtual {v12, p0, p1}, Lbp7;->a(Le02;Ljava/lang/Object;)La32;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    add-int/2addr v1, v2

    goto :goto_1

    :cond_5
    move v4, v5

    move v5, v7

    move-object v3, v9

    move-object v1, v11

    move-object p1, v12

    move v7, v6

    move-object v6, v10

    :cond_6
    if-ne v4, v5, :cond_7

    if-eqz v7, :cond_8

    :cond_7
    add-int/lit8 v8, v4, 0x1

    aget v8, v3, v8

    if-ltz v8, :cond_8

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/IntStack;->push(I)V

    :cond_8
    add-int/lit8 v4, v4, 0x3

    aget v4, v3, v4

    if-ltz v4, :cond_9

    goto :goto_0

    :cond_9
    iget v4, v6, Landroidx/compose/runtime/IntStack;->tos:I

    if-nez v4, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v6}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v4

    goto/16 :goto_0

    :cond_b
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

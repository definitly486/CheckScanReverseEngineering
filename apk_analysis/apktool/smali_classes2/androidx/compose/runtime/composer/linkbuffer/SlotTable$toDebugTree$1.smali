.class final Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;
.super Lf57;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.compose.runtime.composer.linkbuffer.SlotTable$toDebugTree$1"
    f = "SlotTable.kt"
    l = {
        0x249
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->toDebugTree$runtime()Ljava/lang/Object;
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
        "Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup;",
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

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

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
            "Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->this$0:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

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

    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->this$0:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-direct {v0, p0, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;Le02;)V

    iput-object p1, v0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lbp7;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbp7<",
            "-",
            "Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup;",
            ">;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lbp7;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->invoke(Lbp7;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->I$0:I

    iget-object v3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->L$2:Ljava/lang/Object;

    check-cast v3, [I

    iget-object v4, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->L$1:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iget-object v5, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lbp7;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lbp7;

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->this$0:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getRoot()I

    move-result v3

    iget-object v4, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->this$0:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v1

    move v5, v3

    move-object v3, v1

    move v1, v5

    move-object v5, p1

    :goto_0
    if-ltz v1, :cond_3

    new-instance p1, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup;

    invoke-direct {p1, v4, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugGroup;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;I)V

    iput-object v5, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->L$2:Ljava/lang/Object;

    iput v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->I$0:I

    iput v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$toDebugTree$1;->label:I

    invoke-virtual {v5, p0, p1}, Lbp7;->a(Le02;Ljava/lang/Object;)La32;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    add-int/2addr v1, v2

    aget v1, v3, v1

    goto :goto_0

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

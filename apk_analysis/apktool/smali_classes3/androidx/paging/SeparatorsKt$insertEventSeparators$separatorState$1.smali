.class final Landroidx/paging/SeparatorsKt$insertEventSeparators$separatorState$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.paging.SeparatorsKt$insertEventSeparators$separatorState$1"
    f = "Separators.kt"
    l = {
        0x268
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/SeparatorsKt;->insertEventSeparators(Lhd3;Landroidx/paging/TerminalSeparatorType;Ldm3;)Lhd3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Ldm3<",
        "TT;TT;",
        "Le02<",
        "-TR;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $generator:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "TT;TT;",
            "Le02<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ldm3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldm3<",
            "-TT;-TT;-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/paging/SeparatorsKt$insertEventSeparators$separatorState$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/SeparatorsKt$insertEventSeparators$separatorState$1;->$generator:Ldm3;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Le02<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Landroidx/paging/SeparatorsKt$insertEventSeparators$separatorState$1;

    iget-object p0, p0, Landroidx/paging/SeparatorsKt$insertEventSeparators$separatorState$1;->$generator:Ldm3;

    invoke-direct {v0, p0, p3}, Landroidx/paging/SeparatorsKt$insertEventSeparators$separatorState$1;-><init>(Ldm3;Le02;)V

    iput-object p1, v0, Landroidx/paging/SeparatorsKt$insertEventSeparators$separatorState$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/paging/SeparatorsKt$insertEventSeparators$separatorState$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Landroidx/paging/SeparatorsKt$insertEventSeparators$separatorState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p3, Le02;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/paging/SeparatorsKt$insertEventSeparators$separatorState$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/paging/SeparatorsKt$insertEventSeparators$separatorState$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/paging/SeparatorsKt$insertEventSeparators$separatorState$1;->L$0:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/paging/SeparatorsKt$insertEventSeparators$separatorState$1;->L$1:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/paging/SeparatorsKt$insertEventSeparators$separatorState$1;->$generator:Ldm3;

    const/4 v4, 0x0

    iput-object v4, p0, Landroidx/paging/SeparatorsKt$insertEventSeparators$separatorState$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/paging/SeparatorsKt$insertEventSeparators$separatorState$1;->label:I

    invoke-interface {v3, p1, v1, p0}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

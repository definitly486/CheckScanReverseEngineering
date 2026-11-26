.class final Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$3"
    f = "DataStoreImpl.kt"
    l = {
        0x1a0
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/DataStoreImpl;->doWithWriteFileLock(ZLnl3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lnl3<",
        "Le02<",
        "-TR;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $block:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Le02<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Lnl3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;->$block:Lnl3;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;

    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;->$block:Lnl3;

    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;-><init>(Lnl3;Le02;)V

    return-object v0
.end method

.method public final invoke(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;->create(Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Le02;

    invoke-virtual {p0, p1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;->invoke(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;->label:I

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

    iget-object p1, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;->$block:Lnl3;

    iput v2, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$3;->label:I

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.class public final Landroidx/paging/ItemKeyedDataSource$loadInitial$2$1;
.super Landroidx/paging/ItemKeyedDataSource$LoadInitialCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/ItemKeyedDataSource;->loadInitial$paging_common(Landroidx/paging/ItemKeyedDataSource$LoadInitialParams;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/ItemKeyedDataSource$LoadInitialCallback<",
        "TValue;>;"
    }
.end annotation


# instance fields
.field final synthetic $cont:La31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La31<",
            "Landroidx/paging/DataSource$BaseResult<",
            "TValue;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/paging/ItemKeyedDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/ItemKeyedDataSource<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La31;Landroidx/paging/ItemKeyedDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La31<",
            "-",
            "Landroidx/paging/DataSource$BaseResult<",
            "TValue;>;>;",
            "Landroidx/paging/ItemKeyedDataSource<",
            "TKey;TValue;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/ItemKeyedDataSource$loadInitial$2$1;->$cont:La31;

    iput-object p2, p0, Landroidx/paging/ItemKeyedDataSource$loadInitial$2$1;->this$0:Landroidx/paging/ItemKeyedDataSource;

    invoke-direct {p0}, Landroidx/paging/ItemKeyedDataSource$LoadInitialCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TValue;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    iget-object v0, p0, Landroidx/paging/ItemKeyedDataSource$loadInitial$2$1;->$cont:La31;

    .line 36
    new-instance v1, Landroidx/paging/DataSource$BaseResult;

    .line 37
    iget-object v2, p0, Landroidx/paging/ItemKeyedDataSource$loadInitial$2$1;->this$0:Landroidx/paging/ItemKeyedDataSource;

    invoke-virtual {v2, p1}, Landroidx/paging/ItemKeyedDataSource;->getPrevKey$paging_common(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    .line 38
    iget-object p0, p0, Landroidx/paging/ItemKeyedDataSource$loadInitial$2$1;->this$0:Landroidx/paging/ItemKeyedDataSource;

    invoke-virtual {p0, p1}, Landroidx/paging/ItemKeyedDataSource;->getNextKey$paging_common(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .line 39
    invoke-direct/range {v1 .. v8}, Landroidx/paging/DataSource$BaseResult;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;IIILjh2;)V

    invoke-interface {v0, v1}, Le02;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onResult(Ljava/util/List;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TValue;>;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/paging/ItemKeyedDataSource$loadInitial$2$1;->$cont:La31;

    new-instance v1, Landroidx/paging/DataSource$BaseResult;

    iget-object v2, p0, Landroidx/paging/ItemKeyedDataSource$loadInitial$2$1;->this$0:Landroidx/paging/ItemKeyedDataSource;

    invoke-virtual {v2, p1}, Landroidx/paging/ItemKeyedDataSource;->getPrevKey$paging_common(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    iget-object p0, p0, Landroidx/paging/ItemKeyedDataSource$loadInitial$2$1;->this$0:Landroidx/paging/ItemKeyedDataSource;

    invoke-virtual {p0, p1}, Landroidx/paging/ItemKeyedDataSource;->getNextKey$paging_common(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p3, p0

    sub-int v6, p3, p2

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Landroidx/paging/DataSource$BaseResult;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-interface {v0, v1}, Le02;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

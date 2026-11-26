.class public final Landroidx/paging/WrapperPageKeyedDataSource$loadAfter$1;
.super Landroidx/paging/PageKeyedDataSource$LoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/WrapperPageKeyedDataSource;->loadAfter(Landroidx/paging/PageKeyedDataSource$LoadParams;Landroidx/paging/PageKeyedDataSource$LoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PageKeyedDataSource$LoadCallback<",
        "TK;TA;>;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Landroidx/paging/PageKeyedDataSource$LoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PageKeyedDataSource$LoadCallback<",
            "TK;TB;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/paging/WrapperPageKeyedDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/WrapperPageKeyedDataSource<",
            "TK;TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/PageKeyedDataSource$LoadCallback;Landroidx/paging/WrapperPageKeyedDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PageKeyedDataSource$LoadCallback<",
            "TK;TB;>;",
            "Landroidx/paging/WrapperPageKeyedDataSource<",
            "TK;TA;TB;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/WrapperPageKeyedDataSource$loadAfter$1;->$callback:Landroidx/paging/PageKeyedDataSource$LoadCallback;

    iput-object p2, p0, Landroidx/paging/WrapperPageKeyedDataSource$loadAfter$1;->this$0:Landroidx/paging/WrapperPageKeyedDataSource;

    invoke-direct {p0}, Landroidx/paging/PageKeyedDataSource$LoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/util/List;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TA;>;TK;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/paging/WrapperPageKeyedDataSource$loadAfter$1;->$callback:Landroidx/paging/PageKeyedDataSource$LoadCallback;

    sget-object v1, Landroidx/paging/DataSource;->Companion:Landroidx/paging/DataSource$Companion;

    iget-object p0, p0, Landroidx/paging/WrapperPageKeyedDataSource$loadAfter$1;->this$0:Landroidx/paging/WrapperPageKeyedDataSource;

    invoke-static {p0}, Landroidx/paging/WrapperPageKeyedDataSource;->access$getListFunction$p(Landroidx/paging/WrapperPageKeyedDataSource;)Landroidx/arch/core/util/Function;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Landroidx/paging/DataSource$Companion;->convert$paging_common(Landroidx/arch/core/util/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Landroidx/paging/PageKeyedDataSource$LoadCallback;->onResult(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

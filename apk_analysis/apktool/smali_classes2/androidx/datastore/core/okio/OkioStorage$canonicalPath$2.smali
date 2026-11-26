.class final Landroidx/datastore/core/okio/OkioStorage$canonicalPath$2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/okio/OkioStorage;-><init>(Lw93;Landroidx/datastore/core/okio/OkioSerializer;Lbm3;Lll3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj46;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/datastore/core/okio/OkioStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/okio/OkioStorage<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/datastore/core/okio/OkioStorage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/okio/OkioStorage<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/datastore/core/okio/OkioStorage$canonicalPath$2;->this$0:Landroidx/datastore/core/okio/OkioStorage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lj46;
    .locals 4

    iget-object v0, p0, Landroidx/datastore/core/okio/OkioStorage$canonicalPath$2;->this$0:Landroidx/datastore/core/okio/OkioStorage;

    invoke-static {v0}, Landroidx/datastore/core/okio/OkioStorage;->access$getProducePath$p(Landroidx/datastore/core/okio/OkioStorage;)Lll3;

    move-result-object v0

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj46;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lf;->c(Lj46;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Landroidx/datastore/core/okio/OkioStorage$canonicalPath$2;->this$0:Landroidx/datastore/core/okio/OkioStorage;

    if-eqz v1, :cond_1

    iget-object p0, v0, Lj46;->b:Lgx0;

    invoke-virtual {p0}, Lgx0;->x()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lj46$a;->a(Ljava/lang/String;Z)Lj46;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Landroidx/datastore/core/okio/OkioStorage;->access$getProducePath$p(Landroidx/datastore/core/okio/OkioStorage;)Lll3;

    move-result-object p0

    const-string v1, ", instead got "

    const-string v2, "OkioStorage requires absolute paths, but did not get an absolute path from producePath = "

    invoke-static {v2, p0, v1, v0}, Lfg;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0}, Landroidx/datastore/core/okio/OkioStorage$canonicalPath$2;->invoke()Lj46;

    move-result-object p0

    return-object p0
.end method

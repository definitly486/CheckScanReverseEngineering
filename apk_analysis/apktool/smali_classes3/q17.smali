.class public final Lq17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbr3<",
        "Lcom/bumptech/glide/Registry;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Z

.field public final synthetic c:Lcom/bumptech/glide/a;

.field public final synthetic d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/a;Ljava/util/ArrayList;Lkp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq17;->c:Lcom/bumptech/glide/a;

    iput-object p2, p0, Lq17;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lq17;->b:Z

    if-nez v0, :cond_0

    const-string v0, "Glide registry"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq17;->b:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lq17;->c:Lcom/bumptech/glide/a;

    iget-object v2, p0, Lq17;->d:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lr17;->a(Lcom/bumptech/glide/a;Ljava/util/ArrayList;)Lcom/bumptech/glide/Registry;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lq17;->b:Z

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lq17;->b:Z

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v1

    :cond_0
    const-string p0, "Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you\'re using the provided Registry rather calling glide.getRegistry()!"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.class public final Lyads/mc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/v75;


# instance fields
.field public final a:Lyads/v75;

.field public final b:Ljava/lang/Object;

.field public final synthetic c:Lyads/nc6;


# direct methods
.method public constructor <init>(Lyads/nc6;Lyads/v75;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lyads/mc6;->c:Lyads/nc6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/mc6;->a:Lyads/v75;

    iput-object p3, p0, Lyads/mc6;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lyads/mc6;->c:Lyads/nc6;

    iget-object v0, v0, Lyads/nc6;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lyads/fn2;

    invoke-direct {v0}, Lyads/fn2;-><init>()V

    iget-object p0, p0, Lyads/mc6;->a:Lyads/v75;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Ad request completed successfully, but there are no ads available."

    :cond_0
    new-instance v1, Lyads/z96;

    invoke-direct {v1, v0}, Lyads/z96;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lyads/v75;->a(Lyads/z96;)V

    return-void

    :cond_1
    iget-object v0, p0, Lyads/mc6;->a:Lyads/v75;

    iget-object p0, p0, Lyads/mc6;->c:Lyads/nc6;

    iget-object p0, p0, Lyads/nc6;->d:Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lyads/v75;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lyads/z96;)V
    .locals 0

    .line 44
    invoke-virtual {p0}, Lyads/mc6;->a()V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lyads/mc6;->c:Lyads/nc6;

    iget-object v0, v0, Lyads/nc6;->c:Lyads/lc6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/lc6;->a(Ljava/util/List;)Lyads/kc6;

    move-result-object p1

    iget-object v0, p0, Lyads/mc6;->c:Lyads/nc6;

    iget-object v0, v0, Lyads/nc6;->d:Ljava/util/ArrayList;

    iget-object v1, p1, Lyads/kc6;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lyads/kc6;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyads/mc6;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lyads/mc6;->c:Lyads/nc6;

    iget-object v1, v0, Lyads/nc6;->b:Lyads/ol6;

    iget-object v0, v0, Lyads/nc6;->a:Landroid/content/Context;

    iget-object v2, p0, Lyads/mc6;->b:Ljava/lang/Object;

    invoke-virtual {v1, v0, p1, p0, v2}, Lyads/ol6;->a(Landroid/content/Context;Ljava/util/List;Lyads/mc6;Ljava/lang/Object;)V

    return-void
.end method

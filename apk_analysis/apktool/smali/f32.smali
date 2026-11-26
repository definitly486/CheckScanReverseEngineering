.class public abstract Lf32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lil2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf32$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Ljava/lang/Object;",
        "Lil2;"
    }
.end annotation


# instance fields
.field public final a:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Boolean;",
            "TV;>;"
        }
    .end annotation
.end field

.field public final b:Ly22;


# direct methods
.method public constructor <init>(Ly22;Ldm3;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lf32;->a:Ldm3;

    iput-object p1, p0, Lf32;->b:Ly22;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 5

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lf32$a;

    iget-object v1, v0, Lf32$a;->m:Ls68;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lsb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v2, v0, Lf32$a;->m:Ls68;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lf32$a;->l:Landroidx/viewbinding/ViewBinding;

    invoke-virtual {p0, v3, v1}, Lf32;->i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lf32;->g(Ljava/lang/Object;)Ly68;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v4, Lf32$b;

    invoke-direct {v4, v1, p0, p1, v2}, Lf32$b;-><init>(Ly68;Lf32;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Le02;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lf32;->b:Ly22;

    invoke-static {p0, v2, v2, v4, p1}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    iput-object p0, v0, Lf32$a;->m:Ls68;

    :cond_1
    add-int/lit8 p2, p2, 0x1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    if-ne p2, p0, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lf32$a;

    iget-object p0, p1, Lf32$a;->l:Landroidx/viewbinding/ViewBinding;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    check-cast p1, Lf32$a;

    iget-object p0, p1, Lf32$a;->m:Ls68;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lsb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v0, p1, Lf32$a;->m:Ls68;

    iget-object p0, p1, Lf32$a;->l:Landroidx/viewbinding/ViewBinding;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lf32$a;

    iget-object p0, p1, Lf32$a;->l:Landroidx/viewbinding/ViewBinding;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final e(ILjava/util/List;)Z
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf32;->h(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lf32;->a:Ldm3;

    invoke-interface {p0, v0, p1, v1}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/viewbinding/ViewBinding;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lf32$a;

    invoke-direct {p1, p0}, Lf32$a;-><init>(Landroidx/viewbinding/ViewBinding;)V

    return-object p1
.end method

.method public abstract g(Ljava/lang/Object;)Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ly68<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h(Ljava/lang/Object;)Z
.end method

.method public abstract i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TT;)V"
        }
    .end annotation
.end method

.method public abstract j(Landroidx/viewbinding/ViewBinding;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;J)V"
        }
    .end annotation
.end method

.class public abstract Lvd9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lil2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvd9$a;
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


# direct methods
.method public constructor <init>(Ldm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldm3<",
            "-",
            "Landroid/view/LayoutInflater;",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Ljava/lang/Boolean;",
            "+TV;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvd9;->a:Ldm3;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lvd9$a;

    iget-object p1, p1, Lvd9$a;->l:Landroidx/viewbinding/ViewBinding;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lvd9;->i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ne p2, p3, :cond_0

    invoke-virtual {p0, p1}, Lvd9;->l(Landroidx/viewbinding/ViewBinding;)V

    :cond_0
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lvd9$a;

    iget-object p1, p1, Lvd9$a;->l:Landroidx/viewbinding/ViewBinding;

    invoke-virtual {p0, p1}, Lvd9;->h(Landroidx/viewbinding/ViewBinding;)V

    return-void
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lvd9$a;

    iget-object p0, p1, Lvd9$a;->l:Landroidx/viewbinding/ViewBinding;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lvd9$a;

    iget-object p1, p1, Lvd9$a;->l:Landroidx/viewbinding/ViewBinding;

    invoke-virtual {p0, p1}, Lvd9;->k(Landroidx/viewbinding/ViewBinding;)V

    return-void
.end method

.method public final e(ILjava/util/List;)Z
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvd9;->g(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lvd9;->a:Ldm3;

    invoke-interface {v2, v0, p1, v1}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    invoke-virtual {p0, p1}, Lvd9;->j(Landroidx/viewbinding/ViewBinding;)V

    new-instance p0, Lvd9$a;

    invoke-direct {p0, p1}, Lvd9$a;-><init>(Landroidx/viewbinding/ViewBinding;)V

    return-object p0
.end method

.method public abstract g(Ljava/lang/Object;)Z
.end method

.method public h(Landroidx/viewbinding/ViewBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public abstract i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TT;)V"
        }
    .end annotation
.end method

.method public j(Landroidx/viewbinding/ViewBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public k(Landroidx/viewbinding/ViewBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public l(Landroidx/viewbinding/ViewBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.class public final Lyads/zs0;
.super Lyads/mr4;
.source "SourceFile"


# instance fields
.field public final a:Lyads/tt;

.field public final b:Ljava/util/List;

.field public final synthetic c:Lyads/bt0;


# direct methods
.method public constructor <init>(Lyads/bt0;Lyads/tt;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lyads/zs0;->c:Lyads/bt0;

    invoke-direct {p0}, Lyads/mr4;-><init>()V

    iput-object p2, p0, Lyads/zs0;->a:Lyads/tt;

    iput-object p3, p0, Lyads/zs0;->b:Ljava/util/List;

    return-void
.end method

.method public static final a(Lyads/ur0;Lyads/fs2;Ln07;Lyads/bt0;Lyads/vq0;I)Lj59;
    .locals 7

    iget-object p5, p0, Lyads/ur0;->b:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object p5, v0

    :cond_1
    if-nez p5, :cond_2

    iget-object p5, p0, Lyads/ur0;->a:Lyads/xr0;

    if-eqz p5, :cond_3

    invoke-static {p5}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p5

    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v0, p1}, Lyads/ct0;->a(Ljava/util/List;Lyads/fs2;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lyads/xr0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lyads/ur0;->c:Lyads/as2;

    invoke-virtual {v0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v0, p3, Lyads/bt0;->b:Lyads/ys0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p1}, Lyads/ys0;->a(Lyads/xr0;Lyads/fs2;)V

    const/4 v5, 0x0

    const/16 v6, 0x30

    move-object v3, p1

    move-object v1, p3

    move-object v2, p4

    invoke-static/range {v1 .. v6}, Lyads/bt0;->a(Lyads/bt0;Lyads/vh2;Lyads/fs2;Lyads/xr0;Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    iput-boolean p0, p2, Ln07;->b:Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_6
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/vq0;Lyads/ur0;Lyads/fs2;Lyads/bt0;ILandroid/view/MenuItem;)Z
    .locals 7

    .line 92
    new-instance v3, Ln07;

    invoke-direct {v3}, Ln07;-><init>()V

    .line 93
    new-instance v0, Lxna;

    move-object v5, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lxna;-><init>(Lyads/ur0;Lyads/fs2;Ln07;Lyads/bt0;Lyads/vq0;I)V

    invoke-virtual {v5, v0}, Lyads/vq0;->a(Lll3;)V

    .line 94
    iget-boolean p0, v3, Ln07;->b:Z

    return p0
.end method


# virtual methods
.method public final a(Landroidx/appcompat/widget/PopupMenu;)V
    .locals 8

    .line 95
    iget-object v0, p0, Lyads/zs0;->a:Lyads/tt;

    .line 96
    iget-object v2, v0, Lyads/tt;->a:Lyads/vq0;

    .line 97
    iget-object v4, v0, Lyads/tt;->b:Lyads/fs2;

    .line 98
    invoke-virtual {p1}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lyads/zs0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lyads/ur0;

    .line 100
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v6

    .line 101
    iget-object v1, v3, Lyads/ur0;->c:Lyads/as2;

    invoke-virtual {v1, v4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 102
    iget-object v5, p0, Lyads/zs0;->c:Lyads/bt0;

    new-instance v1, Lwna;

    invoke-direct/range {v1 .. v6}, Lwna;-><init>(Lyads/vq0;Lyads/ur0;Lyads/fs2;Lyads/bt0;I)V

    invoke-interface {v7, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    return-void
.end method

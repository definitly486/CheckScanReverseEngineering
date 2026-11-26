.class public final Lyads/c71;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    iput-object p1, p0, Lyads/c71;->a:Ljava/util/List;

    iput-object p2, p0, Lyads/c71;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(II)Z
    .locals 3

    iget-object v0, p0, Lyads/c71;->a:Ljava/util/List;

    invoke-static {p1, v0}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/cn1;

    iget-object p0, p0, Lyads/c71;->b:Ljava/util/ArrayList;

    invoke-static {p2, p0}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cn1;

    if-eqz p1, :cond_5

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    iget-object p2, p1, Lyads/cn1;->b:Lyads/fs2;

    invoke-static {p2}, Lyads/w56;->a(Lyads/fs2;)Lyads/gs2;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p2, Lyads/gs2;->k:Z

    :goto_0
    iget-object p2, p0, Lyads/cn1;->b:Lyads/fs2;

    invoke-static {p2}, Lyads/w56;->a(Lyads/fs2;)Lyads/gs2;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v0, p2, Lyads/gs2;->k:Z

    :goto_1
    iget-object p2, p1, Lyads/cn1;->a:Lyads/br0;

    iget-object v0, p0, Lyads/cn1;->a:Lyads/br0;

    iget-object v1, p1, Lyads/cn1;->b:Lyads/fs2;

    iget-object v2, p0, Lyads/cn1;->b:Lyads/fs2;

    invoke-virtual {p2, v0, v1, v2}, Lyads/br0;->a(Lyads/br0;Lyads/fs2;Lyads/fs2;)Z

    move-result p2

    iget-object p1, p1, Lyads/cn1;->b:Lyads/fs2;

    invoke-static {p1}, Lyads/w56;->a(Lyads/fs2;)Lyads/gs2;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v0, p1, Lyads/gs2;->k:Z

    :goto_2
    iget-object p0, p0, Lyads/cn1;->b:Lyads/fs2;

    invoke-static {p0}, Lyads/w56;->a(Lyads/fs2;)Lyads/gs2;

    move-result-object p0

    if-nez p0, :cond_4

    return p2

    :cond_4
    iput-boolean v0, p0, Lyads/gs2;->k:Z

    return p2

    :cond_5
    :goto_3
    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final areItemsTheSame(II)Z
    .locals 3

    iget-object v0, p0, Lyads/c71;->a:Ljava/util/List;

    invoke-static {p1, v0}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/cn1;

    iget-object p0, p0, Lyads/c71;->b:Ljava/util/ArrayList;

    invoke-static {p2, p0}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cn1;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lyads/cn1;->a:Lyads/br0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyads/br0;->a()Lyads/p41;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lyads/p41;->h()Lyads/as2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lyads/cn1;->b:Lyads/fs2;

    invoke-virtual {v0, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    if-eqz p0, :cond_1

    iget-object v1, p0, Lyads/cn1;->a:Lyads/br0;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lyads/br0;->a()Lyads/p41;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lyads/p41;->h()Lyads/as2;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lyads/cn1;->b:Lyads/fs2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_1
    if-nez v0, :cond_9

    if-eqz p2, :cond_2

    goto :goto_5

    :cond_2
    if-eqz p1, :cond_8

    if-nez p0, :cond_3

    goto :goto_4

    :cond_3
    iget-object p2, p1, Lyads/cn1;->b:Lyads/fs2;

    invoke-static {p2}, Lyads/w56;->a(Lyads/fs2;)Lyads/gs2;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean v0, p2, Lyads/gs2;->k:Z

    :goto_1
    iget-object p2, p0, Lyads/cn1;->b:Lyads/fs2;

    invoke-static {p2}, Lyads/w56;->a(Lyads/fs2;)Lyads/gs2;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    iput-boolean v0, p2, Lyads/gs2;->k:Z

    :goto_2
    iget-object p2, p1, Lyads/cn1;->a:Lyads/br0;

    iget-object v0, p0, Lyads/cn1;->a:Lyads/br0;

    iget-object v1, p1, Lyads/cn1;->b:Lyads/fs2;

    iget-object v2, p0, Lyads/cn1;->b:Lyads/fs2;

    invoke-virtual {p2, v0, v1, v2}, Lyads/br0;->a(Lyads/br0;Lyads/fs2;Lyads/fs2;)Z

    move-result p2

    iget-object p1, p1, Lyads/cn1;->b:Lyads/fs2;

    invoke-static {p1}, Lyads/w56;->a(Lyads/fs2;)Lyads/gs2;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    iput-boolean v0, p1, Lyads/gs2;->k:Z

    :goto_3
    iget-object p0, p0, Lyads/cn1;->b:Lyads/fs2;

    invoke-static {p0}, Lyads/w56;->a(Lyads/fs2;)Lyads/gs2;

    move-result-object p0

    if-nez p0, :cond_7

    return p2

    :cond_7
    iput-boolean v0, p0, Lyads/gs2;->k:Z

    return p2

    :cond_8
    :goto_4
    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    :goto_5
    invoke-static {v0, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getNewListSize()I
    .locals 0

    iget-object p0, p0, Lyads/c71;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getOldListSize()I
    .locals 0

    iget-object p0, p0, Lyads/c71;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

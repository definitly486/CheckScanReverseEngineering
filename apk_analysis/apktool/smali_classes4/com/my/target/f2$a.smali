.class public final Lcom/my/target/f2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/f2$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/my/target/f2;


# direct methods
.method public constructor <init>(Lcom/my/target/f2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/f2$a;->a:Lcom/my/target/f2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lpfa;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/my/target/v1;

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/my/target/f2$a;->a:Lcom/my/target/f2;

    iget-object v0, p0, Lcom/my/target/f2;->o:Lcom/my/target/g2$a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/my/target/f2;->n:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/my/target/f2;->getCardLayoutManager()Lwt9;

    move-result-object p0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lfo9;

    check-cast v0, Lcom/my/target/i$a;

    iget-object p0, v0, Lcom/my/target/i$a;->a:Lcom/my/target/i;

    iget-object v1, p0, Lcom/my/target/i;->c:Lcom/my/target/m2$a;

    if-eqz v1, :cond_1

    invoke-static {p2}, Ly14;->j(Lpfa;)Lcha;

    move-result-object v5

    iget-object p0, p0, Lcom/my/target/i;->a:Lcom/my/target/g2;

    invoke-interface {p0}, Lcom/my/target/l;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/my/target/m2$a;->g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

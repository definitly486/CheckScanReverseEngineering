.class public final synthetic Lhga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lhga;->b:I

    iput-object p2, p0, Lhga;->c:Ljava/lang/Object;

    iput-object p3, p0, Lhga;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget v0, p0, Lhga;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lhga;->d:Ljava/lang/Object;

    iget-object p0, p0, Lhga;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/y2;

    check-cast v2, Lix9;

    iget-object p1, v2, Lix9;->a:Lfo9;

    iget-object p0, p0, Lcom/my/target/y2;->m:Lcom/my/target/p$a;

    if-eqz p0, :cond_4

    check-cast p0, Lcom/my/target/z1;

    iget-object v0, p0, Lcom/my/target/z1;->d:Lcom/my/target/z0;

    iget-object v3, p0, Lcom/my/target/z1;->v:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lix9;

    iget-object v6, p1, Lao9;->B:Ljava/lang/String;

    iget-object v7, v5, Lix9;->a:Lfo9;

    iget-object v7, v7, Lao9;->B:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v5, v5, Lix9;->b:Z

    if-eqz v5, :cond_1

    new-instance v2, Lgia;

    invoke-direct {v2}, Lgia;-><init>()V

    invoke-interface {v0}, Lcom/my/target/z0;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/my/target/z1;->g(Lfo9;ILpfa;Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/my/target/z1;->x:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/my/target/z1;->e()V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lix9;

    iget-object v4, p1, Lao9;->B:Ljava/lang/String;

    iget-object v5, v1, Lix9;->a:Lfo9;

    iget-object v5, v5, Lao9;->B:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v1, Lix9;->b:Z

    goto :goto_0

    :cond_3
    instance-of p0, v0, Lcom/my/target/p;

    if-eqz p0, :cond_4

    check-cast v0, Lcom/my/target/p;

    invoke-interface {v0, v3, v2}, Lcom/my/target/p;->a(Ljava/util/List;Lix9;)V

    :cond_4
    :goto_1
    return-void

    :pswitch_0
    check-cast p0, Lcom/my/target/wj;

    check-cast v2, Lcom/my/target/wf$a;

    sget v0, Lcom/my/target/wj;->k:I

    iget-object p0, p0, Lcom/my/target/wj;->c:Landroid/widget/Button;

    if-ne p1, p0, :cond_5

    const/4 v1, 0x2

    :cond_5
    new-instance p0, Lgia;

    invoke-direct {p0}, Lgia;-><init>()V

    check-cast v2, Lml0;

    iget-object v0, v2, Lml0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/my/target/wf;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, v0, Lcom/my/target/wf;->t:Lcom/my/target/l$a;

    if-eqz p1, :cond_6

    check-cast p1, Lcom/my/target/w2$b;

    invoke-virtual {p1, v1, p0}, Lcom/my/target/w2$b;->b(ILpfa;)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

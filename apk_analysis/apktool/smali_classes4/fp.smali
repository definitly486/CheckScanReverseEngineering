.class public final synthetic Lfp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lfp;->b:I

    iput-object p1, p0, Lfp;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lfp;->b:I

    iget-object p0, p0, Lfp;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/wn;

    invoke-static {p0}, Lyads/wn;->b(Lyads/wn;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/my/target/w1;

    iget-object v0, p0, Lcom/my/target/w1;->f:Ljava/util/List;

    invoke-virtual {p0}, Lcom/my/target/w1;->E()Z

    move-result v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/my/target/w1;->q:I

    if-ne v1, v6, :cond_0

    invoke-virtual {p0}, Lcom/my/target/w1;->D()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v7, p0, Lcom/my/target/w1;->t:I

    if-le v1, v7, :cond_0

    iget-wide v7, p0, Lcom/my/target/w1;->u:J

    sub-long/2addr v7, v4

    iput-wide v7, p0, Lcom/my/target/w1;->u:J

    :cond_0
    iget-wide v7, p0, Lcom/my/target/w1;->u:J

    cmp-long v1, v7, v2

    if-gtz v1, :cond_4

    iget-object v0, p0, Lcom/my/target/w1;->e:Lkha;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lkha;->Y:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/my/target/w1;->s:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/my/target/w1;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    invoke-interface {p0}, Lcom/my/target/z0;->b()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/my/target/w1;->m:Lcom/my/target/z0;

    invoke-interface {v0}, Lcom/my/target/z0;->d()V

    iget-object v0, p0, Lcom/my/target/w1;->j:Landroid/os/Handler;

    iget-object p0, p0, Lcom/my/target/w1;->o:Lfp;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/my/target/w1;->A()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/my/target/w1;->C()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/my/target/w1;->r:Z

    if-nez v1, :cond_8

    iget v1, p0, Lcom/my/target/w1;->q:I

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    if-ne v1, v6, :cond_7

    invoke-virtual {p0}, Lcom/my/target/w1;->D()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/my/target/w1;->t:I

    if-lt v0, v1, :cond_7

    :cond_6
    iget-wide v0, p0, Lcom/my/target/w1;->n:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/my/target/w1;->n:J

    :cond_7
    iget-wide v0, p0, Lcom/my/target/w1;->n:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_8

    :goto_1
    invoke-virtual {p0}, Lcom/my/target/w1;->B()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/my/target/w1;->E()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/my/target/w1;->C()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/my/target/w1;->r:Z

    if-nez v0, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/my/target/w1;->v()V

    :cond_a
    :goto_2
    return-void

    :pswitch_1
    check-cast p0, Lcom/tapjoy/TJSetUserIDListener;

    invoke-static {p0}, Lcom/tapjoy/TJUser;->a(Lcom/tapjoy/TJSetUserIDListener;)V

    return-void

    :pswitch_2
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->a(Landroid/content/Context;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

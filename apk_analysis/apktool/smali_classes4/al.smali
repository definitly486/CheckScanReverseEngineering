.class public final synthetic Lal;
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

    iput p2, p0, Lal;->b:I

    iput-object p1, p0, Lal;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lal;->b:I

    iget-object p0, p0, Lal;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/e$a;

    iget-object p0, p0, Lcom/my/target/e$a;->b:Lcom/my/target/e;

    iget-object p0, p0, Lcom/my/target/e;->b:Lcom/my/target/y0;

    invoke-virtual {p0}, Lcom/my/target/y0;->dismiss()V

    return-void

    :pswitch_0
    check-cast p0, Lyads/r85;

    invoke-virtual {p0}, Lyads/r85;->b()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/my/target/w;

    iget-object v0, p0, Lcom/my/target/w;->j:Lcom/my/target/g1$a;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/my/target/w;->l:J

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/my/target/t1$a;->n(D)V

    :cond_0
    iget-wide v0, p0, Lcom/my/target/w;->l:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-wide/16 v2, 0xc8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/my/target/w;->l:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/my/target/w;->e:Lcom/my/target/f6;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/my/target/w;->j:Lcom/my/target/g1$a;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/my/target/t1$a;->a(Z)V

    iget-object v0, p0, Lcom/my/target/w;->b:Ld9a;

    iget-object p0, p0, Lcom/my/target/w;->c:Lal;

    invoke-virtual {v0, p0}, Ld9a;->e(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_2
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/tapjoy/TJTracking;->a(Landroid/content/Context;)V

    return-void

    :pswitch_3
    check-cast p0, Lll3;

    invoke-static {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->a(Lll3;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

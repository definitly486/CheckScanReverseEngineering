.class public final synthetic Lbn9;
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

    iput p2, p0, Lbn9;->b:I

    iput-object p1, p0, Lbn9;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lbn9;->b:I

    iget-object p0, p0, Lbn9;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/w0;

    iget-object v0, p0, Lcom/my/target/w0;->n:Lcom/my/target/g1$a;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/my/target/w0;->q:J

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/my/target/t1$a;->n(D)V

    :cond_0
    iget-wide v0, p0, Lcom/my/target/w0;->q:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-wide/16 v2, 0xc8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/my/target/w0;->q:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/my/target/w0;->d:Lcom/my/target/d3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/my/target/d3;->setCloseVisible(Z)V

    iget-object v0, p0, Lcom/my/target/w0;->n:Lcom/my/target/g1$a;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lcom/my/target/t1$a;->a(Z)V

    iget-object v0, p0, Lcom/my/target/w0;->b:Ld9a;

    iget-object p0, p0, Lcom/my/target/w0;->c:Lbn9;

    invoke-virtual {v0, p0}, Ld9a;->e(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/my/tracker/obfuscated/a2;

    invoke-static {p0}, Lcom/my/tracker/obfuscated/a2;->a(Lcom/my/tracker/obfuscated/a2;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

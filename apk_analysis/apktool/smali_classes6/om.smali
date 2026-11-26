.class public final synthetic Lom;
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

    iput p2, p0, Lom;->b:I

    iput-object p1, p0, Lom;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lom;->b:I

    iget-object p0, p0, Lom;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/m94;

    invoke-static {p0}, Lyads/m94;->a(Lyads/m94;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/my/target/j0;

    iget-wide v0, p0, Lcom/my/target/j0;->h:J

    const-wide/16 v2, 0xc8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/my/target/j0;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/j0;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/my/target/j0;->b()V

    :goto_0
    return-void

    :pswitch_1
    check-cast p0, Lyads/is5;

    invoke-static {p0}, Lyads/hs5;->a(Lyads/is5;)V

    return-void

    :pswitch_2
    check-cast p0, Lyads/cj0;

    invoke-virtual {p0}, Lyads/cj0;->d()V

    return-void

    :pswitch_3
    check-cast p0, Ld86;

    invoke-virtual {p0}, Ld86;->c()V

    return-void

    :pswitch_4
    check-cast p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

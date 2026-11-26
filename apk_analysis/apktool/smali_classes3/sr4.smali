.class public final synthetic Lsr4;
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

    iput p2, p0, Lsr4;->b:I

    iput-object p1, p0, Lsr4;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lsr4;->b:I

    iget-object p0, p0, Lsr4;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nf4;

    invoke-static {p0}, Lyads/nf4;->a(Lyads/nf4;)V

    return-void

    :pswitch_0
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/my/tracker/obfuscated/f1;->e(Landroid/content/Context;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/tapjoy/TJOfferwallDiscoverView;

    invoke-virtual {p0}, Lcom/tapjoy/TJOfferwallDiscoverView;->a()V

    return-void

    :pswitch_2
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void

    :pswitch_3
    check-cast p0, Lxx4;

    invoke-virtual {p0}, Lxx4;->c()V

    return-void

    :pswitch_4
    check-cast p0, Lmb4;

    invoke-static {p0}, Landroidx/work/ListenableFutureKt;->e(Lmb4;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

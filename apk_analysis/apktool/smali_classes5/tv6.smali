.class public final synthetic Ltv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ldv7;Ldn1;)V
    .locals 1

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Ltv6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv6;->c:Ljava/lang/Object;

    iput-object p2, p0, Ltv6;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lwv6;Lrv6;Lcom/warefly/checkscan/databinding/ItemQuestionBinding;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Ltv6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ltv6;->c:Ljava/lang/Object;

    iput-object p3, p0, Ltv6;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Ltv6;->b:I

    iget-object v0, p0, Ltv6;->d:Ljava/lang/Object;

    iget-object p0, p0, Ltv6;->c:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Ldv7;

    check-cast v0, Ldn1;

    iget-object p0, p0, Ldv7;->b:Lbv7;

    iget p1, v0, Ldn1;->a:I

    invoke-interface {p0, p1}, Lbv7;->onShopClick(I)V

    return-void

    :pswitch_0
    check-cast p0, Lrv6;

    check-cast v0, Lcom/warefly/checkscan/databinding/ItemQuestionBinding;

    invoke-static {p0, v0}, Lwv6;->m(Lrv6;Lcom/warefly/checkscan/databinding/ItemQuestionBinding;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

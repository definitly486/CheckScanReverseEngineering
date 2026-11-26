.class public final synthetic Lkw6;
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

    iput p1, p0, Lkw6;->b:I

    iput-object p2, p0, Lkw6;->c:Ljava/lang/Object;

    iput-object p3, p0, Lkw6;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lkw6;->b:I

    iget-object v0, p0, Lkw6;->d:Ljava/lang/Object;

    iget-object p0, p0, Lkw6;->c:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Ldw7;

    check-cast v0, Ldn1;

    iget-object p0, p0, Ldw7;->b:Lbv7;

    iget p1, v0, Ldn1;->a:I

    iget-boolean v0, v0, Ldn1;->c:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p0, p1, v0}, Lbv7;->onFavouriteClick(IZ)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;

    check-cast v0, Lmz6;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/queue/view/QueueSortDialog;->d:Lcom/warefly/checkscan/presentation/queue/view/QueueFragment$a;

    invoke-virtual {p1, v0}, Lcom/warefly/checkscan/presentation/queue/view/QueueFragment$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Las3;
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

    iput p1, p0, Las3;->b:I

    iput-object p2, p0, Las3;->c:Ljava/lang/Object;

    iput-object p3, p0, Las3;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Las3;->b:I

    iget-object v0, p0, Las3;->d:Ljava/lang/Object;

    iget-object p0, p0, Las3;->c:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Ldk8;

    check-cast v0, Ldk8$a;

    iget-object p0, p0, Ldk8;->t:Lvc1;

    if-eqz p0, :cond_0

    iget p1, v0, Ldk8$a;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvc1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Les3;

    check-cast v0, Lfs3;

    iget-object p0, p0, Les3;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    iget p1, v0, Lfs3;->a:I

    iget-object v0, v0, Lfs3;->b:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Les3$a;->onGroupShopRectangleAllClick(ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

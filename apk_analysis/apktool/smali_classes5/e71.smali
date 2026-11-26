.class public final synthetic Le71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Le71;->b:I

    iput-object p1, p0, Le71;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Le71;->b:I

    iget-object p0, p0, Le71;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nr4;

    invoke-virtual {p0, p1}, Lyads/nr4;->a(Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/categories/view/CategoriesFragment;

    sget-object p1, Lcom/warefly/checkscan/presentation/bonuses/categories/view/CategoriesFragment;->i:[Lze4;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/categories/view/CategoriesFragment;->presenter:Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;->onBackPressed()V

    return-void

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

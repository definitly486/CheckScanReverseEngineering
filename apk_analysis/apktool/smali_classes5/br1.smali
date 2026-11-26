.class public final Lbr1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lar1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lbr1;->f:I

    iput-object p1, p0, Lbr1;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;Lob8;Lnb8;)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lbr1;->f:I

    .line 10
    iput-object p1, p0, Lbr1;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lbr1;->f:I

    iget-object p0, p0, Lbr1;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemRvFilterCategoryBinding;->checkboxSub:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lar1;

    iget-object p0, p0, Lar1;->b:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    invoke-interface {p0}, Lar1$a;->onCompletedTasksClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

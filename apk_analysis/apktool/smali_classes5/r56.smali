.class public final Lr56;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Lp56;

.field public final synthetic c:Ls56;

.field public final synthetic d:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lp56;Ls56;Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr56;->b:Lp56;

    iput-object p2, p0, Lr56;->c:Ls56;

    iput-object p3, p0, Lr56;->d:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lr56;->b:Lp56;

    iget-object p2, p2, Lp56;->b:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    iget-object p3, p0, Lr56;->c:Ls56;

    iget-object p3, p3, Ls56;->a:Ljava/util/List;

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ls56$a;

    iget-object p5, p4, Ls56$a;->d:Ljava/lang/String;

    invoke-static {p5, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p2, p4}, Lp56$a;->onDropDownClicked(Ls56$a;)V

    iget-object p0, p0, Lr56;->d:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :cond_1
    const-string p0, "Collection contains no element matching the predicate."

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    return-void
.end method

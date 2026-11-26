.class public final synthetic Lz61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;I)V
    .locals 0

    iput p2, p0, Lz61;->b:I

    iput-object p1, p0, Lz61;->c:Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lz61;->b:I

    iget-object p0, p0, Lz61;->c:Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;

    packed-switch p1, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;

    sget-object p1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;->f:[Lze4;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;

    sget-object p1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->i:[Lze4;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/view/CategoriesDialog;->f()Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesPresenter;->showProductsByCategory()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

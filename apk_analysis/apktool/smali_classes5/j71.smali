.class public final Lj71;
.super Lpe9;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj71;->a:I

    invoke-direct {p0}, Lpe9;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkh5;
    .locals 0

    iget p0, p0, Lj71;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView$$State;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView$$State;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView$$State;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsView$$State;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/categoriesDialog/presenter/CategoriesView$$State;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lmr6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmr6;->b:Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->j:[Lze4;

    iget-object p0, p0, Lmr6;->b:Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/view/PromocodesFragment;->n()Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->onBackPressed()V

    return-void
.end method

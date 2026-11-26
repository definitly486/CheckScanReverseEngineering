.class public final Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->loadPromocodes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;->f:Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;->f:Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesView;

    return-object p0
.end method

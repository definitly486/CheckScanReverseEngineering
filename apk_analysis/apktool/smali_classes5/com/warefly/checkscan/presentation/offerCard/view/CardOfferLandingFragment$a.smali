.class public final Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Landroid/graphics/drawable/ColorDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$a;->f:Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment$a;->f:Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0604a3

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

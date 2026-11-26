.class public final Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog$b;->f:Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;->g:[Lze4;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog$b;->f:Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;->f:Lcl4;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt79;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lt79;->a(Landroid/content/Context;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

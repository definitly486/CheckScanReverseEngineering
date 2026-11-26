.class public final Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$j;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;-><init>(Luf3;Lyg1;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$j;->f:Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$j;->f:Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->access$getContext$p(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f14053a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

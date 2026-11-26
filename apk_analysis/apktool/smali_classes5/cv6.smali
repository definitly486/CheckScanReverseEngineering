.class public final synthetic Lcv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcv6;->b:Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    sget-object p1, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->j:[Lze4;

    iget-object p0, p0, Lcv6;->b:Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->o()Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;

    move-result-object p0

    sget-object p1, Lf93$f;->a:Lf93$f;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->onFocusChanged(Lf93;Z)V

    return-void
.end method

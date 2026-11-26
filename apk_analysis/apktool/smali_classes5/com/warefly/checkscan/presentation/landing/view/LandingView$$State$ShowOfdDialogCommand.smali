.class public Lcom/warefly/checkscan/presentation/landing/view/LandingView$$State$ShowOfdDialogCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/landing/view/LandingView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowOfdDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/landing/view/LandingView;",
        ">;"
    }
.end annotation


# instance fields
.field public final data:Lb06;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/landing/view/LandingView$$State;Lb06;)V
    .locals 1

    const-string p1, "showOfdDialog"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingView$$State$ShowOfdDialogCommand;->data:Lb06;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/landing/view/LandingView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/landing/view/LandingView$$State$ShowOfdDialogCommand;->data:Lb06;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/landing/view/LandingView;->showOfdDialog(Lb06;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/landing/view/LandingView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/landing/view/LandingView$$State$ShowOfdDialogCommand;->apply(Lcom/warefly/checkscan/presentation/landing/view/LandingView;)V

    return-void
.end method

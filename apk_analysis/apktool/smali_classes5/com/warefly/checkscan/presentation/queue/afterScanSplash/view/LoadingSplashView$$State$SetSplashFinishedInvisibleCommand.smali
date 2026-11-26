.class public Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView$$State$SetSplashFinishedInvisibleCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetSplashFinishedInvisibleCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isInvisible:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView$$State;Z)V
    .locals 1

    const-string p1, "setSplashFinishedInvisible"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView$$State$SetSplashFinishedInvisibleCommand;->isInvisible:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;)V
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView$$State$SetSplashFinishedInvisibleCommand;->isInvisible:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;->setSplashFinishedInvisible(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView$$State$SetSplashFinishedInvisibleCommand;->apply(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;)V

    return-void
.end method

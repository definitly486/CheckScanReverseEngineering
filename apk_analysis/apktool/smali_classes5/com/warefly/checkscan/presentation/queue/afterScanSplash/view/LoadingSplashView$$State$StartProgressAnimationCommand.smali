.class public Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView$$State$StartProgressAnimationCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StartProgressAnimationCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;",
        ">;"
    }
.end annotation


# instance fields
.field public final duration:J


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView$$State;J)V
    .locals 1

    const-string p1, "startProgressAnimation"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-wide p2, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView$$State$StartProgressAnimationCommand;->duration:J

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;)V
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView$$State$StartProgressAnimationCommand;->duration:J

    invoke-interface {p1, v0, v1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;->startProgressAnimation(J)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView$$State$StartProgressAnimationCommand;->apply(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;)V

    return-void
.end method

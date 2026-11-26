.class public final synthetic Lud0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lxl3;
.implements Lcom/google/android/material/animation/AnimatableView$Listener;
.implements Lh06;
.implements Lcom/my/target/m1$b;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/f1;Lv2a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lud0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lud0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lud0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/f1;

    iget-object p0, p0, Lcom/my/target/f1;->l:Lkn9;

    check-cast p0, Lcom/my/target/w1$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lud0;->b:Ljava/lang/Object;

    check-cast p0, Lvf1;

    invoke-virtual {p0, p1}, Lvf1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm32;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lud0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;

    sget-object v0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->k:Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment$a;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->o()Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->sendSmsCodeFromReceiver(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lud0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    check-cast p1, Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->f(Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;)V

    return-void
.end method

.method public onAnimationEnd()V
    .locals 0

    iget-object p0, p0, Lud0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

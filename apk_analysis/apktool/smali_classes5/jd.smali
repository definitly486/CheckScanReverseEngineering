.class public final synthetic Ljd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;
.implements Lxl3;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ljd;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljd;->b:Ljava/lang/Object;

    check-cast p0, Lm70;

    invoke-virtual {p0, p1}, Lm70;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0
.end method

.method public handle(Lcom/google/firebase/inject/Provider;)V
    .locals 0

    iget-object p0, p0, Ljd;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/crashlytics/AnalyticsDeferredProxy;

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/AnalyticsDeferredProxy;->a(Lcom/google/firebase/crashlytics/AnalyticsDeferredProxy;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ljd;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$State;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->X(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Ljd;->b:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;

    check-cast p1, Landroid/net/Uri;

    sget-object v0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->n:Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$a;

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->o()Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->updateAvatar(Landroid/net/Uri;)V

    return-void
.end method

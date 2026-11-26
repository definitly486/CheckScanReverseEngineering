.class public final Lcom/google/firebase/sessions/SessionLifecycleService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/SessionLifecycleService;->onBind(Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Ljava/lang/Void;
    .locals 0

    .line 7
    const/4 p0, 0x0

    return-object p0
.end method

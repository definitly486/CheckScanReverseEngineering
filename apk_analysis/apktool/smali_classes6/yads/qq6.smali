.class public final Lyads/qq6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lyads/qq6;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/qq6;

    invoke-direct {v0}, Lyads/qq6;-><init>()V

    sput-object v0, Lyads/qq6;->d:Lyads/qq6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/qq6;->b:Z

    iput-boolean v0, p0, Lyads/qq6;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 95
    iget-object v0, p0, Lyads/qq6;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    iget-boolean v1, p0, Lyads/qq6;->b:Z

    invoke-virtual {p0, v1, v0}, Lyads/qq6;->a(ZZ)V

    iput-boolean v0, p0, Lyads/qq6;->c:Z

    return-void
.end method

.method public final a(ZZ)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    iget-boolean v3, p0, Lyads/qq6;->c:Z

    if-nez v3, :cond_3

    iget-boolean p0, p0, Lyads/qq6;->b:Z

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p0, v0

    :goto_3
    if-ne v2, p0, :cond_4

    goto :goto_8

    :cond_4
    sget-object p0, Lyads/tp6;->c:Lyads/tp6;

    iget-object p0, p0, Lyads/tp6;->a:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/dp6;

    iget-object v2, v2, Lyads/dp6;->e:Lyads/s9;

    if-nez p2, :cond_7

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    move v3, v1

    goto :goto_6

    :cond_7
    :goto_5
    move v3, v0

    :goto_6
    iget-object v4, v2, Lyads/s9;->b:Lyads/np6;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_8

    const-string v3, "locked"

    goto :goto_7

    :cond_8
    const-string v3, "unlocked"

    :goto_7
    sget-object v4, Lyads/nq6;->a:Lyads/nq6;

    iget-object v2, v2, Lyads/s9;->b:Lyads/np6;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "setDeviceLockState"

    invoke-virtual {v4, v2, v5, v3}, Lyads/nq6;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    :goto_8
    return-void
.end method

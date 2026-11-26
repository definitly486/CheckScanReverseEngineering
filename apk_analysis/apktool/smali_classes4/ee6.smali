.class public final synthetic Lee6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liy8;


# instance fields
.field public final synthetic a:Lge6;


# direct methods
.method public synthetic constructor <init>(Lge6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lee6;->a:Lge6;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;Lji9$d;)Leo2;
    .locals 3

    :try_start_0
    invoke-static {}, Lyd6;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lee6;->a:Lge6;

    iget-object p0, p0, Lge6;->b:Lta6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    const-string v1, "PostHogTouchActivityIntegration touchSession failed: "

    const/16 v2, 0x2e

    invoke-static {v1, v0, v2, p0}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    :goto_0
    invoke-virtual {p2, p1}, Lji9$d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leo2;

    return-object p0
.end method

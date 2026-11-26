.class public final synthetic Lna6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lna6;->b:I

    iput-object p2, p0, Lna6;->c:Ljava/lang/Object;

    iput-object p3, p0, Lna6;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lna6;->b:I

    iget-object v1, p0, Lna6;->d:Ljava/lang/Object;

    iget-object p0, p0, Lna6;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/bp2;

    check-cast v1, Lyads/ko2;

    invoke-static {p0, v1}, Lyads/bp2;->a(Lyads/bp2;Lyads/ko2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Loa6;

    check-cast v1, Lta6;

    :try_start_0
    iget-object p0, p0, Loa6;->y:Lcom/posthog/internal/replay/PostHogSessionReplayHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/posthog/internal/replay/PostHogSessionReplayHandler;->onSessionIdChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    iget-object v0, v1, Lnb6;->v:Lic6;

    const-string v1, "onSessionIdChanged listener failed: "

    const/16 v2, 0x2e

    invoke-static {v1, p0, v2, v0}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

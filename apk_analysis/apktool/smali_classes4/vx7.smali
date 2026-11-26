.class public final synthetic Lvx7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Le5a;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lvx7;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lvx7;->b:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/h2;

    iget-object p0, p0, Lcom/my/target/h2;->b:Lcom/my/target/e2$e;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/my/target/e2$a;->a:Lao9;

    iget-object p0, p0, Lao9;->a:Ln4a;

    const-string p1, "pageLoadFailed"

    invoke-static {p0, p1, v1, v0}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    const-string p0, "WebViewReachability: page load error"

    invoke-static {v0, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/my/target/e2$a;->a:Lao9;

    iget-object p0, p0, Lao9;->a:Ln4a;

    const-string p1, "pageLoaded"

    invoke-static {p0, p1, v1, v0}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    const-string p0, "WebViewReachability: page loaded"

    invoke-static {v0, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lvx7;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$State;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->e0(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

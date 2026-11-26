.class public final synthetic Lq7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lxl3;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lcom/my/target/c1$a;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lq7;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lq7;->b:Ljava/lang/Object;

    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb36;

    return-object p0
.end method

.method public d(Le6a;)V
    .locals 1

    iget-object p0, p0, Lq7;->b:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/eg;

    sget v0, Lcom/my/target/eg;->O:I

    iput-object p1, p0, Lcom/my/target/eg;->M:Le6a;

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lq7;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$State;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->n(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public onActivityResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lq7;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/State;

    invoke-static {p0, p1}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/compose/runtime/State;Ljava/lang/Object;)V

    return-void
.end method

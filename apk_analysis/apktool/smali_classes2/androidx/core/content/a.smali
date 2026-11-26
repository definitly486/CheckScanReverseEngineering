.class public final synthetic Landroidx/core/content/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ly22;

.field public final synthetic c:Ldm3;


# direct methods
.method public synthetic constructor <init>(Ly22;Ldm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/a;->b:Ly22;

    iput-object p2, p0, Landroidx/core/content/a;->c:Ldm3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/content/BroadcastReceiver;

    check-cast p2, Landroid/content/Intent;

    iget-object v0, p0, Landroidx/core/content/a;->b:Ly22;

    iget-object p0, p0, Landroidx/core/content/a;->c:Ldm3;

    invoke-static {v0, p0, p1, p2}, Landroidx/core/content/ContextKt$receiveBroadcastsAsync$2;->g(Ly22;Ldm3;Landroid/content/BroadcastReceiver;Landroid/content/Intent;)Lj59;

    move-result-object p0

    return-object p0
.end method

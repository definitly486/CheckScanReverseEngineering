.class public final synthetic Llh5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lcom/my/target/common/MyTargetActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/common/MyTargetActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llh5;->a:Lcom/my/target/common/MyTargetActivity;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    sget-object v0, Lcom/my/target/common/MyTargetActivity;->f:Lcom/my/target/common/MyTargetActivity$a;

    iget-object p0, p0, Llh5;->a:Lcom/my/target/common/MyTargetActivity;

    iget-object v0, p0, Lcom/my/target/common/MyTargetActivity;->b:Lcom/my/target/common/MyTargetActivity$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/my/target/common/MyTargetActivity$a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

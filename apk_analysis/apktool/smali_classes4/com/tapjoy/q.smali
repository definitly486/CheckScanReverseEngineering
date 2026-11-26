.class public final Lcom/tapjoy/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnitJSBridge;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/q;->f:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-boolean p2, p0, Lcom/tapjoy/q;->a:Z

    iput-object p3, p0, Lcom/tapjoy/q;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/tapjoy/q;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/tapjoy/q;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tapjoy/q;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lcom/tapjoy/q;->a:Z

    iget-object v1, p0, Lcom/tapjoy/q;->f:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/q;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tapjoy/q;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/tapjoy/q;->d:Ljava/lang/String;

    invoke-static {v0, v2, p0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p0

    iput-object p0, v1, Lcom/tapjoy/TJAdUnitJSBridge;->d:Landroid/app/ProgressDialog;

    return-void

    :cond_0
    iget-object v0, v1, Lcom/tapjoy/TJAdUnitJSBridge;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/q;->f:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object p0, p0, Lcom/tapjoy/q;->e:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.class public final Lcom/tapjoy/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/tapjoy/TJActivity;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/a;->b:Lcom/tapjoy/TJActivity;

    iput-boolean p2, p0, Lcom/tapjoy/a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/a;->a:Z

    iget-object p0, p0, Lcom/tapjoy/a;->b:Lcom/tapjoy/TJActivity;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tapjoy/TJActivity;->d:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/tapjoy/TJActivity;->d:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

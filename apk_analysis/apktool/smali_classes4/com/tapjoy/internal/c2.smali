.class public final Lcom/tapjoy/internal/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/c2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/d2;->a:Lcom/tapjoy/internal/h2;

    iget-object p0, p0, Lcom/tapjoy/internal/c2;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/internal/c;->a()V

    iget-object v0, v0, Lcom/tapjoy/internal/f2;->c:Lcom/tapjoy/TJSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJSession;->onActivityStop(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

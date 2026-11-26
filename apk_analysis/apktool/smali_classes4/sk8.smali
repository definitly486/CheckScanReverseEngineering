.class public final Lsk8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk8$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lrk8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk8;->a:Landroid/content/Context;

    new-instance v0, Lrk8;

    check-cast p1, Landroid/app/Application;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lqk8;

    invoke-direct {v1, v0}, Lqk8;-><init>(Lrk8;)V

    invoke-virtual {p1, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v0, p0, Lsk8;->b:Lrk8;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lsk8;->b:Lrk8;

    iget-object p0, p0, Lrk8;->a:Landroid/app/Activity;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/tapjoy/TJPlacement;->dismissContent()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

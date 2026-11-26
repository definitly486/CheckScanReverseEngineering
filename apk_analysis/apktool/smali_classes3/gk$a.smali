.class public final Lgk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lje2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:D

.field public final synthetic c:Lgk;


# direct methods
.method public constructor <init>(Lgk;Lsy6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsy6;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgk$a;->c:Lgk;

    iget-object p1, p2, Lsy6;->a:Lsy6$a;

    sget-object p2, Lt14;->a:Lb53$b;

    iget-object p1, p1, Lsy6$a;->b:Lb24$b;

    iget-object p1, p1, Lb24$b;->n:Lb53;

    sget-object p2, Lt14;->d:Lb53$b;

    iget-object p1, p1, Lb53;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lgk$a;->b:D

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    iget-wide v0, p0, Lgk$a;->b:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p0, p0, Lgk$a;->c:Lgk;

    iget-object p1, p0, Lgk;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsy6;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lsy6;->c()Lo95;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lo95;->c()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lo95;->b(J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lgk;->a()V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0, p1}, Lgk$a;->a(Landroid/content/Context;)V

    return-void
.end method

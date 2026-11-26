.class public final Lwp4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwp4$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lq37$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lwp4;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/bumptech/glide/a;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Z)Lp37;
    .locals 3

    invoke-static {}, Leb9;->a()V

    invoke-static {}, Leb9;->a()V

    iget-object p4, p0, Lwp4;->a:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp37;

    if-nez v0, :cond_1

    new-instance v0, Ltp4;

    invoke-direct {v0, p3}, Ltp4;-><init>(Landroidx/lifecycle/Lifecycle;)V

    new-instance v1, Lwp4$b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lp37;

    invoke-direct {v2, p2, v0, v1, p1}, Lp37;-><init>(Lcom/bumptech/glide/a;Lyo4;Lr37;Landroid/content/Context;)V

    invoke-virtual {p4, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lwp4$a;

    invoke-direct {p1, p0, p3}, Lwp4$a;-><init>(Lwp4;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {v0, p1}, Ltp4;->a(Lup4;)V

    if-eqz p5, :cond_0

    invoke-virtual {v2}, Lp37;->onStart()V

    :cond_0
    return-object v2

    :cond_1
    return-object v0
.end method

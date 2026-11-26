.class public final Lwp4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lup4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwp4;->a(Landroid/content/Context;Lcom/bumptech/glide/a;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Z)Lp37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroidx/lifecycle/Lifecycle;

.field public final synthetic c:Lwp4;


# direct methods
.method public constructor <init>(Lwp4;Landroidx/lifecycle/Lifecycle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwp4$a;->c:Lwp4;

    iput-object p2, p0, Lwp4$a;->b:Landroidx/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lwp4$a;->c:Lwp4;

    iget-object v0, v0, Lwp4;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lwp4$a;->b:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method

.method public final onStop()V
    .locals 0

    return-void
.end method

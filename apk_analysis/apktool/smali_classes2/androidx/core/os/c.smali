.class public final synthetic Landroidx/core/os/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroid/os/ProfilingManager;

.field public final synthetic c:Landroidx/core/os/a;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ProfilingManager;Landroidx/core/os/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/os/c;->b:Landroid/os/ProfilingManager;

    iput-object p2, p0, Landroidx/core/os/c;->c:Landroidx/core/os/a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/core/os/c;->b:Landroid/os/ProfilingManager;

    iget-object p0, p0, Landroidx/core/os/c;->c:Landroidx/core/os/a;

    invoke-static {v0, p0}, Landroidx/core/os/Profiling$registerForAllProfilingResults$1;->m(Landroid/os/ProfilingManager;Landroidx/core/os/a;)Lj59;

    move-result-object p0

    return-object p0
.end method

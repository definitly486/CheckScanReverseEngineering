.class public final synthetic Lx03;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/compat/EvCompImpl;

.field public final synthetic c:Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/compat/EvCompImpl;Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx03;->b:Landroidx/camera/camera2/compat/EvCompImpl;

    iput-object p2, p0, Lx03;->c:Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lx03;->c:Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lx03;->b:Landroidx/camera/camera2/compat/EvCompImpl;

    invoke-static {p0, v0, p1}, Landroidx/camera/camera2/compat/EvCompImpl;->a(Landroidx/camera/camera2/compat/EvCompImpl;Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

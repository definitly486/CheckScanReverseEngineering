.class public final synthetic Lbi3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lxp1;

.field public final synthetic c:Lmk2;

.field public final synthetic d:Landroidx/camera/camera2/impl/FocusMeteringControl;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lxp1;Lmk2;Landroidx/camera/camera2/impl/FocusMeteringControl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbi3;->b:Lxp1;

    iput-object p2, p0, Lbi3;->c:Lmk2;

    iput-object p3, p0, Lbi3;->d:Landroidx/camera/camera2/impl/FocusMeteringControl;

    iput-boolean p4, p0, Lbi3;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lbi3;->e:Z

    check-cast p1, Ljava/lang/Throwable;

    iget-object v1, p0, Lbi3;->b:Lxp1;

    iget-object v2, p0, Lbi3;->c:Lmk2;

    iget-object p0, p0, Lbi3;->d:Landroidx/camera/camera2/impl/FocusMeteringControl;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/camera/camera2/impl/FocusMeteringControl;->a(Lxp1;Lmk2;Landroidx/camera/camera2/impl/FocusMeteringControl;ZLjava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method

.class final Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$2$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/LowLightBoostControl;->setLowLightBoostAsync(ZZ)Lmk2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnl3<",
        "Ljava/lang/Throwable;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $signal:Lxp1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxp1<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;


# direct methods
.method public constructor <init>(Lxp1;Landroidx/camera/camera2/impl/LowLightBoostControl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxp1<",
            "Lj59;",
            ">;",
            "Landroidx/camera/camera2/impl/LowLightBoostControl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$2$1$2;->$signal:Lxp1;

    iput-object p2, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$2$1$2;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$2$1$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$2$1$2;->$signal:Lxp1;

    iget-object v0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$2$1$2;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    invoke-static {v0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$get_updateSignal$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Lxp1;

    move-result-object v0

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$setLowLightBoostAsync$2$1$2;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$set_updateSignal$p(Landroidx/camera/camera2/impl/LowLightBoostControl;Lxp1;)V

    :cond_0
    return-void
.end method

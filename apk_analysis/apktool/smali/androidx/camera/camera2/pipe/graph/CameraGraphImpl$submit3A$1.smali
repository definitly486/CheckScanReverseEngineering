.class final Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.graph.CameraGraphImpl$submit3A$1"
    f = "CameraGraphImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->submit3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lmk2<",
        "+",
        "Landroidx/camera/camera2/pipe/Result3A;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $aeMode:Landroidx/camera/camera2/pipe/AeMode;

.field final synthetic $aeRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $afMode:Landroidx/camera/camera2/pipe/AfMode;

.field final synthetic $afRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $awbMode:Landroidx/camera/camera2/pipe/AwbMode;

.field final synthetic $awbRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;",
            "Landroidx/camera/camera2/pipe/AeMode;",
            "Landroidx/camera/camera2/pipe/AfMode;",
            "Landroidx/camera/camera2/pipe/AwbMode;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->this$0:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$aeMode:Landroidx/camera/camera2/pipe/AeMode;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$afMode:Landroidx/camera/camera2/pipe/AfMode;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$awbMode:Landroidx/camera/camera2/pipe/AwbMode;

    iput-object p5, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$aeRegions:Ljava/util/List;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$afRegions:Ljava/util/List;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$awbRegions:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->this$0:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$aeMode:Landroidx/camera/camera2/pipe/AeMode;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$afMode:Landroidx/camera/camera2/pipe/AfMode;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$awbMode:Landroidx/camera/camera2/pipe/AwbMode;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$aeRegions:Ljava/util/List;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$afRegions:Ljava/util/List;

    iget-object v7, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$awbRegions:Ljava/util/List;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;-><init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Le02;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->invoke(Ly22;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ly22;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly22;",
            "Le02<",
            "-",
            "Lmk2<",
            "Landroidx/camera/camera2/pipe/Result3A;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->this$0:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->access$getController3A$p(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;)Landroidx/camera/camera2/pipe/graph/Controller3A;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$aeMode:Landroidx/camera/camera2/pipe/AeMode;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$afMode:Landroidx/camera/camera2/pipe/AfMode;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$awbMode:Landroidx/camera/camera2/pipe/AwbMode;

    iget-object v4, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$aeRegions:Ljava/util/List;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$afRegions:Ljava/util/List;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$submit3A$1;->$awbRegions:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Landroidx/camera/camera2/pipe/graph/Controller3A;->submit3A-ydBZfZg(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lmk2;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

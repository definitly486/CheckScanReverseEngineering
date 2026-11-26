.class final Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.impl.UseCaseCameraState"
    f = "UseCaseCameraState.kt"
    l = {
        0x96
    }
    m = "updateAsync-Tp9XwKQ"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/UseCaseCameraState;->updateAsync-Tp9XwKQ(Ljava/util/Map;ZLjava/util/Map;ZLjava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Ljava/util/Set;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/camera/camera2/impl/UseCaseCameraState;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/UseCaseCameraState;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/impl/UseCaseCameraState;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraState;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->label:I

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraState;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateAsync-Tp9XwKQ(Ljava/util/Map;ZLjava/util/Map;ZLjava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Ljava/util/Set;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

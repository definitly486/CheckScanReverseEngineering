.class public final synthetic Ldg8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/processing/SurfaceEdge;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/SurfaceEdge;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldg8;->b:Landroidx/camera/core/processing/SurfaceEdge;

    iput p2, p0, Ldg8;->c:I

    iput p3, p0, Ldg8;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Ldg8;->c:I

    iget v1, p0, Ldg8;->d:I

    iget-object p0, p0, Ldg8;->b:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-static {p0, v0, v1}, Landroidx/camera/core/processing/SurfaceEdge;->c(Landroidx/camera/core/processing/SurfaceEdge;II)V

    return-void
.end method

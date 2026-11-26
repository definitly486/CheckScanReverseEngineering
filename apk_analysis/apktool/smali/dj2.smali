.class public final synthetic Ldj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldj2;->b:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    iput p2, p0, Ldj2;->c:I

    iput p3, p0, Ldj2;->d:I

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ldj2;->c:I

    iget v1, p0, Ldj2;->d:I

    iget-object p0, p0, Ldj2;->b:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    invoke-static {p0, v0, v1, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->e(Landroidx/camera/core/processing/DefaultSurfaceProcessor;IILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

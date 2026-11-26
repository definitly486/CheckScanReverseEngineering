.class public final synthetic Landroidx/camera/core/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

.field public final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:Landroidx/camera/core/ImageProxy;

.field public final synthetic e:Landroid/graphics/Matrix;

.field public final synthetic f:Landroidx/camera/core/ImageProxy;

.field public final synthetic g:Landroid/graphics/Rect;

.field public final synthetic h:Landroidx/camera/core/ImageAnalysis$Analyzer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageProxy;Landroid/graphics/Matrix;Landroidx/camera/core/ImageProxy;Landroid/graphics/Rect;Landroidx/camera/core/ImageAnalysis$Analyzer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/f;->b:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    iput-object p2, p0, Landroidx/camera/core/f;->c:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/camera/core/f;->d:Landroidx/camera/core/ImageProxy;

    iput-object p4, p0, Landroidx/camera/core/f;->e:Landroid/graphics/Matrix;

    iput-object p5, p0, Landroidx/camera/core/f;->f:Landroidx/camera/core/ImageProxy;

    iput-object p6, p0, Landroidx/camera/core/f;->g:Landroid/graphics/Rect;

    iput-object p7, p0, Landroidx/camera/core/f;->h:Landroidx/camera/core/ImageAnalysis$Analyzer;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 8

    iget-object v5, p0, Landroidx/camera/core/f;->g:Landroid/graphics/Rect;

    iget-object v6, p0, Landroidx/camera/core/f;->h:Landroidx/camera/core/ImageAnalysis$Analyzer;

    iget-object v0, p0, Landroidx/camera/core/f;->b:Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;

    iget-object v1, p0, Landroidx/camera/core/f;->c:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/camera/core/f;->d:Landroidx/camera/core/ImageProxy;

    iget-object v3, p0, Landroidx/camera/core/f;->e:Landroid/graphics/Matrix;

    iget-object v4, p0, Landroidx/camera/core/f;->f:Landroidx/camera/core/ImageProxy;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;->b(Landroidx/camera/core/ImageAnalysisAbstractAnalyzer;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageProxy;Landroid/graphics/Matrix;Landroidx/camera/core/ImageProxy;Landroid/graphics/Rect;Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

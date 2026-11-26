.class public final synthetic Landroidx/camera/core/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/h;->b:Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/h;->b:Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;

    invoke-static {p0}, Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer$CacheAnalyzingImageProxy;->b(Landroidx/camera/core/ImageAnalysisNonBlockingAnalyzer;)V

    return-void
.end method

.class public final Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/media/SharedOutputImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Landroidx/camera/camera2/pipe/media/OutputImage;)Landroidx/camera/camera2/pipe/media/SharedOutputImage;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/media/SharedOutputImage;->acquire()Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    move-result-object p0

    return-object p0

    :cond_0
    const-class p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/SharedOutputImage;->acquire()Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Landroidx/camera/camera2/pipe/media/SharedReference;

    sget-object v0, Landroidx/camera/camera2/pipe/media/ClosingFinalizer;->INSTANCE:Landroidx/camera/camera2/pipe/media/ClosingFinalizer;

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/media/SharedReference;-><init>(Ljava/lang/Object;Landroidx/camera/camera2/pipe/media/Finalizer;)V

    new-instance v0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;

    invoke-direct {v0, p1, p0}, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;-><init>(Landroidx/camera/camera2/pipe/media/OutputImage;Landroidx/camera/camera2/pipe/media/SharedReference;)V

    return-object v0
.end method

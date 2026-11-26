.class public final Landroidx/camera/camera2/pipe/compat/Api29Compat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/compat/Api29Compat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Api29Compat;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/compat/Api29Compat;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Api29Compat;->INSTANCE:Landroidx/camera/camera2/pipe/compat/Api29Compat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final imageReaderNewInstance(IIIIJ)Landroid/media/ImageReader;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static final imageWriterNewInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

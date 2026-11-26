.class public final Landroidx/camera/camera2/compat/workaround/NotUseTorchAsFlash;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/compat/workaround/NotUseTorchAsFlash;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/compat/workaround/NotUseTorchAsFlash;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/workaround/NotUseTorchAsFlash;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/workaround/NotUseTorchAsFlash;->INSTANCE:Landroidx/camera/camera2/compat/workaround/NotUseTorchAsFlash;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldDisableAePrecapture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldUseTorchAsFlash(Lnl3;Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameMetadata;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

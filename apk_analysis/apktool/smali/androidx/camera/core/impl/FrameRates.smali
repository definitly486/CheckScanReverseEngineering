.class public final Landroidx/camera/core/impl/FrameRates;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FRAME_RATE_UNLIMITED:I = 0x7fffffff

.field public static final INSTANCE:Landroidx/camera/core/impl/FrameRates;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/impl/FrameRates;

    invoke-direct {v0}, Landroidx/camera/core/impl/FrameRates;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/FrameRates;->INSTANCE:Landroidx/camera/core/impl/FrameRates;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

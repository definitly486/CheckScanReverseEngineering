.class public final Landroidx/camera/core/impl/CameraValidator$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/camera/core/impl/CameraValidator$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/impl/CameraValidator$Companion;

    invoke-direct {v0}, Landroidx/camera/core/impl/CameraValidator$Companion;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/CameraValidator$Companion;->$$INSTANCE:Landroidx/camera/core/impl/CameraValidator$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;Landroidx/camera/core/CameraSelector;)Landroidx/camera/core/impl/CameraValidator;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/core/impl/CameraValidatorImpl;

    invoke-direct {p0, p1, p2}, Landroidx/camera/core/impl/CameraValidatorImpl;-><init>(Landroid/content/Context;Landroidx/camera/core/CameraSelector;)V

    return-object p0
.end method

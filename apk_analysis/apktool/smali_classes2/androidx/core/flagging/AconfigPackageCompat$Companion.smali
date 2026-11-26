.class public final Landroidx/core/flagging/AconfigPackageCompat$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/flagging/AconfigPackageCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/core/flagging/AconfigPackageCompat$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/flagging/AconfigPackageCompat$Companion;

    invoke-direct {v0}, Landroidx/core/flagging/AconfigPackageCompat$Companion;-><init>()V

    sput-object v0, Landroidx/core/flagging/AconfigPackageCompat$Companion;->$$INSTANCE:Landroidx/core/flagging/AconfigPackageCompat$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Ljava/lang/String;)Landroidx/core/flagging/AconfigPackageCompat;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x24

    if-lt p0, v0, :cond_1

    :try_start_0
    new-instance p0, Landroidx/core/flagging/AconfigPackageCompatApi36Impl;

    invoke-static {p1}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/core/flagging/AconfigPackageCompatApi36Impl;-><init>(Landroid/os/flagging/AconfigPackage;)V
    :try_end_0
    .catch Landroid/os/flagging/AconfigStorageReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/flagging/AconfigStorageReadException;->getErrorCode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance p0, Landroidx/core/flagging/AconfigPackageCompatNoopImpl;

    invoke-direct {p0}, Landroidx/core/flagging/AconfigPackageCompatNoopImpl;-><init>()V

    :goto_0
    return-object p0

    :cond_0
    throw p0

    :cond_1
    new-instance p0, Landroidx/core/flagging/AconfigPackageCompatNoopImpl;

    invoke-direct {p0}, Landroidx/core/flagging/AconfigPackageCompatNoopImpl;-><init>()V

    return-object p0
.end method

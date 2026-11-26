.class final Landroidx/core/flagging/AconfigPackageCompatApi36Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/flagging/AconfigPackageCompat;


# instance fields
.field private final aconfigPackageImpl:Landroid/os/flagging/AconfigPackage;


# direct methods
.method public constructor <init>(Landroid/os/flagging/AconfigPackage;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/flagging/AconfigPackageCompatApi36Impl;->aconfigPackageImpl:Landroid/os/flagging/AconfigPackage;

    return-void
.end method


# virtual methods
.method public getBooleanFlagValue(Ljava/lang/String;Z)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/core/flagging/AconfigPackageCompatApi36Impl;->aconfigPackageImpl:Landroid/os/flagging/AconfigPackage;

    invoke-virtual {p0, p1, p2}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

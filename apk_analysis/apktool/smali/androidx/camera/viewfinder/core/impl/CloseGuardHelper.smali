.class public final Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/viewfinder/core/impl/CloseGuardHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/viewfinder/core/impl/CloseGuardHelper$Companion;


# instance fields
.field private final impl:Landroidx/camera/viewfinder/core/impl/CloseGuardImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;->Companion:Landroidx/camera/viewfinder/core/impl/CloseGuardHelper$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/viewfinder/core/impl/CloseGuardImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;->impl:Landroidx/camera/viewfinder/core/impl/CloseGuardImpl;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/viewfinder/core/impl/CloseGuardImpl;Ljh2;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;-><init>(Landroidx/camera/viewfinder/core/impl/CloseGuardImpl;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;->impl:Landroidx/camera/viewfinder/core/impl/CloseGuardImpl;

    invoke-interface {p0}, Landroidx/camera/viewfinder/core/impl/CloseGuardImpl;->close()V

    return-void
.end method

.method public final open(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;->impl:Landroidx/camera/viewfinder/core/impl/CloseGuardImpl;

    invoke-interface {p0, p1}, Landroidx/camera/viewfinder/core/impl/CloseGuardImpl;->open(Ljava/lang/String;)V

    return-void
.end method

.method public final warnIfOpen()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/viewfinder/core/impl/CloseGuardHelper;->impl:Landroidx/camera/viewfinder/core/impl/CloseGuardImpl;

    invoke-interface {p0}, Landroidx/camera/viewfinder/core/impl/CloseGuardImpl;->warnIfOpen()V

    return-void
.end method

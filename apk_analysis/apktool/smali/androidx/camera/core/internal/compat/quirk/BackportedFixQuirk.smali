.class public abstract Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$Companion;

.field private static final backportedFixManager$delegate:Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl4<",
            "Landroidx/core/backported/fixes/BackportedFixManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;->Companion:Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$Companion;

    new-instance v0, Ll00;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll00;-><init>(I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    sput-object v1, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;->backportedFixManager$delegate:Lcl4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Landroidx/core/backported/fixes/BackportedFixManager;
    .locals 1

    invoke-static {}, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;->backportedFixManager_delegate$lambda$0()Landroidx/core/backported/fixes/BackportedFixManager;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getBackportedFixManager$delegate$cp()Lcl4;
    .locals 1

    sget-object v0, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;->backportedFixManager$delegate:Lcl4;

    return-object v0
.end method

.method private static final backportedFixManager_delegate$lambda$0()Landroidx/core/backported/fixes/BackportedFixManager;
    .locals 1

    new-instance v0, Landroidx/core/backported/fixes/BackportedFixManager;

    invoke-direct {v0}, Landroidx/core/backported/fixes/BackportedFixManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getKnownIssue()Landroidx/core/backported/fixes/KnownIssue;
.end method

.method public final hasIssue()Z
    .locals 1

    sget-object v0, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;->Companion:Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$Companion;

    invoke-virtual {v0}, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk$Companion;->getBackportedFixManager()Landroidx/core/backported/fixes/BackportedFixManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;->getKnownIssue()Landroidx/core/backported/fixes/KnownIssue;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/backported/fixes/BackportedFixManager;->isFixed(Landroidx/core/backported/fixes/KnownIssue;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

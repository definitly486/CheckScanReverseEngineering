.class public final Landroidx/core/backported/fixes/BackportedFixManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/backported/fixes/BackportedFixManager$WhenMappings;
    }
.end annotation


# instance fields
.field private final resolver:Landroidx/core/backported/fixes/StatusResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    new-instance v0, Landroidx/core/backported/fixes/SystemPropertyResolver;

    invoke-direct {v0}, Landroidx/core/backported/fixes/SystemPropertyResolver;-><init>()V

    .line 10
    invoke-direct {p0, v0}, Landroidx/core/backported/fixes/BackportedFixManager;-><init>(Landroidx/core/backported/fixes/StatusResolver;)V

    return-void
.end method

.method public constructor <init>(Landroidx/core/backported/fixes/StatusResolver;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/backported/fixes/BackportedFixManager;->resolver:Landroidx/core/backported/fixes/StatusResolver;

    return-void
.end method


# virtual methods
.method public final getStatus(Landroidx/core/backported/fixes/KnownIssue;)Landroidx/core/backported/fixes/Status;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/core/backported/fixes/KnownIssue;->getPrecondition$core_backported_fixes()Lll3;

    move-result-object v0

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/core/backported/fixes/KnownIssue;->getManuallyTestedFingerprints$core_backported_fixes()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Landroidx/core/backported/fixes/Status;->Fixed:Landroidx/core/backported/fixes/Status;

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/core/backported/fixes/BackportedFixManager;->resolver:Landroidx/core/backported/fixes/StatusResolver;

    invoke-interface {p0, p1}, Landroidx/core/backported/fixes/StatusResolver;->getStatus(Landroidx/core/backported/fixes/KnownIssue;)Landroidx/core/backported/fixes/Status;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Landroidx/core/backported/fixes/Status;->NotApplicable:Landroidx/core/backported/fixes/Status;

    return-object p0
.end method

.method public final isFixed(Landroidx/core/backported/fixes/KnownIssue;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/core/backported/fixes/BackportedFixManager;->getStatus(Landroidx/core/backported/fixes/KnownIssue;)Landroidx/core/backported/fixes/Status;

    move-result-object p0

    sget-object p1, Landroidx/core/backported/fixes/BackportedFixManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    invoke-static {}, Lme0;->e()V

    return p1

    :cond_1
    return v0

    :cond_2
    return p1
.end method

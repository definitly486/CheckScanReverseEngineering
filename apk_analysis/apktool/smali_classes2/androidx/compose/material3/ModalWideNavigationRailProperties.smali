.class public final Landroidx/compose/material3/ModalWideNavigationRailProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

.field private final shouldDismissOnBackPress:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 18
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Landroidx/compose/material3/ModalWideNavigationRailProperties;-><init>(Landroidx/compose/ui/window/SecureFlagPolicy;ZILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/window/SecureFlagPolicy;Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Landroidx/compose/material3/ModalWideNavigationRailProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 17
    iput-boolean p2, p0, Landroidx/compose/material3/ModalWideNavigationRailProperties;->shouldDismissOnBackPress:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/window/SecureFlagPolicy;ZILjh2;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Landroidx/compose/ui/window/SecureFlagPolicy;->Inherit:Landroidx/compose/ui/window/SecureFlagPolicy;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/ModalWideNavigationRailProperties;-><init>(Landroidx/compose/ui/window/SecureFlagPolicy;Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 20
    sget-object v0, Landroidx/compose/ui/window/SecureFlagPolicy;->Inherit:Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 21
    invoke-direct {p0, v0, p1}, Landroidx/compose/material3/ModalWideNavigationRailProperties;-><init>(Landroidx/compose/ui/window/SecureFlagPolicy;Z)V

    return-void
.end method

.method public synthetic constructor <init>(ZILjh2;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 19
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/material3/ModalWideNavigationRailProperties;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/ModalWideNavigationRailProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    check-cast p1, Landroidx/compose/material3/ModalWideNavigationRailProperties;

    iget-object p1, p1, Landroidx/compose/material3/ModalWideNavigationRailProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getSecurePolicy()Landroidx/compose/ui/window/SecureFlagPolicy;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    return-object p0
.end method

.method public final getShouldDismissOnBackPress()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/material3/ModalWideNavigationRailProperties;->shouldDismissOnBackPress:Z

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/ModalWideNavigationRailProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/compose/material3/ModalWideNavigationRailProperties;->shouldDismissOnBackPress:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

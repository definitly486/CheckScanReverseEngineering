.class public final Landroidx/compose/material3/ModalBottomSheetDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material3/ModalBottomSheetDefaults;

.field private static final properties:Landroidx/compose/material3/ModalBottomSheetProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/ModalBottomSheetDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/ModalBottomSheetDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/ModalBottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/ModalBottomSheetDefaults;

    new-instance v0, Landroidx/compose/material3/ModalBottomSheetProperties;

    invoke-direct {v0}, Landroidx/compose/material3/ModalBottomSheetProperties;-><init>()V

    sput-object v0, Landroidx/compose/material3/ModalBottomSheetDefaults;->properties:Landroidx/compose/material3/ModalBottomSheetProperties;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic properties$default(Landroidx/compose/material3/ModalBottomSheetDefaults;Landroidx/compose/ui/window/SecureFlagPolicy;ZZILjava/lang/Object;)Landroidx/compose/material3/ModalBottomSheetProperties;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Landroidx/compose/ui/window/SecureFlagPolicy;->Inherit:Landroidx/compose/ui/window/SecureFlagPolicy;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/ModalBottomSheetDefaults;->properties(Landroidx/compose/ui/window/SecureFlagPolicy;ZZ)Landroidx/compose/material3/ModalBottomSheetProperties;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getProperties()Landroidx/compose/material3/ModalBottomSheetProperties;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ModalBottomSheetDefaults;->properties:Landroidx/compose/material3/ModalBottomSheetProperties;

    return-object p0
.end method

.method public final properties(Landroidx/compose/ui/window/SecureFlagPolicy;ZZ)Landroidx/compose/material3/ModalBottomSheetProperties;
    .locals 6
    .annotation runtime Lul2;
    .end annotation

    new-instance v0, Landroidx/compose/material3/ModalBottomSheetProperties;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p3

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/ModalBottomSheetProperties;-><init>(Landroidx/compose/ui/window/SecureFlagPolicy;ZZILjh2;)V

    return-object v0
.end method

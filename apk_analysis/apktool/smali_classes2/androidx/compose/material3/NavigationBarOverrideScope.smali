.class public final Landroidx/compose/material3/NavigationBarOverrideScope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final containerColor:J

.field private final content:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final contentColor:J

.field private final modifier:Landroidx/compose/ui/Modifier;

.field private final tonalElevation:F

.field private final windowInsets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method private constructor <init>(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "JJF",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Landroidx/compose/material3/NavigationBarOverrideScope;->modifier:Landroidx/compose/ui/Modifier;

    .line 23
    iput-wide p2, p0, Landroidx/compose/material3/NavigationBarOverrideScope;->containerColor:J

    .line 24
    iput-wide p4, p0, Landroidx/compose/material3/NavigationBarOverrideScope;->contentColor:J

    .line 25
    iput p6, p0, Landroidx/compose/material3/NavigationBarOverrideScope;->tonalElevation:F

    .line 26
    iput-object p7, p0, Landroidx/compose/material3/NavigationBarOverrideScope;->windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 27
    iput-object p8, p0, Landroidx/compose/material3/NavigationBarOverrideScope;->content:Ldm3;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;ILjh2;)V
    .locals 10

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_0
    move-object v1, p1

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/NavigationBarOverrideScope;-><init>(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;Ljh2;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;Ljh2;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p8}, Landroidx/compose/material3/NavigationBarOverrideScope;-><init>(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;)V

    return-void
.end method


# virtual methods
.method public final getContainerColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/NavigationBarOverrideScope;->containerColor:J

    return-wide v0
.end method

.method public final getContent()Ldm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldm3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/NavigationBarOverrideScope;->content:Ldm3;

    return-object p0
.end method

.method public final getContentColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/NavigationBarOverrideScope;->contentColor:J

    return-wide v0
.end method

.method public final getModifier()Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/NavigationBarOverrideScope;->modifier:Landroidx/compose/ui/Modifier;

    return-object p0
.end method

.method public final getTonalElevation-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/NavigationBarOverrideScope;->tonalElevation:F

    return p0
.end method

.method public final getWindowInsets()Landroidx/compose/foundation/layout/WindowInsets;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/NavigationBarOverrideScope;->windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    return-object p0
.end method

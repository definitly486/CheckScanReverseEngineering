.class public final Landroidx/compose/material3/ShortNavigationBarOverrideScope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final arrangement:I

.field private final containerColor:J

.field private final content:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final contentColor:J

.field private final modifier:Landroidx/compose/ui/Modifier;

.field private final windowInsets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method private constructor <init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/WindowInsets;ILbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "I",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ShortNavigationBarOverrideScope;->modifier:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Landroidx/compose/material3/ShortNavigationBarOverrideScope;->containerColor:J

    iput-wide p4, p0, Landroidx/compose/material3/ShortNavigationBarOverrideScope;->contentColor:J

    iput-object p6, p0, Landroidx/compose/material3/ShortNavigationBarOverrideScope;->windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iput p7, p0, Landroidx/compose/material3/ShortNavigationBarOverrideScope;->arrangement:I

    iput-object p8, p0, Landroidx/compose/material3/ShortNavigationBarOverrideScope;->content:Lbm3;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/WindowInsets;ILbm3;Ljh2;)V
    .locals 0

    .line 16
    invoke-direct/range {p0 .. p8}, Landroidx/compose/material3/ShortNavigationBarOverrideScope;-><init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/foundation/layout/WindowInsets;ILbm3;)V

    return-void
.end method


# virtual methods
.method public final getArrangement-LnnQw40()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/ShortNavigationBarOverrideScope;->arrangement:I

    return p0
.end method

.method public final getContainerColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ShortNavigationBarOverrideScope;->containerColor:J

    return-wide v0
.end method

.method public final getContent()Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/ShortNavigationBarOverrideScope;->content:Lbm3;

    return-object p0
.end method

.method public final getContentColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/ShortNavigationBarOverrideScope;->contentColor:J

    return-wide v0
.end method

.method public final getModifier()Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ShortNavigationBarOverrideScope;->modifier:Landroidx/compose/ui/Modifier;

    return-object p0
.end method

.method public final getWindowInsets()Landroidx/compose/foundation/layout/WindowInsets;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ShortNavigationBarOverrideScope;->windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    return-object p0
.end method

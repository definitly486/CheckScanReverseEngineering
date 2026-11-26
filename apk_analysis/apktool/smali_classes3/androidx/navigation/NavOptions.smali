.class public final Landroidx/navigation/NavOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavOptions$Builder;
    }
.end annotation


# instance fields
.field private final enterAnim:I

.field private final exitAnim:I

.field private final popEnterAnim:I

.field private final popExitAnim:I

.field private final popUpToId:I

.field private final popUpToInclusive:Z

.field private popUpToRoute:Ljava/lang/String;

.field private popUpToRouteClass:Lne4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lne4<",
            "*>;"
        }
    .end annotation
.end field

.field private popUpToRouteObject:Ljava/lang/Object;

.field private final popUpToSaveState:Z

.field private final restoreState:Z

.field private final singleTop:Z


# direct methods
.method public constructor <init>(ZZIZZIIII)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Landroidx/navigation/NavOptions;->singleTop:Z

    .line 49
    iput-boolean p2, p0, Landroidx/navigation/NavOptions;->restoreState:Z

    .line 50
    iput p3, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    .line 51
    iput-boolean p4, p0, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    .line 52
    iput-boolean p5, p0, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    .line 53
    iput p6, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    .line 54
    iput p7, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    .line 55
    iput p8, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    .line 56
    iput p9, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/Object;ZZIIII)V
    .locals 11

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-static {v0}, Liq7;->b(Lne4;)Ldf4;

    move-result-object v0

    invoke-static {v0}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Ldf4;)I

    move-result v4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Landroidx/navigation/NavOptions;-><init>(ZZIZZIIII)V

    iput-object p3, p0, Landroidx/navigation/NavOptions;->popUpToRouteObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;ZZIIII)V
    .locals 11

    .line 39
    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v0, p3}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 40
    invoke-direct/range {v1 .. v10}, Landroidx/navigation/NavOptions;-><init>(ZZIZZIIII)V

    .line 41
    iput-object p3, p0, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZLne4;ZZIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lne4<",
            "*>;ZZIIII)V"
        }
    .end annotation

    .line 42
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {p3}, Liq7;->b(Lne4;)Ldf4;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Ldf4;)I

    move-result v4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 45
    invoke-direct/range {v1 .. v10}, Landroidx/navigation/NavOptions;-><init>(ZZIZZIIII)V

    .line 46
    iput-object p3, p0, Landroidx/navigation/NavOptions;->popUpToRouteClass:Lne4;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    instance-of v2, p1, Landroidx/navigation/NavOptions;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->singleTop:Z

    check-cast p1, Landroidx/navigation/NavOptions;

    iget-boolean v3, p1, Landroidx/navigation/NavOptions;->singleTop:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->restoreState:Z

    iget-boolean v3, p1, Landroidx/navigation/NavOptions;->restoreState:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    iget v3, p1, Landroidx/navigation/NavOptions;->popUpToId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    iget-object v3, p1, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/navigation/NavOptions;->popUpToRouteClass:Lne4;

    iget-object v3, p1, Landroidx/navigation/NavOptions;->popUpToRouteClass:Lne4;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/navigation/NavOptions;->popUpToRouteObject:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/navigation/NavOptions;->popUpToRouteObject:Ljava/lang/Object;

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    iget-boolean v3, p1, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    iget-boolean v3, p1, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    iget v3, p1, Landroidx/navigation/NavOptions;->enterAnim:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    iget v3, p1, Landroidx/navigation/NavOptions;->exitAnim:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    iget v3, p1, Landroidx/navigation/NavOptions;->popEnterAnim:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    iget p1, p1, Landroidx/navigation/NavOptions;->popExitAnim:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getEnterAnim()I
    .locals 0

    iget p0, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    return p0
.end method

.method public final getExitAnim()I
    .locals 0

    iget p0, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    return p0
.end method

.method public final getPopEnterAnim()I
    .locals 0

    iget p0, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    return p0
.end method

.method public final getPopExitAnim()I
    .locals 0

    iget p0, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    return p0
.end method

.method public final getPopUpTo()I
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    iget p0, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    return p0
.end method

.method public final getPopUpToId()I
    .locals 0

    iget p0, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    return p0
.end method

.method public final getPopUpToRoute()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    return-object p0
.end method

.method public final getPopUpToRouteClass()Lne4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lne4<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/NavOptions;->popUpToRouteClass:Lne4;

    return-object p0
.end method

.method public final getPopUpToRouteObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavOptions;->popUpToRouteObject:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->shouldLaunchSingleTop()Z

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->shouldRestoreState()Z

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/navigation/NavOptions;->popUpToRouteClass:Lne4;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/navigation/NavOptions;->popUpToRouteObject:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->shouldPopUpToSaveState()Z

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    add-int/2addr v1, p0

    return v1
.end method

.method public final isPopUpToInclusive()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    return p0
.end method

.method public final shouldLaunchSingleTop()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/navigation/NavOptions;->singleTop:Z

    return p0
.end method

.method public final shouldPopUpToSaveState()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    return p0
.end method

.method public final shouldRestoreState()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/navigation/NavOptions;->restoreState:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NavOptions("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->singleTop:Z

    if-eqz v1, :cond_0

    const-string v1, "launchSingleTop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->restoreState:Z

    if-eqz v1, :cond_1

    const-string v1, "restoreState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    const-string v2, ")"

    const/4 v3, -0x1

    if-nez v1, :cond_2

    iget v4, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    if-eq v4, v3, :cond_8

    :cond_2
    if-eqz v1, :cond_8

    const-string v1, "popUpTo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroidx/navigation/NavOptions;->popUpToRouteClass:Lne4;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroidx/navigation/NavOptions;->popUpToRouteObject:Ljava/lang/Object;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    if-eqz v1, :cond_6

    const-string v1, " inclusive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-boolean v1, p0, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    if-eqz v1, :cond_7

    const-string v1, " saveState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v1, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    if-ne v1, v3, :cond_9

    iget v1, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    if-ne v1, v3, :cond_9

    iget v1, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    if-ne v1, v3, :cond_9

    iget v1, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    if-eq v1, v3, :cond_a

    :cond_9
    const-string v1, "anim(enterAnim=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exitAnim=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " popEnterAnim=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " popExitAnim=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

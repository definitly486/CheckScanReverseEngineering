.class final Landroidx/compose/ui/KeyedComposedModifier3;
.super Landroidx/compose/ui/ComposedModifier;
.source "SourceFile"


# instance fields
.field private final fqName:Ljava/lang/String;

.field private final key1:Ljava/lang/Object;

.field private final key2:Ljava/lang/Object;

.field private final key3:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lnl3;Ldm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lj59;",
            ">;",
            "Ldm3<",
            "-",
            "Landroidx/compose/ui/Modifier;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroidx/compose/ui/Modifier;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p5, p6}, Landroidx/compose/ui/ComposedModifier;-><init>(Lnl3;Ldm3;)V

    iput-object p1, p0, Landroidx/compose/ui/KeyedComposedModifier3;->fqName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/ui/KeyedComposedModifier3;->key1:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/ui/KeyedComposedModifier3;->key2:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/ui/KeyedComposedModifier3;->key3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/KeyedComposedModifier3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/KeyedComposedModifier3;->fqName:Ljava/lang/String;

    check-cast p1, Landroidx/compose/ui/KeyedComposedModifier3;

    iget-object v1, p1, Landroidx/compose/ui/KeyedComposedModifier3;->fqName:Ljava/lang/String;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/KeyedComposedModifier3;->key1:Ljava/lang/Object;

    iget-object v1, p1, Landroidx/compose/ui/KeyedComposedModifier3;->key1:Ljava/lang/Object;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/KeyedComposedModifier3;->key2:Ljava/lang/Object;

    iget-object v1, p1, Landroidx/compose/ui/KeyedComposedModifier3;->key2:Ljava/lang/Object;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/KeyedComposedModifier3;->key3:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/compose/ui/KeyedComposedModifier3;->key3:Ljava/lang/Object;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getFqName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/KeyedComposedModifier3;->fqName:Ljava/lang/String;

    return-object p0
.end method

.method public final getKey1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/KeyedComposedModifier3;->key1:Ljava/lang/Object;

    return-object p0
.end method

.method public final getKey2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/KeyedComposedModifier3;->key2:Ljava/lang/Object;

    return-object p0
.end method

.method public final getKey3()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/KeyedComposedModifier3;->key3:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/KeyedComposedModifier3;->fqName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/KeyedComposedModifier3;->key1:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/KeyedComposedModifier3;->key2:Ljava/lang/Object;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/ui/KeyedComposedModifier3;->key3:Ljava/lang/Object;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

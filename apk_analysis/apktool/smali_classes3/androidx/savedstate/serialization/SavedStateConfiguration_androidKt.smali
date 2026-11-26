.class public final Landroidx/savedstate/serialization/SavedStateConfiguration_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/util/List;)Ldf4;
    .locals 0

    invoke-static {p0}, Landroidx/savedstate/serialization/SavedStateConfiguration_androidKt;->getDefaultSerializersModuleOnPlatform$lambda$1$lambda$0(Ljava/util/List;)Ldf4;

    move-result-object p0

    return-object p0
.end method

.method public static final getDefaultSerializersModuleOnPlatform()Ljq7;
    .locals 4

    new-instance v0, Lkq7;

    invoke-direct {v0}, Lkq7;-><init>()V

    sget-object v1, Landroidx/savedstate/serialization/serializers/SizeSerializer;->INSTANCE:Landroidx/savedstate/serialization/serializers/SizeSerializer;

    const-class v2, Landroid/util/Size;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lkq7;->d(Lne4;Ldf4;)V

    sget-object v1, Landroidx/savedstate/serialization/serializers/SizeFSerializer;->INSTANCE:Landroidx/savedstate/serialization/serializers/SizeFSerializer;

    const-class v2, Landroid/util/SizeF;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lkq7;->d(Lne4;Ldf4;)V

    const-class v1, Landroid/util/SparseArray;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lbf;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lbf;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lkq7;->e(Lne4;Lnl3;)V

    invoke-virtual {v0}, Lkq7;->f()Ltp7;

    move-result-object v0

    return-object v0
.end method

.method private static final getDefaultSerializersModuleOnPlatform$lambda$1$lambda$0(Ljava/util/List;)Ldf4;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;

    invoke-static {p0}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldf4;

    invoke-direct {v0, p0}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;-><init>(Ldf4;)V

    return-object v0
.end method

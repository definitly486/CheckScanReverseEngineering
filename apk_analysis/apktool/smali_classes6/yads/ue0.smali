.class public final Lyads/ue0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/ue0;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/ue0;

    invoke-direct {v0}, Lyads/ue0;-><init>()V

    sput-object v0, Lyads/ue0;->a:Lyads/ue0;

    new-instance v1, Ls96;

    const-string v2, "com.yandex.mobile.ads.features.debugpanel.data.local.model.DebugPanelAppData"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "app_id"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "app_version"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "system"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "api_level"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/ue0;->b:Ls96;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Ldf4;
    .locals 2

    const/4 p0, 0x4

    new-array p0, p0, [Ldf4;

    sget-object v0, Lca8;->a:Lca8;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const/4 v1, 0x3

    aput-object v0, p0, v1

    return-object p0
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 19

    sget-object v0, Lyads/ue0;->b:Ls96;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object v1

    invoke-interface {v1}, Ldu1;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v0, v6}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v5}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v4}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v3}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move-object v15, v2

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    move-object/from16 v16, v5

    move v14, v6

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move-object v7, v2

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move v12, v5

    move v11, v6

    :goto_0
    if-eqz v12, :cond_6

    invoke-interface {v1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_5

    if-eqz v13, :cond_4

    if-eq v13, v5, :cond_3

    if-eq v13, v4, :cond_2

    if-ne v13, v3, :cond_1

    invoke-interface {v1, v0, v3}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v8

    or-int/lit8 v11, v11, 0x8

    goto :goto_0

    :cond_1
    invoke-static {v13}, Lpg;->h(I)V

    return-object v2

    :cond_2
    invoke-interface {v1, v0, v4}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v9

    or-int/lit8 v11, v11, 0x4

    goto :goto_0

    :cond_3
    invoke-interface {v1, v0, v5}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v10

    or-int/lit8 v11, v11, 0x2

    goto :goto_0

    :cond_4
    invoke-interface {v1, v0, v6}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v7

    or-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    move v12, v6

    goto :goto_0

    :cond_6
    move-object v15, v7

    move-object/from16 v18, v8

    move-object/from16 v17, v9

    move-object/from16 v16, v10

    move v14, v11

    :goto_1
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v13, Lyads/we0;

    invoke-direct/range {v13 .. v18}, Lyads/we0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v13
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lyads/ue0;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lyads/we0;

    sget-object p0, Lyads/ue0;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    iget-object v0, p2, Lyads/we0;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    iget-object v0, p2, Lyads/we0;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, p0, v1, v0}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    iget-object v0, p2, Lyads/we0;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p1, p0, v1, v0}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    iget-object p2, p2, Lyads/we0;->d:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, p0, v0, p2}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method

.class public final Lyads/md0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/md0;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/md0;

    invoke-direct {v0}, Lyads/md0;-><init>()V

    sput-object v0, Lyads/md0;->a:Lyads/md0;

    new-instance v1, Ls96;

    const-string v2, "com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelAdUnit"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "name"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "ad_type"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "ad_unit_id"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "mediation"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/md0;->b:Ls96;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Ldf4;
    .locals 3

    sget-object p0, Lyads/ud0;->a:Lyads/ud0;

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object p0

    const/4 v0, 0x4

    new-array v0, v0, [Ldf4;

    sget-object v1, Lca8;->a:Lca8;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p0, v0, v1

    return-object v0
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 19

    sget-object v0, Lyads/md0;->b:Ls96;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object v1

    invoke-interface {v1}, Ldu1;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v0, v6}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v5}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v4}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lyads/ud0;->a:Lyads/ud0;

    invoke-interface {v1, v0, v3, v6, v7}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/wd0;

    const/16 v6, 0xf

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    move-object/from16 v16, v5

    move v14, v6

    :goto_0
    move-object v15, v2

    goto :goto_2

    :cond_0
    move v12, v5

    move v11, v6

    move-object v2, v7

    move-object v8, v2

    move-object v9, v8

    move-object v10, v9

    :goto_1
    if-eqz v12, :cond_6

    invoke-interface {v1, v0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_5

    if-eqz v13, :cond_4

    if-eq v13, v5, :cond_3

    if-eq v13, v4, :cond_2

    if-ne v13, v3, :cond_1

    sget-object v13, Lyads/ud0;->a:Lyads/ud0;

    invoke-interface {v1, v0, v3, v13, v8}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/wd0;

    or-int/lit8 v11, v11, 0x8

    goto :goto_1

    :cond_1
    invoke-static {v13}, Lpg;->h(I)V

    return-object v7

    :cond_2
    invoke-interface {v1, v0, v4}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v9

    or-int/lit8 v11, v11, 0x4

    goto :goto_1

    :cond_3
    invoke-interface {v1, v0, v5}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v10

    or-int/lit8 v11, v11, 0x2

    goto :goto_1

    :cond_4
    invoke-interface {v1, v0, v6}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v2

    or-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    move v12, v6

    goto :goto_1

    :cond_6
    move-object/from16 v18, v8

    move-object/from16 v17, v9

    move-object/from16 v16, v10

    move v14, v11

    goto :goto_0

    :goto_2
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v13, Lyads/od0;

    invoke-direct/range {v13 .. v18}, Lyads/od0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyads/wd0;)V

    return-object v13
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lyads/md0;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lyads/od0;

    sget-object p0, Lyads/md0;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    iget-object v0, p2, Lyads/od0;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    iget-object v0, p2, Lyads/od0;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, p0, v1, v0}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    iget-object v0, p2, Lyads/od0;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p1, p0, v1, v0}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-interface {p1, p0, v0}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lyads/od0;->d:Lyads/wd0;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lyads/ud0;->a:Lyads/ud0;

    iget-object p2, p2, Lyads/od0;->d:Lyads/wd0;

    invoke-interface {p1, p0, v0, v1, p2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_1
    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method

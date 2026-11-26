.class public final Lyads/bf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/bf0;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/bf0;

    invoke-direct {v0}, Lyads/bf0;-><init>()V

    sput-object v0, Lyads/bf0;->a:Lyads/bf0;

    new-instance v1, Ls96;

    const-string v2, "com.yandex.mobile.ads.features.debugpanel.data.local.model.DebugPanelConsentsData"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "has_location_consent"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "age_restricted_user"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "has_user_consent"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "has_cmp_value"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/bf0;->b:Ls96;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Ldf4;
    .locals 4

    sget-object p0, Lgs0;->a:Lgs0;

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v0

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ldf4;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x3

    aput-object p0, v2, v0

    return-object v2
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 19

    sget-object v0, Lyads/bf0;->b:Ls96;

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

    invoke-interface {v1, v0, v6}, Ldu1;->decodeBooleanElement(Lmp7;I)Z

    move-result v2

    sget-object v6, Lgs0;->a:Lgs0;

    invoke-interface {v1, v0, v5, v6, v7}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-interface {v1, v0, v4, v6, v7}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-interface {v1, v0, v3}, Ldu1;->decodeBooleanElement(Lmp7;I)Z

    move-result v3

    const/16 v6, 0xf

    move/from16 v18, v3

    move-object/from16 v17, v4

    move-object/from16 v16, v5

    move v14, v6

    :goto_0
    move v15, v2

    goto :goto_2

    :cond_0
    move v12, v5

    move v2, v6

    move v8, v2

    move v11, v8

    move-object v9, v7

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

    invoke-interface {v1, v0, v3}, Ldu1;->decodeBooleanElement(Lmp7;I)Z

    move-result v8

    or-int/lit8 v11, v11, 0x8

    goto :goto_1

    :cond_1
    invoke-static {v13}, Lpg;->h(I)V

    return-object v7

    :cond_2
    sget-object v13, Lgs0;->a:Lgs0;

    invoke-interface {v1, v0, v4, v13, v9}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    or-int/lit8 v11, v11, 0x4

    goto :goto_1

    :cond_3
    sget-object v13, Lgs0;->a:Lgs0;

    invoke-interface {v1, v0, v5, v13, v10}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    or-int/lit8 v11, v11, 0x2

    goto :goto_1

    :cond_4
    invoke-interface {v1, v0, v6}, Ldu1;->decodeBooleanElement(Lmp7;I)Z

    move-result v2

    or-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    move v12, v6

    goto :goto_1

    :cond_6
    move/from16 v18, v8

    move-object/from16 v17, v9

    move-object/from16 v16, v10

    move v14, v11

    goto :goto_0

    :goto_2
    invoke-interface {v1, v0}, Ldu1;->endStructure(Lmp7;)V

    new-instance v13, Lyads/df0;

    invoke-direct/range {v13 .. v18}, Lyads/df0;-><init>(IZLjava/lang/Boolean;Ljava/lang/Boolean;Z)V

    return-object v13
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lyads/bf0;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lyads/df0;

    sget-object p0, Lyads/bf0;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    iget-boolean v0, p2, Lyads/df0;->a:Z

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0}, Lgu1;->encodeBooleanElement(Lmp7;IZ)V

    sget-object v0, Lgs0;->a:Lgs0;

    iget-object v1, p2, Lyads/df0;->b:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-interface {p1, p0, v2, v0, v1}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    iget-object v1, p2, Lyads/df0;->c:Ljava/lang/Boolean;

    const/4 v2, 0x2

    invoke-interface {p1, p0, v2, v0, v1}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    iget-boolean p2, p2, Lyads/df0;->d:Z

    const/4 v0, 0x3

    invoke-interface {p1, p0, v0, p2}, Lgu1;->encodeBooleanElement(Lmp7;IZ)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method

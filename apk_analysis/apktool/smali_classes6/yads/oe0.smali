.class public final Lyads/oe0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/oe0;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/oe0;

    invoke-direct {v0}, Lyads/oe0;-><init>()V

    sput-object v0, Lyads/oe0;->a:Lyads/oe0;

    new-instance v1, Ls96;

    const-string v2, "com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelAlert"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "title"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "message"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "type"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/oe0;->b:Ls96;

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

    sget-object p0, Lca8;->a:Lca8;

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v0

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v1

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object p0

    const/4 v2, 0x3

    new-array v2, v2, [Ldf4;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    return-object v2
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 11

    sget-object p0, Lyads/oe0;->b:Ls96;

    invoke-interface {p1, p0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object p1

    invoke-interface {p1}, Ldu1;->decodeSequentially()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lca8;->a:Lca8;

    invoke-interface {p1, p0, v3, v0, v4}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, p0, v2, v0, v4}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, p0, v1, v0, v4}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x7

    goto :goto_1

    :cond_0
    move v8, v2

    move v5, v3

    move-object v0, v4

    move-object v6, v0

    move-object v7, v6

    :goto_0
    if-eqz v8, :cond_5

    invoke-interface {p1, p0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    if-eqz v9, :cond_3

    if-eq v9, v2, :cond_2

    if-ne v9, v1, :cond_1

    sget-object v9, Lca8;->a:Lca8;

    invoke-interface {p1, p0, v1, v9, v0}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    or-int/lit8 v5, v5, 0x4

    goto :goto_0

    :cond_1
    invoke-static {v9}, Lpg;->h(I)V

    return-object v4

    :cond_2
    sget-object v9, Lca8;->a:Lca8;

    invoke-interface {p1, p0, v2, v9, v6}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    or-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_3
    sget-object v9, Lca8;->a:Lca8;

    invoke-interface {p1, p0, v3, v9, v7}, Ldu1;->decodeNullableSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    or-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v8, v3

    goto :goto_0

    :cond_5
    move v1, v5

    move-object v2, v6

    move-object v3, v7

    :goto_1
    invoke-interface {p1, p0}, Ldu1;->endStructure(Lmp7;)V

    new-instance p0, Lyads/qe0;

    invoke-direct {p0, v1, v3, v2, v0}, Lyads/qe0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lyads/oe0;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lyads/qe0;

    sget-object p0, Lyads/oe0;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lyads/qe0;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lca8;->a:Lca8;

    iget-object v2, p2, Lyads/qe0;->a:Ljava/lang/String;

    invoke-interface {p1, p0, v0, v1, v2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p2, Lyads/qe0;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lca8;->a:Lca8;

    iget-object v2, p2, Lyads/qe0;->b:Ljava/lang/String;

    invoke-interface {p1, p0, v0, v1, v2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x2

    invoke-interface {p1, p0, v0}, Lgu1;->shouldEncodeElementDefault(Lmp7;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p2, Lyads/qe0;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lca8;->a:Lca8;

    iget-object p2, p2, Lyads/qe0;->c:Ljava/lang/String;

    invoke-interface {p1, p0, v0, v1, p2}, Lgu1;->encodeNullableSerializableElement(Lmp7;ILxp7;Ljava/lang/Object;)V

    :cond_5
    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method

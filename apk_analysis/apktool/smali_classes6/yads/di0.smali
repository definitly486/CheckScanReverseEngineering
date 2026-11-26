.class public final Lyads/di0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# static fields
.field public static final a:Lyads/di0;

.field public static final synthetic b:Ls96;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/di0;

    invoke-direct {v0}, Lyads/di0;-><init>()V

    sput-object v0, Lyads/di0;->a:Lyads/di0;

    new-instance v1, Ls96;

    const-string v2, "com.yandex.mobile.ads.features.debugpanel.data.remote.model.DebugPanelWaterfallParameter"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Ls96;-><init>(Ljava/lang/String;Ldp3;I)V

    const-string v0, "name"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    const-string v0, "value"

    invoke-virtual {v1, v0, v2}, Ls96;->j(Ljava/lang/String;Z)V

    sput-object v1, Lyads/di0;->b:Ls96;

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

    const/4 p0, 0x2

    new-array p0, p0, [Ldf4;

    sget-object v0, Lca8;->a:Lca8;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v1, 0x1

    aput-object v0, p0, v1

    return-object p0
.end method

.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 9

    sget-object p0, Lyads/di0;->b:Ls96;

    invoke-interface {p1, p0}, Lud2;->beginStructure(Lmp7;)Ldu1;

    move-result-object p1

    invoke-interface {p1}, Ldu1;->decodeSequentially()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0, v2}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v1}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    move-object v4, v3

    move v6, v1

    move v5, v2

    :goto_0
    if-eqz v6, :cond_4

    invoke-interface {p1, p0}, Ldu1;->decodeElementIndex(Lmp7;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    if-eqz v7, :cond_2

    if-ne v7, v1, :cond_1

    invoke-interface {p1, p0, v1}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v4

    or-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_1
    invoke-static {v7}, Lpg;->h(I)V

    return-object v0

    :cond_2
    invoke-interface {p1, p0, v2}, Ldu1;->decodeStringElement(Lmp7;I)Ljava/lang/String;

    move-result-object v3

    or-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v6, v2

    goto :goto_0

    :cond_4
    move-object v0, v3

    move-object v1, v4

    move v2, v5

    :goto_1
    invoke-interface {p1, p0}, Ldu1;->endStructure(Lmp7;)V

    new-instance p0, Lyads/fi0;

    invoke-direct {p0, v2, v0, v1}, Lyads/fi0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lyads/di0;->b:Ls96;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lyads/fi0;

    sget-object p0, Lyads/di0;->b:Ls96;

    invoke-interface {p1, p0}, Lux2;->beginStructure(Lmp7;)Lgu1;

    move-result-object p1

    iget-object v0, p2, Lyads/fi0;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    iget-object p2, p2, Lyads/fi0;->b:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0, p2}, Lgu1;->encodeStringElement(Lmp7;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lgu1;->endStructure(Lmp7;)V

    return-void
.end method

.method public final typeParametersSerializers()[Ldf4;
    .locals 0

    sget-object p0, Lu96;->c:[Ldf4;

    return-object p0
.end method

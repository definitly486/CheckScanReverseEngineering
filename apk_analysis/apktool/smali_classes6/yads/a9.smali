.class public final enum Lyads/a9;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final c:Lyads/z8;

.field public static final d:Ljava/util/Map;

.field public static final enum e:Lyads/a9;

.field public static final enum f:Lyads/a9;

.field public static final enum g:Lyads/a9;

.field public static final synthetic h:[Lyads/a9;


# instance fields
.field public final b:Lyads/ip0;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lyads/a9;

    const-string v1, "BROWSER_CONTROL_PANEL_HEIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/a9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyads/a9;->e:Lyads/a9;

    new-instance v1, Lyads/a9;

    const-string v2, "BROWSER_CONTROL_PANEL_BUTTON_PADDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lyads/a9;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyads/a9;->f:Lyads/a9;

    new-instance v2, Lyads/a9;

    const-string v3, "BROWSER_CONTROL_PANEL_TITLE_TEXT_SIZE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lyads/a9;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lyads/a9;->g:Lyads/a9;

    filled-new-array {v0, v1, v2}, [Lyads/a9;

    move-result-object v3

    sput-object v3, Lyads/a9;->h:[Lyads/a9;

    new-instance v3, Lyads/z8;

    invoke-direct {v3}, Lyads/z8;-><init>()V

    sput-object v3, Lyads/a9;->c:Lyads/z8;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "values_dimen_%s"

    invoke-static {v4, v3}, Lyads/z8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x30

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lb36;

    invoke-direct {v6, v3, v5}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v3, "values_dimen_%s_sw600dp"

    invoke-static {v3, v0}, Lyads/z8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x38

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v7, Lb36;

    invoke-direct {v7, v0, v5}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lyads/z8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v8, Lb36;

    invoke-direct {v8, v0, v5}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lyads/z8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lb36;

    invoke-direct {v9, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lyads/z8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, Lb36;

    invoke-direct {v10, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lyads/z8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v11, Lb36;

    invoke-direct {v11, v0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v6 .. v11}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->f([Lb36;)Ljava/util/LinkedHashMap;

    move-result-object v0

    sput-object v0, Lyads/a9;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lyads/ip0;

    invoke-direct {p1}, Lyads/ip0;-><init>()V

    iput-object p1, p0, Lyads/a9;->b:Lyads/ip0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/a9;
    .locals 1

    const-class v0, Lyads/a9;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/a9;

    return-object p0
.end method

.method public static values()[Lyads/a9;
    .locals 1

    sget-object v0, Lyads/a9;->h:[Lyads/a9;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/a9;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 4

    const-string v0, "values_dimen_%s"

    :try_start_0
    sget-object v1, Lyads/a9;->c:Lyads/z8;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lyads/eh6;->d(Landroid/content/Context;)I

    move-result v3

    invoke-static {p1}, Lyads/eh6;->b(Landroid/content/Context;)I

    move-result p1

    if-le v3, p1, :cond_0

    move v3, p1

    :cond_0
    const/16 p1, 0x258

    if-lt v3, p1, :cond_1

    const-string p1, "_sw600dp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lyads/z8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lyads/a9;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_2
    :try_start_1
    sget-object p1, Lyads/a9;->c:Lyads/z8;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lyads/z8;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lyads/a9;->d:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

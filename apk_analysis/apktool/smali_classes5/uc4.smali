.class public final Luc4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Loc4;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Luc4;

.field public static final b:Lop7;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Luc4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Luc4;->a:Luc4;

    sget-object v0, Lba6$b;->a:Lba6$b;

    const/4 v1, 0x0

    new-array v1, v1, [Lmp7;

    new-instance v2, Ljy2;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljy2;-><init>(I)V

    const-string v3, "kotlinx.serialization.json.JsonElement"

    invoke-static {v3, v0, v1, v2}, Lrp7;->e(Ljava/lang/String;Lsp7;[Lmp7;Lnl3;)Lop7;

    move-result-object v0

    sput-object v0, Luc4;->b:Lop7;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ltc0;->e(Lud2;)Lkc4;

    move-result-object p0

    invoke-interface {p0}, Lkc4;->a()Loc4;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Luc4;->b:Lop7;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Loc4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ltc0;->f(Lux2;)V

    instance-of p0, p2, Lpd4;

    if-eqz p0, :cond_0

    sget-object p0, Lsd4;->a:Lsd4;

    invoke-interface {p1, p0, p2}, Lux2;->encodeSerializableValue(Lxp7;Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of p0, p2, Ljd4;

    if-eqz p0, :cond_1

    sget-object p0, Lmd4;->a:Lmd4;

    invoke-interface {p1, p0, p2}, Lux2;->encodeSerializableValue(Lxp7;Ljava/lang/Object;)V

    return-void

    :cond_1
    instance-of p0, p2, Lzb4;

    if-eqz p0, :cond_2

    sget-object p0, Lcc4;->a:Lcc4;

    invoke-interface {p1, p0, p2}, Lux2;->encodeSerializableValue(Lxp7;Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {}, Lme0;->e()V

    return-void
.end method

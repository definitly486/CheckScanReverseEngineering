.class public final Lsd4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Lpd4;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lsd4;

.field public static final b:Lop7;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lsd4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsd4;->a:Lsd4;

    sget-object v0, Ldg6$i;->a:Ldg6$i;

    const/4 v1, 0x0

    new-array v1, v1, [Lmp7;

    const-string v2, "kotlinx.serialization.json.JsonPrimitive"

    invoke-static {v2, v0, v1}, Lrp7;->f(Ljava/lang/String;Lsp7;[Lmp7;)Lop7;

    move-result-object v0

    sput-object v0, Lsd4;->b:Lop7;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ltc0;->e(Lud2;)Lkc4;

    move-result-object p0

    invoke-interface {p0}, Lkc4;->a()Loc4;

    move-result-object p1

    instance-of v0, p1, Lpd4;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected JSON element, expected JsonPrimitive, had "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lkc4;->b()Lxb4;

    move-result-object p0

    iget-object p0, p0, Lxb4;->a:Lfc4;

    iget-boolean p0, p0, Lfc4;->h:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    new-instance p1, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v1, v0, v2, v2, p0}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lpd4;

    return-object p1
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lsd4;->b:Lop7;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lpd4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ltc0;->f(Lux2;)V

    instance-of p0, p2, Lgd4;

    if-eqz p0, :cond_0

    sget-object p0, Lid4;->a:Lid4;

    sget-object p2, Lgd4;->INSTANCE:Lgd4;

    invoke-interface {p1, p0, p2}, Lux2;->encodeSerializableValue(Lxp7;Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object p0, Ldd4;->a:Ldd4;

    check-cast p2, Lcd4;

    invoke-interface {p1, p0, p2}, Lux2;->encodeSerializableValue(Lxp7;Ljava/lang/Object;)V

    return-void
.end method

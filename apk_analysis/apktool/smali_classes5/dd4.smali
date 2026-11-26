.class public final Ldd4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Lcd4;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ldd4;

.field public static final b:Lfg6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldd4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldd4;->a:Ldd4;

    const-string v0, "kotlinx.serialization.json.JsonLiteral"

    sget-object v1, Ldg6$i;->a:Ldg6$i;

    invoke-static {v0, v1}, Lrp7;->a(Ljava/lang/String;Ldg6;)Lfg6;

    move-result-object v0

    sput-object v0, Ldd4;->b:Lfg6;

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

    instance-of v0, p1, Lcd4;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected JSON element, expected JsonLiteral, had "

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
    check-cast p1, Lcd4;

    return-object p1
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Ldd4;->b:Lfg6;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcd4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p2, Lcd4;->c:Ljava/lang/String;

    invoke-static {p1}, Ltc0;->f(Lux2;)V

    iget-boolean p2, p2, Lcd4;->b:Z

    if-eqz p2, :cond_0

    invoke-interface {p1, p0}, Lux2;->encodeString(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lqa8;->q(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lux2;->encodeLong(J)V

    return-void

    :cond_1
    invoke-static {p0}, Ltm1;->d(Ljava/lang/String;)Lp49;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-wide v0, p2, Lp49;->b:J

    sget-object p0, Lt49;->b:Li54;

    invoke-interface {p1, p0}, Lux2;->encodeInline(Lmp7;)Lux2;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lux2;->encodeLong(J)V

    return-void

    :cond_2
    invoke-static {p0}, Lqa8;->m(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lux2;->encodeDouble(D)V

    return-void

    :cond_3
    invoke-static {p0}, Lta8;->e0(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Lux2;->encodeBoolean(Z)V

    return-void

    :cond_4
    invoke-interface {p1, p0}, Lux2;->encodeString(Ljava/lang/String;)V

    return-void
.end method
